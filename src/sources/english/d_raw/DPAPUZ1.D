// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~It appears as though the dabus was attempting to tear down this ancient structure. Several boards are loose upon the building's frame, their nails nearly pried all the way out. ~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~Use the hammer to nail the boards back into place.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~You hammer the boards neatly back into place. Taking a step back to examine your handiwork, you notice that, strangely enough, the building no longer appears quite as old as it did at first glance.~ */
  IF ~~ THEN REPLY #49602 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~This rickety dwelling looks as though it has stood for centuries. Its wooden walls are weathered and worn with age. A number of planks on this side of the structure appear to have been recently pried loose.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~Examine the structure.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~With the loose boards neatly hammered back into place, this old building has resumed its particular run-down charm.~ */
  IF ~~ THEN REPLY #59108 /* ~Leave.~ */ EXIT
END
