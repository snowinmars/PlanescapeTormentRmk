// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17378 /* ~This toothless old crone reeks of fish and brine. Spying your approach, she gives you a wide, pink smile. "Fish, my child? Fish-heads, mayhap?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22064 /* ~"Mebbeth said you sell ink. She sent me to purchase some."~ */ GOTO 8
  IF ~~ THEN REPLY #17386 /* ~"Child? Hardly."~ */ GOTO 2
  IF ~~ THEN REPLY #17387 /* ~"No fish for me, but I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #17388 /* ~"What are you offering, exactly?"~ */ GOTO 6
  IF ~~ THEN REPLY #17389 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17379 /* ~The old woman gives you a gummy smile. "Some fish, my child? Fish heads?" A cloying fish-smell surrounds her.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22069 /* ~"Mebbeth said you sell ink. She sent me to purchase some."~ */ GOTO 8
  IF ~~ THEN REPLY #17390 /* ~"No fish for me, but I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #17391 /* ~"No thanks, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #17380 /* ~"Oh yes, yes! But a child ye are, to my years! Hee-hee, youngsters..."~ */
  IF ~~ THEN REPLY #17392 /* ~"I believe you're mistaken. Take a closer look."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #17381 /* ~She shuffles up to you; the fish-stink is nearly overpowering. The old woman squints at your face first, frowning, and then into your eyes. Only then does she recoil in surprise: "Oh, my! How many years *have* those eyes seen?"~ */
  IF ~~ THEN REPLY #17394 /* ~"I do not know... how many do you think?"~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17382 /* ~"Don't know, don't know. Too many, I'd say. But no matter!" She leans close, to whisper in your ear. "It won't do to rattle the passersby; let's keep it our little secret." She resumes her normal tone of voice. "So: fish, my child? Hee-hee!" She pokes you in the belly.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22076 /* ~"Mebbeth said you sell ink. She sent me to purchase some."~ */ GOTO 8
  IF ~~ THEN REPLY #17395 /* ~"No fish for me, but I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #17396 /* ~"What are you offering, exactly?"~ */ GOTO 6
  IF ~~ THEN REPLY #17397 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 1.1 4.1 6.2 7.1
  SAY #17383 /* ~She shakes her little, wrinkled head. "No answers, have I... only fish."~ */
  IF ~~ THEN REPLY #17401 /* ~"Very well. What do you have to offer, exactly?"~ */ GOTO 6
  IF ~~ THEN REPLY #17402 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.3 4.2 5.0
  SAY #17384 /* ~"Why, fish, my silly child! Fish of all sorts - and fish heads, for those too short of jink for the whole ones. Teeny-tiny fish-heads! Hee-hee!" ~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22077 /* ~"Mebbeth said you sell ink. She sent me to purchase some."~ */ GOTO 8
  IF ~~ THEN REPLY #17403 /* ~"Where do the fish come from?"~ */ GOTO 7
  IF ~~ THEN REPLY #17404 /* ~"I don't need fish, but I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #17405 /* ~"I've no need for fish - or their heads, for that matter. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #17385 /* ~"They're brought to Sigil from all over the planes, my boy! Would ye like some? I sell only the heads, should ye be short on jink..."~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",6)
~ THEN REPLY #22078 /* ~"Mebbeth said you sell ink. She sent me to purchase some."~ */ GOTO 8
  IF ~~ THEN REPLY #17406 /* ~"I don't need fish, but I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #17407 /* ~"I've no need for fish - or their heads, for that matter. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.0 1.0 4.0 6.0 7.0
  SAY #22065 /* ~"Ink?" She chuckles. "Nay, sir, I sells no ink, I sells just fish..."~ */
  IF ~~ THEN REPLY #22070 /* ~"Are you sure? Mebbeth... the midwife in Ragpicker's Square... mentioned you specifically."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",7)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #22066 /* ~"Heh! Well, Kossah-Jai was me Dam's name, and me Grandam's name, so could be any of us... yet they're both in the dead-book, so only *this* Kossah-Jai matters. No idea what's she on about... a midwife in the Picker's Square, ye say?" She thinks for a moment. "Don't know her, I don't."~ */
  IF ~~ THEN REPLY #22071 /* ~"So... you don't have any ink? Well, I can't say that's much of a SURPRISE. I swear Mebbeth is having me run in circles-"~ */ GOTO 10
  IF ~~ THEN REPLY #22072 /* ~"Well, then. She said you would be able to help me, but if that's not the case, never mind."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #22067 /* ~"Now hol' on... yer midwife friend's not all wrong. I know how ye can get ink... but it may not be the ink ye're lookin' for... the ink I'm thinkin' of bleeds from the gills of a *brogota-fin,* it does."~ */
  IF ~~ THEN REPLY #22073 /* ~"This *brogota-fin*... it bleeds ink?"~ */ GOTO 11
  IF ~~ THEN REPLY #22074 /* ~"But you don't have this *brogota-fin,* right?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #22068 /* ~She frowns. "Aye... thing is, that fish's not for *eating,* it's gots a horrible taste, scalds the tongue... you can asks Meir'am, she pitches her fish-sell down the street a southerly way." She cackles. "She mights have one o' them fish ye needs on *her* pole..."~ */
  IF ~~ THEN REPLY #22075 /* ~"I'll go seek her out, then. Farewell."~ */ JOURNAL #21903 /* ~Kossah-Jai, one of the fishwives in the market, told me that the only place she knew of to get Mebbeth's ink was from a *brogota-fin,* but she didn't sell it. She said I should try Meir'am, a fishwife who sold her wares on a street just south of the market.~ */ EXIT
END
