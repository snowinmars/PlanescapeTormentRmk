import type { State } from './types';
import {pasteWellKnownFunctions, trimTrahs} from "./serializeHelpers.ts";

export const serializeStates = (states: State[], statePrefix: string): string => {
    let result = 'gsm           = renpy.store.global_settings_manager\nEXIT          = -1\n\n';

    let logicBuilder = '';

    for (const state of states) {
        try {
            let builder = '';

            const fromPath = `# from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;
            builder += `DialogStateBuilder().state('${statePrefix}${state.stateId}', '${fromPath}`;
            if (state.free) {
                builder += ` // ${state.free}')`
            } else {
                builder += `')`
            }
            builder += ` \\\n    .with_npc_lines() \\\n`;
            builder += `        .line(SPEAKER, "${trimTrahs(state.stateBody)}", 's${state.stateId}', 'say${state.sayId}') \\\n`;
            builder += '    .with_responses() \\\n'

            for (const answer of state.answers) {
                let hasAction = false;

                const targetId = answer.targetStateId === -1 ? 'EXIT' : `'${statePrefix}${answer.targetStateId}'`;
                builder += `        .response("${trimTrahs(answer.answerBody)}", ${targetId}, 'r', 'reply${answer.answerId}')`;
                if (answer.condition && answer.condition.length !== 0) {
                    const conditionFunctionName = `_r${answer.answerId}_condition`;
                    logicBuilder += `def ${conditionFunctionName}(gsm):\n    ${answer.condition.trim()}\n`;
                    builder += `.with_condition(lambda: ${conditionFunctionName}(gsm))`;
                }
                if (answer.action && answer.action.length !== 0) {
                    hasAction = true;
                    const actionFunctionName = `_r${answer.answerId}_action`;
                    logicBuilder += `def ${actionFunctionName}(gsm):\n    ${answer.action.trim()}\n`;
                    builder += `.with_action(lambda: ${actionFunctionName}(gsm))`
                }
                if (targetId === 'EXIT') {
                    builder += `.with_action(lambda: _dispose())`
                    if (hasAction) builder += '  ### replace two actions with one'
                }
                builder += ' \\\n'
            }

            builder += '    .push(manager)';
            result += builder + '\n\n';
        } catch (e: unknown) {
            console.error(statePrefix, state);
            throw e;
        }
    }

    return pasteWellKnownFunctions(logicBuilder.trim()) + '\n\n' + result.trim();
}
