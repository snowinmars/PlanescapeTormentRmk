// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7084 /* ~.~ */
  IF ~~ THEN REPLY #7085 /* ~"Dzięki za informacje."~ */ EXIT
END
