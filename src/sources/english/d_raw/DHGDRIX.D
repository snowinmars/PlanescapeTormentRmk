// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGDRIX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGDRIX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37412 /* ~You see a tall man in plate armor. The armor is of unusual construction with spikes flaring from the shoulders, elbows, and forearms. He nods at your approach. "Good day, citizen."~ */
  IF ~~ THEN REPLY #37413 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37414 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37415 /* ~"How may I help you, citizen?" He gives you a friendly look.~ */
  IF ~~ THEN REPLY #37416 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37417 /* ~"I don't think you can. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.1 6.0 7.2 8.1 9.0 11.0 12.0
  SAY #37418 /* ~He smiles. "Certainly, citizen."~ */
  IF ~~ THEN REPLY #37419 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37420 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 7
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37421 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #37422 /* ~"I need to buy some weapons."~ */ GOTO 11
  IF ~~ THEN REPLY #37423 /* ~"I need to buy some magic items."~ */ GOTO 11
  IF ~~ THEN REPLY #37459 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37424 /* ~He gives you a slight bow. "I am Harmonium guard Drixel, citizen. I keep the peace here at the market."~ */
  IF ~~ THEN REPLY #37425 /* ~"Tell me about the Harmonium."~ */ GOTO 4
  IF ~~ THEN REPLY #37426 /* ~"I have other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37427 /* ~He snaps to attention. "Our belief is simple: We are the light. We are the Way. We are Order. We are Truth." He steels his expression. "There wasn't even a question of me joining them. You see, some berks talk about doing battle with chaos to restore order and harmony, but they haven't got the stones to do anything about it. The Harmonium, we take action. We keep order on Sigil's streets and on the planes." He nods at you matter-of-factly.~ */
  IF ~~ THEN REPLY #37428 /* ~"Go on."~ */ GOTO 5
  IF ~~ THEN REPLY #37429 /* ~"I see. I have some other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37430 /* ~He looks even bolder as he speaks. "And we don't keep order with words. We fight, and fight hard to maintain and enforce order. Cross-traders, knights-of-the-post, Indeps, Anarchists, Xaositects, tanar'ri fiends... all had best beware the Harmonium's shadow. Chaos can only exist in an air of tolerance!"~ */
  IF ~~ THEN REPLY #37431 /* ~"What can you tell me of the other factions?"~ */ GOTO 6
  IF ~~ THEN REPLY #37432 /* ~"I see. I have some other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37433 /* ~He looks rather bored, then shrugs his shoulders. "Nothing. They are not a part of the Truth that is the Harmonium. I have not studied them."~ */
  IF ~~ THEN REPLY #37434 /* ~"I have other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 7 // from: 2.1 10.0
  SAY #37435 /* ~He gives you a dumbfounded look, starts to say something, stops, and then starts again. "Ah, well... no one knows for certain where Lothar is, citizen. He hasn't broken any laws that we know of so we at the Harmonium leave him be. Uh... I'd suggest you do the same."~ */
  IF ~~ THEN REPLY #37436 /* ~"Why?"~ */ GOTO 8
  IF ~~ THEN REPLY #37437 /* ~"I still need to find him."~ */ GOTO 9
  IF ~~ THEN REPLY #37438 /* ~"I see... I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37439 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #37440 /* ~He gives you an annoyed look. "Because, berk. You don't mess with someone as powerful as Lothar without an extremely good reason and lots of friends backing you up! That's why."~ */
  IF ~~ THEN REPLY #37441 /* ~"I still need to find him."~ */ GOTO 9
  IF ~~ THEN REPLY #37442 /* ~"I see... I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37443 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #37444 /* ~He stares at you for some time before answering. "Very well. You can find the entrance to his kip in a wrecked building here in the Ward." He begins to look through you, rather than at you.~ */
  IF ~~ THEN REPLY #37445 /* ~"Thank you. I have some other questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #37446 /* ~He stares at you for some time before answering. "That sounds like something that Lothar, the Master of the Bones, would do." He glances around nervously and then talks softly to you. "Well, not Lothar himself, but one of his henchmen. Lothar keeps his nose clean."~ */
  IF ~~ THEN REPLY #37448 /* ~"Where can I find this 'Lothar'?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #37449 /* ~He gestures at the market. "Plenty of merchants here, citizen. You can find what you need with them."~ */
  IF ~~ THEN REPLY #37450 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37452 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #37454 /* ~Drixel bows slightly to you. "Good day to you again, citizen. How may I serve you?"~ */
  IF ~~ THEN REPLY #37455 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37456 /* ~"Never mind. Farewell."~ */ EXIT
END
