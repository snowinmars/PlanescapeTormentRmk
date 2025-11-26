// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~This alcove extends only a few feet into the north wall before coming to an abrupt end.~ */
  IF ~~ THEN REPLY #48504 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~This alcove extends only a few feet into the north wall before coming to an abrupt end.

It was here that Stale Mary had told you to close your eyes and think of the Silent King before stepping inside. As long as she is still 'alive,' it should activate a portal to the Silent King's throne room.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~Try to activate the portal.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~Activate the portal.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~Activate the portal.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~Try to activate the portal.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~Leave without activating the portal.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~Nothing happens. Perhaps Stale Mary is dead...~ */
  IF ~~ THEN REPLY #48510 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~Nothing happens. Perhaps after your 'intrusion' into the Silent King's throne room, Hargrimm destroyed or changed the nature of the portal.~ */
  IF ~~ THEN REPLY #65505 /* ~Leave.~ */ EXIT
END
