// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~It appears as if the dabus was in the process of repairing this building. Several newer and sturdier boards have been nailed into place over the old ones. With the right tool, it may be possible to reverse the repairs.~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~Use the prybar to loosen the boards.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~One by one, you pry loose the fresh boards from the face of the building. As the last board comes free, the building emits a loud groan as its weight shifts unsteadily upon its now unsupported frame.~ */
  IF ~~ THEN REPLY #49603 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~This dilapidated structure seems on the verge of collapse. Several boards have recently been nailed into place to reinforce the sagging building.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~Examine the structure more closely.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~Leave.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~This dilapidated structure seems on the verge of collapse. The planks the dabus had hammered into place have been removed, restoring the hovel to its previous, deteriorated state.~ */
  IF ~~ THEN REPLY #58923 /* ~Leave.~ */ EXIT
END
