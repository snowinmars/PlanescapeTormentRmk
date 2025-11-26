// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~The guard pauses long enough to say, "You didn't see nothing, not if you know what's good for you." He turns back to his victim.~ */
  IF ~~ THEN REPLY #67913 /* ~"Farewell."~ */ EXIT
END
