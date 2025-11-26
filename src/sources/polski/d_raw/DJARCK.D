// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARCK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARCK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3071 /* ~.~ */
  IF ~~ THEN REPLY #3368 /* ~.~ */ EXIT
  IF ~~ THEN EXIT
END
