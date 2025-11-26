// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~The young man smiles as you enter his tent, gesturing for you to sit down. "Clean and wax your boots, sir? A wondrous shine for only two copper commons..."~ */
  IF ~~ THEN REPLY #51712 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~"I welcome you once more, sir. Here to get your boots shined, perchance? A cleaning and waxing for a pair of copper commons..."~ */
  IF ~~ THEN REPLY #51714 /* ~"No thanks. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~"And a farewell to you, sir... please return should you need your boots shined."~ */
  IF ~~ THEN REPLY #51716 /* ~Leave.~ */ EXIT
END
