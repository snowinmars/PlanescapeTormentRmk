// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_NOTLK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_NOTLK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67920 /* ~"I'm not interested in whatever it is you want. Leave me alone."~ */
  IF ~~ THEN REPLY #67921 /* ~"Very well. Farewell."~ */ EXIT
END
