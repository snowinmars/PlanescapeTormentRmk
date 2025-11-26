// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERMALE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66457 /* ~You see a young man with a bored expression on his face. He nods at you when he notices your approach.~ */
  IF ~~ THEN REPLY #66458 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #66459 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66460 /* ~"Yes? What do you want?"~ */
  IF ~~ THEN REPLY #66461 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66462 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66463 /* ~"Hmm. Well, I'm not a very well informed person. You should take your questions elsewhere." ~ */
  IF ~~ THEN REPLY #66464 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #66465 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66466 /* ~"Well, I still think you should go elsewhere." He turns away from you.~ */
  IF ~~ THEN REPLY #66467 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66468 /* ~You see a young man. He watches you approach warily.~ */
  IF ~~ THEN REPLY #66469 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #66470 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66471 /* ~"Good day to you, cutter." He looks at your scars and a worried expression settles on his face.~ */
  IF ~~ THEN REPLY #66473 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66474 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66475 /* ~"Hmm. Alright..."~ */
  IF ~~ THEN REPLY #66476 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #66477 /* ~"What are you doing?"~ */ GOTO 8
  IF ~~ THEN REPLY #66478 /* ~"What can you tell me about what's going on?"~ */ GOTO 9
  IF ~~ THEN REPLY #66479 /* ~"Is there anything of interest in this ward?"~ */ GOTO 11
  IF ~~ THEN REPLY #66480 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66481 /* ~"I'd rather not say. Just ask your questions, cutter."~ */
  IF ~~ THEN REPLY #66482 /* ~"Very well, I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66483 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66484 /* ~"Just watching the auction. I can't really afford anything, but it's fun to see who makes it to the block from time to time."~ */
  IF ~~ THEN REPLY #66485 /* ~"I see. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66486 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66487 /* ~He concentrates for a moment before answering. "Well, these here folks have committed crimes of sorts and they owe some jink. Since they can't pay, they're sold into service for a while to cover their debt."~ */
  IF ~~ THEN REPLY #66488 /* ~"You mean they're slaves?"~ */ GOTO 10
  IF ~~ THEN REPLY #66489 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66490 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66491 /* ~He shrugs. "Yeah, I guess they are... for a time at least. Most folks like to call them servants though..."~ */
  IF ~~ THEN REPLY #66492 /* ~"I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66493 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66494 /* ~"Nah, not a damn thing. Life here is pretty boring actually. That's why I come here and just stare at the auctions." He sighs.~ */
  IF ~~ THEN REPLY #66495 /* ~"Hmm. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66496 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66497 /* ~You see an anxious looking man. He smiles and waves at your approach.~ */
  IF ~~ THEN REPLY #66498 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #66499 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66500 /* ~"Hello, cutter. What's up?"~ */
  IF ~~ THEN REPLY #66501 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #66502 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66503 /* ~"Questions? Oh... Well, you need a tout then. Not me." He starts to turn away.~ */
  IF ~~ THEN REPLY #66504 /* ~"Can't you answer some questions?"~ */ GOTO 15
  IF ~~ THEN REPLY #66505 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66506 /* ~"No, not really. I don't cater to supplying the Clueless with clues." He smiles.~ */
  IF ~~ THEN REPLY #66507 /* ~"So you won't help me?"~ */ GOTO 16
  IF ~~ THEN REPLY #66508 /* ~"I see, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66509 /* ~"No, sure won't. I'd go find yourself that tout."~ */
  IF ~~ THEN REPLY #66510 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66511 /* ~You see the auctioneer customer. He waves you off as you attempt to talk to him again.~ */
  IF ~~ THEN REPLY #66512 /* ~Leave.~ */ EXIT
END
