// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHINEAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHINEAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #7 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2397 /* ~You see a squat man with rash-covered skin and several pustules covering his face. His clothes *seem* to mark him as some sort of an official, but they are dirty, wrinkled and covered with rat hair. As you watch, he idly scratches himself with his stubby fingers.~ */
  IF ~  Global("Phineas","GLOBAL",0)
~ THEN REPLY #2398 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #2400 /* ~Leave the man alone, look around the shop.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2402 /* ~"Aiiiiigh!" The little man shrieks and jumps, startled. Clutching his heart, he takes a deep breath and pushes his spectacles up on his rash-ridden nose. "Yes, yes? And what is it that I can do for you..." He scratches his nose and looks you up and down, studying your scars. "I... eh... have little to nothing in the till, so if you have come to plunder the premises, this locale is ill-chosen."~ */
  IF ~~ THEN REPLY #2403 /* ~"I'm not here to 'plunder the premises.' Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #2404 /* ~"'Little to nothing in the till,' eh? Well, why don't you just give me what you *have,* and we'll part as friends."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Phineas_1","GLOBALGood",-1)
~ GOTO 13
  IF ~~ THEN REPLY #2405 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 14 17 24 25 26 30 11 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #2406 /* ~"Aiiiiigh! By the powers... stop *creeping* up on me like that!" He pushes his spectacles up on his nose and gives you a hard look. "And what is it I can do for you *this* time, hmnnnn?"~ */
  IF ~~ THEN REPLY #2401 /* ~"I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2450 /* ~"I could use what you have in your cashbox, then I'll be going."~ */ GOTO 13
  IF ~~ THEN REPLY #2451 /* ~"Nothing today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 16.0
  SAY #2407 /* ~"I? I am the Respected Phineas T. Lort the Thirty-Ninth, in charge of this Hive Branch of the Office for Vermin and Disease Control. It is my distinguished privilege..." He scratches his chest and puffs up. "To inform you that we, in the bureaucratic sense of the word *we,* meaning, to encompass the Sigil bureaucracy as a whole, are accepting bounties on all manner of vermin and strays that infest the..." He scratches again. "...fair streets of Sigil, hub of the multiverse and the city which sits at the center of all things, the city by which *all* other cities are measured."~ */
  IF ~~ THEN REPLY #2408 /* ~"Bounties?"~ */ JOURNAL #66745 /* ~I spoke with a Vermin Control Inspector in the Hive, Phineas T. Lort, who said he was paying bounties on all cranium rat tails delivered to his office, at a rate of one copper per tail. I suppose a little copper is better than none at all... maybe if I bring enough rat tails to him, I can squeeze him for a better rate. ~ */ GOTO 4
  IF ~~ THEN REPLY #2409 /* ~"I see. Well, I think I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2410 /* ~"Yes, yes... we, in the bureaucratic sense of the word *we,* meaning, to encompass the Sigil bureaucracy as a whole, are accepting tangible proof of the eradication of brain vermin, a.k.a. cranium rats, from the Hive area where they have clustered quite thickly for the past many years - as a recent census of the vermin population has shown. I am empowered by the Sigilian bureaucracy to pay a bounty of..." He puffs up dramatically. "...one copper common per cranium rat delivered to my branch office."~ */
  IF ~~ THEN REPLY #2411 /* ~"'Cranium rat'?"~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2412 /* ~"I don't have any rats, but I have some rat tails."~ */ GOTO 7
  IF ~~ THEN REPLY #2413 /* ~"I see. Well, I better be going... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 16.3
  SAY #2414 /* ~"Cranium rats are a species of vermin that become more intelligent the more of them are in close proximity to each other. One cranium rat alone is but a nuisance that chews at boards and burrows into food, but five, ten, or more, and their intelligence grows until it surpasses even the intelligence of ones such as myself." Scratches, then sniffs disdainfully. "I imagine that two or three cranium rats might be enough to outwit *you,* sir."~ */
  IF ~~ THEN REPLY #2415 /* ~"Another comment like that, and you'll be wearing your ass as a hat."~ */ GOTO 6
  IF ~~ THEN REPLY #2416 /* ~"How many cranium rats are in Sigil?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2417 /* ~"Tell me more about the cranium rats."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2418 /* ~"I don't have any rats, but I have some rat tails."~ */ GOTO 7
  IF ~~ THEN REPLY #2423 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2419 /* ~Phineas blinks; your appearance seems to sink in at last. "Hmmm. I withdraw my most inappropriate comment, especially in light of your recent assertion of dominance and physical superiority in this social situation."~ */
  IF ~~ THEN REPLY #2420 /* ~"How many cranium rats are in Sigil?"~ */ GOTO 8
  IF ~  CheckStatGT(Player1,13,INT)
