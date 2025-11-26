// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DPVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #50995 /* ~W chwili, gdy podchodzisz do łuku, zaczyna on delikatnie migotać. Zauważasz, że laska Faroda emituje podobny blask.~ */
  IF ~~ THEN REPLY #50996 /* ~Dotknij łuk laską.~ */ DO ~SetPortalCursor("to0105",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0105",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #50997 /* ~Odejdź.~ */ EXIT
END
