// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~You see a handsome young man wearing fine clothes. He seems to be wandering aimlessly, just looking at the many goods for sale. He notices your approach but pays you no heed.~ */
  IF ~~ THEN REPLY #37713 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~He looks you up and down, then gives you a disdainful look. "I don't associate with unsavory individuals. From the look of you, you fit that category quite well. Off with you, berk."~ */
  IF ~~ THEN REPLY #37715 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~He frowns and points a finger at you as if he is scolding a child. "I don't care, berk. Leave me be or I'll call the guard!"~ */
  IF ~~ THEN REPLY #37717 /* ~"Bring them on..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~He throws you a rude gesture. "So be it... Guards! Guards!"~ */
  IF ~~ THEN REPLY #37719 /* ~Prepare to defend yourself...~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~Leave before they arrive.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~The man turns to face you and immediately recognizes you. He scowls at you. "What does it take to get you to leave me be, berk?"~ */
  IF ~~ THEN REPLY #37721 /* ~"If you would answer some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~"Sorry, I'll leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~He throws you a rude gesture. "I don't want to answer your barmy questions. Find yourself a sage." He waves you off. "Now leave me be or I'll call the guard!"~ */
  IF ~~ THEN REPLY #37723 /* ~"Bring them on..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~The man turns to face you and immediately recognizes you. He scowls at you. "What does it take to get you to leave me be, berk?" He sighs and throws up his arms in disgust. "I called the guards on you once, I can always do it again... for all the good it seems to do."~ */
  IF ~~ THEN REPLY #37725 /* ~"Bring them on..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~"Very well, farewell."~ */ EXIT
END
