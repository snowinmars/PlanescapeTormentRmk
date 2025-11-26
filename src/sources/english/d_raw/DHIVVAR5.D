// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~You see a pale man standing in the middle of the room. He is hunched over and doesn't look well.~ */
  IF ~~ THEN REPLY #49005 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~Leave the man alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~"You again... didn't I tell you I needed to rest?"~ */
  IF ~~ THEN REPLY #49008 /* ~"Hmm... What happened?"~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~"I feel terrible."~ */
  IF ~~ THEN REPLY #49011 /* ~"What happened?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~"I am not sure, but I think a bit of rest will do me good. Can you please leave me alone?"~ */
  IF ~~ THEN REPLY #49013 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~"Can you please leave so I can rest? Maybe I'll feel better if I rest for a bit."~ */
  IF ~~ THEN REPLY #49015 /* ~"Farewell."~ */ EXIT
END
