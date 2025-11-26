// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~Tu aperçois une femme qui examine tranquillement les marchandises.~ */
  IF ~~ THEN REPLY #36035 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~Ignore la femme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~Elle te jette un coup d'œil. "Oui, matois ?"~ */
  IF ~~ THEN REPLY #36038 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~Elle te fait signe de partir. "Je n'ai pas le temps pour ce genre de choses, matois. La paix !" Elle te tourne le dos.~ */
  IF ~~ THEN REPLY #36041 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~La cliente remarque que tu approches, et te tourne le dos. Elle ignore tes tentatives de discuter avec elle.~ */
  IF ~~ THEN REPLY #36043 /* ~Pars.~ */ EXIT
END
