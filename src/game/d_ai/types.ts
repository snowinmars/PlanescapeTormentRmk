export type Path = Readonly<{
    fromStateId: number;
    responseIndex: number;
}>

export type Answer = Readonly<{
    answerId: number;
    answerBody: string;
    targetStateId: number | 'EXIT';
}>

export type State = Readonly<{
    stateId: number;
    paths: Path[];
    sayId: number;
    stateBody: string;
    answers: Answer[];
}>