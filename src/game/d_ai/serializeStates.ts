import type { Answer, Path, State } from './types';

export const serializeStates = (states: State[], statePrefix: string): string => {
    let result = 'EXIT = -1\n';

    for (const state of states) {
        try {
            const f = `# from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;

        let builder = `${f}\nDialogStateBuilder('${statePrefix}${state.stateId}') \\\n    .with_npc_lines()\\\n`;

        const cleanedStateBody = state.stateBody.replace(/^~«|»~$/g, '').trim();
        builder += `        .line(SPEAKER, "${cleanedStateBody}", 's${state.stateId}', 'say${state.sayId}') \\\n`;

        builder += '    .with_responses() \\\n'
        for (const answer of state.answers) {
            const cleanedAnswerBody = answer.answerBody.replace(/^~«|»~$/g, '').trim();
            builder += `        .response("${cleanedAnswerBody}", '${statePrefix}${answer.targetStateId}', 'r', 'reply${answer.answerId}')`;
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