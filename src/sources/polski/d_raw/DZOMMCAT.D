// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3343 /* ~.~ */
  IF ~~ THEN REPLY #3344 /* ~Cuchniesz też tak jak on.~ */ EXIT
END
