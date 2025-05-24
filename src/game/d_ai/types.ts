export type Path = Readonly<{
    fromStateId: number;
    responseIndex: number;
}>

export type Answer = Readonly<{
    condition: string;
    action: string;
    answerId: number;
    answerBody: string;
    journalId: number;
    journalBody: string;
    targetStateId: number | 'EXIT';
}>

// TODO [snow]: add Readonly
export type State = {
    stateId: number;
    paths: Path[];
    sayId: number;
    stateBody: string;
    answers: Answer[];
}