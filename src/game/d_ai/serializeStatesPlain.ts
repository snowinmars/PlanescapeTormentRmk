import type {State} from './types';
import {pasteWellKnownFunctions, trimTrahs} from './serializeHelpers.ts';

const toSingleReturn = (input: string): string => {
    const lines = input.split('\n');

    const processedLines = lines.map(line => {
        if (line.trim().startsWith('def')) return line;

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

export const serializeStatesPlain = (states: State[], statePrefix: string): string => {
    let result = 'python:\n    gsm           = renpy.store.global_settings_manager\n\n';
    let logicActionsBuilder = '';
    let logicConditionsBuilder = '';
    let globalResponseCounter = 0

    for (const state of states) {
        let builder = '';
        const fromPath = `from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;

        builder += `\n# s${state.stateId} # say${state.sayId}\n`;
        builder += `label ${statePrefix}${state.stateId}:  # ${fromPath}`;
        builder += state.free ? ` # ${state.free}\n` : `\n`

        builder += `    SPEAKER '${trimTrahs(state.stateBody)}'\n\n`;

        const hasNoAnswers = state.answers.length === 0
        if (hasNoAnswers) {
            builder += `    jump 'show_graphics_menu'`
            result += `${builder}\n`
            continue;
        }

        builder += '    menu:\n';

        for (const answer of state.answers) {
            const targetId = answer.targetStateId === -1 ? `'show_graphics_menu'` : `'${statePrefix}${answer.targetStateId}'`;

            builder += `        '${trimTrahs(answer.answerBody)}'`

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

    if (logicActionsBuilder !== '') logicActionsBuilder = `python:\n${logicActionsBuilder}`
    if (logicConditionsBuilder !== '') logicConditionsBuilder = `python:\n${logicConditionsBuilder}`

    return [
        toSingleBody(pasteWellKnownFunctions(logicActionsBuilder.trim())),
        toSingleReturn(pasteWellKnownFunctions(logicConditionsBuilder.trim())),
        result.trim(),
    ].join('\n\n');
}
