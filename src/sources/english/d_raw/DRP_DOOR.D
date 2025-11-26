// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRP_DOOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRP_DOOR~

IF ~  !PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #42765 /* ~This archway leads only inches into the small building before becoming blocked by a solid wall of refuse. The rubbish is packed so tightly it may as well be stones and mortar.~ */
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
!NearbyDialog("Ddakkon")
~ THEN REPLY #48355 /* ~Leave.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~I found an impassable, trash-filled archway in Ragpicker's Square. Footprints lead up to it and do not turn around, so there's got to be some way through... perhaps someone in the Square will know.~ */ GOTO 5
  IF ~  Global("RP_Portal","GLOBAL",0)
NearbyDialog("Dmorte")
~ THEN REPLY #48366 /* ~Leave.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~I found an impassable, trash-filled archway in Ragpicker's Square. Footprints lead up to it and do not turn around, so there's got to be some way through... perhaps someone in the Square will know.~ */ EXTERN ~DMORTE~ 647
  IF ~  Global("RP_Portal","GLOBAL",0)
!NearbyDialog("Dmorte")
NearbyDialog("Ddakkon")
~ THEN REPLY #65000 /* ~Leave.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ JOURNAL #56749 /* ~I found an impassable, trash-filled archway in Ragpicker's Square. Footprints lead up to it and do not turn around, so there's got to be some way through... perhaps someone in the Square will know.~ */ EXTERN ~DDAKKON~ 361
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #65001 /* ~Leave.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalLT("RP_Portal","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #48356 /* ~This archway leads only inches into the small building before becoming blocked by a solid wall of refuse. The rubbish is packed so tightly it may as well be stones and mortar. As you come closer, however, the archway's outline begins to shimmer. You notice the handful of junk you've been carrying about begins to shimmer, as well.~ */
  IF ~~ THEN REPLY #48357 /* ~Thrust the junk into the archway.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",5)
SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
~ GOTO 4
  IF ~  Global("RP_Portal","GLOBAL",0)
~ THEN REPLY #48358 /* ~Step back, leave.~ */ DO ~SetGlobal("RP_Portal","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("RP_Portal","GLOBAL",0)
~ THEN REPLY #48367 /* ~Step back, leave.~ */ EXIT
END

IF ~  !PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 2 // from:
  SAY #48359 /* ~This is the portal that links Ragpicker's Square to the gateway to the Trash Warrens. Unfortunately, you're not holding on to any of the junk that's used to activate it at the moment.~ */
  IF ~~ THEN REPLY #48360 /* ~Leave.~ */ EXIT
END

IF ~  PartyHasItem("Junk")
GlobalGT("RP_Portal","GLOBAL",4)
~ THEN BEGIN 3 // from:
  SAY #48361 /* ~This is the portal that links Ragpicker's Square to the gateway to the Trash Warrens. It's already begun to shimmer due to the proximity of the junk you've got on you.~ */
  IF ~~ THEN REPLY #48362 /* ~Thrust the junk into the archway.~ */ DO ~SetPortalCursor("To_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("From_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("To_Portal",PORTAL_ENABLED,TRUE)
SetPortalCursor("From_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("RP_Portal","GLOBAL",5)
~ GOTO 4
  IF ~~ THEN REPLY #48363 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 3.0
  SAY #48364 /* ~The wall of refuse flickers, wavers, and seems to fold in on itself, revealing an open space beyond it... a passage or portal seems to have formed within the frame of the archway.~ */
  IF ~~ THEN REPLY #48365 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0
  SAY #64988 /* ~Just as you turn to go, you notice a number of dirty footprints that lead into the archway... and do not turn around. It seems as if the area sees a lot of traffic for an archway that apparently doesn't lead anywhere...~ */
  IF ~~ THEN REPLY #64989 /* ~"Hmmm. Perhaps someone around here knows how to get through..."~ */ EXIT
END
