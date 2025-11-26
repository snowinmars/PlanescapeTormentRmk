// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~BEAD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48936 /* ~Tu vois une petite perle en verre fragile. En examinant l'intérieur de la perle, tu vois des spirales de buée colorée.~ */
  IF ~~ THEN REPLY #48937 /* ~Écrase la perle.~ */ DO ~SetPortalCursor("to0101",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0101",PORTAL_ENABLED,TRUE)
DestroyPartyItem("VKey",TRUE)
~ EXIT
  IF ~~ THEN REPLY #48938 /* ~Range la perle.~ */ EXIT
END
