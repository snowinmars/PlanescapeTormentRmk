// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~You see a frail looking man, cowering in the corner.~ */
  IF ~~ THEN REPLY #48813 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~Leave the man alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~"You're not back to hurt me, are you? Please just leave me alone."~ */
  IF ~~ THEN REPLY #48970 /* ~"What are you talking about?"~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~"Please don't hurt me. I'm not doing anything."~ */
  IF ~~ THEN REPLY #48974 /* ~"What are you talking about?"~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~"Please... please don't hurt me."~ */
  IF ~~ THEN REPLY #48978 /* ~"Farewell."~ */ EXIT
END
