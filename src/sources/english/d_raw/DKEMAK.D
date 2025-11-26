// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKEMAK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKEMAK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57593 /* ~You see a young man dressed in shoddy clothes. He makes a rude gesture at your approach.~ */
  IF ~~ THEN REPLY #57594 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57595 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57596 /* ~"Take a stick and pike it, berk." He glares at you.~ */
  IF ~~ THEN REPLY #57597 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57598 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57599 /* ~"I really don't give a rats arse for you or your barmy questions. I said to pike it, so begone!"~ */
  IF ~~ THEN REPLY #57600 /* ~"I think I need to beat some manners into you."~ */ GOTO 3
  IF ~~ THEN REPLY #57601 /* ~"Farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57602 /* ~He smiles slyly. "Try it, berk. I'm in here because I kill clueless sods like you with ease..."~ */
  IF ~~ THEN REPLY #57604 /* ~"I'm in here because I want to be and when I'm ready to leave I'll just walk out."~ */ GOTO 4
  IF ~~ THEN REPLY #57606 /* ~Attack him: "I like a challenge..." ~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57611 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57614 /* ~He stares at you for some time weighing your comment. You see his eyes flick along your many scars and then focus on yours. After a moment he swallows nervously. "You're serious... aren't you?" He waits for your response then shrugs. "So what do you want?"~ */
  IF ~~ THEN REPLY #57615 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57617 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #57618 /* ~"Ask em..."~ */
  IF ~~ THEN REPLY #57620 /* ~"Who are you?"~ */ GOTO 6
  IF ~~ THEN REPLY #57621 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #57622 /* ~"I'm looking for a deva. He's supposed to be down here."~ */ GOTO 9
  IF ~~ THEN REPLY #57623 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57625 /* ~He hesitates before answering. "Kemak. Everyone calls me Kem though. Not that I like it, mind you."~ */
  IF ~~ THEN REPLY #57626 /* ~"Why are you here?"~ */ GOTO 7
  IF ~~ THEN REPLY #57627 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57629 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57631 /* ~"Got drunk one night and got in a fight. They say I killed some sod... I don't know, I don't remember." He shrugs.~ */
  IF ~~ THEN REPLY #57632 /* ~"I see. I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57634 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #57635 /* ~"I don't know much, I've been down here from the start..." He pauses to think. "It's set up as a series of rings: outer, central, and inner. The worse your crime, the further in you go. Here at the inner ring are all the dangerous types."~ */
  IF ~~ THEN REPLY #57638 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57640 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #57642 /* ~"Really?" He looks at you in surprise. "Why would a deva be down here... unless he did something really terrible." He looks at you expectantly.~ */
  IF ~~ THEN REPLY #57644 /* ~"I don't know. Have you heard anything about him?"~ */ GOTO 10
  IF ~~ THEN REPLY #57646 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57647 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57649 /* ~He shakes his head. "No, not a thing." He gives you a humorous smile. "I don't get out much you understand."~ */
  IF ~~ THEN REPLY #57651 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57652 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57653 /* ~You see Kemak. He frowns at your approach. "You again, how nice. What do you want?"~ */
  IF ~~ THEN REPLY #57655 /* ~"I have some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #57657 /* ~"Nothing, farewell."~ */ EXIT
END
