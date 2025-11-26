// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~You see a young woman wearing dirty work clothes. She nods at your approach.~ */
  IF ~~ THEN REPLY #58098 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~Ignore her.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~"Hello... you need something?"~ */
  IF ~~ THEN REPLY #58101 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~"No, not really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~"All right."~ */
  IF ~~ THEN REPLY #58104 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~"What can you tell me about this place?"~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~"The name's Aileena."~ */
  IF ~~ THEN REPLY #58110 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~"Processing work orders. I receive various orders for goods from merchants throughout the city. I then pick the items and ready them for shipment."~ */
  IF ~~ THEN REPLY #58113 /* ~"Sounds like interesting work."~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~She smiles. "It is, actually..." She sighs and shrugs her shoulders. "If it weren't, I certainly wouldn't be doing it."~ */
  IF ~~ THEN REPLY #58117 /* ~"Why is that?"~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~She frowns in thought. "Well... it's not an easy job and it should be done by more than one person. However, the boss is a cheap son of a harlot and won't hire another person."~ */
  IF ~~ THEN REPLY #58121 /* ~"Then why do you stay here?"~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~She smiles again. "Devore, the boss, may be cheap but he has a nice streak in him. He actually gives us all a day off each week with pay!"~ */
  IF ~~ THEN REPLY #58125 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~She shrugs. "There's nothing to tell. If you've seen one warehouse, you've seen them all. This one is no different."~ */
  IF ~~ THEN REPLY #58128 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~She gives you a confused look for a moment. "I was about to say you're barmy to be looking in Curst... but I do remember something about a deva." She pauses. "I can't remember what though. I think you should go to the administration office and ask there. It's in the town square."~ */
  IF ~~ THEN REPLY #58131 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~You see Aileena, the warehouse worker. She smiles and nods at your approach. "Hello again. What's up?"~ */
  IF ~~ THEN REPLY #58134 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~"Nothing, farewell."~ */ EXIT
END
