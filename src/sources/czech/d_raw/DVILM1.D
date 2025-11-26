// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILM1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILM1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3396 /* ~I am one of the Collectors in the Buried Village. I wander around, gathering items and corpses for Pharod.~ */
  IF ~~ THEN REPLY #3397 /* ~Sounds groovy.~ */ EXIT
END
