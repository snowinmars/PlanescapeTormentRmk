// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~You see a young man with a bored expression on his face. He doesn't notice your approach.~ */
  IF ~~ THEN REPLY #63564 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~He jumps at your greeting and turns to face you. "What... What do you want?"~ */
  IF ~~ THEN REPLY #63567 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~"Questions... Oh, no. I'm busy." ~ */
  IF ~~ THEN REPLY #63570 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~"I don't care." He turns away from you.~ */
  IF ~~ THEN REPLY #63573 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~You see a young man. He is paying careful attention to the crowd around him. He nods at your approach.~ */
  IF ~~ THEN REPLY #63575 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~"Aye, a good day to you." He looks you up and down.~ */
  IF ~~ THEN REPLY #63578 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~"Please ask away."~ */
  IF ~~ THEN REPLY #63582 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~"What are you doing?"~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~"What can you tell me about this ward?"~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~"Is there anything of interest in this ward?"~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~"No one of any importance. Is there something specific you wanted to ask me?"~ */
  IF ~~ THEN REPLY #63588 /* ~"Yes, I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~"I'm watching the crowd. I like to watch people because I find them to be fascinating."~ */
  IF ~~ THEN REPLY #63591 /* ~"I see. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~"Nothing much really. I just come here to watch the crowds. There are lots of markets and such here so it attracts a wide variety of people... I like watching people." He glances about.~ */
  IF ~~ THEN REPLY #63594 /* ~"What can I buy here?"~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~He smiles. "Well... just about anything... Look around and shop."~ */
  IF ~~ THEN REPLY #63599 /* ~"I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~"Yes! The people here are fascinating. Quite a variety really... But I don't suppose most folks would care..."~ */
  IF ~~ THEN REPLY #63602 /* ~"Hmm. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~You see an anxious looking man. He gives you an annoyed look as you approach.~ */
  IF ~~ THEN REPLY #63605 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~He gives you a bored look. "Uh... Hello."~ */
  IF ~~ THEN REPLY #63608 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~"Then go find a tout." He frowns.~ */
  IF ~~ THEN REPLY #63611 /* ~"It will only take a moment of your time."~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~His frown deepens. "I really don't give a rat's arse..."~ */
  IF ~~ THEN REPLY #63614 /* ~"So you won't help me?"~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~"I see, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~He gives you a disgusted look, snorts, and then turns away. "Clueless sod..."~ */
  IF ~~ THEN REPLY #63617 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~You see the auctioneer customer. He waves you off as you attempt to talk to him again.~ */
  IF ~~ THEN REPLY #63619 /* ~Leave.~ */ EXIT
END
