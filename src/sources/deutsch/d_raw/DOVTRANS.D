// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #51323 /* ~Du bemerkst, daß ein abgeschlossener Raum unter dem Gang zu schimmern beginnt. Wieder schimmert auch Pharods Krücke.~ */
  IF ~~ THEN REPLY #51325 /* ~Berühr mit der Krücke den Gang.~ */ DO ~SetPortalCursor("to0110",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0110",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51324 /* ~Geh weg.~ */ EXIT
END
