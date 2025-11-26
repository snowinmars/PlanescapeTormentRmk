// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2915 /* ~I'm a githyanki con artist who's trying to lead the player into a trap. ~ */
  IF ~~ THEN REPLY #2916 /* ~Well, I'll be sure to stay away from you, then. Farewell.~ */ EXIT
END
