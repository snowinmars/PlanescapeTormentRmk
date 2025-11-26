// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~Un garde de l'Harmonium. Il paraît surveiller les alentours avec attention.~ */
  IF ~~ THEN REPLY #61228 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~Ignore l'homme.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~Il te jette un coup d'œil, puis se détourne. Ta présence ne suscite aucune réaction chez lui.~ */
  IF ~~ THEN REPLY #61231 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~Il secoue la tête et te fait signe de t'en aller. "Non." Il semble t'ignorer.~ */
  IF ~~ THEN REPLY #61234 /* ~"Ça ne te prendra qu'un instant."~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~Il secoue la tête et te fait signe de t'en aller. "Non." Il semble toujours t'ignorer.~ */
  IF ~~ THEN REPLY #61237 /* ~"Bien. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~Tu vois un garde de l'Harmonium. Il ne réagit pas à ta présence, pourtant tu es sûr qu'il sait que tu es là.~ */
  IF ~~ THEN REPLY #61239 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~"Au revoir."~ */ EXIT
END
