// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63508 /* ~You see a bored looking woman. She glances at you as you approach and frowns.~ */
  IF ~~ THEN REPLY #63509 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #63510 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63511 /* ~She sighs and glances around then turns her attention to you. "Greetings... What do you want?"~ */
  IF ~~ THEN REPLY #63512 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #63513 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63514 /* ~Her frown deepens. "Questions... Bar that, berk. I'm busy and don't have time for questions." ~ */
  IF ~~ THEN REPLY #63515 /* ~"It will take just a moment of your time..."~ */ GOTO 3
  IF ~~ THEN REPLY #63516 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63517 /* ~"I don't have a moment to give you." She begins to look around the area. "Pike off or I'll call a guard."~ */
  IF ~~ THEN REPLY #63518 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63519 /* ~You see a woman. She appears quite excited. She glances at you as you approach and smiles.~ */
  IF ~~ THEN REPLY #63520 /* ~"Greetings."~ */ GOTO 5
  IF ~~ THEN REPLY #63521 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63522 /* ~"Yes. Greetings and all that... You want something?"~ */
  IF ~~ THEN REPLY #63523 /* ~"I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63524 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63525 /* ~She frowns and sighs. "Please be quick. I don't want to miss anything."~ */
  IF ~~ THEN REPLY #63526 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #63527 /* ~"What are you doing?"~ */ GOTO 8
  IF ~~ THEN REPLY #63528 /* ~"What can you tell me about this ward?"~ */ GOTO 9
  IF ~~ THEN REPLY #63529 /* ~"Is there anything of interest in this ward?"~ */ GOTO 11
  IF ~~ THEN REPLY #63530 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63531 /* ~"What? Why do you need to know that? I'm just someone who's trying to bid on some stuff. I don't see that you need to know my name." She gives you an impatient look.~ */
  IF ~~ THEN REPLY #63532 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63533 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63534 /* ~"I'm trying to bid on some items that the auctioneer is selling... If you'd get to the point of all this questioning, I'd be able to get back to my business."~ */
  IF ~~ THEN REPLY #63535 /* ~"Very well. I have some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63536 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63537 /* ~"It's a wondrous place actually. Just look around! You've got the peddlers, the markets, the auctions..." She seems at a loss for words. "Lots of stuff here..."~ */
  IF ~~ THEN REPLY #63538 /* ~"What can I buy here?"~ */ GOTO 10
  IF ~~ THEN REPLY #63539 /* ~"I see. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63540 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63541 /* ~She smiles. "Well... just about anything... except more of my time. Are you through with your questions?"~ */
  IF ~~ THEN REPLY #63542 /* ~"Not quite. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63543 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63544 /* ~She frowns. "I don't know... I've lived here all my life and tend to take things for granted." She shrugs. "Just look around, I'm sure you'll find something of interest to you."~ */
  IF ~~ THEN REPLY #63545 /* ~"I will. I have some more questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #63546 /* ~"Thank you, farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63547 /* ~You see a stern looking woman. She glances at you as you approach and then makes an effort to avoid you.~ */
  IF ~~ THEN REPLY #63548 /* ~"Greetings."~ */ GOTO 13
  IF ~~ THEN REPLY #63549 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63550 /* ~She looks at you apprehensively. "Uh... Hello." She looks annoyed.~ */
  IF ~~ THEN REPLY #63551 /* ~"I have some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #63552 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63553 /* ~"I don't want to be bothered by you. Go away." She frowns.~ */
  IF ~~ THEN REPLY #63554 /* ~"It will only take a moment of your time."~ */ GOTO 15
  IF ~~ THEN REPLY #63555 /* ~"Very well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63556 /* ~Her frown deepens. "No. I don't want to be bothered by you! Go away! Get the message berk?"~ */
  IF ~~ THEN REPLY #63557 /* ~"No, I don't."~ */ GOTO 16
  IF ~~ THEN REPLY #63558 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63559 /* ~She gives you a disgusted look, snorts, and then turns away.~ */
  IF ~~ THEN REPLY #63560 /* ~"Very well, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63561 /* ~You see the auctioneer customer. She waves you off as you attempt to talk to her again.~ */
  IF ~~ THEN REPLY #63562 /* ~Leave.~ */ EXIT
END
