// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64432 /* ~You see a man with a worried expression. He glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #64433 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #64434 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64435 /* ~He sighs and turns his attention to you. "Greetings to you as well... What do you want?"~ */
  IF ~~ THEN REPLY #64436 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #64437 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64438 /* ~He frowns. "Questions... Bar that, berk. Pike off." ~ */
  IF ~~ THEN REPLY #64439 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #64440 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64441 /* ~"I don't have a moment to give you." He pauses, reaches into his belt and pulls out a dagger. "How about I give you some Baatorian steel instead?"~ */
  IF ~~ THEN REPLY #64442 /* ~Attack him.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #64443 /* ~Leave.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #64444 /* ~You see a young man. He glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #64445 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #64446 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64447 /* ~He smiles at you but looks about nervously. "Yes. Greetings and all that... You want something?"~ */
  IF ~~ THEN REPLY #64448 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #64449 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #64450 /* ~He frowns and sighs. "If you must."~ */
  IF ~~ THEN REPLY #64451 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #64452 /* ~"What are you doing?"~ */ GOTO 8
  IF ~~ THEN REPLY #64453 /* ~"What can you tell me about Curst?"~ */ GOTO 9
  IF ~~ THEN REPLY #64454 /* ~"Do you know anything about a deva?"~ */ GOTO 11
  IF ~~ THEN REPLY #64455 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64456 /* ~"It isn't important who I am. Just ask your questions." He gives you an impatient look.~ */
  IF ~~ THEN REPLY #64457 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #64458 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64459 /* ~"What I am doing is not really your concern. Just ask your questions."~ */
  IF ~~ THEN REPLY #64460 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #64461 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #64462 /* ~"Curst..." He pauses and glances about. "Don't trust nobody. That's all you got to know about Curst to survive. Don't trust nobody..."~ */
  IF ~~ THEN REPLY #64463 /* ~"Does that include you?"~ */ GOTO 10
  IF ~~ THEN REPLY #64464 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #64465 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64466 /* ~He smiles. "Absolutely..."~ */
  IF ~~ THEN REPLY #64467 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #64468 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #64469 /* ~He frowns as he thinks. "No, nothing about a deva." He shrugs. "Ask at the administration office in the center of town."~ */
  IF ~~ THEN REPLY #64470 /* ~"I will. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #64471 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #64472 /* ~You see an angry looking man. He glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #64473 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #64474 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #64475 /* ~He looks at you warily. "Uh... Hello. Whatever it is you want, I don't have it. Whatever it is you're trying to sell, I don't want it. Now leave me be." He glares at you.~ */
  IF ~~ THEN REPLY #64476 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #64477 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #64478 /* ~"Hmm... How nice. You have questions. Well, be that as it may, I still don't want to be bothered by you. Go away." He frowns.~ */
  IF ~~ THEN REPLY #64479 /* ~"It will only take a moment of your time."~ */ GOTO 15
  IF ~~ THEN REPLY #64480 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64481 /* ~He sighs and throws up his arms in exasperation. "All right, you don't understand my saying *no* the nice way... Do I have to do it the not so nice way?"~ */
  IF ~~ THEN REPLY #64482 /* ~"Yes, you do."~ */ GOTO 16
  IF ~~ THEN REPLY #64483 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64484 /* ~He smiles. "Very well then... Go blow your questions out your arse!" He makes a rude gesture at you. "Pike off you berk!"~ */
  IF ~~ THEN REPLY #64485 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #64486 /* ~You see a bored looking man. He glances at you as you approach and frowns. "I've had enough of you already, bugger off..." He turns away and ignores you.~ */
  IF ~~ THEN REPLY #64487 /* ~Leave.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #64488 /* ~This person looks extremely upset at being in the prison. You can't get a response from them regardless of how hard you try.~ */
  IF ~~ THEN REPLY #64489 /* ~Leave.~ */ EXIT
END
