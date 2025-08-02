// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34207 /* ~Этот фиолетовый камень, хранящийся в петле из гравированных серебряных лент, пульсирует мягким лиловым светом. У его основания выгравировано «ВИВЬЕН».~ */
  IF ~~ THEN REPLY #54098 /* ~Уйти.~ */ EXIT
END
