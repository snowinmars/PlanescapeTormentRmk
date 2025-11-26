// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2903 /* ~I'm one of the low level mechanical constructs that fill the Modron Maze. It is my duty to challenge all intruders that enter the maze. Do you feel challenged?~ */
  IF ~~ THEN REPLY #2904 /* ~Not yet, though I'm sure I will be. Farewell.~ */ EXIT
END
