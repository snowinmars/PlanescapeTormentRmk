// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3402 /* ~I am one of the lasses of the Buried Village. I wander about the village, looking for corpses and exciting trinkets for Pharod.~ */
  IF ~~ THEN REPLY #3403 /* ~Good. Evil. I'm the one with the gun.~ */ EXIT
END
