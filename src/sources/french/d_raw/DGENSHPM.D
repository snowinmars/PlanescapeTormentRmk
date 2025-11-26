// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~Tu aperçois un homme qui examine tranquillement les marchandises.~ */
  IF ~~ THEN REPLY #36045 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~Il te jette un coup d'œil. "Oui, matois ?"~ */
  IF ~~ THEN REPLY #36048 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~Il fronce les sourcils et te fait signe de partir. "Je n'ai pas le temps pour ce genre de choses, matois. La paix !" Il te tourne le dos.~ */
  IF ~~ THEN REPLY #36051 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~Le client remarque que tu approches, et te tourne immédiatement le dos. Il ignore tes tentatives de discuter avec lui.~ */
  IF ~~ THEN REPLY #36053 /* ~Pars.~ */ EXIT
END
