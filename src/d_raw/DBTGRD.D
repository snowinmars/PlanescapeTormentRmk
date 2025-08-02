// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBTGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67912 /* ~После длительной паузы стражник произносит: «Если не хочешь неприятностей — ты ничего не видел». Он возвращается к своей жертве.~ */
  IF ~~ THEN REPLY #67913 /* ~«Прощай».~ */ EXIT
END
