// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : VKEY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~VKEY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48936 /* ~Widzisz mały, kruchy, szklany koralik. Patrząc do środka, można w nim ujrzeć kolorową, wirującą mgiełkę.~ */
  IF ~~ THEN REPLY #48937 /* ~Zgnieć koralik.~ */ DO ~SetPortalCursor("to0101",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0101",PORTAL_ENABLED,TRUE)
DestroyPartyItem("VKey",TRUE)
~ EXIT
  IF ~~ THEN REPLY #48938 /* ~Odłóż go.~ */ EXIT
END
