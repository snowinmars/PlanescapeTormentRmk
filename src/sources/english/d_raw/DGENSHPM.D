// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~You see a man leisurely examining the wares. ~ */
  IF ~~ THEN REPLY #36045 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~He glances at you. "Yes, cutter?"~ */
  IF ~~ THEN REPLY #36048 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~He frowns and waves you away. "I have no time for this, cutter. Leave me be." He turns away from you.~ */
  IF ~~ THEN REPLY #36051 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~The shopper turns to look at you then immediately turn his back to you. He ignores your attempts to talk to him.~ */
  IF ~~ THEN REPLY #36053 /* ~Leave.~ */ EXIT
END
