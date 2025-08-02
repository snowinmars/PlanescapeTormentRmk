// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~Этот прозрачный камень, хранящийся в петле из гравированных серебряных лент, пульсирует ярким внутренним светом. У его основания выгравировано «ИВ».~ */
  IF ~~ THEN REPLY #54093 /* ~Уйти.~ */ EXIT
END
