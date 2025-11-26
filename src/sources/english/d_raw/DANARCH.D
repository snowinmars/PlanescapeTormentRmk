// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3162 /* ~This person looks at you with a look of sheer distrust, and looks away quickly, ignoring you, returning to a task left undone. It looks like the entire crowd is preparing for some sort of armed revolt.~ */
  IF ~~ THEN REPLY #3163 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #64388 /* ~As before, you find yourself thoroughly ignored.~ */
  IF ~~ THEN REPLY #64389 /* ~Leave.~ */ EXIT
END
