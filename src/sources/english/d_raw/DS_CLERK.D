// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DS_CLERK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DS_CLERK~

IF ~  Global("S_Stone","AR0603",0)
~ THEN BEGIN 0 // from:
  SAY #46336 /* ~This man's gentle voice complements his calm and refined demeanor. "Greetings. Are you here to use one of the sensory stones?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46337 /* ~"Yes, I am."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46359 /* ~"Yes, I am."~ */ GOTO 6
  IF ~~ THEN REPLY #46360 /* ~"No, but I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #46361 /* ~"No, I'm not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2 20.2
  SAY #46362 /* ~The man nods. "This is the public sensorium, whose chambers hold recorder or sensory stones. Each of the stones contains a particular sensation - or set of sensations - which a user can experience for his or herself. A Sensate is free to use them at their leisure, while visitors must pay a small fee. Does this answer your questions?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46363 /* ~"For the most part. I'd like to use one of the stones, now."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46364 /* ~"For the most part. I'd like to use one of the stones, now."~ */ GOTO 6
  IF ~~ THEN REPLY #46365 /* ~"No..."~ */ GOTO 2
  IF ~~ THEN REPLY #46366 /* ~"It'll do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #46367 /* ~"Then I cannot help you. Unless, of course, you would care to make use of the stones...?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46368 /* ~"Yes, I would."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46369 /* ~"Yes, I would."~ */ GOTO 6
  IF ~~ THEN REPLY #46370 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0 2.0 4.7 20.0
  SAY #46371 /* ~The man smiles and explains to you some of the various sensations that are currently available for your perusal.

"Will one of these suit you?"~ */
  IF ~~ THEN REPLY #46372 /* ~"'Unavoidable pain' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46373 /* ~"'Tender love' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46374 /* ~"'Mind-numbing tedium' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46375 /* ~"'Sheer wonder' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46376 /* ~"'Consuming impatience' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46377 /* ~"'Tired surrender' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46378 /* ~"'Supernatural lust' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46379 /* ~"Actually, are there others?"~ */ GOTO 4
  IF ~~ THEN REPLY #46380 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.7 5.6
  SAY #46381 /* ~The man nods, explaining several sensations that are available for your use.

"Will one of these suit you?"~ */
  IF ~~ THEN REPLY #46382 /* ~"'Psychosis' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46383 /* ~"'Festering jealousy' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46384 /* ~"'Bitter loathing' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46385 /* ~"'Pure glee' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46386 /* ~"'Frightened exhilaration' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46387 /* ~"'Grim determination' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46388 /* ~"'Complete bafflement' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46389 /* ~"Actually, what were those last few?"~ */ GOTO 3
  IF ~~ THEN REPLY #46390 /* ~"Are there any more?"~ */ GOTO 5
  IF ~~ THEN REPLY #46391 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.8
  SAY #46392 /* ~The man nods, smiling, and explains the last of the presently available sensations. 

"Will one of these suit you?"~ */
  IF ~~ THEN REPLY #46393 /* ~"'Horrible regret' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46394 /* ~"'Shock and a rise to seething vengefulness' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46395 /* ~"'Slowly dawning horror' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46396 /* ~"'Indescribable frustration' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46397 /* ~"'A vastly important secret' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46398 /* ~"'Lycanthropy' will do."~ */ DO ~SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46399 /* ~"What were the last sensations you described?"~ */ GOTO 4
  IF ~~ THEN REPLY #46400 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.1 1.1 2.1 20.1
  SAY #46401 /* ~"There are currently more than a dozen standard sensations available, as well as six more 'extravagant' experiences. The use of a standard stone is ten copper commons; the more involved ones will cost one fifty coppers. Would you care to hear of the standard or the extravagant sensations?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #46402 /* ~"The standard..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46403 /* ~"The extravagant..."~ */ GOTO 9
  IF ~~ THEN REPLY #46404 /* ~"Neither, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.7 9.6
  SAY #46405 /* ~The man smiles and explains to you some of the various sensations that are currently available for your perusal.

"Will one of these suit you?"~ */
  IF ~~ THEN REPLY #46406 /* ~"'Unavoidable pain' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",1)
~ GOTO 13
  IF ~~ THEN REPLY #46407 /* ~"'Tender love' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",2)
~ GOTO 14
  IF ~~ THEN REPLY #46408 /* ~"'Mind-numbing tedium' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",3)
~ GOTO 15
  IF ~~ THEN REPLY #46409 /* ~"'Sheer wonder' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",4)
~ GOTO 16
  IF ~~ THEN REPLY #46410 /* ~"'Consuming impatience' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",5)
~ GOTO 17
  IF ~~ THEN REPLY #46411 /* ~"'Tired surrender' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",6)
~ GOTO 18
  IF ~~ THEN REPLY #46412 /* ~"'Supernatural lust' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",7)
~ GOTO 19
  IF ~~ THEN REPLY #46413 /* ~"Tell me about some of the others..."~ */ GOTO 8
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46414 /* ~"Actually, What are the extravagant ones like?"~ */ GOTO 9
  IF ~~ THEN REPLY #46415 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.7
  SAY #46416 /* ~The man nods and explains several sensations that are available for your use.

"Will one of these suit you?"~ */
  IF ~~ THEN REPLY #46417 /* ~"'Psychosis' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",8)
