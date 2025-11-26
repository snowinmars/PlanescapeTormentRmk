// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~Cette personne te regarde d'un air méfiant, puis se détourne aussitôt pour reprendre sa tâche interrompue. On dirait que la foule prépare un soulèvement armé.~ */
  IF ~~ THEN REPLY #3163 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~Comme auparavant, on t'ignore royalement.~ */
  IF ~~ THEN REPLY #64389 /* ~Pars.~ */ EXIT
END
