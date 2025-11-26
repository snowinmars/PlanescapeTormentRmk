// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~You see a hulking man, dull-faced and slack-jawed. His muscles, however, are truly a sight to behold. He regards you steadily with his dead eyes. "Whuh?"~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~"I was told I could find a cell of Anarchists here. The password is 'eclipse.'"~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~"What is this place?"~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~"Hunh?"~ */
  IF ~~ THEN REPLY #44548 /* ~"Who are you again?"~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~"What is this place?"~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~"I was told I could find a cell of Anarchists here. The password is 'eclipse.'"~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~"No talk me. Talk Leena." He waves his oak-like arm at the woman supervisor.~ */
  IF ~~ THEN REPLY #44553 /* ~"Just a few questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~"NO TALK ME!" He seems agitated.~ */
  IF ~~ THEN REPLY #44557 /* ~"All right, all right. Farewell."~ */ EXIT
END
