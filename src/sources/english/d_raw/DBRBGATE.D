// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~No matter how you twist and tug at this gate, it remains sealed. Something tells you that you'll need a special key for this door.~ */
  IF ~~ THEN REPLY #61266 /* ~Leave.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~As you approach the door, the link of chain Trias pressed into your hands begins to heat. There is a tell-tale flickering around the edges of the barbed gate - a portal waits here.~ */
  IF ~~ THEN REPLY #61268 /* ~Activate the portal.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~Leave.~ */ EXIT
END
