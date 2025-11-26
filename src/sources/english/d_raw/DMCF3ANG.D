// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~You see an attractive young woman wearing fine clothes. She seems to be wandering aimlessly, just looking at the many goods for sale.~ */
  IF ~~ THEN REPLY #37171 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~She looks you up and down, then frowns. "I don't associate with unsavory individuals. From the look of you, you fit that category quite well. Off with you, berk."~ */
  IF ~~ THEN REPLY #37173 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~Her frown deepens and she puts her hands on her hips. "I don't care, berk. Leave me be or I'll call the guard!"~ */
  IF ~~ THEN REPLY #67883 /* ~"Bring them on..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~She throws you a rude gesture. "So be it... Guards! Guards!"~ */
  IF ~~ THEN REPLY #37178 /* ~Leave before they arrive.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~The woman turns to face you and immediately recognizes you. She scowls at you. "What does it take to get you to leave me be, berk?"~ */
  IF ~~ THEN REPLY #37179 /* ~"If you would answer some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~"Sorry, I'll leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~She throws you a rude gesture. "I don't want to answer your barmy questions. Find yourself a sage." She waves you off. "Now leave me be or I'll call the guard!"~ */
  IF ~~ THEN REPLY #37181 /* ~"Bring them on..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~The woman turns to face you and immediately recognizes you. She scowls at you. "What does it take to get you to leave me be, berk?" She sighs and throws up her arms in disgust. "I called the guards on you once, I can always do it again... for all the good it seems to do."~ */
  IF ~~ THEN REPLY #37183 /* ~"Bring them on..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~"Very well, farewell."~ */ EXIT
END
