// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34208 /* ~Этот полупрозрачный зеленый камень, хранящийся в петле из гравированных серебряных лент, пульсирует ярким зеленым светом. У его основания выгравировано «ЭККО».~ */
  IF ~~ THEN REPLY #54099 /* ~Уйти.~ */ EXIT
END
