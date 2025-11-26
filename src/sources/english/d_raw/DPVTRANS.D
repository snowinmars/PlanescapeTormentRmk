// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #50995 /* ~As you approach the archway it begins to shimmer faintly. You notice that Pharod's crutch emits a similar glow.~ */
  IF ~~ THEN REPLY #50996 /* ~Touch the archway with the crutch.~ */ DO ~SetPortalCursor("to0105",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0105",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #50997 /* ~Leave.~ */ EXIT
END
