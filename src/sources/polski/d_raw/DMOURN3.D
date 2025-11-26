// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7082 /* ~.~ */
  IF ~~ THEN REPLY #7083 /* ~"Dzięki za informacje."~ */ EXIT
END
