// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2554 /* ~You see a somber, pale-faced man in black robes. He is staring silently into his drink.~ */
  IF ~~ THEN REPLY #2556 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2557 /* ~Leave him in peace.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2555 /* ~You see a somber, pale-faced Dustman in black robes. He is staring silently into his drink.~ */
  IF ~~ THEN REPLY #2558 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2559 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2560 /* ~The Dustman looks up. "Yes?"~ */
  IF ~~ THEN REPLY #2561 /* ~"Can I ask you some questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #2562 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2563 /* ~"Not at this time." The Dustman becomes silent and turns back to his drink.~ */
  IF ~~ THEN REPLY #2564 /* ~"Farewell then."~ */ EXIT
END
