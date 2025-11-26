// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERFEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66400 /* ~You see a bored looking woman. She glances at you as you approach and then turns away.~ */
  IF ~~ THEN REPLY #66401 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #66402 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66403 /* ~She sighs and turns her attention to you. "Greetings... What do you want?"~ */
  IF ~~ THEN REPLY #66404 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #66405 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66406 /* ~Her frown deepens. "I'm busy and don't have time for questions. Please go find a tout." ~ */
  IF ~~ THEN REPLY #66407 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #66408 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66409 /* ~"I'm trying to concentrate on the auction, I don't have a moment to give you." She turns away from you.~ */
  IF ~~ THEN REPLY #66410 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66411 /* ~You see a young woman. She appears quite excited. She glances at you as you approach and smiles.~ */
  IF ~~ THEN REPLY #66412 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #66413 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66414 /* ~"Hello, cutter. You want something?"~ */
  IF ~~ THEN REPLY #66415 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66416 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66417 /* ~She frowns and sighs. "I don't want to miss anything, so make it quick."~ */
  IF ~~ THEN REPLY #66418 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #66419 /* ~"What are you doing?"~ */ GOTO 8
  IF ~~ THEN REPLY #66420 /* ~"What exactly is going on?"~ */ GOTO 9
  IF ~~ THEN REPLY #66421 /* ~"Is there anything of interest in this ward?"~ */ GOTO 11
  IF ~~ THEN REPLY #66422 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66423 /* ~"Someone who is trying to watch an auction. Can you make this quick please?"~ */
  IF ~~ THEN REPLY #66424 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66425 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66426 /* ~"I'm trying to bid on one of the servants. That one man..." She hesitates and begins to blush. "Well, never mind. You want something else?"~ */
  IF ~~ THEN REPLY #66427 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66429 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66430 /* ~"These people have been convicted of minor crimes and have incurred a debt. They are being sold into service to pay off the debt."~ */
  IF ~~ THEN REPLY #66431 /* ~"What happens when the debt is paid?"~ */ GOTO 10
  IF ~~ THEN REPLY #66432 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66433 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66434 /* ~She smiles. "Well... They are then returned to normal citizen status and set free. They can start their lives over again."~ */
  IF ~~ THEN REPLY #66435 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66436 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66437 /* ~"Just the auctions as far as I'm concerned. There's another auctioneer here but he only sells items and such. You should check him out though." She smiles.~ */
  IF ~~ THEN REPLY #66438 /* ~"I will. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #66440 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66439 /* ~You see a stern looking woman. She glances at you as you approach and then makes an effort to avoid you.~ */
  IF ~~ THEN REPLY #66441 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #66442 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66443 /* ~She gives you an annoyed look. "Well, what do you want?"~ */
  IF ~~ THEN REPLY #66444 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #66445 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66446 /* ~She frowns at you. "I don't care, take 'em to someone who does."~ */
  IF ~~ THEN REPLY #66447 /* ~"It will only take a moment of your time."~ */ GOTO 15
  IF ~~ THEN REPLY #66448 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66449 /* ~Her frown deepens. "I don't care. Go away."~ */
  IF ~~ THEN REPLY #66450 /* ~"You can't spare a moment to help someone out?"~ */ GOTO 16
  IF ~~ THEN REPLY #66451 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66452 /* ~She gives you a disgusted look, snorts, and then turns away.~ */
  IF ~~ THEN REPLY #66453 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66454 /* ~You see the auctioneer customer. She waves you off as you attempt to talk to her again.~ */
  IF ~~ THEN REPLY #66455 /* ~Leave.~ */ EXIT
END
