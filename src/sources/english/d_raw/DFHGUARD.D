// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~You see a Harmonium guard. She is watching her surroundings carefully as she walks her patrol area. She seems uninterested in talking to you.~ */
  IF ~~ THEN REPLY #37757 /* ~Leave her be.~ */ EXIT
END
