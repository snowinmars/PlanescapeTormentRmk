// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #50995 /* ~Als du dich dem Torbogen näherst, beginnt dieser leicht zu schimmern. Du bemerkst, daß Pharods Krücke ähnlich schimmert.~ */
  IF ~~ THEN REPLY #50996 /* ~Berühr den Bogen mit der Krücke.~ */ DO ~SetPortalCursor("to0105",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0105",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #50997 /* ~Geh weg.~ */ EXIT
END
