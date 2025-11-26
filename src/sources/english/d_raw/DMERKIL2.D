// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL2~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10481 /* ~Without a word, this heavily-armored man draws his weapon and swings it at you.~ */
  IF ~~ THEN REPLY #10482 /* ~Attack him.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10483 /* ~Flee.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10484 /* ~An armored behemoth, this man is huge. He also seems to have a very keen eye - it misses nothing that transpires around him. It also seems that he has no interest in speaking to you.~ */
  IF ~~ THEN REPLY #10485 /* ~"I'd like to ask you some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10486 /* ~"Hello?"~ */ GOTO 2
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10487 /* ~"What can you tell me about Vhailor?"~ */ GOTO 4
  IF ~~ THEN REPLY #10488 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0 1.1 5.0
  SAY #10489 /* ~The man stares at you as if you were some form of bug. He stares at you, blinking slowly. He turns his head, then, dismissing you without speaking a word.~ */
  IF ~~ THEN REPLY #10490 /* ~"Talk to me or I'll have your heart, you lumbering tin heap."~ */ GOTO 3
  IF ~~ THEN REPLY #10491 /* ~"Hello?"~ */ GOTO 3
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10492 /* ~"What can you tell me about Vhailor?"~ */ GOTO 4
  IF ~~ THEN REPLY #10493 /* ~"Farewell, then. I'll find my answers someplace else."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #10494 /* ~You hear a subterranean rumble beginning deep in the man's chest. He lightly strokes his weapon, and stares at you with renewed interest.~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10495 /* ~"What can you tell me about Vhailor?"~ */ GOTO 4
  IF ~~ THEN REPLY #10496 /* ~"If that's the way you want to be, farewell."~ */ EXIT
  IF ~~ THEN REPLY #10497 /* ~Attack him.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.2 3.0
  SAY #10498 /* ~To your surprise, the silent giant reacts. He leans forward and fixes you with bright, unblinking eyes. His profoundly deep voice rumbles forth from his immense chest. "Vhailor was the best of all of us. A true Mercykiller. Justice was his mistress and his lifeblood. Chant has it he could see the purity of your soul. He was so devoted that he would never surrender, even on death's door. He disappeared chasing a criminal through a portal years ago. We haven't seen him since. He is a true legend." He settles back into his chair and ceases responding to you.~ */
  IF ~~ THEN REPLY #10499 /* ~"Can you answer some other questions for me?"~ */ GOTO 5
  IF ~~ THEN REPLY #10500 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #10501 /* ~"No." The Mercykiller doesn't even look at you.~ */
  IF ~~ THEN REPLY #10502 /* ~"I just want the answers to some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #10503 /* ~"Farewell, then."~ */ EXIT
END
