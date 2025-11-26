// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~"Na podwiązkę Sziwy! A cóż *to* za cuchnące coś?"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~"Być może powinniśmy go obrócić i zabrać go z powrotem. Może nas wynagrodzą, co?" Patrzy na swego kompana ruszając brwiami.~ */
  IF ~~ THEN REPLY #33565 /* ~"Bardzo zabawne... a teraz z drogi."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~"Zejdźcie mi z drogi, albo was pozabijam."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~"Zejdźcie mi z drogi, albo was pozabijam."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~"Nie chcę kłopotów... pozwólcie mi tylko przejść."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~"Nie chcę kłopotów... pozwólcie mi tylko przejść."~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~Zacznij jęczeć niczym nieumarły: "Uuuuuuu..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~Mężczyzna unosi brwi. "Hej! To mówi 'z drogi'..."~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~Mężczyzna unosi dłonie. "Hej, śmiałku! My tylko żeśmy z ciebie żartowali! Idź swoją drogą..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~Twarz mu ciemnieje, usta układają się w szyderczy grymas. "Zobaczmy, jak się do tego zabierasz, truposzu!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~"Wystarczy tego międlenia ozorem, brachu. Zostawmy trepa w spokoju. Chodź."~ */
  IF ~~ THEN REPLY #33571 /* ~Pozwól im odejść.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~Obydwaj wyciągają noże...~ */
  IF ~~ THEN REPLY #33572 /* ~Walcz z nimi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~Uciekaj.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~"Hej, ty, skórzana głowo! Ja tylko... tylko..."~ */
  IF ~~ THEN REPLY #33574 /* ~Zacznij pożerać ich wzrokiem.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~"Zejdźcie mi z drogi, albo was pozabijam."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~"Zejdźcie mi z drogi, albo was pozabijam."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~"Pozwólcie mi przejść. Nie chcę żadnych kłopotów."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~"Pozwólcie mi przejść. Nie chcę żadnych kłopotów."~ */ EXTERN ~DTHUGT2~ 6
END
