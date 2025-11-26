// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSOHMIEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSOHMIEN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #51218 /* ~Die faulige Masse fühlt sich weich an, und obwohl sie es nicht sollte, FÜHLT sie sich böse an. Hin und wieder steigt ein Wölkchen grauen Nebels aus diesem Herz auf und löst sich in der Luft auf. 
~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #51238 /* ~Wünsch deinen Feinden den Tod.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
IncrementGlobal("Fosterer","Global",1)
~ EXIT
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #51287 /* ~Wünsch deinen Feinden den Tod.~ */ DO ~CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
CreateCreatureAtFeet("BSohmien")
DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51288 /* ~Leg die faulige Masse weg.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 1 // from:
  SAY #64972 /* ~Diese faule Masse fühlt sich weich an, und obwohl sie es nicht sollte, FÜHLT sie sich böse an. Gelegentlich strömt ein Wölkchen grauen Nebels aus dem Herz und vergeht in der Luft.~ */
  IF ~  GlobalLT("Fosterer","Global",3)
~ THEN REPLY #64973 /* ~Wünsch deinen Feinden den Tod.~ */ DO ~IncrementGlobal("Fosterer","Global",1)
~ GOTO 2
  IF ~  Global("Fosterer","Global",3)
~ THEN REPLY #64974 /* ~Wünsch deinen Feinden den Tod.~ */ GOTO 3
  IF ~~ THEN REPLY #64975 /* ~Leg die faulige Masse weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64976 /* ~Ein Wölkchen grauen Nebels entweicht dem Herzen, sonst geschieht nichts.~ */
  IF ~~ THEN REPLY #64977 /* ~Leg die faulige Masse weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #64978 /* ~Das Herz weitet sich und zieht sich schnell zusammen, als ob es schlagen würde. Plötzlich hört es auf und zerfällt zu Staub in deinen Händen.~ */
  IF ~~ THEN REPLY #64979 /* ~Laß die Asche auf den Boden fallen.~ */ DO ~DestroyItemObject("Sohmien",Protagonist,TRUE)
~ EXIT
END
