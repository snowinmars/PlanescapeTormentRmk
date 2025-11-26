// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~BEAD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48936 /* ~Du siehst eine zerbrechliche Glasperle. Als du in die Perle hineinsiehst, erkennst du, wie bunte Nebel umherwirbeln.~ */
  IF ~~ THEN REPLY #48937 /* ~Zerdrück die Perle.~ */ DO ~SetPortalCursor("to0101",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0101",PORTAL_ENABLED,TRUE)
DestroyPartyItem("VKey",TRUE)
~ EXIT
  IF ~~ THEN REPLY #48938 /* ~Leg die Perle weg.~ */ EXIT
END
