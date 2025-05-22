import type { Answer, Path, State } from './types';

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
                currentState = {
                    ...currentState,
                    sayId: parseInt(sayMatch[1], 10),
                    stateBody: sayMatch[2],
                }
                i++;
                continue;
            }

            const answerMatch = line.match(/IF\s+(~.*?~)?\s*THEN REPLY #(\d+)\s*\/\*\s*(.*?)\s*\*\//);
            if (answerMatch) {
                const answerId = parseInt(answerMatch[2], 10);
                const answerBody = answerMatch[3];

                // Check if GOTO is on the same line
                const sameLineGotoMatch = line.match(/GOTO (\d+)|EXIT/);
                let targetStateId: number | 'EXIT' | null = null;

                if (sameLineGotoMatch) {
                    targetStateId = sameLineGotoMatch[1] ? parseInt(sameLineGotoMatch[1], 10) : 'EXIT';
                } else {
                    // Check next line for GOTO
                    if (i + 1 < lines.length) {
                        const nextLine = lines[i + 1];
                        const nextLineGotoMatch = nextLine.match(/GOTO (\d+)|EXIT/);
                        if (nextLineGotoMatch) {
                            targetStateId = nextLineGotoMatch[1] ? parseInt(nextLineGotoMatch[1], 10) : 'EXIT';
                            i++; // Skip the next line since we've processed it
                        }
                    }
                }

                if (targetStateId !== null) {
                    const answer: Answer = {
                        answerId,
                        answerBody,
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