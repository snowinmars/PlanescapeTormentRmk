// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34194 /* ~Этот янтарный камень, хранящийся в петле из гравированных серебряных лент, пульсирует мягким желтым светом. У его основания выгравировано «КИМАСКСИ ЗМЕЕЯЗЫКАЯ».~ */
  IF ~~ THEN REPLY #54094 /* ~Уйти.~ */ EXIT
END
