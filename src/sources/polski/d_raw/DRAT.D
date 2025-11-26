// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3333 /* ~.~ */
  IF ~~ THEN REPLY #3334 /* ~Pasuje.~ */ EXIT
END