~ THEN REPLY #2421 /* ~"Tell me more about the cranium rats."~ */ GOTO 9
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2422 /* ~"I don't have any rats, but I have some rat tails."~ */ GOTO 7
  IF ~~ THEN REPLY #2424 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 5.3 6.2 16.4
  SAY #2425 /* ~"Excellent! Most excellent!" Claps his hands delightedly. "Let me see..."~ */
  IF ~  NumItemsPartyGT("Tail",0)
~ THEN REPLY #2452 /* ~Turn in a rat tail, collect the bounty.~ */ DO ~IncrementGlobal("Sold_Rat","GLOBAL",1)
DestroyPartyItem("Tail",FALSE)
GiveGoldForce(1)
~ GOTO 15
  IF ~~ THEN REPLY #2453 /* ~"Actually, I'll hold on to them for a while. I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2454 /* ~"Maybe some other time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.0
  SAY #2432 /* ~"More than enough to last a bounty hunter a lifetime... perhaps several."~ */
  IF ~~ THEN REPLY #2433 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2434 /* ~"I see. Well, thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 6.1
  SAY #2435 /* ~"The more of them are in proximity, the more formidable they become... some gain the ability to cast magical spells, they can resist magic effects hurled at them, and they can employ some... cunning tactics." Pushes spectacles up on his nose. "As you can understand, we are anxious to reduce their numbers in Sigil."~ */
  IF ~~ THEN REPLY #2436 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2437 /* ~"I see. Well, thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 16.1 16.2
  SAY #2438 /* ~"Well, it is quite an epic tale... you see, I was born here in Sigil..."~ */
  IF ~~ THEN REPLY #2439 /* ~"Uh..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 11 // from:
  SAY #2440 /* ~"...and then I realized that I had somehow offended my colleagues, for I found myself 'promoted' to this branch office and have remained here for these past... *many*... years." He sighs, then idly scratches his nose.~ */
  IF ~~ THEN REPLY #2441 /* ~"Uh... *yawn* ...I had some other questions..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 16
  IF ~~ THEN REPLY #2442 /* ~"I see... well, uh, thanks for your time. Farewell."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 16.5
  SAY #2443 /* ~"My rash? Contagious? No, no... well, at least I don't think so. It's a symptom of the position, I'm afraid. The job literally grows on you." He scratches himself again.~ */
  IF ~~ THEN REPLY #2444 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2445 /* ~"I see. Well, thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1 2.1
  SAY #2446 /* ~"Eh... why most certainly..." He reaches into his cashbox beneath the counter, cracks the lid and fishes around inside. His hand emerges with a few coins, which he gives to you. "I hope you feel some small measure of guilt for this action. Without those meager funds, this branch office will be unable to cover its costs."~ */
  IF ~~ THEN REPLY #2447 /* ~"My heart bleeds for you. Farewell."~ */ DO ~SetGlobal("Phineas","GLOBAL",4)
