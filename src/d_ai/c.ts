import * as fs from 'fs/promises';
import * as path from 'path';

type pythonIsCProps = Readonly<{
    dlgsDir: string;
}>

async function getPythonFilesRecursively(dirPath: string): Promise<string[]> {
    const entries = await fs.readdir(dirPath, { withFileTypes: true });
    const files: string[] = [];

    for (const entry of entries) {
        const fullPath = path.join(dirPath, entry.name);

        if (entry.isDirectory()) {
            const subFiles = await getPythonFilesRecursively(fullPath);
            files.push(...subFiles);
        } else if (entry.isFile() && entry.name.endsWith('.rpy')) {
            files.push(fullPath);
        }
    }

    return files;
}

type CheckResult = Readonly<{
    id: string;
    defined: boolean;
    called: boolean;
}>

type LabelCheckResult = Readonly<{
    id: string;
    defined: boolean;
    jumped: boolean;
    called: boolean;
}>

type SpeakerCheckResult = Readonly<{
    hasSpeaker: boolean;
    hasUncheckedExterns: boolean;
}>

const checkPythonFunctions = async (content: string): Promise<CheckResult[]> => {
    const foundFunctions: Record<string, { defined: boolean; called: boolean; }> = {};
    const functionPattern = /(def\s+)?(_r\d+_(?:action|condition))\b/g;

    let match;
    while ((match = functionPattern.exec(content)) !== null) {
        const [_, defKeyword, funcName] = match;

        if (!foundFunctions[funcName]) {
            foundFunctions[funcName] = { defined: false, called: false };
        }

        if (defKeyword) foundFunctions[funcName].defined = true;
        else foundFunctions[funcName].called = true;
    }

    return Object.entries(foundFunctions).map(([k, v]): CheckResult => ({
        id: k,
        called: v.called,
        defined: v.defined,
    })).sort((lhs, rhs) => {
        const priorityLhs = getPriority(lhs.id);
        const priorityRhs = getPriority(rhs.id);
        return priorityRhs - priorityLhs;
    });
}


const checkPythonLabels = async (foundLabels: Record<string, { id: string; defined: boolean; jumped: boolean; called: boolean; }>, file: string, content: string): Promise<void> => {
    const labelPattern = /label (.*?):/g;
    const jumpPattern = /jump (.*?)\n/g;
    const callPattern = /call (.*?)\n/g;

    let labelMatch;
    while ((labelMatch = labelPattern.exec(content)) !== null) {
        const [, labelName] = labelMatch;
        if (labelName === 'show_graphics_menu') continue;
        const id = `${file}-${labelName}`;
        if (!foundLabels[labelName]) {
            foundLabels[labelName] = { id: id, defined: false, jumped: false, called: false };
        }
        foundLabels[labelName].defined = true;
    }

    let jumpMatch;
    while ((jumpMatch = jumpPattern.exec(content)) !== null) {
        const [, jumpTarget] = jumpMatch;
        if (jumpTarget === 'show_graphics_menu') continue;
        const id = `${file}-${jumpTarget}`;
        if (!foundLabels[jumpTarget]) {
            foundLabels[jumpTarget] = { id: id, defined: false, jumped: false, called: false };
        }
        foundLabels[jumpTarget].jumped = true;
    }

    let callMatch;
    while ((callMatch = callPattern.exec(content)) !== null) {
        const [, callTarget] = callMatch;
        if (callTarget === 'show_graphics_menu') continue;
        const id = `${file}-${callTarget}`;
        if (!foundLabels[callTarget]) {
            foundLabels[callTarget] = { id: id, defined: false, jumped: false, called: false };
        }
        foundLabels[callTarget].called = true;
    }
}

const getPriority = (id: string): number => {
    if (id.includes('-action')) return 5;    // Наивысший приоритет
    if (id.includes('-condition')) return 4;
    if (id.includes('label ')) return 3;
    if (id.includes('jump ')) return 2;
    if (id.includes('call ')) return 1;
    return 0;                               // Другие случаи (самый низкий приоритет)
};

const checkSpeaker = async (content: string): Promise<SpeakerCheckResult> => {
    return {
        hasSpeaker: content.includes('SPEAKER'),
        hasUncheckedExterns: content.includes('Check EXTERN')
    }
}

export const pythonIsC = async ({ dlgsDir }: pythonIsCProps): Promise<string[]> => {
    try {
        const files = await getPythonFilesRecursively(dlgsDir);
        const errors: string[] = [];
        const foundLabels: Record<string, { id: string; defined: boolean; jumped: boolean; called: boolean; }> = {};

        for (const file of files) {
            const content = await fs.readFile(file, 'utf-8');

            const speakerFiles = await checkSpeaker(content);
            if (speakerFiles.hasSpeaker) errors.push(`[WARNING] "${file}": SPEAKER may not be defined.`);
            if (speakerFiles.hasUncheckedExterns) errors.push(`[WARNING] "${file}": Check EXTERNs.`);

            const foundFunctions = await checkPythonFunctions(content);

            // Проверяем, что у каждой функции есть и определение, и вызов
            for (const { id, called, defined, } of foundFunctions) {
                if (!defined) {
                    errors.push(`[WARNING] "${id}" вызвана, но не определена в файле ${file}.`);
                }
                if (!called) {
                    errors.push(`[WARNING] "${id}" определена, но не вызвана в файле ${file}.`);
                }
            }

            await checkPythonLabels(foundLabels, file, content);
        }

        const fff = Object.entries(foundLabels).map(([k, v]): LabelCheckResult => ({
            id: v.id,
            called: v.called,
            defined: v.defined,
            jumped: v.jumped,
        })).sort((lhs, rhs) => {
            const priorityLhs = getPriority(lhs.id);
            const priorityRhs = getPriority(rhs.id);
            return priorityRhs - priorityLhs;
        });

        for (const { id, called, defined, jumped } of fff) {
            if (!defined) {
                errors.push(`[WARNING] "${id}" вызвана, но не определена в файлах.`);
            }
            // if (!jumped && !called) {
            //     console.warn(`[WARNING] In file ${file}: Label "${id}" is defined but never used (no jumps or calls).`);
            // }
        }

        return errors;
    } catch (error) {
        throw new Error(`Ошибка при обработке директории ${dlgsDir}:`, { cause: error });
    }
}
