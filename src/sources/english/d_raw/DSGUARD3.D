// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~You see a Harmonium guard. He watches you approach with a bored look.~ */
  IF ~~ THEN REPLY #37961 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~He nods to you. "And to you as well, citizen."~ */
  IF ~~ THEN REPLY #37963 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~"I am new to the Harmonium and to this ward, citizen. I cannot help you with your questions." He gives you an apologetic smile.~ */
  IF ~~ THEN REPLY #37965 /* ~"Can you at least tell me what's going on here?"~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~He nods. "These people have been found guilty of minor crimes. They have been sentenced to a few years of indentured servitude and are being sold." He pauses. "That is all I can say, citizen."~ */
  IF ~~ THEN REPLY #37967 /* ~"I see. Can I ask you something else?"~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~He shakes his head. "I must be vigilant in my duty, citizen. I must ask you to move on now."~ */
  IF ~~ THEN REPLY #37969 /* ~"Fine, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~You see a Harmonium guard. He nods at your approach. "Hello again, citizen. May I help you?"~ */
  IF ~~ THEN REPLY #37970 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~"Never mind. Farewell."~ */ EXIT
END
