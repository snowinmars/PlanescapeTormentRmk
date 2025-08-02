// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34209 /* ~Этот сверкающий красный камень, хранящийся в петле из гравированных серебряных лент, пульсирует ярким малиновым светом. У его основания выгравировано «НЕННИ».~ */
  IF ~~ THEN REPLY #54100 /* ~Уйти.~ */ EXIT
END
