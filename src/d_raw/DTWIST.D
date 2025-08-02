// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTWIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTWIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2794 /* ~Криворотый пока не может с тобой разговаривать. Уже имени достаточно, чтобы понять, почему.~ */
  IF ~~ THEN REPLY #2795 /* ~Ну и ладно. Все равно.~ */ EXIT
END
