// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47991 /* ~You see a middle-aged man, busily working on crates of stock. He nods at your approach.~ */
  IF ~~ THEN REPLY #47992 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #47993 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47994 /* ~He smiles and wipes his brow. "How do, cutter."~ */
  IF ~~ THEN REPLY #47995 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #47996 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.1 6.0 7.1 8.1 9.0 10.0
  SAY #47997 /* ~He nods. "Very well..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47998 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47999 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 4
  IF ~~ THEN REPLY #48000 /* ~"Where can I buy some weapons?"~ */ GOTO 5
  IF ~~ THEN REPLY #48001 /* ~"Where can I buy some magic?"~ */ GOTO 7
  IF ~~ THEN REPLY #48002 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48003 /* ~He shakes his head. "Never heard of him. I'd ask around, maybe someone else has."~ */
  IF ~~ THEN REPLY #48004 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48005 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #48006 /* ~He gives you a blank look. "Missing a skull... I, uh..." He shrugs. "Sorry, I wouldn't know anything about that..." He looks like he wants to ask you something but thinks better of it.~ */
  IF ~~ THEN REPLY #48007 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48008 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #48009 /* ~He concentrates for a moment as if he is trying to understand what you just asked him. "Well... weapons? I don't know... I suppose one of the merchants here would sell them. It's not the kind of thing an average citizen would need, though."~ */
  IF ~~ THEN REPLY #48010 /* ~"Without a weapon, how do you defend yourself?"~ */ GOTO 6
  IF ~~ THEN REPLY #48011 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48012 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48013 /* ~He looks at you with disbelief. "The Harmonium... it's their place to protect us citizens. They uphold the law, punish the guilty, that sort of thing. A citizen shouldn't have to worry about protecting himself." He looks at you blankly.~ */
  IF ~~ THEN REPLY #48014 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48015 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #48016 /* ~"Magic? I..." He twists his face into a confused mask. "I don't know. One of the merchants here maybe, but magic isn't all that prevalent... is it?" He awaits your answer.~ */
  IF ~~ THEN REPLY #48017 /* ~"You just don't have a clue, do you?"~ */ GOTO 8
  IF ~~ THEN REPLY #48018 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48019 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48020 /* ~He gives you a shocked look. "Well no... I mean yes... uh, well... maybe not." He shrugs. "I've been called naive, but I don't think that's the case. I'm just not as *worldly* as some, that's all."~ */
  IF ~~ THEN REPLY #48021 /* ~"What color is the sky in your universe..."~ */ GOTO 9
  IF ~~ THEN REPLY #48022 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48023 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #48024 /* ~He looks outside and points. "It's yellow... it's because of all the smoke and such from the factories."~ */
  IF ~~ THEN REPLY #48025 /* ~"Never mind. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48026 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #48027 /* ~The workman looks up at you. "Hello again. Can I help you."~ */
  IF ~~ THEN REPLY #48028 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #48029 /* ~"Never mind, farewell."~ */ EXIT
END
