// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMBVGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMBVGER~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #20067 /* ~The ragged man flees as you approach him, fear etched across his features.~ */
  IF ~~ THEN REPLY #20068 /* ~"Maybe next time..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #20069 /* ~The ragged man looks at you with fear, and then realizes you mean him no immediate harm, and he straightens. "Whaddya want, berk?"~ */
  IF ~~ THEN REPLY #20070 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #20071 /* ~"What are you doing?"~ */ GOTO 4
  IF ~~ THEN REPLY #20072 /* ~"What are you afraid of?"~ */ GOTO 5
  IF ~~ THEN REPLY #20073 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #20074 /* ~"Ain't important, cutter. Slipped 'twixt the cracks too long ago - or maybe that was me da. One way or another, m'just another one tryin' to make a living any way I can." ~ */
  IF ~~ THEN REPLY #20075 /* ~"All right. I had some other questions for you."~ */ GOTO 3
  IF ~~ THEN REPLY #20076 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 5.2 6.0 7.0 8.0
  SAY #20077 /* ~"Make it fast, cutter. I got mouths t' feed."~ */
  IF ~~ THEN REPLY #20078 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #20079 /* ~"What are you doing?"~ */ GOTO 4
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #20080 /* ~"What are you afraid of?"~ */ GOTO 5
  IF ~~ THEN REPLY #20081 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 3.1
  SAY #20082 /* ~"Tryin' to make a living. What's it look like? Only I keep gettin' asked questions, and it's stoppin' me from that. You done yet?"~ */
  IF ~~ THEN REPLY #20083 /* ~"No. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #20084 /* ~"For now."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 3.2
  SAY #20085 /* ~"You mean aside from the dabus bricking this place over, or the Hardheads cleanin' us out, or the deaders comin' out of the catacombs below, or the cranium rats tryin' to take us over, or each other's knives at our throats, or starvin'? Aside from the everyday, it's gotta be those creatures what done Pharod in."~ */
  IF ~~ THEN REPLY #20086 /* ~"Creatures? What creatures?"~ */ GOTO 6
  IF ~~ THEN REPLY #20087 /* ~"Pharod's dead?"~ */ GOTO 6
  IF ~~ THEN REPLY #20088 /* ~"I had some other questions, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #20089 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #20090 /* ~"Creatures straight outta Baator's maw is what they was... things of blackest nightmare and fear, made of pure shadow. They took him and tore him apart. Weren't really nothin' left of him. Buried what we could find."~ */
  IF ~~ THEN REPLY #20091 /* ~"All right. Tell me something else, then..."~ */ GOTO 3
  IF ~~ THEN REPLY #20092 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #20093 /* ~He coughs noisily into his hand. "What d'ya want this time?"~ */
  IF ~~ THEN REPLY #20094 /* ~"I wanted some answers."~ */ GOTO 3
  IF ~~ THEN REPLY #20095 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #20096 /* ~You see a ragged man, clad in patchwork clothes. He reeks of smoke and trash, and has a yellowish cast to his skin. He looks askew at you. "What d'ya want from me, cutter?"~ */
  IF ~~ THEN REPLY #20097 /* ~"Just the answers to some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #20098 /* ~"Nothing. Farewell."~ */ EXIT
END
