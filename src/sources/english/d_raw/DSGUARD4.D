// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~You see a Harmonium guard. He seems to be watching his surroundings carefully.~ */
  IF ~~ THEN REPLY #61228 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~He glances at you then looks away. He shows no other reaction to your presence.~ */
  IF ~~ THEN REPLY #61231 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~He shakes his head and waves you away. "No." He seems to be ignoring you.~ */
  IF ~~ THEN REPLY #61234 /* ~"It will only take a moment of your time."~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~He shakes his head and waves you away. "No." He still seems to be ignoring you.~ */
  IF ~~ THEN REPLY #61237 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~You see a harmonium guard. He does not react to your presence although you are certain he knows you are there.~ */
  IF ~~ THEN REPLY #61239 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~"Farewell."~ */ EXIT
END
