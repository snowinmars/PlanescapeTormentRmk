// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~Лицо повара наливается красным. «Ты что, не слышал меня? Вон! Вон из моей кухни!»~ */
  IF ~~ THEN REPLY #67946 /* ~Уйти.~ */ EXIT
END
