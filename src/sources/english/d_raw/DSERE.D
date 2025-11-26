// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSERE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSERE~

IF ~  Global("Sere","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1796 /* ~As you approach, the elderly woman turns and stares at you. "La, look who's come a-calling on Sere today... death's dearest son." She looks you up and down, then shakes her head in disbelief. "By every power and its mother, boy... what crypt did *you* crawl out of?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #1797 /* ~"I didn't crawl out of any crypt."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14338 /* ~"I didn't crawl out of any crypt."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14339 /* ~"I'm fresh from the Mortuary, actually."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14340 /* ~Joke: "Well, the crypt was losing its charm, so now I'm looking around for the right place to die. Know of anywhere?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14341 /* ~"Sorry, I thought you were someone else. Farewell."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ EXIT
END

IF ~  Global("Sere","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14342 /* ~Sere smirks as she sees you. "La, now, if it isn't the cryptcrawler. What brings you to Sere's door this time, boy?"~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14343 /* ~"I *didn't* crawl out of any crypt."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14344 /* ~"I *didn't* crawl out of any crypt."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14345 /* ~Joke: "Well, the crypt was losing its charm, so now I'm looking around for the right place to die. Know of anywhere?"~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #14346 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14347 /* ~"Nothing, just stopped by to check on you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.1 4.4 5.3 6.1 7.2 8.0 9.1 10.3 11.1 12.1 13.1 14.4 15.3 16.1 17.4 18.2 19.2 21.2 22.2 23.2 24.1 25.3 26.1 27.4 28.3 29.2 30.1 31.1 32.0 34.1 35.2 37.2 39.0 42.0 43.1 44.0 45.1 46.0 47.8 48.4 49.2 50.1 51.2 52.1 53.1 54.1 55.2 56.2 57.3 58.1 59.2 60.1 61.1 62.2 63.2 64.0 65.3
  SAY #14348 /* ~"Questions, eh? Well, you ken ask..." Sere looks at you with a steely eye, then smiles. "...Cryptcrawler." ~ */
  IF ~  Global("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14349 /* ~"I *didn't* crawl out of any crypt."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14350 /* ~"I *didn't* crawl out of any crypt."~ */ DO ~SetGlobal("Sere","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14351 /* ~"I wanted to ask you about some of the Dustmen in particular..."~ */ GOTO 47
  IF ~  Global("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14352 /* ~"Are you a Dustman?"~ */ GOTO 13
  IF ~  GlobalGT("Know_Hamrys","GLOBAL",0)
~ THEN REPLY #14353 /* ~"Can you tell me about Hamrys?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14354 /* ~"I wanted to talk to you about your beliefs. What happened that made you stop believing the Dustman philosophy?"~ */ GOTO 16
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
Global("Recruit_Sere","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #14355 /* ~"Sere, you're not a Dustman any longer. Want an alternative?"~ */ GOTO 34
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14356 /* ~"Have you seen a journal recently? I'm missing mine."~ */ GOTO 43
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #14357 /* ~"I am searching for a man named Pharod. Have you seen him?"~ */ GOTO 45
  IF ~~ THEN REPLY #14358 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2 5.1
  SAY #14359 /* ~"That so?" Sere raises an eyebrow. "Warms my ears to hear you gave that place the laugh, boy. Not much of a watering hole for one who isn't relieving themselves." She sniffs. "Tchhhh. Too many cobwebs and dusty minds."~ */
  IF ~~ THEN REPLY #14360 /* ~"You don't like the Mortuary? Aren't you a Dustman?"~ */ GOTO 13
  IF ~~ THEN REPLY #14361 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14362 /* ~"I must take my leave, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1 1.0 1.1 2.0 2.1
  SAY #14363 /* ~She frowns, her face wrinkling like crumpled parchment. "Right, then. What *coffin* did you crawl out of?" She mumbles. "One of those shoddy-splint coffins at Hamrys', most like. Gives corpses splinters, I hear." She sniffs. "That boy's not been worth a clipped copper since his father died."~ */
  IF ~~ THEN REPLY #14364 /* ~"I didn't crawl out of a *coffin,* either."~ */ GOTO 5
  IF ~~ THEN REPLY #14365 /* ~"Who is Hamrys?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14366 /* ~"I didn't crawl out of a coffin... I'm fresh from the Mortuary, actually."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14367 /* ~Joke: "Well, the coffin he made was too drafty, so now I'm looking around for the right place to die. Know of anywhere?"~ */ GOTO 9
  IF ~~ THEN REPLY #14368 /* ~"I'm looking for some information. Can I ask you some questions?"~ */ GOTO 2
  IF ~~ THEN REPLY #14369 /* ~"Sorry to bother you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #14370 /* ~She smiles, revealing a row of uneven teeth. "All right, boy. What *sarcophagus* did you crawl out of?" She stops and chuckles to herself. "Just ribbing you, boy. No harm meant. You do look like death's own, though."~ */
  IF ~~ THEN REPLY #14371 /* ~"Who is that Hamrys you mentioned?"~ */ DO ~SetGlobal("Know_Hamrys_Father","GLOBAL",1)
SetGlobal("Know_Hamrys","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #14372 /* ~"I should... I'm fresh from the Mortuary."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14373 /* ~Joke: "No harm done. To be honest, the sarcophagus was too roomy, so now I'm looking around for the right place to lie down and die. Know of anywhere?"~ */ GOTO 9
  IF ~~ THEN REPLY #14375 /* ~"I'm looking for some information. Can I ask you some questions?"~ */ GOTO 2
  IF ~~ THEN REPLY #14376 /* ~"Sorry to bother you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4 4.1 5.0
  SAY #14374 /* ~"Hamrys is a coffin-breaker... pardon, 'coffin-maker'... in the Lower Ward. Inherited the shop when his father died, much to the shame of every corpse needing a coffin, crypt, or tombstone in Sigil."~ */
  IF ~~ THEN REPLY #14377 /* ~"What happened to his father?"~ */ GOTO 7
  IF ~~ THEN REPLY #14378 /* ~"I see. Can I ask you some questions?"~ */ GOTO 2
  IF ~~ THEN REPLY #14379 /* ~"Thanks for the information... Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #14380 /* ~"Those ears just for show, boy? He *died.*" She mumbles. "His son talked him to death, most likely. That boy's tongue doesn't stop rattling. I'm surprised he doesn't shake his head loose from his shoulders."~ */
  IF ~~ THEN REPLY #14381 /* ~"You two sound like you have a lot in common, then."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #14382 /* ~Joke: "Well, it doesn't sound like I'd like to be buried in one of his coffins, then. Can you recommend anywhere else I could lie down and die?"~ */ GOTO 9
  IF ~~ THEN REPLY #14383 /* ~"I'm looking for some information. Can I ask you some questions?"~ */ GOTO 2
  IF ~~ THEN REPLY #14384 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14385 /* ~She narrows her eyes. "Do us both a favor and latch that bone-box of yours, boy. Don't be drawing commons between me and that yapping whelp."~ */
  IF ~~ THEN REPLY #14386 /* ~"Very well. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14387 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.2 4.3 5.2 7.1
  SAY #14388 /* ~She barks a laugh that rattles your ears. "Ha! Not here... unless you want to die of boredom." ~ */
  IF ~~ THEN REPLY #14389 /* ~"What's wrong with here?"~ */ GOTO 10
  IF ~~ THEN REPLY #14390 /* ~"I'll keep that in mind. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14391 /* ~"I must take my leave. Farewell, Sere."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14392 /* ~"Tchhh. Someone pinch your sense *and* your sight, boy?" She waves her hand around the bar. "Look around. What do your eyes tell you?"~ */
  IF ~~ THEN REPLY #14393 /* ~"Dustmen."~ */ GOTO 11
  IF ~~ THEN REPLY #14394 /* ~"A Dustman bar."~ */ GOTO 11
  IF ~~ THEN REPLY #14395 /* ~"A bunch of fun-loving Dustmen, drinking happily and conversing merrily, celebrating life to its fullest."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #14396 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14397 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #14398 /* ~"*Very* good!" Sere chuckles dryly, though she doesn't seem to be laughing at you. "At the risk of explaining myself, Dustmen are the dullest breed of dullards ever to nest in Sigil... always speaking of death reverently, like it's some holy union that every creature in the multiverse should strive for. Tccchhhh."~ */
  IF ~~ THEN REPLY #14399 /* ~"But you're a Dustman." ~ */ GOTO 13
  IF ~~ THEN REPLY #14400 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14401 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #14402 /* ~"You've got a clever tongue there, boy... mayhap your tongue is cleverer than you are?" Sere squints at you, then snorts. "That'd explain the scars."~ */
  IF ~~ THEN REPLY #14403 /* ~"But it doesn't explain why a Dustman is standing here ridiculing other Dustmen. Care to answer that one? *Are* you a Dustman?"~ */ GOTO 13
  IF ~~ THEN REPLY #14404 /* ~"Very clever. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14405 /* ~"I think I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3 3.0 11.0 12.0
  SAY #14406 /* ~"A Dustman? I s'pose." Sere sniffs. "Tchhhh. I've seen enough sand pass through the hourglass while wearing these robes. This body's almost ready to pay the ferryman." She chuckles, but there's not much mirth in it.~ */
  IF ~~ THEN REPLY #14407 /* ~"Are you afraid of dying?"~ */ GOTO 14
  IF ~~ THEN REPLY #14408 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14409 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #14410 /* ~"'Course I am, boy! Who isn't?" She frowns and glances around. "Well, except Dustmen. They're not afraid because they've been swallowing so much of their own bat droppings over the decades they've blinded themselves into thinking that death is some kind of 'release.' Tccchhh."~ */
  IF ~~ THEN REPLY #14411 /* ~"It *is* a release of a sort." ~ */ GOTO 15
  IF ~~ THEN REPLY #14412 /* ~"You don't sound much like a Dustman."~ */ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14413 /* ~"So what sparked this crisis of faith?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14414 /* ~"So what sparked this crisis of faith?"~ */ GOTO 16
  IF ~~ THEN REPLY #14415 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14416 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #14417 /* ~"If you think this life is a burden, boy, then perhaps. I'm not convinced of that."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14418 /* ~"So what sparked this crisis of faith?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14419 /* ~"So what sparked this crisis of faith?"~ */ GOTO 16
  IF ~~ THEN REPLY #14420 /* ~"So you don't believe in what the Dustmen say? Aren't you a Dustman?"~ */ GOTO 65
  IF ~~ THEN REPLY #14421 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14422 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.5 14.2 14.3 15.0 15.1 65.0 65.1 65.2
  SAY #14423 /* ~She shrugs. "Life, I s'pose. It... eh..." She frowns. "Ha! Never you mind. I won't bore you with the niggling details."~ */
  IF ~~ THEN REPLY #14424 /* ~"I'd like to know, actually."~ */ GOTO 17
  IF ~~ THEN REPLY #14425 /* ~"All right. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14426 /* ~"Well, thank the powers for that. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_2","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #14427 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #14428 /* ~"Oh, *would* you?" She looks at you skeptically. "Tchhhh. How old you take me for, boy?"~ */
  IF ~~ THEN REPLY #14429 /* ~Truth: "Old."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sere_1","GLOBALLaw",1)
~ GOTO 18
  IF ~~ THEN REPLY #14430 /* ~Let her down gently: "Not too old."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sere_1","GLOBALGood",1)
~ GOTO 18
  IF ~~ THEN REPLY #14431 /* ~Lie out of kindness: "Rather youngish." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALGood_Sere_2","GLOBALGood",1)
~ GOTO 19
  IF ~~ THEN REPLY #14432 /* ~"I don't know, and I don't care."~ */ GOTO 20
  IF ~~ THEN REPLY #14433 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14434 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #14435 /* ~She snorts. "Well, you're wrong. I'm *really* old. Now, I've spent most of my long years teaching Dustmen. I've seen many Dustmen whelps grow within our order, taught them the ways of the faction, kept the faith, preached the tenets of the faction..." She frowns. "...and so on and so on. No questions. No doubt. This life was merely an antechamber that led to the True Death."~ */
  IF ~~ THEN REPLY #14436 /* ~"What happened?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14437 /* ~"You know, this is starting to bore me. Farewell."~ */ GOTO 20
  IF ~~ THEN REPLY #14438 /* ~"I see. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14439 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2
  SAY #14440 /* ~Sere blinks, then smiles. "Aren't *you* a dear?" She chuckles to herself, then coughs. "Well, I'm older than I look. Much older." She sighs. "I've spent most of my life teaching Dustmen. I've seen many Dustmen whelps grow within our order, taught them the ways of the faction, kept the faith, preached the tenants of the faction..." She frowns. "...and so on and so on. No questions. No doubt. This life was merely an antechamber that led to the True Death."~ */
  IF ~~ THEN REPLY #14441 /* ~"What happened?"~ */ DO ~SetGlobal("Sere_Beliefs","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #14442 /* ~"You know, this is starting to bore me. Farewell."~ */ GOTO 20
  IF ~~ THEN REPLY #14443 /* ~"I see. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14444 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.1 22.1
  SAY #14445 /* ~Sere frowns. "Tchhhh. *You* were the one who asked me to rattle my bone-box, boy. I'd be careful what you ask for in the future." ~ */
  IF ~~ THEN REPLY #14446 /* ~"I will. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sere_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Sere_1","GLOBALGood",-1)
SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.0 19.0
  SAY #14447 /* ~"Well... a half-month back, I went sick with the fever." She sighs. "I thought it was the end. It... eh, it rattled my cage."~ */
  IF ~~ THEN REPLY #14448 /* ~"How?"~ */ GOTO 22
  IF ~~ THEN REPLY #14449 /* ~"You know, this is starting to bore me. Farewell."~ */ GOTO 20
  IF ~~ THEN REPLY #14450 /* ~"I see. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14451 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #14452 /* ~Her face becomes as stone. "There's something about having your faction members circle around your deathbed like a pack of pale-faced ghouls, nodding and agreeing that your suffering and dying is all for the best. 'Oh, Sere is so fortunate! She shall soon be relieved of the burden of life!' *Burden of Life?* That's when it struck me..."~ */
  IF ~~ THEN REPLY #14453 /* ~"That...?"~ */ GOTO 23
  IF ~~ THEN REPLY #14454 /* ~"You know, this is starting to bore me. Farewell."~ */ GOTO 20
  IF ~~ THEN REPLY #14455 /* ~"I see. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14456 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14457 /* ~"That there's something..." A queer expression comes over her features. "...addled about not appreciating your *life.* The Dustmen keep saying that life is misery and suffering... is it? That we should be happy to pass on into oblivion... should we?" She shakes her head. "Questions, questions... and precious few answers."~ */
  IF ~~ THEN REPLY #14458 /* ~"It doesn't sound like you believe in the Dustmen philosophy anymore."~ */ GOTO 24
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14459 /* ~"What will you do?"~ */ GOTO 25
  IF ~~ THEN REPLY #14460 /* ~"I see. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14461 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14462 /* ~"I suppose I have got a swarm of doubts all buzzing in my skull." She rubs her temples. "Hard to get them all to be quiet sometimes. They need to be fed some answers, and I haven't got them all worked out yet."~ */
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #14463 /* ~"What will you do?"~ */ GOTO 25
  IF ~~ THEN REPLY #14464 /* ~"I see. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14465 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #14466 /* ~"To be square, boy, I don't know." Sere sighs. "That's the problem with doubt. I can't even trust that what I'm feeling is true, or if I'm scared of death only because of my brush with the fever, or even what I should do. Is this a passing thing? I don't know."~ */
  IF ~~ THEN REPLY #14467 /* ~"Sere, if you had truly believed in the Dustman philosophy then your brush with the fever would not have left you with such doubts."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14468 /* ~"Sere, I would treat this as a test of your belief. It sounds like these feelings are only temporary. All those years of devotion to the Dustmen could not have been false."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",2)
AddexperienceParty(500)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14469 /* ~"At the core of the Dustmen philosophy is that this life is one of pain. It is a weapon that life uses against a soul to keep it anchored to this existence. Do not let this brush with the fever break your Dustman beliefs so. Time will heal these doubts."~ */ DO ~SetGlobal("Sere_Answer","GLOBAL",3)
AddexperienceParty(500)
~ GOTO 26
  IF ~~ THEN REPLY #14470 /* ~"It is a difficult thing to answer. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14471 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1 25.2
  SAY #14472 /* ~Sere stares at you, then nods slowly. "Maybe so... maybe so." She frowns, her face wrinkling up in concentration. "I'll have to chew it over some more."~ */
  IF ~  Global("Sere_Death_Answer","GLOBAL",0)
~ THEN REPLY #14473 /* ~"You should. It's no small matter."~ */ GOTO 27
  IF ~~ THEN REPLY #14474 /* ~"That's all I ask. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14475 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14476 /* ~"La, now... enough of me rattling on about my woes!" Sere stares at your scars. "You look like you've shared a few handshakes with death yourself. Hasn't that changed your views somewhat? Doesn't it make you appreciate life a bit more?" ~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14477 /* ~"Well, my condition is unique... I woke up in the Mortuary. I think they mistook me for a corpse and were prepared to bury me. The strange thing is, I think I actually had died... and got better."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",1)
~ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14478 /* ~"Well, my brushes with death are a lot closer than those of other people. I can't seem to die... at least, as far as I know."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",2)
~ GOTO 28
  IF ~~ THEN REPLY #14479 /* ~Truth: "Yes."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",3)
~ GOTO 62
  IF ~~ THEN REPLY #14480 /* ~Truth: "Not really."~ */ DO ~SetGlobal("Sere_Death_Answer","GLOBAL",4)
~ GOTO 63
  IF ~~ THEN REPLY #14481 /* ~"I don't really want to talk about it. I had some other questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #14482 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 62.0 62.1 63.0 63.1
  SAY #14483 /* ~Sere blinks. "Ye're rattling my coffin."~ */
  IF ~~ THEN REPLY #14484 /* ~"It's true."~ */ GOTO 29
  IF ~~ THEN REPLY #14485 /* ~"Yeah, I'm just joking."~ */ GOTO 33
  IF ~~ THEN REPLY #14486 /* ~"Not really."~ */ GOTO 29
  IF ~~ THEN REPLY #14487 /* ~"I don't really want to talk about it. I had some other questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #14488 /* ~"I think I've said enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.2
  SAY #14489 /* ~"Strange are the ways of the planes, and I've seen too much to throw *any* tale out with the wash." She studies your face. "If it's true, why does this happen?"~ */
  IF ~~ THEN REPLY #14490 /* ~"I don't know." ~ */ GOTO 30
  IF ~~ THEN REPLY #14491 /* ~"All I know is I woke up in the Mortuary with no memory and covered with enough wounds to kill me three times over."~ */ GOTO 31
  IF ~~ THEN REPLY #14492 /* ~"I don't really know. Look, I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14493 /* ~"I think I've said enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14494 /* ~She seems to think for a moment, then shrugs. "Makes two of us, then. Most peculiar. Never heard of anything like that. Shame about the memories."~ */
  IF ~~ THEN REPLY #14495 /* ~"Do you have any idea why this happens?"~ */ GOTO 32
  IF ~~ THEN REPLY #14496 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14497 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #14498 /* ~"Now don't be saying that too loud." She glances around. "Most peculiar. Never heard of anything like that. Shame about the memories."~ */
  IF ~~ THEN REPLY #14499 /* ~"Do you have any idea why this happens?"~ */ GOTO 32
  IF ~~ THEN REPLY #14500 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14501 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0 31.0
  SAY #14502 /* ~"Nay, not a one. Never knew anyone who death wouldn't take... until now."~ */
  IF ~~ THEN REPLY #14503 /* ~"Well, perhaps I could ask you some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14504 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 28.1
  SAY #14505 /* ~She frowns. "I'd watch that wit of yours. It's sharp enough to kill you." She turns away, makes a dismissive gesture with her hand. "Leave me be."~ */
  IF ~~ THEN REPLY #14506 /* ~"Farewell."~ */ DO ~SetGlobal("Sere","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 2.6
  SAY #14507 /* ~"Eh? Speak plainly, boy."~ */
  IF ~~ THEN REPLY #14508 /* ~"I have some friends who believe that institutions such as the Dustmen should be laid low."~ */ GOTO 35
  IF ~~ THEN REPLY #14509 /* ~"Actually, I misspoke. There were some other questions I wanted to ask you..."~ */ GOTO 2
  IF ~~ THEN REPLY #14510 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14511 /* ~"Oh?" She smirks. "Would you be referring to the *League?*"~ */
  IF ~~ THEN REPLY #14512 /* ~"Yes."~ */ GOTO 36
  IF ~~ THEN REPLY #14513 /* ~"Maybe..."~ */ GOTO 36
  IF ~~ THEN REPLY #14514 /* ~"Actually, I misspoke. There were some other questions I wanted to ask you..."~ */ GOTO 2
  IF ~~ THEN REPLY #14515 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 35.1
  SAY #14516 /* ~"Tccchhh! Those hot-collared rabble-rousers are barmier than the Dustmen, boy. They're not for an old woman like me."~ */
  IF ~~ THEN REPLY #14517 /* ~"They aren't? I think you could be a valuable member."~ */ GOTO 37
  IF ~  GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #14518 /* ~"Before you say no, consider this: Your brush with death convinced you life may be worth living after all. The Dustmen corrupt new recruits, making them believe that death is preferable to life. Do you think that's right?"~ */ GOTO 40
  IF ~~ THEN REPLY #14519 /* ~"It seemed like you were in need of a change."~ */ GOTO 37
  IF ~~ THEN REPLY #14520 /* ~"Very well. I will take my leave... let me know if you change your mind."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.2
  SAY #14521 /* ~"I think you're mistaken." Sere smiles slightly; she seems amused. "I may have my doubts, but they don't carry me *that* far afield."~ */
  IF ~~ THEN REPLY #14522 /* ~"Then consider this: Your brush with death convinced you life may be worth living after all. The Dustmen recruit new members by making them believe that death is preferable to life. Do you think that's right?"~ */ GOTO 40
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14523 /* ~"Very well, one last question: What do you think of the Death Contract?"~ */ GOTO 38
  IF ~~ THEN REPLY #14524 /* ~"Forget it, then. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14525 /* ~"Very well. I will take my leave... let me know if you change your mind."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.1
  SAY #14526 /* ~"The Dead Contract?" She seems surprised. "What about it?"~ */
  IF ~~ THEN REPLY #14527 /* ~"Do you think buying a person's corpse as slave labor is a *good* thing? Taking advantage of momentary weakness in a person's spirit to enslave their bodies after they pass on? Is that something the Dustmen should be proud of?"~ */ GOTO 41
END

IF ~~ THEN BEGIN 39 // from: 36.3
  SAY #14528 /* ~"Doubtful, boy."~ */
  IF ~~ THEN REPLY #14529 /* ~"Can I ask you some other questions...?"~ */ GOTO 2
  IF ~~ THEN REPLY #14530 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.1 37.0
  SAY #14531 /* ~"Well, no... but..."~ */
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
~ THEN REPLY #14532 /* ~"And what about the Dead Contract? Do you think buying a person's corpse as slave labor is a *good* thing? Taking advantage of momentary weakness in a person's spirit to enslave their bodies after they pass on? Is that something the Dustmen should be proud of?"~ */ GOTO 41
  IF ~~ THEN REPLY #14533 /* ~"Listen to yourself, Sere. Even your answer betrays your doubts. You don't believe the Dustmen philosophy. You know it's wrong."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 38.0 40.0 40.1
  SAY #14534 /* ~"Eh... now..." Sere frowns. "Hmmmm. Now, I'm not saying I *agree* with all of the Dustman practices, but what would your friends do about it?"~ */
  IF ~~ THEN REPLY #14535 /* ~"We would tear down the walls. We will start anew. And everyone will be free of these hypocrisies that they call philosophies."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Recruit_Sere","GLOBAL",1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #14536 /* ~"All right, I'll be an ear for your friends." Sere seems surprised at herself. "And maybe more." She laughs. "I feel more alive already... must be the intrigue of it all."~ */
  IF ~~ THEN REPLY #14537 /* ~"You won't regret it. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14538 /* ~"Thank you, Sere. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 2.7
  SAY #14539 /* ~"What does it look like?"~ */
  IF ~~ THEN REPLY #14540 /* ~"No idea."~ */ GOTO 44
  IF ~~ THEN REPLY #14541 /* ~"Never mind. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14542 /* ~"It is of no importance. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #14543 /* ~"If you don't know what it looks like, how do you expect to find it?"~ */
  IF ~~ THEN REPLY #14544 /* ~"I'm beginning to wonder that myself. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14545 /* ~"It is of no importance. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 2.8
  SAY #14546 /* ~Sere's face crumples into a frown. "That *dog*... he's the worst of the Collector lot. I heard he has his kip set up somewhere in Ragpicker's Square, many streets west of the Mortuary gate. Dangerous place, though. Some of those Collectors aren't patient enough to wait for folks to die so they can sell them for jink."~ */
  IF ~~ THEN REPLY #14547 /* ~"Collectors?"~ */ GOTO 46
  IF ~~ THEN REPLY #14548 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14549 /* ~"Thanks for the warning. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14550 /* ~"They're vermin that scavenge the bowels of the Hive for bodies to sell to the Dustmen. Make a living off the dead. A motley breed. Makes you ashamed to share the same city with them." She sighs. "Tcchhh. At least they help keep the streets clean."~ */
  IF ~~ THEN REPLY #14551 /* ~"Oh. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14552 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.2 48.3 49.1 50.0 51.1 52.0 53.0 54.0 55.1 56.1 57.2 58.0 59.1 60.0 61.0
  SAY #14553 /* ~"No harm in it. Who's on your mind?"~ */
  IF ~  GlobalGT("Await","GLOBAL",0)
~ THEN REPLY #14554 /* ~"Can you tell me about Awaiting-Death?"~ */ GOTO 53
  IF ~  GlobalGT("Mortai","GLOBAL",0)
~ THEN REPLY #14555 /* ~"Can you tell me about Mortai?"~ */ GOTO 55
  IF ~  GlobalGT("Emoric","GLOBAL",0)
~ THEN REPLY #14556 /* ~"Can you tell me about Emoric?"~ */ GOTO 54
  IF ~  GlobalGT("Coppereyes","GLOBAL",0)
~ THEN REPLY #14557 /* ~"Can you tell me about Old Copper-Eyes?"~ */ GOTO 61
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #14558 /* ~"Actually, I met a scribe named Dhall at the Mortuary. Do you know him?"~ */ GOTO 51
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #14559 /* ~"I met a guide at the Mortuary, Soego. Do you know him?"~ */ GOTO 48
  IF ~  GlobalGT("Eivene","GLOBAL",0)
~ THEN REPLY #14560 /* ~"One of the embalmers in the Mortuary... Ei-Vene. Do you know her?"~ */ GOTO 59
  IF ~  Global("Sere","GLOBAL",0)
Global("Await","GLOBAL",0)
Global("Emoric","GLOBAL",0)
Global("Coppereyes","GLOBAL",0)
Global("Soego","GLOBAL",0)
Global("Dhall","GLOBAL",0)
Global("Eivene","GLOBAL",0)
~ THEN REPLY #14561 /* ~"Actually, never mind - I don't know any of their names."~ */ GOTO 64
  IF ~~ THEN REPLY #14562 /* ~"Forget it. I had some other questions instead..."~ */ GOTO 2
  IF ~~ THEN REPLY #14563 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.5
  SAY #14564 /* ~"That boy used to be a regular around here. Don't know what happened to him. Could be, he was shaken up after his friend died."~ */
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",0)
~ THEN REPLY #14565 /* ~"Explain."~ */ DO ~SetGlobal("Know_Soego_Friend_Death","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Know_Soego_Friend_Death","GLOBAL",1)
~ THEN REPLY #14566 /* ~"Explain."~ */ GOTO 49
  IF ~~ THEN REPLY #14567 /* ~"Has Soego always been a guide at the Mortuary?"~ */ GOTO 50
  IF ~~ THEN REPLY #14568 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14569 /* ~"I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14570 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1
  SAY #14571 /* ~"One of his friends was killed in the Hive a few weeks ago, torn apart by rats." She shakes her head. "Messy business."~ */
  IF ~~ THEN REPLY #14572 /* ~"Has Soego always been a guide at the Mortuary?"~ */ GOTO 50
  IF ~~ THEN REPLY #14573 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14574 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14575 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.2 49.0
  SAY #14576 /* ~"No, only for the past few months... and last I heard, he was just sent off for some missionary duty, but I don't know where."~ */
  IF ~~ THEN REPLY #14577 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14578 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14579 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.4
  SAY #14580 /* ~"Tchhhh. Dhall? He was my instructor in the Philosophical Arts during my early training at the Mortuary and a crusty fool to boot. He's ill, so my ears tell me. I bet he'll even bore death with his presence."~ */
  IF ~~ THEN REPLY #14581 /* ~"Is he dying?"~ */ GOTO 52
  IF ~~ THEN REPLY #14582 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14583 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14584 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #14585 /* ~"Tchhhh. Sicker than a spotted dog, he is. Not much sand left in the hourglass for him."~ */
  IF ~~ THEN REPLY #14586 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14587 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14588 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 47.0
  SAY #14593 /* ~"Awaiting-Death? Tchhh! That boy has *half* the sense of a jackass. He actually *wants* to die, and him so young, too. I wish death *would* rattle his cage. Teach him a few things..."~ */
  IF ~~ THEN REPLY #14594 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14595 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14596 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 47.2
  SAY #14597 /* ~"That stone-faced old fool. I taught him, you know, and I used to hold the man in high regard, then I woke up. He's a crusty old ghoul that sits here in his off hours to make sure the younger Dustmen have a symbol of authority here in this bar." She mumbles. "Old vulture."~ */
  IF ~~ THEN REPLY #14598 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14599 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14600 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 47.1
  SAY #14601 /* ~"Mortai? Ha! I thought you were going to ask about a Dustman." She spits. "There's no Dustman who's less a Dustman than that jink-smacking bone-box-rattling lackwit!"~ */
  IF ~~ THEN REPLY #14602 /* ~"What do you mean?"~ */ GOTO 56
  IF ~~ THEN REPLY #14603 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14604 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14605 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #14606 /* ~"Mortai's so anxious to impress his betters by getting the most Dead Contracts signed that I wonder if he'll ever be a Dustman."~ */
  IF ~~ THEN REPLY #14607 /* ~"I don't understand."~ */ GOTO 57
  IF ~~ THEN REPLY #14608 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14609 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14610 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #14611 /* ~"He's *eager* to get contracts signed, boy. He's concerned about his reputation. He's thinking of his *career* in the Dustmen. That alone says it all."~ */
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14612 /* ~"I still don't understand."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 58
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14613 /* ~"I still don't understand."~ */ GOTO 58
  IF ~~ THEN REPLY #14614 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14615 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14616 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1
  SAY #14617 /* ~"It's said that passions kill." Sere snorts. "Tchhh. For Dustmen, it's the opposite. Passions keep you alive. And if you can't strip yourself of passions, whether eagerness, greed or ambition, then you're doomed to never truly die, because life will always hold a piece of you."~ */
  IF ~~ THEN REPLY #14618 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14619 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14620 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 47.6
  SAY #14621 /* ~"Who?"~ */
  IF ~~ THEN REPLY #14622 /* ~"A strange young woman... poor eyesight, near-deaf, talons for hands?"~ */ GOTO 60
  IF ~~ THEN REPLY #14623 /* ~"Never mind. Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14624 /* ~"No matter. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14625 /* ~"Forget it. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #14626 /* ~Sere shakes her head. "Maybe she's a new initiate. I've never heard of her."~ */
  IF ~~ THEN REPLY #14627 /* ~"Very well. Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14628 /* ~"No matter. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14629 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 47.3
  SAY #14630 /* ~"Don't know much about that one... He's a strange blood. He never moves from that spot, never eats, never drinks, just waits." She shivers slightly. "Makes me uneasy."~ */
  IF ~~ THEN REPLY #14631 /* ~"Can I ask you about some other Dustmen?"~ */ GOTO 47
  IF ~~ THEN REPLY #14632 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14633 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 27.2
  SAY #14634 /* ~"And well it should. Nothing comforting about death."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14635 /* ~"Well, my condition is unique... I woke up in the Mortuary. I think they mistook me for a corpse and were prepared to bury me. The strange thing is, I think I actually had died... and got better."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14636 /* ~"Well, my brushes with death are a lot closer than those of other people. I can't seem to die... at least, as far as I know."~ */ GOTO 28
  IF ~~ THEN REPLY #14637 /* ~"I suppose not. I had some other questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #14638 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 27.3
  SAY #14639 /* ~"La, well, that's a shame, boy." Sere harumphs. "If a death's head grin isn't enough to make you want to hold onto life, there's probably not a force on the planes that can make you see sense."~ */
  IF ~  Global("Death","GLOBAL",0)
~ THEN REPLY #14640 /* ~"Well, my condition is unique... I woke up in the Mortuary. I think they mistook me for a corpse and were prepared to bury me. The strange thing is, I think I actually had died... and got better."~ */ GOTO 28
  IF ~  GlobalGT("Death","GLOBAL",0)
~ THEN REPLY #14641 /* ~"Well, my brushes with death are a lot more common than other people. You see, I can't seem to die... at least, as far as I know. It kind of deadens you to death."~ */ GOTO 28
  IF ~~ THEN REPLY #14642 /* ~"That's your opinion. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14643 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 47.7
  SAY #14644 /* ~"La, well, I'll spare you the introductions." Sere sniffs. "They're a motley lot. If you want to know about one of them, find out their name first then make your way back to me."~ */
  IF ~~ THEN REPLY #14645 /* ~"Very well. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14646 /* ~"I think I'll go speak to some of them, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 14.1 15.2
  SAY #14647 /* ~She shrugs. "I guess the Dustman robes don't fit me as well as they used to."~ */
  IF ~~ THEN REPLY #14648 /* ~"What happened?"~ */ GOTO 16
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #14649 /* ~"So what sparked this crisis of faith?"~ */ GOTO 16
  IF ~  GlobalGT("Emoric_Sere","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #14650 /* ~"So what sparked this crisis of faith?"~ */ GOTO 16
  IF ~~ THEN REPLY #14651 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #14652 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~  Global("Sere","GLOBAL",2)
~ THEN BEGIN 66 // from:
  SAY #14653 /* ~Sere frowns when she sees you. "Better hop-a-long back to your crypt, boy. I don't have much time left in this life to banter words with you."~ */
  IF ~~ THEN EXIT
END
