// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHPATROL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHPATROL~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27619 /* ~This large, red-armored figure is standing in place, carefully watching passersby. You dimly recall that his ornate armor marks him as an officer of the Harmonium, one who provides law enforcement for the city.~ */
  IF ~~ THEN REPLY #27632 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #27620 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27621 /* ~The man's eyes rove over the Ward's inhabitants rather than you when he speaks: "Move along."~ */
  IF ~~ THEN REPLY #27633 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #27634 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27622 /* ~Though most of his attention is still directed at passersby, he takes a moment to look you in the eyes. "Nothing for you, here. Move along."~ */
  IF ~~ THEN REPLY #27635 /* ~"I just need a few answers..."~ */ GOTO 3
  IF ~~ THEN REPLY #27636 /* ~"I need your help..."~ */ GOTO 4
  IF ~~ THEN REPLY #27637 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27638 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27623 /* ~He shakes his head. "Speak to a citizen, then. I've a job to do here... and I won't neglect it to speak with you or anyone else. Now move along."~ */
  IF ~~ THEN REPLY #27639 /* ~"But I need your help..."~ */ GOTO 4
  IF ~~ THEN REPLY #27640 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27641 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #27624 /* ~He hefts his weapon. "You need help? Has a crime been committed?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27642 /* ~"Well... no. I just had some questions."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27643 /* ~"Well... no. I just had some questions."~ */ GOTO 6
  IF ~~ THEN REPLY #27644 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27625 /* ~He sighs. "I understand you've got questions, and in another time, in another place, I'd be inclined to help. But-" He pauses to peer suspiciously at someone walking past, then returns his attention to you. "But this is neither, so... just move along, sir. Now."~ */
  IF ~~ THEN REPLY #27645 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27646 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27626 /* ~"Look, berk, I've a-" He pauses to peer suspiciously at someone walking past, then returns his attention to you. "I've certain tasks set to me, and I'm not getting them done while I talk with some addle-coved sod who's looking for so-and-so or wants directions to who-knows-where. Move along."~ */
  IF ~~ THEN REPLY #27647 /* ~"And what if I feel like staying right here?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27648 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2 3.1 5.0 6.0
  SAY #27627 /* ~He shrugs, his armor clanking with the movement. "You're free to stand here, but not to pester the law. I'd suggest you leave, before there's any... trouble. Farewell."~ */
  IF ~~ THEN REPLY #27649 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27628 /* ~This Harmonium officer is watching the streets and people around him, wary of any sign of trouble. You think you may have encountered this particular man before, but with the great helms and identical Harmonium armor it's difficult to tell one from another.~ */
  IF ~~ THEN REPLY #27650 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #27651 /* ~Leave the officer alone.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27629 /* ~You recognize this man as a member of the Harmonium, a faction that's been out for you lately. He doesn't seem to have noticed you, yet.~ */
  IF ~~ THEN REPLY #27631 /* ~"Greetings..."~ */ GOTO 10
  IF ~~ THEN REPLY #27652 /* ~Leave before he sees you.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27630 /* ~You see the man's eyes widen through the slits in his helm. "It's him!" He prepares to charge you, bellowing: "Get this man, alive or dead!"~ */
  IF ~~ THEN REPLY #27653 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
