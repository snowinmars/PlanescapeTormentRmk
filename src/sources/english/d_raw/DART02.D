// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34188 /* ~A massive horn of beaten lead, wound with brazen chains. The horn is horribly mangled, as if some tremendous force had crushed it. Jagged blades protrude along its length, almost as if it were meant to be used as club by some gigantic creature, as well as a battle-horn. A placard mounted beneath the horn reads 'Cleansing Horn of Acheron.'~ */
  IF ~~ THEN REPLY #34189 /* ~Put your head against the wall; try and blow the horn.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42670 /* ~Leave.~ */ DO ~SetGlobal("View_Art_02","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42669 /* ~Try as you might, you can get no sound to issue from the massive horn. Your lips come away from the mouthpiece tasting of blood, smoke and metal.~ */
  IF ~~ THEN REPLY #42671 /* ~Leave.~ */ EXIT
END
