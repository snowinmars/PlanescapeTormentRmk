// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~SOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~This foul mass is soft to the touch, and though it shouldn't, it FEELS evil. Occasionally, a wisp of gray mist will trail from this heart and dissipate into the air.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~Wish death upon your enemies.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~Wish death upon your enemies.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~Put the foul mass away.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~This foul mass is soft to the touch, and though it shouldn't, it FEELS evil. Occasionally, a wisp of gray mist will trail from this heart and dissipate into the air.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~Wish death upon your enemies.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~Wish death upon your enemies.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~Put the foul mass away.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~A wisp of gray smoke trails away from the heart and nothing more.~ */
  IF ~~ THEN REPLY #64977 /* ~Put the foul mass away.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~The heart expands and then contracts rapidly as if beating. Suddenly it stops and crumbles to dust in your hands.~ */
  IF ~~ THEN REPLY #64979 /* ~Drop ashes to the ground.~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
