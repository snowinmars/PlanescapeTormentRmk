// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58400 /* ~You see an older man wearing shoddy clothes. He watches your approach with a bored expression.~ */
  IF ~~ THEN REPLY #58402 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58403 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58405 /* ~He continues to gaze at you with a bored look. Finally he nods. "Hello, cutter. Why are you rattling your bone-box at me?"~ */
  IF ~~ THEN REPLY #58407 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58412 /* ~"No reason, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58414 /* ~He nods slowly as he looks away. "Well... I'm in this dung hole for stealing what ain't rightfully mine, not for answering damn fool questions..." He glares at you. "Go away."~ */
  IF ~~ THEN REPLY #58416 /* ~"Life here must be hard. It would be even harder for you as a cripple."~ */ GOTO 3
  IF ~~ THEN REPLY #58417 /* ~"I guess I'll be going then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58419 /* ~He frowns as he considers your words. You see his eyes travel along several of your scars and then meet your gaze. "You threatening me, berk?"~ */
  IF ~~ THEN REPLY #58421 /* ~"Yes. Answer some questions or I'll start removing parts of you a piece at a time."~ */ GOTO 4
  IF ~~ THEN REPLY #58422 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.0 8.0 9.2 10.1 11.0 12.1 13.1 14.0
  SAY #58424 /* ~He nods slowly. "What questions?"~ */
  IF ~~ THEN REPLY #58426 /* ~"Who are you?"~ */ GOTO 5
  IF ~~ THEN REPLY #58428 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #58430 /* ~"I'm looking for a deva, I understand he's here."~ */ GOTO 9
  IF ~~ THEN REPLY #58432 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58433 /* ~He hesitates. "Gib... the name's Gib."~ */
  IF ~~ THEN REPLY #58435 /* ~"Why are you here?"~ */ GOTO 6
  IF ~~ THEN REPLY #58437 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58438 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58440 /* ~"Weren't you listening to me? I said I was a thief. I'm here because I got caught." He smiles. "If you're going to force me to answer questions the least you can do is make them somewhat intelligent."~ */
  IF ~~ THEN REPLY #58441 /* ~"Smarting off to me isn't all that brilliant either..."~ */ GOTO 7
  IF ~~ THEN REPLY #58442 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58444 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58446 /* ~He shrugs.~ */
  IF ~~ THEN REPLY #58447 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58449 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #58450 /* ~"The prison is divided into three rings, the outer, the central, and the inner. This is the outer ring where the petty criminals, thieves and such, are. The central ring is where the more hardened criminals, thugs and such, are. The inner ring is for the more dangerous criminals, murderers, conspirators, enemies of the government, and such."~ */
  IF ~~ THEN REPLY #58451 /* ~"I see. I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58452 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #58454 /* ~He gives you a concerned look. "That deva... yes, he's down here. You might want to reconsider finding him though."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58456 /* ~"Because of the plague?"~ */ GOTO 10
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #58458 /* ~"Why is that?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #58460 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58462 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58464 /* ~He nods. "You know about it then... yes, the plague. It hit us fast and hard, most who got it ended up in the dead-book." He frowns at you. "Anyone who knows you've been to see him won't go near you..."~ */
  IF ~~ THEN REPLY #58466 /* ~"Where is he?"~ */ GOTO 11
  IF ~~ THEN REPLY #58467 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58468 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 13.0
  SAY #58470 /* ~"Off that way..." He gestures vaguely. "You'll run into him eventually."~ */
  IF ~~ THEN REPLY #58471 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58473 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #58474 /* ~"The chant is that he's a plague carrier." He gazes at you to see your reaction then shrugs. "I don't know that he is, myself, but the plague did start right when he showed up."~ */
  IF ~~ THEN REPLY #58476 /* ~"Tell me about this plague."~ */ GOTO 13
  IF ~~ THEN REPLY #58477 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58479 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #58481 /* ~"It hit us fast and hard, most who got it ended up in the dead-book." He frowns at you. "Anyone who knows you've been to see the deva won't go near you..."~ */
  IF ~~ THEN REPLY #58483 /* ~"Where can I find him?"~ */ GOTO 11
  IF ~~ THEN REPLY #58484 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58485 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #58487 /* ~You see Gib, the thief. He frowns at your approach. "Back again... great."~ */
  IF ~~ THEN REPLY #58490 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58492 /* ~"Farewell."~ */ EXIT
END