GiveGoldForce(53)
~ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 17 24 25 26 30 even though they appear after this state */
~  Global("Phineas","GLOBAL",4)
~ THEN BEGIN 14 // from:
  SAY #2448 /* ~"I can only speculate that robbing me of all that I have wasn't enough for you. Why have you returned?"~ */
  IF ~~ THEN REPLY #51468 /* ~"I have some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #51469 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #2455 /* ~Phineas hums merrily as you complete the transaction. "Thank you, thank you, good sir. The city of Sigil, and I, appreciate your efforts on our behalf."~ */
  IF ~~ THEN REPLY #2456 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #2457 /* ~"Thanks. If I get any more rat tails, I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 7.1 8.0 9.0 11.0 12.0 14.0 15.0 24.1 25.1 30.1 31.0
  SAY #2458 /* ~"Hmnnnnn? And your questions would be...?"~ */
  IF ~~ THEN REPLY #2459 /* ~"Who are you?"~ */ GOTO 3
  IF ~  CheckStatLT(Player1,13,CHR)
~ THEN REPLY #2460 /* ~"What are you doing here?"~ */ GOTO 10
  IF ~  CheckStatGT(Player1,12,CHR)
~ THEN REPLY #2461 /* ~"How did someone as... illustrious as you end up in such a place?"~ */ GOTO 10
  IF ~~ THEN REPLY #2462 /* ~"Tell me about these cranium rats."~ */ GOTO 5
  IF ~  PartyHasItem("Tail")
~ THEN REPLY #2463 /* ~"I have some rat tails. I'd like to collect the bounty on them."~ */ GOTO 7
  IF ~  CheckStatGT(Player1,13,WIS)
~ THEN REPLY #2464 /* ~"Is that rash of yours contagious?"~ */ GOTO 12
  IF ~~ THEN REPLY #2465 /* ~"No more questions. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 24 25 26 30 even though they appear after this state */
~  GlobalGT("Sold_Rat","GLOBAL",5)
~ THEN BEGIN 17 // from:
  SAY #51476 /* ~"Aiiiiigh! Please don't kill me..." Phineas shrieks and jumps, startled. He looks at you as if he expected someone else. "Thank the powers, it's only you..." He pauses and tries to compose himself.~ */
  IF ~~ THEN REPLY #51477 /* ~"Don't kill you? Are you in some sort of trouble?"~ */ GOTO 18
  IF ~~ THEN REPLY #51478 /* ~"I can tell I don't want to be here, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #51479 /* ~He swallows hard and looks about. "The cranium rats... It seems they are determined to rid Sigil of my presence. I've performed my duties at the Office for Vermin and Disease Control too diligently." He looks at you pleadingly.~ */
  IF ~~ THEN REPLY #51480 /* ~"What are you talking about?"~ */ GOTO 19
  IF ~~ THEN REPLY #51481 /* ~"I've heard enough, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #51482 /* ~"Earlier today I found a large specimen of rat here, at my very office. I captured the creature and took it downstairs into the basement to deal with it." His eyes grow wide and his breathing becomes labored. "Before my very eyes it grew into a huge man-sized creature and said it was sent to kill me for my crimes against the cranium rats!"~ */
  IF ~~ THEN REPLY #51483 /* ~"What did you do?"~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #51484 /* ~"I've heard enough, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #51485 /* ~"I ran for my very life! Praise the powers I made it back up here to my shop. I locked the door behind me, I'm certain the creature is trapped down there." He stares at you and then his eyes begin to move along your many scars. He meets your gaze again. "Slay the creature for me... I'll make it worth your while."~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51486 /* ~"What'll you give me if I do?"~ */ GOTO 21
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51487 /* ~"What'll you give me if I do?"~ */ GOTO 22
  IF ~~ THEN REPLY #51488 /* ~"I'll think about it, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #51489 /* ~He thinks for a moment then smiles. "I'll gladly forget that you robbed me and not turn the matter over to the city authorities..." He pauses to gauge your reaction. "And I'll pay you a hundred copper commons as well."~ */
  IF ~~ THEN REPLY #51490 /* ~"All right, I'll do it."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51491 /* ~"I'll think about it, farewell."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51492 /* ~"I don't want to get involved. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #51493 /* ~He thinks for a moment then smiles. "I'll pay you two hundred copper commons to rid my basement of the vile beast."~ */
  IF ~~ THEN REPLY #51494 /* ~"All right, I'll do it."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51495 /* ~"I'll think about it, farewell."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #51496 /* ~"I don't want to get involved. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0 24.0 25.0
  SAY #51497 /* ~He smiles and gives you a slight bow. "Excellent. Here is the key to my basement. Take care of the beast and then I shall pay you."~ */
  IF ~~ THEN REPLY #51498 /* ~Take the key and leave.~ */ DO ~GiveItemCreate("PhinKey",Protagonist,1,0,0)
