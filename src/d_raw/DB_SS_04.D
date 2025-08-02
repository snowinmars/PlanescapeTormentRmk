// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~Этот полупрозрачный голубовато-белый камень, хранящийся в петле из гравированных серебряных лент, пульсирует мягким голубым светом. У его основания выгравировано «КЕСАЙ-СЕРРИ».~ */
  IF ~~ THEN REPLY #54096 /* ~Уйти.~ */ EXIT
END
