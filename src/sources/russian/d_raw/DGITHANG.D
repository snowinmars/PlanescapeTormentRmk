// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2915 /* ~Я гитьянки, который пытается завести игрока в западню.~ */
  IF ~~ THEN REPLY #2916 /* ~Отлично, тогда я буду держаться от тебя подальше. Прощай.~ */ EXIT
END
