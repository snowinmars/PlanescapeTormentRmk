// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27334 /* ~This finely dressed, well-groomed man is relaxing here, enjoying the outside air while sipping at a beverage purchased from the nearby cafe.~ */
  IF ~~ THEN REPLY #2895 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #2896 /* ~Leave the man be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27335 /* ~"Greetings to-" he pauses when he finally takes a good look at you. "Ah... to you as well, sir." He smiles uneasily.~ */
  IF ~~ THEN REPLY #2897 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #2898 /* ~"Something troubling about my appearance?"~ */ GOTO 2
  IF ~~ THEN REPLY #27383 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #27336 /* ~"No, sir, the trouble is mine. I'm merely unaccustomed to the sight of such a... worldly... looking fellow such as yourself, here." He closes his eyes briefly, holding his hand to his chest apologetically. "I pray you'll pardon my blanching when I first saw you, sir."~ */
  IF ~~ THEN REPLY #27384 /* ~"Worldly?"~ */ GOTO 3
  IF ~~ THEN REPLY #27385 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27386 /* ~"Don't worry. I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27337 /* ~"'Well-traveled,' if you like. That is to say, sir, your appearance - well, it's slightly disheveled, rough about the edges. You may find you, ah, stand out a bit, here. But Sigil is full of oddities, no? Methinks the Clerk's Ward just sees less of them than the rest of the city, 'tis all. Save for the Festhall, of course."~ */
  IF ~~ THEN REPLY #27387 /* ~"The Clerk's Ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #27388 /* ~"The Festhall?"~ */ GOTO 22
  IF ~~ THEN REPLY #27389 /* ~"You mean I look dead, right? Well I am, you know. Dead!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27390 /* ~"Hmm. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27391 /* ~"Understandable, I suppose. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.9 13.2 15.2 17.2 18.3 20.2 21.2 22.4 23.4 24.2 25.8 26.1 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1
  SAY #27338 /* ~"Ask what you will... I'll answer what I can."~ */
  IF ~~ THEN REPLY #27392 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #27393 /* ~"What is of interest here?"~ */ GOTO 7
  IF ~~ THEN REPLY #27394 /* ~"Where could I find work, here?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27395 /* ~"I wanted to ask about a specific place..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27396 /* ~"I just needed directions..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27397 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 42
  IF ~~ THEN REPLY #27398 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27339 /* ~He seems amused. "Why, 'tis the Clerk's Ward! New to Sigil, sir? Wait - you look to be a man who seeks answers, not questions... keeps to his own self. Pay my question no heed." He smiles.~ */
  IF ~~ THEN REPLY #27399 /* ~"What can you tell me about the Ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #27400 /* ~"True. I had other questions, in fact..."~ */ GOTO 4
  IF ~~ THEN REPLY #27401 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27340 /* ~"Well, the greater part of the Ward - where I'm forever doomed spend the majority of my time, it seems - is dominated by record halls and administrative buildings... not this section, though."~ */
  IF ~~ THEN REPLY #27402 /* ~"Why are you 'doomed' to remain there?"~ */ GOTO 10
  IF ~~ THEN REPLY #27403 /* ~"What makes this section different?"~ */ GOTO 7
  IF ~~ THEN REPLY #27404 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27405 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27341 /* ~"The Civic Festhall, first off. The Brothel of Slating Intellectual Lusts, as well... not a typical brothel, you know... it caters to more cerebral appetites. Tantalizing nonetheless!" He smiles slyly.~ */
  IF ~~ THEN REPLY #27406 /* ~"Go on..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27407 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27408 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27342 /* ~"Other places I might mention..." He ticks them off on his fingers as he names them. "...the advocate's home, the apothecary, the Art and Curio Galleria, the catacombs beneath the Ward, and the tailor. Oh! I nearly forgot... there is a 'curiosity shop' of sorts, as well."~ */
  IF ~~ THEN REPLY #27409 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27410 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27343 /* ~The man *hrmmms,* wrinkling his brow. "I shall take the liberty, sir, of assuming you're not seeking permanent employment. You might seek temporary work at the advocate's home, or the apothecary. And the Festhall is host to all sorts of goings-on. You may find something, there."~ */
  IF ~~ THEN REPLY #27411 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27412 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27344 /* ~He shrugs, looking away with a pained expression. "My duties lie there, sir. My means of living. 'Tis my place of employment."~ */
  IF ~~ THEN REPLY #27414 /* ~"What do you do?"~ */ GOTO 11
  IF ~~ THEN REPLY #27415 /* ~"So what makes this section different from the rest of the Ward?"~ */ GOTO 7
  IF ~~ THEN REPLY #27416 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27417 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27345 /* ~He raises his hands, shaking his head. "Oh, no, sir, I shan't discuss that now. No talk of policies and paperwork whilst I'm away from there, and that's final." He smiles politely.~ */
  IF ~~ THEN REPLY #27418 /* ~"So what makes this section different from the rest of the Ward?"~ */ GOTO 7
  IF ~~ THEN REPLY #27419 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27420 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 20.1 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27346 /* ~"Oh? Where?"~ */
  IF ~~ THEN REPLY #27421 /* ~"The advocate's home."~ */ GOTO 13
  IF ~~ THEN REPLY #27423 /* ~"The apothecary."~ */ GOTO 16
  IF ~~ THEN REPLY #27468 /* ~"The art store."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27469 /* ~"The Brothel."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27470 /* ~"The Brothel."~ */ GOTO 19
  IF ~~ THEN REPLY #27471 /* ~"The catacombs beneath the Ward."~ */ GOTO 21
  IF ~~ THEN REPLY #27472 /* ~"The Civic Festhall."~ */ GOTO 22
  IF ~~ THEN REPLY #27473 /* ~"The curiosity shop."~ */ GOTO 23
  IF ~~ THEN REPLY #27474 /* ~"The tailor."~ */ GOTO 24
  IF ~~ THEN REPLY #27475 /* ~"Never mind. Let me ask about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27476 /* ~"Nowhere, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27347 /* ~"Advocates help argue cases, draft legal documents and act as legal representatives for their clients. The one close by, Iannis, is well-respected and quite dependable. He has resided and worked within the Ward a long, long while."~ */
  IF ~~ THEN REPLY #27477 /* ~"How do I reach Iannis' home?"~ */ GOTO 26
  IF ~~ THEN REPLY #27478 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27479 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27480 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #27348 /* ~"Advocates help argue cases, draft legal documents and act as legal representatives for their clients."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27349 /* ~"The one close by, Iannis, is well-respected and quite dependable. He has resided and worked within the Ward a long, long while."~ */
  IF ~~ THEN REPLY #27481 /* ~"How do I reach Iannis' home?"~ */ GOTO 26
  IF ~~ THEN REPLY #27482 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27483 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27484 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1 27.0
  SAY #27350 /* ~"The apothecary sells various salves, potions, herbs, and the like." He frowns momentarily. "The place's proprietors are a bit barmy, constantly sampling the store's stock. Good men, though."~ */
  IF ~~ THEN REPLY #27485 /* ~"How do I reach the apothecary?"~ */ GOTO 27
  IF ~~ THEN REPLY #27486 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27487 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 28.0
  SAY #27351 /* ~"Yvanna's Art and Curio Galleria is a most intriguing place. She has a collection of artwork, antiques, and artifacts from all across the planes."~ */
  IF ~~ THEN REPLY #27488 /* ~"How do I reach the art store?"~ */ GOTO 28
  IF ~~ THEN REPLY #27489 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27490 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27491 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.3 29.0
  SAY #27352 /* ~"A Sensate establishment that pleasures one's mind and senses." He shuts his eyes for a moment, smiling happily. "'Tis run by a most charming woman, Fall-from-Grace. I highly recommend it if this is your first time in the Ward, sir."~ */
  IF ~~ THEN REPLY #27492 /* ~"Sensate?"~ */ GOTO 36
  IF ~~ THEN REPLY #27493 /* ~"How do I reach the Brothel?"~ */ GOTO 29
  IF ~~ THEN REPLY #27494 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27495 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27496 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.4 29.1
  SAY #27353 /* ~"A Sensate establishment that pleasures one's mind and senses. Run by a most charming woman, Fall-from-Grace." He pauses to bow deeply to Grace.~ */
  IF ~~ THEN EXTERN ~DGRACE~ 126
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27354 /* ~"Oh, but you are most deserving of praise, Lady Grace. It is my great honor to deliver such a compliment in person." He turns to you once more.~ */
  IF ~~ THEN REPLY #27497 /* ~"I've forgotten... how do I reach the Brothel?"~ */ GOTO 29
  IF ~~ THEN REPLY #27498 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27499 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27500 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.5 30.0
  SAY #27355 /* ~"It's a mystery to me as to why the dabus haven't closed them off, yet. They're full of monsters, or so it's said, horrible things that gibber and drool in the darkness."~ */
  IF ~~ THEN REPLY #27501 /* ~"How would I find my way into them?"~ */ GOTO 30
  IF ~~ THEN REPLY #27502 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27503 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27504 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.6 31.0
  SAY #27356 /* ~"One of Sigil's most wondrous establishments... it is the headquarters of the Sensate faction, known throughout the multiverse for its concerts, art exhibitions, and lectures. But its most fascinating feature is its sensoriums."~ */
  IF ~~ THEN REPLY #27505 /* ~"Sensates?"~ */ GOTO 36
  IF ~~ THEN REPLY #27506 /* ~"Sensoriums?"~ */ GOTO 38
  IF ~~ THEN REPLY #27507 /* ~"Where is the Festhall?"~ */ GOTO 31
  IF ~~ THEN REPLY #27508 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27509 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27510 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.7 32.0
  SAY #27357 /* ~"I won't profess to have been there myself, but I understand it's run by an importer of sorts... a half-fiend, in fact, whose goods come from the Lower Planes."~ */
  IF ~~ THEN REPLY #27511 /* ~"A half-fiend?"~ */ GOTO 35
  IF ~~ THEN REPLY #27512 /* ~"The Lower Planes?"~ */ GOTO 34
  IF ~~ THEN REPLY #27513 /* ~"Where can I find this place?"~ */ GOTO 32
  IF ~~ THEN REPLY #27514 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27515 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27516 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.8 33.0
  SAY #27358 /* ~"Goncalves is an excellent tailor, but he is short of temper and easily offended. I must warn you, sir: he will likely judge you by your appearance, and thus you might have a difficult time making a friend of him."~ */
  IF ~~ THEN REPLY #27517 /* ~"Where is Goncalves' shop?"~ */ GOTO 33
  IF ~~ THEN REPLY #27518 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27519 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27520 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27359 /* ~"To where, sir?"~ */
  IF ~~ THEN REPLY #27521 /* ~"The advocate's home."~ */ GOTO 26
  IF ~~ THEN REPLY #27522 /* ~"The apothecary."~ */ GOTO 27
  IF ~~ THEN REPLY #27523 /* ~"The art store."~ */ GOTO 28
  IF ~~ THEN REPLY #27524 /* ~"The Brothel."~ */ GOTO 29
  IF ~~ THEN REPLY #27525 /* ~"The catacombs beneath the Ward."~ */ GOTO 30
  IF ~~ THEN REPLY #27526 /* ~"The Civic Festhall."~ */ GOTO 31
  IF ~~ THEN REPLY #27527 /* ~"The curiosity shop."~ */ GOTO 32
  IF ~~ THEN REPLY #27528 /* ~"The tailor."~ */ GOTO 33
  IF ~~ THEN REPLY #27529 /* ~"Never mind. Let me ask about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27530 /* ~"Nowhere, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27360 /* ~"Iannis' home is south of the gate to the Lower Ward - where you first entered this place, most likely. It will be on the eastern side of the road."~ */
  IF ~~ THEN REPLY #27531 /* ~"What can you tell me about the advocate?"~ */ GOTO 13
  IF ~~ THEN REPLY #27533 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27534 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27361 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, east of the road. It faces southwards and has three windows of stained glass."~ */
  IF ~~ THEN REPLY #27535 /* ~"What can you tell me about the place?"~ */ GOTO 16
  IF ~~ THEN REPLY #27536 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27537 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27362 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, west of the road. It faces southwards and has a roof whose tiles are held down by large stones."~ */
  IF ~~ THEN REPLY #27538 /* ~"What do you know about the place?"~ */ GOTO 17
  IF ~~ THEN REPLY #27542 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27543 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 20.0 25.3
  SAY #27363 /* ~"The Brothel of Slating Intellectual Lusts, eh?" He smiles knowingly. "'Tis just east of the gate to the Lower Ward - where you first entered this place, most likely. It is a large, round building, whose entrance faces southwards."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27544 /* ~"What can you tell me of the Brothel?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27545 /* ~"What can you tell me of the Brothel?"~ */ GOTO 19
  IF ~~ THEN REPLY #27546 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27547 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27364 /* ~He frowns. "Hrm. There is more than one entrance here, I know that much... but little more. I would warn you, though, that nothing comes up from those catacombs... including those who enter them."~ */
  IF ~~ THEN REPLY #27548 /* ~"What else can you tell me about them?"~ */ GOTO 21
  IF ~~ THEN REPLY #27549 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27550 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27365 /* ~"The Festhall is most easy to find, sir. 'Tis a massive structure in the northeastern portion of this area."~ */
  IF ~~ THEN REPLY #27553 /* ~"What can you tell of the Festhall?"~ */ GOTO 22
  IF ~~ THEN REPLY #27554 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27555 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27366 /* ~"I've never been there, but I've had it pointed out to me - 'tis in the southeast section of this area. An unusual building, set atop a wide flight of stairs. Difficult to miss, really."~ */
  IF ~~ THEN REPLY #27556 /* ~"What do you know of the place?"~ */ GOTO 23
  IF ~~ THEN REPLY #27557 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27558 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27367 /* ~"You will find Goncalves the Tailor's shop just to the north and east of the gate to the Lower Ward - where you first entered this place, most likely. 'Tis a wide building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #27559 /* ~"What can you tell me of the place?"~ */ GOTO 24
  IF ~~ THEN REPLY #27560 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27561 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27368 /* ~He nods, lowering his voice to a whisper. "You know, sir... Baator, the Abyss, and the like. Terrible places."~ */
  IF ~~ THEN REPLY #27562 /* ~"You said she was a half-fiend?"~ */ GOTO 35
  IF ~~ THEN REPLY #27563 /* ~"Where can I find this curiosity shop?"~ */ GOTO 32
  IF ~~ THEN REPLY #27564 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27565 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27566 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27369 /* ~"Not a tiefling, mind you, but a proper half-fiend. Daughter of an incubus and a mortal woman, I am told. I care not for gossip, however, so let's speak of her no more."~ */
  IF ~~ THEN REPLY #27567 /* ~"You said her goods were from the Lower Planes?"~ */ GOTO 34
  IF ~~ THEN REPLY #27568 /* ~"Where can I find this curiosity shop?"~ */ GOTO 32
  IF ~~ THEN REPLY #27569 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27570 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27571 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 22.0
  SAY #27370 /* ~"Yes. Their proper name is the 'Society of Sensation.' They believe that the true nature of the multiverse can only be discovered through direct experience..."~ */
  IF ~~ THEN REPLY #27572 /* ~"I see. Go on."~ */ GOTO 48
  IF ~~ THEN REPLY #27573 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27574 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27371 /* ~"They actually have found a means of sharing their experiences with others, with the sensoriums."~ */
  IF ~~ THEN REPLY #27575 /* ~"Sensoriums?"~ */ GOTO 38
  IF ~~ THEN REPLY #27576 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27577 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27372 /* ~"The Sensates have created a means by which they may take experiences, capture them in stones, and allow *others* to experience them. The Sensates roam the planes and search their inner selves for experiences to share with others... virtually everything they have felt or sensed lies in their sensoriums."~ */
  IF ~~ THEN REPLY #27578 /* ~"Where are these sensoriums located?"~ */ GOTO 39
  IF ~~ THEN REPLY #27579 /* ~"These experiences... are they like memories?"~ */ GOTO 40
  IF ~~ THEN REPLY #27580 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27581 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27373 /* ~"Within the Civic Festhall. There are sensoriums that are open to the public, and those open only to Sensates. There is a slight fee for using them, but it is a modest price to pay for the experience."~ */
  IF ~~ THEN REPLY #27582 /* ~"Where is the Festhall?"~ */ GOTO 31
  IF ~~ THEN REPLY #27583 /* ~"These experiences... are they like memories?"~ */ GOTO 40
  IF ~~ THEN REPLY #27584 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27585 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27374 /* ~"In a *way,* yes, but very intense... and not memories that you have had, but another has had, captured within the stone."~ */
  IF ~~ THEN REPLY #27586 /* ~"Captured? Does one lose their memory or experience when it's put into the stone?"~ */ GOTO 41
  IF ~~ THEN REPLY #27587 /* ~"Where are these sensoriums located?"~ */ GOTO 39
  IF ~~ THEN REPLY #27588 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27589 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27375 /* ~"No..." He frowns. "Or at least, I think not. I believe the stone *copies* the sensory experience. You might ask a Sensate about it to make sure, but that is my understanding."~ */
  IF ~~ THEN REPLY #27590 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27591 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27376 /* ~"The name sounds familiar... is she some sort of figurehead? Or character in a book...? I cannot recall."~ */
  IF ~~ THEN REPLY #27592 /* ~"Never mind. I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27593 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27377 /* ~"Ah, once more the Wanderer crosses my path." The man smiles at you over his cup. "More questions, no?"~ */
  IF ~~ THEN REPLY #27594 /* ~"That's right."~ */ GOTO 4
  IF ~~ THEN REPLY #27595 /* ~"Actually, no... just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27378 /* ~The man raises an eyebrow. "Pardon, sir?"~ */
  IF ~~ THEN REPLY #27596 /* ~"I said, 'I'm dead!' Dead, dead, la-la! Dead, dead, la-la..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27597 /* ~"Never mind. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27598 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27379 /* ~The man's expression becomes wary. "Ah, yes... aren't we all. I must take my leave, sir. I sense I have pressing business elsewhere."~ */
  IF ~~ THEN REPLY #27599 /* ~"Wait! I haven't told you *why* I'm dead..."~ */ GOTO 46
  IF ~~ THEN REPLY #27600 /* ~"Hold a moment. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27601 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27380 /* ~He takes a step back. "I must profess no interest in the matter, sir."~ */
  IF ~~ THEN REPLY #27602 /* ~"Because I killed too many people in my previous lives."~ */ GOTO 47
  IF ~~ THEN REPLY #27603 /* ~"Never mind, then. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27604 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27381 /* ~"Guards!"~ */
  IF ~~ THEN REPLY #27605 /* ~Attack him.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27606 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27382 /* ~"They dedicate their lives to experiencing as much of the multiverse as they can; they travel extensively, both across the planes, and into the depths of their own minds and emotions. But they take it a step further, you know..."~ */
  IF ~~ THEN REPLY #27607 /* ~"How so?"~ */ GOTO 37
  IF ~~ THEN REPLY #27608 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27609 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
