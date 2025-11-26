// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~BEAD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48936 /* ~You see a small fragile glass bead. Peering inside the bead you can see colorful mists swirling about.~ */
  IF ~~ THEN REPLY #48937 /* ~Crush the bead.~ */ DO ~SetPortalCursor("to0101",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0101",PORTAL_ENABLED,TRUE)
DestroyPartyItem("VKey",TRUE)
~ EXIT
  IF ~~ THEN REPLY #48938 /* ~Put the bead away.~ */ EXIT
END
