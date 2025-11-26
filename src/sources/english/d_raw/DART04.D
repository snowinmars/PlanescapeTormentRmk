// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34192 /* ~An animated, bloody iron chain, coiling and uncoiling upon itself. The chain itself seems to bend and weave like the spine of a snake. A small placard reads: 'A kyton's animate chain, from Jangling Hiter.'~ */
  IF ~~ THEN REPLY #42657 /* ~Touch the chain.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42658 /* ~Leave.~ */ DO ~SetGlobal("View_Art_04","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42656 /* ~The chain is slightly warm to the touch, as if it were alive. You notice that various barbs, tiny hooks, needles and other small, sharp bits are welded along the chain's length.~ */
  IF ~~ THEN REPLY #42659 /* ~Leave.~ */ EXIT
END
