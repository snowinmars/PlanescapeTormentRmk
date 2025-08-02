// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34199 /* ~Этот фиолетовый камень, хранящийся в петле из гравированных серебряных лент, пульсирует густым фиолетовым светом. У его основания выгравировано «МАРИССА».~ */
  IF ~~ THEN REPLY #54097 /* ~Уйти.~ */ EXIT
END
