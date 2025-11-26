// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSUPWEP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSUPWEP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #55077 /* ~Cette arme semble faite d'un métal spécial. L'examen révèle qu'elle est fabriquée d'un seul et solide bloc de métal au lieu d'une lame insérée dans un manche. Au milieu de tes réflexions, la lame commence à bouger et à se transformer dans ta main, comme pour échapper à sa forme actuelle.~ */
  IF ~~ THEN REPLY #55079 /* ~Par ta volonté, transforme la lame.~ */ EXIT
END
