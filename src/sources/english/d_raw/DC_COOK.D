// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~The cook's face begins to grow red with anger. "What, did you not hear me? Out! Out of my kitchen!"~ */
  IF ~~ THEN REPLY #67946 /* ~Leave.~ */ EXIT
END