~ JOURNAL #53636 /* ~I went to the Office of Vermin and Disease Control to see Phineas T. Lort. He was quite distraught and rambling about what sounds like a wererat inhabiting his basement. I have agreed to kill the creature for a reward. ~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 25 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #51499 /* ~You see Phineas. He looks at you over the rim of his spectacles. "Once again you grace me with your presence. Perhaps you have come to accept my request for aid in slaying that beast in my basement?"~ */
  IF ~~ THEN REPLY #51500 /* ~"All right, I'll do it."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51501 /* ~"I have some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #51502 /* ~"I think not, farewell." ~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #51503 /* ~You see Phineas. He looks at you over the rim of his spectacles. "Once again you grace me with your presence. Perhaps you have reconsidered my request for aid in slaying that beast in my basement?"~ */
  IF ~~ THEN REPLY #51504 /* ~"All right, I'll do it."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",3)
~ GOTO 23
  IF ~~ THEN REPLY #51505 /* ~"I have some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #51506 /* ~"I think not, farewell." ~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 30 even though they appear after this state */
~  Global("Snuff_Rat","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #51507 /* ~You see Phineas. He looks at you over the rim of his spectacles. "Once again you grace me with your presence. You have completed the task I set before you?"~ */
  IF ~  Dead("Thesik")
~ THEN REPLY #51508 /* ~"Yes, the creature is dead and I have come for my reward."~ */ DO ~SetGlobal("Snuff_Rat","GLOBAL",4)
~ GOTO 27
  IF ~  !Dead("Thesik")
~ THEN REPLY #51509 /* ~"No, not yet."~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #51510 /* ~Phineas smiles at you. "This is excellent news indeed. What was the reward I promised you?"~ */
  IF ~  Global("Phineas","GLOBAL",4)
~ THEN REPLY #51511 /* ~"One hundred copper commons and you'll forget my... borrowing the money from your till."~ */ DO ~GivePartyGold(100)
AddexperienceParty(500)
~ GOTO 28
  IF ~  !Global("Phineas","GLOBAL",4)
~ THEN REPLY #51512 /* ~"Two hundred copper commons."~ */ DO ~GivePartyGold(200)
AddexperienceParty(1000)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #51513 /* ~"Thank you for your services. I am in your debt." He bows to you.~ */
  IF ~~ THEN REPLY #51514 /* ~"Farewell."~ */ JOURNAL #54870 /* ~I have slain the wererat and been rewarded by Phineas. It was a meager reward, considering what I went through to accomplish the deed, but money is money.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #51515 /* ~He frowns at you. "I would appreciate it if you would attend to this matter with haste. Good day to you."~ */
  IF ~~ THEN REPLY #51516 /* ~Leave.~ */ EXIT
END

IF WEIGHT #1 ~  Global("Snuff_Rat","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #64156 /* ~You see Phineas. He pushes his spectacles up on his nose and gives you a friendly look. "Ah, my friend. And what is it I can do for you *this* time, hmnnnn?"~ */
  IF ~~ THEN REPLY #64157 /* ~"You didn't jump out of your skin when I came in this time."~ */ GOTO 31
  IF ~~ THEN REPLY #64158 /* ~"I have some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #64159 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #64160 /* ~He sighs and then smiles at you. "After your heroic deed I feel... at ease. I must admit that I have not felt so relaxed in years." He pauses to think for a moment. "I thank you for that. Now, what can I do for you?"~ */
  IF ~~ THEN REPLY #64161 /* ~"I have some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #64162 /* ~"Nothing, farewell."~ */ EXIT
END
