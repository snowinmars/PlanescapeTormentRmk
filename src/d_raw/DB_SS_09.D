// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34210 /* ~Этот полупрозрачный камень цвета индиго, хранящийся в петле из гравированных серебряных лент, пульсирует темно-синим светом. У его основания выгравировано «ДЖУЛЬЕТТА».~ */
  IF ~~ THEN REPLY #54101 /* ~Уйти.~ */ EXIT
END
