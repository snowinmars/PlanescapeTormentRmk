// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #51323 /* ~You notice an enclosed space beneath the walkway begin to shimmer softly. Once again Pharod's crutch glows as well.~ */
  IF ~~ THEN REPLY #51325 /* ~Touch the crutch to the walkway.~ */ DO ~SetPortalCursor("to0110",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0110",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51324 /* ~Leave.~ */ EXIT
END
