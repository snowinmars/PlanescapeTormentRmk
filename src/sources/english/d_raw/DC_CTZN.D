// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~This person glares at you, obviously irked at interrupting the conversation, and turns back to the crowd.~ */
  IF ~~ THEN REPLY #67993 /* ~"I just had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~"Farewell, then..."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~The reply is snappish. "You're interrupting. Of course not!"~ */
  IF ~~ THEN REPLY #67992 /* ~"Fine, then. Farewell."~ */ EXIT
END
