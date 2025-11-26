// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~You see a Harmonium guard. He waves you away as you approach. "Move along, citizen. Nothing to see here."~ */
  IF ~~ THEN REPLY #37944 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~He frowns at you. "Which part of *move along* did you not understand?" He glares at you. "Nothing to see here, be gone."~ */
  IF ~~ THEN REPLY #37946 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~He looks at you mockingly. "Oh, you have questions. Well, that makes all the difference in the world..." He glares at you. "Look, I don't have time for any questions. Move along."~ */
  IF ~~ THEN REPLY #37948 /* ~"It would only take a moment of your time."~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~"I don't have a moment to give you, citizen. Move along." He waves you away.~ */
  IF ~~ THEN REPLY #37950 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~You see a Harmonium guard. He frowns at your approach. "I don't have time for socializing, citizen. Move along."~ */
  IF ~~ THEN REPLY #37951 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~"Farewell."~ */ EXIT
END
