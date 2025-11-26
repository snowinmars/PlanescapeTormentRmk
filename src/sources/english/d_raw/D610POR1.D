// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR1~

IF ~  Dead("Ravel")
PartyHasItem("Bbchrm")
!PartyHasItem("RavelHai")
~ THEN BEGIN 0 // from:
  SAY #48816 /* ~The space beneath this overhanging branch is glowing softly... there seems to be a small brambled room beyond. As you study it, you suddenly notice the black-barbed charm Ravel gave you is writhing, like a dying snake.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #48817 /* ~Wrap Ravel's charm around your left index finger and step through the portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #48819 /* ~Examine the charm, wait and see what happens.~ */ GOTO 1
  IF ~~ THEN REPLY #51446 /* ~Leave the overhanging branch alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51443 /* ~The strange charm, using its barbed seeds, bites gently into the skin, and using the barbs like treads, it climbs its way up to your left hand, where it wraps itself tightly around your index finger. In response, the light beneath the arch glows brighter, beckoning you to step through.~ */
  IF ~~ THEN REPLY #51447 /* ~Step through the portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51448 /* ~Leave the overhanging branch alone.~ */ EXIT
END

IF ~  Dead("Ravel")
PartyHasItem("RavelHai")
~ THEN BEGIN 2 // from:
  SAY #51444 /* ~The space beneath this overhanging branch is glowing softly; it seems to reveal a small brambled room beyond. You notice that the gray hair Ravel plucked from her head is slowly twisting, like a corkscrew.~ */
  IF ~  Global("AR0610_Secret_Portal","AR0610",1)
~ THEN REPLY #51449 /* ~Wrap Ravel's hair around your left index finger and step through the portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51450 /* ~Wait, see what the hair does.~ */ GOTO 3
  IF ~~ THEN REPLY #51451 /* ~Leave the overhanging branch alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #51445 /* ~The hair slowly curls up your left arm, circles around your wrist, then wraps itself tightly around your left index finger. In response, the light beneath the arch glows brighter, beckoning you to step through.~ */
  IF ~~ THEN REPLY #51452 /* ~Step through the portal.~ */ DO ~SetGlobal("to0610A_Active","AR0610",1)
SetPortalCursor("TO0610A",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610A",PORTAL_ENABLED,TRUE)
SetGlobal("AR0610_Secret_Portal","AR0610",1)
~ EXIT
  IF ~~ THEN REPLY #51453 /* ~Leave the overhanging branch alone.~ */ EXIT
END
