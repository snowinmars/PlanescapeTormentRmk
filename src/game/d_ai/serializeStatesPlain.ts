import type { State } from './types';
import { transformScript, trimTrash } from './serializeHelpers.ts';

const toSingleReturn = (input: string): string => {
    const lines = input.split('\n');

    const processedLines = lines.map(line => {
        if (line.trim().startsWith('def')) return line;
        if (line.trim() == 'init python:') return line;

        const returnStatements = line.split('return').map(s => s.trim()).filter(s => s.length > 0);
        if (returnStatements.length === 0) return line;
        if (returnStatements.length === 1) return `        return ${returnStatements[0]}`;

        const allButLast = returnStatements.slice(0, -1).join(" \\\n               and ");
        const last = returnStatements.slice(-1)[0];
        return `        return ${allButLast} \\\n               and ${last}`;
    });

    return processedLines.join('\n');
}

const toSingleBody = (input: string): string => {
    return input.replaceAll('gsm.', '\n        gsm.');
}

export const serializeStatesPlain = (states: State[], area: string, statePrefix: string): string => {
    let result = `init 10 python:
    gsm = renpy.store.global_settings_manager\n\n\n# ###\n# Original:  DLG/${area.toUpperCase()}.DLG\n# ###\n\n\nlabel ${area}_init:\n    return\n\n\nlabel ${area}_dispose:\n    jump show_graphics_menu\n\n`;
    let logicActionsBuilder = '';
    let logicConditionsBuilder = '';
    let globalResponseCounter = 0

    for (const state of states) {
        let builder = '';
        const fromPath = `from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;

        builder += `\n# s${state.stateId} # say${state.sayId}\n`;
        builder += `label ${area}${statePrefix}${state.stateId}:  # ${fromPath}`;
        builder += state.free ? ` # ${state.free}\n` : `\n`

        builder += `    SPEAKER '${trimTrash(state.stateBody)}'\n\n`;

        const hasNoAnswers = state.answers.length === 0
        if (hasNoAnswers) {
            builder += `    jump show_graphics_menu`
            result += `${builder}\n`
            continue;
        }

        builder += '    menu:\n';

        for (const answer of state.answers) {
            const targetId = answer.targetStateId === -1 ? `show_graphics_menu` : `${area}${statePrefix}${answer.targetStateId}`;

            builder += `        '${trimTrash(answer.answerBody)}'`

            if (answer.condition && answer.condition.length !== 0) {
                const conditionFunctionName = `_r${answer.answerId}_condition`;
                logicConditionsBuilder += `    def ${conditionFunctionName}(gsm):\n        ${answer.condition.trim()}\n`;
                builder += ` if ${conditionFunctionName}(gsm)`;
            }

            builder += ':\n';
            builder += `            # r${globalResponseCounter} # reply${answer.answerId}\n`

            if (answer.action && answer.action.length !== 0) {
                const actionFunctionName = `_r${answer.answerId}_action`;
                logicActionsBuilder += `    def ${actionFunctionName}(gsm):        ${answer.action.trim()}\n`;
                builder += `            $ ${actionFunctionName}(gsm)\n`
            }

            if (targetId === 'EXIT') {
                builder += `            $ _dispose()\n`
            }

            builder += `            jump ${targetId}\n`

            globalResponseCounter++;
        }

        result += `${builder}\n`
    }

    if (logicActionsBuilder !== '') logicActionsBuilder = `init python:
${logicActionsBuilder}`
    if (logicConditionsBuilder !== '') logicConditionsBuilder = `init python:
${logicConditionsBuilder}`

    const targetNpc = area.startsWith('D') ? area.slice(1) : area;
    return [
        rightTrimLines(toSingleBody(transformScript(logicActionsBuilder.trim(), targetNpc))),
        rightTrimLines(toSingleReturn(transformScript(logicConditionsBuilder.trim(), targetNpc))),
        rightTrimLines(result.trim()),
    ].join('\n\n\n').trim() + '\n';
}

const rightTrimLines = (input: string): string => input.split('\n').map(line => line.replace(/\s+$/, '')).join('\n');

const replaceNestedQuotes = (text: string): string => {
    if ((text.match(/'/g) || []).length < 2) return text;

    const firstQuotePos = text.indexOf("'");
    const lastQuotePos = text.lastIndexOf("'");

    if (firstQuotePos === lastQuotePos) return text;

    // Replace all quotes except first and last
    const before = text.substring(0, firstQuotePos + 1);
    const middle = text.substring(firstQuotePos + 1, lastQuotePos).replace(/'/g, "«");
    const after = text.substring(lastQuotePos);

    return before + middle.replace(/'/g, "»") + after;
}
