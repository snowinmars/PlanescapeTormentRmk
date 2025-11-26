// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~You see a somber, pale-faced woman in black robes. She is staring silently into her drink.~ */
  IF ~~ THEN REPLY #2545 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~Leave her in peace.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~You see a somber, pale-faced Dustman in black robes. She is staring silently into her drink.~ */
  IF ~~ THEN REPLY #2547 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~Leave her in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~The Dustman looks up. "Yes?"~ */
  IF ~~ THEN REPLY #2550 /* ~"Can I ask you some questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~"Not at this time." The Dustman becomes silent and turns back to her drink.~ */
  IF ~~ THEN REPLY #2553 /* ~"Farewell then."~ */ EXIT
END
