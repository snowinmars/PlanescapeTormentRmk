import type { Answer, Path, State } from './types';

const trimTrahs = (x: string) => x.replaceAll('~', '').replaceAll('«', '').replaceAll('»', '').replaceAll('...', '…').trim();

export const serializeStates = (states: State[], statePrefix: string): string => {
    let result = 'EXIT = -1\n';

    for (const state of states) {
        try {
            const f = `# from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;

            let builder = `${f}\nDialogStateBuilder('${statePrefix}${state.stateId}') \\\n    .with_npc_lines() \\\n`;

            builder += `        .line(SPEAKER, "${trimTrahs(state.stateBody)}", 's${state.stateId}', 'say${state.sayId}') \\\n`;

            builder += '    .with_responses() \\\n'
            for (const answer of state.answers) {
                const targetId = answer.targetStateId === 'EXIT' ? 'EXIT' : `${statePrefix}${answer.targetStateId}`;
                builder += `        .response("${trimTrahs(answer.answerBody)}", '${targetId}', 'r', 'reply${answer.answerId}')`;
                if (answer.condition.length !== 0) {
                    builder += `.with_condition(lambda: '${answer.condition}')`
                }
                if (answer.action.length !== 0) {
                    builder += `.with_action(lambda: '${answer.action}')`
                }
                builder += ' \\\n'
            }

            builder += '    .done()';
            result += builder + '\n\n';
        } catch (e: unknown) {
            console.error(statePrefix, state);
            throw e;
        }
    }

    return result.trim();
}