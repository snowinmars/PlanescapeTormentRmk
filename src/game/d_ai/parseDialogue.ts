import type { Answer, Path, State } from './types';

// better empty than spaces
const bets = function (x: string | null | undefined) {
    if (!x) return x
    let value = x.trim().length === 0 ? '' : x.trim();
    if (value.startsWith('DO ~')) value = value.slice(4)
    if (value.endsWith('~')) value = value.slice(0, -1);
    return value;
};

export const parseDialogue = (inputText: string): State[] => {
    const states: State[] = [];
    const lines = inputText.split('\n').map(line => line.trim()).filter(line => line.length > 0);

    let currentState: State | null = null;
    let i = 0;
    let beforeStartBuffer = '';

    while (i < lines.length) {
        const line = lines[i];

        if (!currentState) {
            beforeStartBuffer += line;
        }

        const stateBeginMatch = line.match(/THEN BEGIN (\d+)\s*\/\/ from:(.*)/);
        if (stateBeginMatch) {
            const stateId = parseInt(stateBeginMatch[1], 10);
            const pathsStr = stateBeginMatch[2].trim();

            const paths: Path[] = pathsStr.split(/\s+/)
                .filter(s => s.includes('.'))
                .map(s => {
                    const [fromStateId, responseIndex] = s.split('.').map(Number);
                    return { fromStateId, responseIndex };
                });

            currentState = {
                stateId,
                paths,
                sayId: 0,
                stateBody: '',
                answers: [],
                free: beforeStartBuffer
            };
            states.push(currentState);
            beforeStartBuffer = '';
            i++;
            continue;
        }

        if (currentState) {
            const sayMatch = line.match(/SAY #(\d+)\s*\/\*\s*(.*?)\s*\*\//);
            if (sayMatch) {
                currentState.sayId = parseInt(sayMatch[1], 10);
                currentState.stateBody = sayMatch[2].trim();
                i++;
                continue;
            }

            const externMatch = line.match(/EXTERN (.*) (\d+)/)
            if (externMatch) {
                const targetFile = externMatch[1].trim();
                const targetLine = externMatch[2].trim();
                if (currentState.free) currentState.free += `Check EXTENDS ${targetFile} : ${targetLine}`;
                else currentState.free = `Check EXTENDS ${targetFile} : ${targetLine}`;
            }

            const justAction1Match = line.match(/IF ~~ THEN DO(.*)/)
            if (justAction1Match) {
                const value = justAction1Match[1].trim();
                if (currentState.free) currentState.free += ` # ${value}`;
                else currentState.free = value;
            }

            const justAction2Match = line.match(/IF ~ ([^~]*)$/)
            if (justAction2Match) {
                const value = justAction2Match[1].trim();
                if (currentState.free) currentState.free += ` # ${value}`;
                else currentState.free = value;
            }

            const answerMatch = line.match(/IF\s+~(.*?)~?\s*THEN REPLY #(\d+)\s*\/\*\s*(.*?)\s*\*\/(.*?)(?:JOURNAL #(\d+) \/\*(.*)\*\/)?(?:(?:GOTO (\d+))|EXIT|EXTERN.*)/);
            if (answerMatch) {
                const condition = bets(answerMatch[1]);
                const answerId = parseInt(answerMatch[2], 10);
                const answerBody = answerMatch[3];
                const action = bets(answerMatch[4]);
                const journalId = parseInt(answerMatch[5]);
                const journalBody = bets(answerMatch[6]);
                const _targetStateId = parseInt(answerMatch[7], 10)
                const targetStateId = isNaN(_targetStateId) ? -1 : _targetStateId

                if (targetStateId !== null) {
                    const answer: Answer = {
                        condition,
                        answerId,
                        answerBody,
                        action,
                        journalId,
                        journalBody,
                        targetStateId
                    };

                    currentState.answers.push(answer);
                }
                i++;
                continue;
            }

            if (line === 'END') {
                i++;
                continue;
            }
        }

        i++;
    }

    return states;
}
