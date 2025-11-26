// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #51323 /* ~Spostrzegasz, że zamknięta przestrzeń pod chodnikiem zaczyna lekko migotać. Także laska Faroda znowu zaczyna świecić.~ */
  IF ~~ THEN REPLY #51325 /* ~Dotknij laską chodnika.~ */ DO ~SetPortalCursor("to0110",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0110",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51324 /* ~Odejdź.~ */ EXIT
END
