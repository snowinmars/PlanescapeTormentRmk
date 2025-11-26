// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48820 /* ~This arch is made of a gnarled tree limb that has grown from the floor of the maze, then fallen in an arc. As you step up to the arch, the space beneath the arch glows softly... it seems to lead to some strange black-barbed garden. ~ */
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",1)
~ THEN REPLY #48821 /* ~Go to the left side of the arch, scratch the bark with your fingernails, then step through the portal.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  Global("AR0610_Secret_Portal_2","AR0610",0)
~ THEN REPLY #48822 /* ~Examine the archway.~ */ GOTO 1
  IF ~~ THEN REPLY #51442 /* ~Leave the brambled arch alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51436 /* ~As you examine the natural arch, you notice the left side of the trunk is scored, as if someone took a knife blade and cut several notches into it. The scorings, however, don't look like they came from a knife blade... they look like slash marks, as if from someone's talons.~ */
  IF ~~ THEN REPLY #51437 /* ~Scratch the trunk of the tree with your fingernails, see what happens.~ */ DO ~SetGlobal("AR0610_Secret_Portal_2","AR0610",1)
~ GOTO 2
  IF ~~ THEN REPLY #51438 /* ~Leave the brambled arch alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #51439 /* ~You sink your fingernails into the bark, and to your surprise, the wood gives way beneath your nails, like porridge. You dig your nails through the side of the brambled tree, and in response, the glow beneath the arch glows brightly, beckoning you to step through it.~ */
  IF ~~ THEN REPLY #51440 /* ~Step through the arch.~ */ DO ~SetGlobal("to0610B_Active","AR0610",1)
SetPortalCursor("TO0610B",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0610B",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51441 /* ~Leave the brambled arch alone.~ */ EXIT
END
