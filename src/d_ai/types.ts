export type Path = Readonly<{
    fromStateId: number;
    responseIndex: number;
}>

export type Answer = Readonly<{
    condition: string | null | undefined;
    action: string | null | undefined;
    answerId: number;
    answerBody: string;
    journalId: number;
    journalBody: string | null | undefined;
    targetStateId: number | 'EXIT';
}>

// TODO [snow]: add Readonly
export type State = {
    stateId: number;
    paths: Path[];
    sayId: number;
    stateBody: string;
    answers: Answer[];
    free: string | null | undefined;
}