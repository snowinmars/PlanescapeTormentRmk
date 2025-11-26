// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRODMM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRODMM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64181 /* ~This magical rod allows the user to summon Modron constructs to do battle with his enemies. From one to three constructs are summoned. The constructs will fight fearlessly to the death.~ */
  IF ~~ THEN REPLY #64182 /* ~Use.~ */ DO ~CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64183 /* ~Put away.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 1 // from:
  SAY #64184 /* ~This magical rod allows the user to summon Modron constructs to do battle with his enemies. From one to three constructs are summoned. The constructs will fight fearlessly to the death.~ */
  IF ~~ THEN REPLY #64185 /* ~Use.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64186 /* ~Put away.~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 4 3 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 2 // from:
  SAY #64188 /* ~This magical rod allows the user to summon Modron constructs to do battle with his enemies. From one to three constructs are summoned. The constructs will fight fearlessly to the death.~ */
  IF ~~ THEN REPLY #64189 /* ~Use.~ */ DO ~CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
CreateCreatureAtFeet("Csum")
DestroyPartyItem("ModMite",FALSE)
~ EXIT
  IF ~~ THEN REPLY #64191 /* ~Put away.~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 3 // from:
  SAY #67150 /* ~The rod feels cold and lifeless in your hands. Perhaps it will not work in your current location.~ */
  IF ~~ THEN REPLY #67151 /* ~Put it away.~ */ EXIT
END

IF WEIGHT #1 ~  False()
~ THEN BEGIN 4 // from:
  SAY #67152 /* ~The rod feels cold and lifeless in your hands. Perhaps it will not work in your current location.~ */
  IF ~~ THEN REPLY #67153 /* ~Put it away.~ */ EXIT
END
