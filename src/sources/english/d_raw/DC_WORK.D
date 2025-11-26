// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WORK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WORK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67978 /* ~This worker looks up from their task only momentarily. "Look... what I'm doing here isn't going to get done while I trade the chant with some passerby. Just leave me be while I'm toiling away here, will you?" They return to their labor.~ */
  IF ~~ THEN REPLY #67979 /* ~Leave.~ */ EXIT
END
