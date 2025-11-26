// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~"Par les jarretières de Shiva ! Qu'est-ce que c'est qu'cette créature puante ?"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~"P't'être qu'on devrait dépouiller ce cadavre et le ramener pour la prime ?" Il jette un regard à ses amis et hausse les sourcils.~ */
  IF ~~ THEN REPLY #33565 /* ~"Très drôle… Maintenant, fiche-moi la paix."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~"Laissez-moi passer ou je vous tue tous les deux."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~"Laissez-moi passer ou je vous tue tous les deux."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~"Je ne veux pas d'ennuis… Laissez-moi passer."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~"Je ne veux pas d'ennuis… Laissez-moi passer."~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~Gémis comme un mort-vivant : "Uhhhnnn…"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~L'homme hausse les sourcils. "Hé ! 'Fiche-moi la paix', qu'il dit…"~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~L'homme lève les mains. "Oh, matois ! On faisait qu'rigoler avec toi ! Allez, va…"~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~Le visage de l'homme s'assombrit ; ses lèvres se retroussent dans une grimace. "Qu'est-ce que tu réponds à ça, cadavre !"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~"Oh, tu t'es assez branlé le râtelier, mon gars. Fiche la paix au bige. Allez."~ */
  IF ~~ THEN REPLY #33571 /* ~Laisse-les partir.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~Les deux hommes tirent leurs couteaux…~ */
  IF ~~ THEN REPLY #33572 /* ~Bats-toi avec eux.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~Fuis.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~"Espèce de quoqueret ! C'est juste… juste…"~ */
  IF ~~ THEN REPLY #33574 /* ~Bave, regarde-les d'un air vorace.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~"Laissez-moi passer ou je vous tue tous les deux."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~"Laissez-moi passer ou je vous tue tous les deux."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~"Laissez-moi passer. Je ne veux pas d'ennuis."~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~"Laissez-moi passer. Je ne veux pas d'ennuis."~ */ EXTERN ~DTHUGT2~ 6
END
