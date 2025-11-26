// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMONJUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMONJUG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #50429 /* ~This is a heavy, plain-looking, metallic jug with a hinged stopper. Despite its common appearance, you feel reluctant to touch the thing, as if it might bite you. You've been told there's some sort of monster trapped inside of it - but peering into the jug's mouth reveals nothing but inky blackness.~ */
  IF ~~ THEN REPLY #50432 /* ~Upend the jug, see if anything comes out.~ */ GOTO 1
  IF ~~ THEN REPLY #50433 /* ~Put the jug away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50434 /* ~At first there is nothing... but then a black, viscous liquid begins to bubble out from the jug's mouth, forming a slimy pool of steaming, tarry filth on the ground. As the jug begins to dissolve in your hands, the pool begins to writhe, throb, and rise to form a tall, hideous creature...~ */
  IF ~~ THEN REPLY #50435 /* ~"What the...?"~ */ DO ~CreateCreatureAtFeet("Geherl")
DestroyPartyItem("MonJug",FALSE)
~ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Current_Area","GLOBAL",1199)
GlobalLT("Current_Area","GLOBAL",1205)
~ THEN BEGIN 2 // from:
  SAY #64980 /* ~This is a heavy, plain-looking, metallic jug with a hinged stopper. Despite its common appearance, you feel reluctant to touch the thing, as if it might bite you. You've been told there's some sort of monster trapped inside of it - but peering into the jug's mouth reveals nothing but inky blackness.~ */
  IF ~~ THEN REPLY #64981 /* ~Upend the jug, see if anything comes out.~ */ GOTO 3
  IF ~~ THEN REPLY #64982 /* ~Put the jug away.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64983 /* ~A black, viscous liquid pours from the jug's mouth and forms a slimy pool of muck on the ground. Besides the mess, nothing else happens.~ */
  IF ~~ THEN REPLY #64984 /* ~Throw the empty jug away.~ */ DO ~DestroyPartyItem("MonJug",FALSE)
~ EXIT
END