~ GOTO 13
  IF ~~ THEN REPLY #46418 /* ~"'Festering jealousy' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",9)
~ GOTO 14
  IF ~~ THEN REPLY #46419 /* ~"'Bitter loathing' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",10)
~ GOTO 15
  IF ~~ THEN REPLY #46420 /* ~"'Pure glee' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",11)
~ GOTO 16
  IF ~~ THEN REPLY #46421 /* ~"'Frightened exhilaration' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",12)
~ GOTO 17
  IF ~~ THEN REPLY #46422 /* ~"'Grim determination' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",13)
~ GOTO 18
  IF ~~ THEN REPLY #46423 /* ~"'Complete bafflement' will do."~ */ DO ~TakePartyGold(10)
SetGlobal("S_Stone","AR0603",14)
~ GOTO 19
  IF ~~ THEN REPLY #46424 /* ~"Wait... describe those last ones again..."~ */ GOTO 7
  IF ~  PartyGoldGT(49)
~ THEN REPLY #46425 /* ~"Actually, can you tell me about the extravagant ones?"~ */ GOTO 9
  IF ~~ THEN REPLY #46426 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.8 8.8
  SAY #46427 /* ~The man nods, smiling, and explains the more involved sensations. 

"Will one of these suit you?"~ */
  IF ~~ THEN REPLY #46428 /* ~"'Horrible regret' will do."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",15)
~ GOTO 10
  IF ~~ THEN REPLY #46429 /* ~"'Shock and a rise to seething vengefulness' will do."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",16)
~ GOTO 11
  IF ~~ THEN REPLY #46430 /* ~"'Slowly dawning horror' will do."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",17)
~ GOTO 12
  IF ~~ THEN REPLY #46431 /* ~"'Indescribable frustration' will do."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",18)
~ GOTO 10
  IF ~~ THEN REPLY #46432 /* ~"'A vastly important secret' will do."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",19)
~ GOTO 11
  IF ~~ THEN REPLY #46433 /* ~"'Lycanthropy' will do."~ */ DO ~TakePartyGold(50)
SetGlobal("S_Stone","AR0603",20)
~ GOTO 12
  IF ~~ THEN REPLY #46434 /* ~"Actually, can you tell me about the standard ones?"~ */ GOTO 7
  IF ~~ THEN REPLY #46435 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.0 5.3 9.0 9.3
  SAY #46436 /* ~"A fine choice. The stone you shall want to use is in one of the larger chambers, three rooms counter-clockwise from the stairwell. It is reddish-orange in color."~ */
  IF ~~ THEN REPLY #46437 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.4 9.1 9.4
  SAY #46438 /* ~"Excellent. The stone you shall want to use is in one of the larger chambers, two rooms counter-clockwise from the stairwell. It is violet in color."~ */
  IF ~~ THEN REPLY #46439 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.2 5.5 9.2 9.5
  SAY #46440 /* ~"Wonderful. The stone you shall want to use is in one of the larger chambers, one room counter-clockwise from the stairwell. It is blue-violet in color."~ */
  IF ~~ THEN REPLY #46441 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 4.0 7.0 8.0
  SAY #46442 /* ~"Good. The stone you shall want to use is in one of the smaller chambers, one room clockwise from the stairwell. It is greenish-yellow in color."~ */
  IF ~~ THEN REPLY #46443 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.1 4.1 7.1 8.1
  SAY #46444 /* ~"A good choice. The stone you shall want to use is in one of the smaller chambers, two rooms clockwise from the stairwell. It is light blue in color."~ */
  IF ~~ THEN REPLY #46445 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.2 4.2 7.2 8.2
  SAY #46446 /* ~"A good choice. The stone you shall want to use is in one of the smaller chambers, three rooms clockwise from the stairwell. It is violet in color."~ */
  IF ~~ THEN REPLY #46447 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 3.3 4.3 7.3 8.3
  SAY #46448 /* ~"A good choice. The stone you shall want to use is in one of the smaller chambers, four rooms clockwise from the stairwell. It is greenish-yellow in color."~ */
  IF ~~ THEN REPLY #46449 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 3.4 4.4 7.4 8.4
  SAY #46450 /* ~"A good choice. The stone you shall want to use is in one of the smaller chambers, five rooms clockwise from the stairwell. It is reddish-orange in color."~ */
  IF ~~ THEN REPLY #46451 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 3.5 4.5 7.5 8.5
  SAY #46452 /* ~"A good choice. The stone you shall want to use is in one of the smaller chambers, six rooms clockwise from the stairwell. It is violet in color."~ */
  IF ~~ THEN REPLY #46453 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 3.6 4.6 7.6 8.6
  SAY #46454 /* ~"A good choice. The stone you shall want to use is in one of the smaller chambers, seven rooms clockwise from the stairwell. It is light blue in color."~ */
  IF ~~ THEN REPLY #46455 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  GlobalGT("S_Stone","AR0603",0)
~ THEN BEGIN 20 // from:
  SAY #46456 /* ~"I trust you enjoyed the sensory experience? Something I may do for you, now?"~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46457 /* ~"I'd like another session."~ */ GOTO 3
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #46458 /* ~"I'd like another session."~ */ GOTO 6
  IF ~~ THEN REPLY #46459 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #46460 /* ~"Nothing. Farewell."~ */ EXIT
END
