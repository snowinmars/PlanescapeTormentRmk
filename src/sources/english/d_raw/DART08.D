// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~A painting of tall, black cliffs against a blood-red sky. There looks to be figures hiding amongst the crags of the cliffs but, whenever you squint at the painting to try and make them out, the images fade into nothing. A placard reads 'Outland Raiders.'~ */
  IF ~~ THEN REPLY #42672 /* ~Leave.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
