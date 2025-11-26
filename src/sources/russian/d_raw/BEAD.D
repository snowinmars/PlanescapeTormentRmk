// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~BEAD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48936 /* ~Перед тобой хрупкая стеклянная бусина. Если присмотреться, то можно заметить вихрящуюся цветную дымку.~ */
  IF ~~ THEN REPLY #48937 /* ~Разбить бусину.~ */ DO ~SetPortalCursor("to0101",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0101",PORTAL_ENABLED,TRUE)
DestroyPartyItem("VKey",TRUE)
~ EXIT
  IF ~~ THEN REPLY #48938 /* ~Отложить бусину.~ */ EXIT
END
