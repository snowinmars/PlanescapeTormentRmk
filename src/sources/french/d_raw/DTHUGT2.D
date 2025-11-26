// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33556 /* ~"Ouh ! Regarde-moi *ça* !"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33557 /* ~"Hum… on dirait qu'un des cadavres des Hommes-Poussière s'est sauvé !" L'homme s'esclaffe d'un air malfaisant.~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #33558 /* ~"Et *pourquoi* ça, hein ?"~ */
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33579 /* ~"Parce que sinon, je vous tue tous les deux."~ */ EXTERN ~DTHUGT1~ 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33580 /* ~"Parce que sinon, je vous tue tous les deux."~ */ EXTERN ~DTHUGT1~ 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33581 /* ~"Parce que je ne veux pas d'ennuis… Laissez-moi passer."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33582 /* ~"Parce que je ne veux pas d'ennuis… Laissez-moi passer."~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33559 /* ~"Ouais, matois… j'plaisante, j'plaisante."~ */
  IF ~~ THEN REPLY #33583 /* ~"Et bien… Je vous tuerai quand même tous les deux."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Taunter_1","GLOBALGood",-1)
SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #33584 /* ~Laisse-les partir.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #33560 /* ~Les deux hommes tirent leurs couteaux…~ */
  IF ~~ THEN REPLY #33585 /* ~Bats-toi avec eux.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33586 /* ~Fuis.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #33561 /* ~"Pas de problème ?! Ben, c'est bien dommage, parce que-"~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT1~ 5
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #33562 /* ~"Pas de problème ?! Ben, c'est bien dommage, parce que tu viens de tomber dedans !"~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT1~ 6
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33563 /* ~"Euh…" L'homme jette un coup d'œil à son ami. "Oh, mon vieux, tu crois pas qu'en fait il est…"~ */
  IF ~~ THEN EXTERN ~DTHUGT1~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #33564 /* ~L'homme recule d'un pas. "Ça porte malheur de bidouiller avec les cadavres d'Hommes-Poussière, mon vieux… tirons-nous…" Les deux hommes se retournent pour s'enfuir.~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",2)
~ EXIT
END
