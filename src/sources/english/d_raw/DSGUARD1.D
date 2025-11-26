// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~You see a Harmonium guard. He watches you warily as you approach.~ */
  IF ~~ THEN REPLY #37930 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~He nods at you. "Good day, citizen."~ */
  IF ~~ THEN REPLY #37932 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~He shakes his head. "I am on duty, citizen. I do not have time for questions. Please take them elsewhere."~ */
  IF ~~ THEN REPLY #37934 /* ~"It would only take a moment of your time."~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~He frowns at you. "I do not have time for questions, citizen. Move along."~ */
  IF ~~ THEN REPLY #37936 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~You see a Harmonium guard. He frowns at your approach. "Good day again, citizen."~ */
  IF ~~ THEN REPLY #37937 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~"Farewell."~ */ EXIT
END
