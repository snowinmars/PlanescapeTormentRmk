// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~"Tak. Ty jsi pavouk, který sedí uprostřed toho všeho."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~"Mám spoustu otázek, na které bys mohl odpovědět. Tvé cíle v této věci nebyly zcela jasné."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~"Mé srdce není ani hněvivé ani se nebojím o svůj život."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~"Někdo pro mne drahocený je zde ve vaší pevnosti. Neodejdu dokud se znovu nespojíme a on nevyřeší tuto záležitost k uspokojivému závěru."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~"Mé srdce není ani hněvivé ani se nebojím o svůj život."~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~"Moji společníci, mí přátelé, a zde ve vaší pevnosti. Neodejdu dokud se znovu nespojíme a člověk kterého hledáme nevyřeší tuto záležitost k uspokojivému závěru."~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~"Ať je tvá nabídka jakkoliv laskavá, musím odmítnout tvoji nabídku, abych zde zanechala své přátele."~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~"Co se týče 'malé' ceny, kterou zaplatí do tvých rukou, je protihodnotou za jeho smrt. Cestovala jsem s tímto mužem nějaký čas, a je tady spousta věcí, které bych mu nechtěla zapomenout."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~"To je *tvoje* mínění."~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~"Skutečnost je taková, že si přeji, aby nezapomněl ani na mne, ani na všechno s čím bojoval, aby dosáhl tohoto místa."~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~"Hodně trpěl a já jsem k němu pocítila náklonnost. Spíše než k domýšlivé bytosti, která stojí přede mnou a dává přednost zabíjení z dálky, kam na něj protivník nemůže dosáhnout."~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~"Už ho nebudeš více trápit."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
