// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #51323 /* ~Ты замечаешь, как закрытое пространство под проходом начинает слабо мерцать. И снова костыль Фарода также начинает светиться.~ */
  IF ~~ THEN REPLY #51325 /* ~Коснуться костылем прохода.~ */ DO ~SetPortalCursor("to0110",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0110",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51324 /* ~Уйти.~ */ EXIT
END
