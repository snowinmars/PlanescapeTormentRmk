// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3327 /* ~Jestem CZERWONYM Abiszai, bardzo różnym od czarnych. Naprawdę. Och, ja też będę chciał cię zabić.~ */
  IF ~~ THEN REPLY #3328 /* ~Miło mi.~ */ EXIT
END
