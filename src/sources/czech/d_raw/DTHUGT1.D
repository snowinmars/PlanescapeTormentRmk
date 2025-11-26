// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~"Šivovy podvazky! Co je ta smrdící věc?"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~"Možná bychom měli popadnout tudle ubohou mrtvolu a někde ji prodat, eh?" Zamrkal na svého kamaráda.~ */
  IF ~~ THEN REPLY #33565 /* ~"Strašně zábavné... a teď mi jděte z cesty."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~"Jděte mi z cesty, nebo vás zabiju oba!"~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~"Jděte mi z cesty, nebo vás zabiju oba!"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~"Nestojím o problémy... jen mě nech projít."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~"Nestojím o problémy... jen mě nech projít."~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~Zaúpěj jako nemrtvá příšera: "Uhhhnnn..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~Muž zvedl obočí. "Heh! Jdi mi z cesty, říká..."~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~Muž zvedl ruce. "Uau, kámo! My si jenom děláme srandu! A teď jdi svou cestou..."~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~Mužův výraz náhle potemněl. Našpulil rty a zavrčel. "Tak se podívejme, jak to dopadne, mrtvolo!"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~"Á, dost keců, necháme toho vola být. Pojď."~ */
  IF ~~ THEN REPLY #33571 /* ~Nechej je jít.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~Oba muži vytáhli nože...~ */
  IF ~~ THEN REPLY #33572 /* ~Bojuj s nimi.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~Uteč.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~"Ne, ty pitomče! To je jen... jen..."~ */
  IF ~~ THEN REPLY #33574 /* ~Slintej a hladově se na ně dívej.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~"Uhněte mi z cesty, nebo vás oba zabiju."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~"Uhněte mi z cesty, nebo vás oba zabiju."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~"Jen mě nech projít. Nestojím o problémy."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~"Jen mě nech projít. Nestojím o problémy."~ */ EXTERN ~DTHUGT2~ 6
END
