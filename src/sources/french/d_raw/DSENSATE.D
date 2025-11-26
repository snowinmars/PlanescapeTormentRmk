// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~"Je suis un Sensas 'commun' de la Salle des Fêtes. Heureux de faire ta connaissance."~ */
  IF ~~ THEN REPLY #2986 /* ~"Enchanté de te quitter."~ */ EXIT
END
