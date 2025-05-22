import type { Answer, Path, State } from './types';

export const serializeStates = (states: State[]): string => {
    let result = 'EXIT = -1\n';

    for (const state of states) {
        const f = `# from ${state.paths.length > 0 ? state.paths.map(x => `${x.fromStateId}.${x.responseIndex}`).join(' ') : '-'}`;

        let builder = `${f}\nDialogStateBuilder(${state.stateId}) \\\n`;

        const cleanedStateBody = state.stateBody.replace(/^~«|»~$/g, '').trim();
        builder += `    .add_npc_line(SPEAKER, "${cleanedStateBody}", 'state${state.stateId}', 'say${state.sayId}') \\\n`;

        for (const answer of state.answers) {
            const cleanedAnswerBody = answer.answerBody.replace(/^~«|»~$/g, '').trim();
            builder += `    .add_response("${cleanedAnswerBody}", ${answer.targetStateId}, 'response${answer.answerId}') \\\n`;
        }

        builder += '    .done()';
        result += builder + '\n\n';
    }

    return result.trim();
}