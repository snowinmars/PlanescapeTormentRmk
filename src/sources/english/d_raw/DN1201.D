// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DN1201.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DN1201~

IF ~  True()
~ THEN BEGIN 0 // from: 1.6 3.0
  SAY #44993 /* ~This foul-smelling note has a strange looking diagram inscribed beneath the writing. It looks as if it's instructing you to fold the corners of the note so their points touch the center. There is a series of strange marks on each corner - one mark on the upper right, two marks on the lower right, three marks on the lower left, and no marks on the upper left. ~ */
  IF ~~ THEN REPLY #44994 /* ~Fold the upper right into the center. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44995 /* ~Fold the lower right into the center. ~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44996 /* ~Fold the lower left into the center. ~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44997 /* ~Fold the upper left into the center. ~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44998 /* ~Leave the note alone. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
  SAY #44999 /* ~You fold the corner inwards so its point touches the center. ~ */
  IF ~  Global("UR_1201","GLOBAL",0)
~ THEN REPLY #45000 /* ~Fold the upper right into the center. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45001 /* ~Fold the lower right into the center. ~ */ DO ~SetGlobal("1201_Note","GLOBAL",2)
SetGlobal("LR_1201","GLOBAL",1)
~ GOTO 1
  IF ~  Global("LR_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",1)
~ THEN REPLY #45002 /* ~Fold the lower right into the center. ~ */ DO ~SetGlobal("LR_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("LL_1201","GLOBAL",0)
~ THEN REPLY #45003 /* ~Fold the lower left into the center. ~ */ DO ~SetGlobal("LL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
!Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45004 /* ~Fold the upper left into the center. ~ */ DO ~SetGlobal("UL_1201","GLOBAL",1)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 1
  IF ~  Global("UL_1201","GLOBAL",0)
Global("1201_Note","GLOBAL",2)
~ THEN REPLY #45005 /* ~Fold the upper left into the center. ~ */ GOTO 2
  IF ~~ THEN REPLY #45006 /* ~Unfold the note, start again.~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 0
  IF ~~ THEN REPLY #45008 /* ~Unfold the note and leave it alone. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.5
  SAY #45015 /* ~As you fold the upper left inward to the center, you watch as the upper right unfolds by itself, resuming its normal position. ~ */
  IF ~~ THEN REPLY #45016 /* ~Fold the upper right back into the center. ~ */ GOTO 4
  IF ~~ THEN REPLY #45017 /* ~Fold the lower left corner inwards. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ GOTO 3
  IF ~~ THEN REPLY #45018 /* ~Unfold the note and leave it alone. ~ */ DO ~SetGlobal("UR_1201","GLOBAL",0)
SetGlobal("LR_1201","GLOBAL",0)
SetGlobal("LL_1201","GLOBAL",0)
SetGlobal("UL_1201","GLOBAL",0)
SetGlobal("1201_Note","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45019 /* ~As you fold the lower left corner inwards, it stays for a moment, then the other two corners unfold outwards. Nothing happens. ~ */
  IF ~~ THEN REPLY #45020 /* ~Examine the note again.~ */ GOTO 0
  IF ~~ THEN REPLY #45021 /* ~Put the note away. ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #45022 /* ~As you fold the upper right corner back to the center, the lower left corner mirrors the action, until all the corners touch in the center. You watch for a moment, and the corners of the paper raise up, turning the note into a small four-sided paper pyramid. ~ */
  IF ~~ THEN REPLY #45023 /* ~Open the sides of the pyramid. ~ */ DO ~AddexperienceParty(250)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #45024 /* ~You peel back the sides of the pyramid, and the paper disintegrates to dust. Inside is a small triangle-shaped earring. It catches the light and gleams brightly. ~ */
  IF ~~ THEN REPLY #45025 /* ~Take the triangle earring...~ */ DO ~GiveItemCreate("TEarring",Protagonist,3,0,0)
DestroyPartyItem("N1201",TRUE)
~ EXIT
END
