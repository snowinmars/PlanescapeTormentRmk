import type { Answer, Path, State } from './types';

// better empty than spaces
const bets = (x: string | null | undefined) => x?.trim().length === 0 ? '' : x;

export const parseDialogue = (inputText: string): State[] => {
    const states: State[] = [];
    const lines = inputText.split('\n').map(line => line.trim()).filter(line => line.length > 0);

    let currentState: State | null = null;
    let i = 0;

    while (i < lines.length) {
        const line = lines[i];

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
                answers: []
            };
            states.push(currentState);
            i++;
            continue;
        }

        if (currentState) {
            const sayMatch = line.match(/SAY #(\d+)\s*\/\*\s*(.*?)\s*\*\//);
            if (sayMatch) {
                currentState.sayId = parseInt(sayMatch[1], 10);
                currentState.stateBody = sayMatch[2];
                i++;
                continue;
            }

            const answerMatch = line.match(/IF\s+~(.*?)~?\s*THEN REPLY #(\d+)\s*\/\*\s*(.*?)\s*\*\/(.*?)(?:JOURNAL #(\d+) \/\*(.*)\*\/)?(?:(?:GOTO (\d+))|EXIT)/);
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