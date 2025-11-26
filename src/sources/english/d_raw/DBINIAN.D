// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBINIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBINIAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57500 /* ~You see a young man in tattered clothes. He has a bored expression on his face as he stares off into the distance.~ */
  IF ~~ THEN REPLY #57501 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57502 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57503 /* ~Your greeting startles him and he jumps at the sound. He stares at you for a moment. "Don't be sneaking up on me like that, cutter. Damn near killed me with fright."~ */
  IF ~~ THEN REPLY #57505 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57506 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.1 7.0 8.2 9.1 10.1 11.0
  SAY #57504 /* ~He frowns. "Like what..."~ */
  IF ~~ THEN REPLY #57507 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #57508 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #57509 /* ~"I hear there's a deva down here somewhere."~ */ GOTO 8
  IF ~~ THEN REPLY #57510 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57511 /* ~"You don't need to know my name, just ask your questions and then leave me be." He gives you a defiant look.~ */
  IF ~~ THEN REPLY #57512 /* ~"I hate people with attitudes, I usually beat it out of them."~ */ GOTO 4
  IF ~~ THEN REPLY #57513 /* ~"Fine, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57514 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57515 /* ~He shrugs. "Fine, my name is Binian. You happy now?"~ */
  IF ~~ THEN REPLY #57516 /* ~"Yes, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57517 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #57518 /* ~"It's a dung heap and you and me and everyone you see down here is just another piece of crap that the city throws on the heap." He gives you a mock smile. "That pretty much says it all."~ */
  IF ~~ THEN REPLY #57519 /* ~"Why are you here?"~ */ GOTO 6
  IF ~~ THEN REPLY #57520 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57521 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57522 /* ~He shrugs his shoulders and looks around nervously. "I stole some things... I maybe hurt a few sods here and there... so here I am."~ */
  IF ~~ THEN REPLY #57523 /* ~"So you're a thief..."~ */ GOTO 7
  IF ~~ THEN REPLY #57524 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57525 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57526 /* ~He shakes his head. "No, I'm an ex-thief. After spending a year in this crap hole, I'm an ex-thief..." He sighs and looks away. "I never want to end up here again, that's for sure."~ */
  IF ~~ THEN REPLY #57527 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57528 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57529 /* ~He frowns and looks away. "There's one down here, he's at the new excavation site. Just look for the recent digging and you'll find him."~ */
  IF ~~ THEN REPLY #57530 /* ~"Where can I find the excavation site?"~ */ GOTO 9
  IF ~~ THEN REPLY #57531 /* ~"What are they excavating?"~ */ GOTO 10
  IF ~~ THEN REPLY #57532 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57533 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #57534 /* ~He shrugs. "Never been there, it's off that way." He gestures vaguely. "You can't miss it, look for signs of digging."~ */
  IF ~~ THEN REPLY #57535 /* ~"What are they excavating?"~ */ GOTO 10
  IF ~~ THEN REPLY #57536 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57537 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0
  SAY #57538 /* ~He shakes his head. "Nothing. When they want to expand the prison, the guards make us dig." He snorts. "It's all a part of the punishment..."~ */
  IF ~~ THEN REPLY #57539 /* ~"Where can I find the excavation site?"~ */ GOTO 9
  IF ~~ THEN REPLY #57540 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57541 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57542 /* ~You see Binian, the thief. "You again... what do you want now?"~ */
  IF ~~ THEN REPLY #57543 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57544 /* ~"Never mind. Farewell."~ */ EXIT
END
