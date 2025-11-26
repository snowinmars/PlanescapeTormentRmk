// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPLACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPLACE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #20107 /* ~Здесь нет ответа.~ */
  IF ~~ THEN REPLY #20108 /* ~Уйти.~ */ EXIT
END
