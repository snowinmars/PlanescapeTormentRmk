// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDYLANA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDYLANA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57455 /* ~You see a middle aged woman wearing tattered clothes. She eyes you with open hostility as you approach.~ */
  IF ~~ THEN REPLY #57456 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57457 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57458 /* ~"Pike it, berk. Take a long walk down a short path..." She glares at you.~ */
  IF ~~ THEN REPLY #57459 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57460 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57461 /* ~She frowns at you. "Are you clueless or just plain stupid? I said to pike it. I want nothing to do with you or your questions!"~ */
  IF ~~ THEN REPLY #57462 /* ~"If you'll just answer some questions, I'll leave..."~ */ GOTO 3
  IF ~~ THEN REPLY #57463 /* ~"I don't like your attitude. Maybe I'll beat the answers out of you."~ */ GOTO 11
  IF ~~ THEN REPLY #57464 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.1 5.1 6.0 7.0 8.1 9.1 10.0 11.0 12.0
  SAY #57465 /* ~She glares at you. "Fine. Make it quick."~ */
  IF ~~ THEN REPLY #57466 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #57467 /* ~"What can you tell me about this place?"~ */ GOTO 7
  IF ~~ THEN REPLY #57468 /* ~"I'm looking for a deva, I understand he's down here."~ */ GOTO 8
  IF ~~ THEN REPLY #57469 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57470 /* ~"Don't see why you should care..." She pauses. "Dylana."~ */
  IF ~~ THEN REPLY #57471 /* ~"Why are you here?"~ */ GOTO 5
  IF ~~ THEN REPLY #57472 /* ~"I see. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57473 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57474 /* ~She sighs. "I was working with a smuggler bringing ale and such into the city. One night the guards caught us. He bought his way out of trouble and left me to rot..." She shrugs. "Here I am."~ */
  IF ~~ THEN REPLY #57475 /* ~"Sounds like you owe him one."~ */ GOTO 6
  IF ~~ THEN REPLY #57476 /* ~"I see. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57477 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57478 /* ~She smiles. "Yes, I do. By the way, his name is Voorsha. If you ever meet him, watch your back."~ */
  IF ~~ THEN REPLY #57479 /* ~"I will. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57480 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1
  SAY #57481 /* ~"What's there to tell? It's a prison for Baator's sake. You live your life in a cell and pray for the day you can see the light of day again."~ */
  IF ~~ THEN REPLY #57482 /* ~"I see. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57483 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2
  SAY #57484 /* ~She frowns as she thinks. "No, I don't think so. I won't pretend to know everyone down here, but a deva is rather hard to miss. If he were in this ring, I'd know."~ */
  IF ~~ THEN REPLY #57485 /* ~"This ring?"~ */ GOTO 9
  IF ~~ THEN REPLY #57486 /* ~"I see. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57487 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57488 /* ~"Yes, the prison is set up as a series of three rings, the outer, central, and inner. The worse your crime, the deeper you go."~ */
  IF ~~ THEN REPLY #57489 /* ~"Which ring is this?"~ */ GOTO 10
  IF ~~ THEN REPLY #57490 /* ~"I see. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57491 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57492 /* ~"This is the center ring. Worse than the outer, not as bad as the inner." ~ */
  IF ~~ THEN REPLY #57493 /* ~"I see. I have some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #57494 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #57495 /* ~She starts to say something to you then pauses. "Yes... you look like the type that would do just that."~ */
  IF ~~ THEN REPLY #57496 /* ~"So, are you going to answer my questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #57497 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57498 /* ~You see Dylana. She does not appear to be happy to see you. "Back again... why?"~ */
  IF ~~ THEN REPLY #57499 /* ~"I have some questions..."~ */ GOTO 3
END
