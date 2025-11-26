// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37727 /* ~You see an unremarkable man. He appears to be nothing more than another customer at the market. He wanders among the other shoppers with a bored expression.~ */
  IF ~~ THEN REPLY #37737 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37738 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37728 /* ~He turns at your greeting and his look of boredom increases. "Yes..." ~ */
  IF ~~ THEN REPLY #37739 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37740 /* ~"Never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37729 /* ~He gives you a mildly irritated look. "All right..."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37741 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37742 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 4
  IF ~~ THEN REPLY #37743 /* ~"Where can I buy some weapons?"~ */ GOTO 5
  IF ~~ THEN REPLY #37744 /* ~"Where can I buy some magic?"~ */ GOTO 5
  IF ~~ THEN REPLY #37745 /* ~"What can you tell me about this ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #37746 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37730 /* ~"Never heard of him. I'd remember that *Master of the Bones* title. You can't miss something like that." He continues to look irritated.~ */
  IF ~~ THEN REPLY #37747 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37748 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37731 /* ~He stares at you for a few moments. "Missing a skull... well now, that's a new one. I would think that the thieves of Sigil could find more valuable things to abscond with. I wouldn't know what to tell you." He shrugs.~ */
  IF ~~ THEN REPLY #37749 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37750 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37732 /* ~He gives you a bored look, then glances about the market. "Right here, cutter." He gestures vaguely. "Just take the time to ask the merchants. I'm sure you'll find what you need."~ */
  IF ~~ THEN REPLY #37751 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37752 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37733 /* ~He sighs. "It's not much... but it's the only home I will ever know. I guess I should learn to love it, cause I'm not leaving."~ */
  IF ~~ THEN REPLY #37753 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37754 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37734 /* ~He turns at your approach and frowns. "I've given you some of my time already. I've got no more to give, cutter." He turns away from you.~ */
  IF ~~ THEN REPLY #37735 /* ~Leave.~ */ EXIT
END
