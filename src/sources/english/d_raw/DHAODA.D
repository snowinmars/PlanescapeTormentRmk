// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~You seem to have startled her. She abruptly stops rummaging through the tent and stares at you nervously.~ */
  IF ~~ THEN REPLY #49892 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~"I wasn't doing nothing! I swears it!"~ */
  IF ~~ THEN REPLY #49895 /* ~"Why don't you tell me what you weren't doing?" ~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~"What you do is your business. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~She looks at you as if about to tell you something and then she quickly dashes for the door.~ */
  IF ~~ THEN REPLY #49898 /* ~"Stop..."~ */ DO ~EscapeArea()
~ EXIT
END
