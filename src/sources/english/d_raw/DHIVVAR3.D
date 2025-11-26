// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48979 /* ~You see a plain looking woman who has an irritated look about her.~ */
  IF ~~ THEN REPLY #48980 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #48981 /* ~Leave the woman alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48982 /* ~"Maybe you don't remember too good. I said I want to be alone."~ */
  IF ~~ THEN REPLY #48983 /* ~"Hmm, I see your mood hasn't changed."~ */ GOTO 3
  IF ~~ THEN REPLY #48984 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48985 /* ~"Isn't there anywhere in this town where I can be by myself for a while?"~ */
  IF ~~ THEN REPLY #48986 /* ~"Why do you want to be alone?"~ */ GOTO 3
  IF ~~ THEN REPLY #48987 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48988 /* ~"'Alone' means 'without you.' Leave me alone."~ */
  IF ~~ THEN REPLY #48989 /* ~"Farewell."~ */ EXIT
END
