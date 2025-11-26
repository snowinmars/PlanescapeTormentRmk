// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2915 /* ~Je suis un arnaqueur githyanki qui tente d'attirer le joueur dans un piège.~ */
  IF ~~ THEN REPLY #2916 /* ~Eh bien, je tâcherai de ne plus m'approcher de toi. Au revoir.~ */ EXIT
END
