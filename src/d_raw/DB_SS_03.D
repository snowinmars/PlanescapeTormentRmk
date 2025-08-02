// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~Этот красно-оранжевый камень, хранящийся в петле из гравированных серебряных лент, пульсирует теплым оранжевым светом. У его основания выгравировано «ДОЛОРА».~ */
  IF ~~ THEN REPLY #54095 /* ~Уйти.~ */ EXIT
END
