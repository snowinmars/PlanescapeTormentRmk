// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSABAST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSABAST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #6 /* Triggers after states #: 37 38 39 40 60 43 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37465 /* ~You see an older man in elegant robes. He has bright eyes and a warm smile. He gives you a slight bow as you approach. "Good day, cutter. I am Sebastion, how may I serve you?"~ */
  IF ~~ THEN REPLY #37466 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #37467 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 60.0
  SAY #37468 /* ~"Greetings to you as well, cutter..." He stops in mid-sentence as he notices your scars. You see his eyes travel along them and his eyebrows arch in surprise. He returns his gaze to you. "I was about to ask what I could do for you, but there is no need. I think I see why you came to see me, cutter."~ */
  IF ~~ THEN REPLY #37469 /* ~"I have some questions..."~ */ GOTO 2
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37470 /* ~"Actually, I want to talk to you about Dimtree."~ */ GOTO 20
  IF ~  Global("Snuff_Grosuk","GLOBAL",0)
~ THEN REPLY #37471 /* ~"What... are you trying to say you can help me with these scars?"~ */ GOTO 28
  IF ~~ THEN REPLY #37472 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 5.1 6.2 7.1 8.2 9.1 11.1 14.1 15.0 16.0 18.1 19.1 28.1 29.1 30.1 35.1 36.0 45.0 50.1 51.1 52.0 53.0 55.0 56.1 58.0
  SAY #37473 /* ~His smile broadens as he gives you a slight bow. "Ask away, cutter."~ */
  IF ~~ THEN REPLY #37474 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #37475 /* ~"What is this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #37476 /* ~"What's going on around here?"~ */ GOTO 16
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37477 /* ~"I had a talking skull and he was kidnapped. Can you help me?"~ */ GOTO 17
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37478 /* ~"Actually, I want to talk to you about Dimtree."~ */ GOTO 20
  IF ~  GlobalLT("Snuff_Grosuk","GLOBAL",1)
~ THEN REPLY #37479 /* ~"I got the impression that you can help me with my scars."~ */ GOTO 28
  IF ~~ THEN REPLY #37480 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37481 /* ~"I am Sebastion, a... mage of sorts. I do contract work for those who can meet my price."~ */
  IF ~~ THEN REPLY #37482 /* ~"What kind of work?"~ */ GOTO 4
  IF ~~ THEN REPLY #37483 /* ~"You hesitate to use the word *mage.* Why?"~ */ GOTO 5
  IF ~~ THEN REPLY #37484 /* ~"I have more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37485 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37486 /* ~He gives you a slight smile and then shrugs his shoulders. "Confidential work, cutter. I am known for my discretion and getting deeds done. People come to me with quests. If I can perform them, I do so. If I cannot, I don't. In either case, I keep silent."~ */
  IF ~~ THEN REPLY #37487 /* ~"You hesitate to use the word *mage.* Why?"~ */ GOTO 5
  IF ~~ THEN REPLY #37488 /* ~"I have more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37489 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37490 /* ~He nods his head. "Yes... I am not a mage, cutter, but I can perform the Art in my own way. I have forsaken the normal studies of magic and followed my own path." He pauses and shrugs his shoulders. "It is easier to call me a mage than to argue the point."~ */
  IF ~~ THEN REPLY #37491 /* ~"What kind of work do you do?"~ */ GOTO 4
  IF ~~ THEN REPLY #37492 /* ~"I have more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37493 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #37494 /* ~He gives you a quizzical look. "Do you mean this market, or this ward of Sigil?"~ */
  IF ~~ THEN REPLY #37495 /* ~"The market."~ */ GOTO 7
  IF ~~ THEN REPLY #37496 /* ~"This ward."~ */ GOTO 8
  IF ~~ THEN REPLY #37497 /* ~"Never mind. I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37498 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37499 /* ~"This is a common market, cutter. There are many things for sale here. Spells, potions, information, women, men... Just about anything, if you can afford the price."~ */
  IF ~~ THEN REPLY #37500 /* ~"Tell me about this ward."~ */ GOTO 8
  IF ~~ THEN REPLY #37501 /* ~"I have more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37502 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #37503 /* ~"This is the Lower Ward, cutter, home of the common people and the industrial side of Sigil. It's not the slums of the Hive, yet it holds no splendor such as the Lady's Ward."~ */
  IF ~~ THEN REPLY #37504 /* ~"Tell me about the market."~ */ GOTO 7
  IF ~~ THEN REPLY #37506 /* ~"Why is it called the Lower Ward?"~ */ GOTO 9
  IF ~~ THEN REPLY #37507 /* ~"I have more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37508 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #37509 /* ~He lets out a short laugh and shrugs his shoulders. "That depends on your point of view, cutter. The rich say it's because this is the home of the common or *lower* classes. If you ask those who live here it's because of the portals... and the incident."~ */
  IF ~~ THEN REPLY #37510 /* ~"The incident?"~ */ GOTO 10
  IF ~~ THEN REPLY #37511 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37512 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #37513 /* ~"Yes..." He frowns as he pauses to think. "A long time ago this was known as the Prime Ward. People new to the city were placed here and not allowed access to all of Sigil. There were many other restrictions placed upon them as well... Some berk took offense to that and decided to form a rebellion. It went nowhere, of course, until he made a fascinating discovery..."~ */
  IF ~~ THEN REPLY #37514 /* ~"Go on."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37515 /* ~"You see, there are a lot of portals in this area of the city and most of them open onto the Lower Planes. Well, that barmy berk found a way to open them all at once. He allowed *anything* that wanted to come through the portals into the city. It became quite bloody; a terrible war ensued. Anyway, that's why this is known as the *Lower* Ward. Because of the portals."~ */
  IF ~~ THEN REPLY #37516 /* ~"Sebastion, how did this person open all the gates?"~ */ GOTO 12
  IF ~~ THEN REPLY #37517 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37518 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #37519 /* ~"He used an item that he either had commissioned or made himself. What was it called..." He pauses to think for a moment. "Ah, I remember, the Shadow-Sorcelled Key..." At the mention of the key you begin to feel dizzy, the world around you freezes, and everything turns gray. You sense a past memory trying to force its way into your consciousness.~ */
  IF ~  Global("Shadow_Key_Mem","GLOBAL",0)
~ THEN REPLY #37520 /* ~Relax and let it come.~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Shadow_Key_Mem","GLOBAL",1)
GiveExperience(Protagonist,500)
~ JOURNAL #37522 /* ~I remember something about a rebellion in the Lower Ward. I either caused it or played a significant role in it. I don't know which.~ */ GOTO 46
  IF ~  Global("Shadow_Key_Mem","GLOBAL",1)
~ THEN REPLY #37521 /* ~Relax and let it come.~ */ GOTO 46
  IF ~~ THEN REPLY #65508 /* ~Concentrate and repress the memory.~ */ GOTO 56
END

IF ~~ THEN BEGIN 13 // from: 50.0 56.0
  SAY #37523 /* ~He shrugs his shoulders. "No one knows. The key has been lost for some time now. Many believe the Lady of Pain took the key to prevent it ever being used again."~ */
  IF ~~ THEN REPLY #37524 /* ~"So, what was the outcome of the rebellion?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37525 /* ~He thinks for a moment. "Well... Everyone, except the leader, was given pages in the dead-book. The leader and the creatures just up and vanished one day, surely the Lady's work. The survivors fled the ward. The fumes of the Lower Planes had polluted the air, you see. Anyway, the ward remained deserted until the Foundry was eventually built."~ */
  IF ~~ THEN REPLY #37526 /* ~"What can you tell me about the Foundry?"~ */ GOTO 15
  IF ~~ THEN REPLY #37527 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37528 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #37529 /* ~He frowns. "It is the home of the Godsmen, cutter. If you have any questions regarding them, I suggest you go to the Foundry to ask them." ~ */
  IF ~~ THEN REPLY #37530 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37531 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #37532 /* ~He looks at you suspiciously. "What do you mean, cutter?" He looks around and spreads his arms as if to encompass the whole ward. "Life, cutter. Life as usual, nothing more."~ */
  IF ~~ THEN REPLY #37533 /* ~"All right, I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37534 /* ~"I must go now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #37535 /* ~He stares at you for some time before answering. "A skull... well, if I were to hazard a guess, I would say that your skull is now in the possession of the Master of the Bones. Which means you should get yourself another skull, cutter."~ */
  IF ~~ THEN REPLY #37536 /* ~"What can you tell me about the Master of the Bones?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37537 /* ~"Where can I find this Master of the Bones?"~ */ GOTO 19
  IF ~~ THEN REPLY #37538 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.0
  SAY #37539 /* ~He frowns and glances about for a moment. "His name is Lothar, and he does not appreciate the attention of others. I know nothing of him and can answer no questions about him." You can actually see a hint of fear in his eyes. "Let us speak of another subject, cutter."~ */
  IF ~~ THEN REPLY #37540 /* ~"Where can I find this Master of the Bones?"~ */ GOTO 19
  IF ~~ THEN REPLY #37541 /* ~"Very well, I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37542 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #37543 /* ~He glances about nervously. "A ruined house somewhere in this ward leads to his demesne. I know nothing more." You can actually see a hint of fear in his eyes. "Let us speak of another subject, cutter."~ */
  IF ~~ THEN REPLY #37544 /* ~"What can you tell me about the Master of the Bones?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37545 /* ~"Very well, I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37546 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.4 37.0 38.0 39.0 43.0
  SAY #37547 /* ~He stares at you for a moment and then sighs. "What about Dimtree, cutter?"~ */
  IF ~~ THEN REPLY #37548 /* ~"He wants to be released from his curse."~ */ GOTO 21
  IF ~~ THEN REPLY #37549 /* ~"I just wanted to compliment you on a job well done."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_2","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #37550 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #37551 /* ~He gives you a surprised look and then waves you off. "I find that hard to believe, cutter. Dimtree doesn't have the mental power to desire anything." He frowns for a moment. "Did that idiot Hamrys put you up to this?"~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #37552 /* ~"No."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #37554 /* ~"Think about it, Sebastion. Hamrys doesn't know Dimtree is a zombie, let alone who created him. Right?"~ */ GOTO 23
  IF ~~ THEN REPLY #37555 /* ~"What difference does it make?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #37556 /* ~He glares at you in thought. "Hmmm. Hamrys is a lackwit. I doubt he could figure out who could have done this." He sighs and shrugs his shoulders in exasperation. "Which means that poor Dimtree is more aware than I thought." He looks away from you and seems to be deep in thought.~ */
  IF ~~ THEN REPLY #37557 /* ~"So, will you release him?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #37558 /* ~He sighs and seems to be deep in thought. "Yes... you're right, of course. Hamrys could not have sent you. I guess poor Dimtree is more aware than I intended. A pox on me for my stupidity!"~ */
  IF ~~ THEN REPLY #37559 /* ~"So, will you release him?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0 54.0
  SAY #37560 /* ~He looks at you for a moment with conflicting emotions crossing his face. He sighs and throws his arms up in exasperation. "I cannot, sorry." He gives you a pleading look. "I want to, mind you, but I cannot. I fulfilled a contract by creating Dimtree and I cannot break it, right or wrong. I am a man of my word, my reputation demands it."~ */
  IF ~~ THEN REPLY #37561 /* ~Truth: "I understand your dilemma and agree with you. Could I release him instead?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37562 /* ~Truth: "I really don't give a rat's arse about contracts. What you did is wrong and he needs to be freed."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37563 /* ~"Who contracted you? Maybe I can get them to agree to his release."~ */ GOTO 27
  IF ~~ THEN REPLY #37564 /* ~"Yeah, well I really don't care one way or another. I just agreed to try and help him. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 27.0 27.1
  SAY #37565 /* ~"That would be difficult..." He turns and begins to look through a nearby box. After a moment he removes a book which he sets down in front of you. "First, you'd have to have some magical aptitude. Second, you'd have to be able to properly speak the words you find on page twenty-three of this book."~ */
  IF ~~ THEN REPLY #37566 /* ~"Go on."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37567 /* ~"Last, you'd have to touch Dimtree just as you feel the power of the words culminate within you." He turns his back on you and rummages through another box. "I couldn't allow you to read that book, however. It'd be tantamount to my breaking my word through the actions of another." He continues poking through the box, ignoring you.~ */
  IF ~~ THEN REPLY #37569 /* ~Read the book and leave.~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",4)
AddexperienceParty(4000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #37571 /* ~I learned the incantation I need to free Dimtree the zombie. Sebastion allowed me to learn it from his book, although he pretended not to notice what I was doing.~ */ EXIT
  IF ~~ THEN REPLY #37570 /* ~Ignore the book and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #37572 /* ~He smiles at you. "I am magically bound not to reveal such information, cutter. That is why people come to me. They know that if I accept a contract, it will be handled with discretion."~ */
  IF ~~ THEN REPLY #37573 /* ~Truth: "I understand, that's the way business should be conducted. Could I release him instead?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37574 /* ~Truth: "I really don't give a rat's arse about contracts. What you did is wrong and he needs to be freed."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37575 /* ~"Never mind. I don't really want to deal with this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.2 2.5
  SAY #37576 /* ~He smiles at you and shrugs his shoulders. "Perhaps, cutter, perhaps." He leans forward and begins to examine your scars carefully. He runs a finger along several of them, mumbling to himself. Finally he looks up at you. "Yes, cutter, I can help you. I cannot cure you, but I can alleviate the worst of your... condition."~ */
  IF ~~ THEN REPLY #37577 /* ~"And your price?"~ */ GOTO 29
  IF ~~ THEN REPLY #37578 /* ~"Yeah, right. I have some questions for you..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37580 /* ~"Ah, yes... the price." He begins stroking his chin and stares at you. You get the impression you are being weighed somehow. He seems to come to some sort of a decision. "I have a job that I think you could perform."~ */
  IF ~~ THEN REPLY #37581 /* ~"Go on."~ */ GOTO 30
  IF ~~ THEN REPLY #37582 /* ~"Forget it. I have other questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #37583 /* ~"I'm not interested in any jobs. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #37584 /* ~"I have signed a contract with a certain creature. I am no longer able to fulfill the contract; it is... beyond my abilities. However, the creature will not release me from the contract. Instead it has threatened me with death unless I fulfill the contract."~ */
  IF ~~ THEN REPLY #37585 /* ~"Let me guess: You want me to solve this problem for you."~ */ GOTO 31
  IF ~~ THEN REPLY #37587 /* ~"I'm not interested. I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #37589 /* ~"I don't like the way this is going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #37591 /* ~He sighs. "Yes. I cannot do it myself. My reputation demands that I fulfill the contract or face the consequences. I am at your mercy in this regard. Will you help me?"~ */
  IF ~~ THEN REPLY #37593 /* ~"What kind of creature are we talking about?"~ */ GOTO 32
  IF ~~ THEN REPLY #37595 /* ~"What were you contracted to do?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 33.0
  SAY #37597 /* ~"An abishai named Grosuk, cutter." He pauses to gauge your reaction. "I know this is a difficult task, but one I think you can handle. Also, the reward I offer you is great." He gestures at your scars.~ */
  IF ~~ THEN REPLY #37599 /* ~"What were you contracted to do?"~ */ GOTO 33
  IF ~~ THEN REPLY #37600 /* ~"I see, an interesting proposal."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #37601 /* ~He shakes his head. "I cannot reveal that information, cutter. I am magically bound not to. That is why people come to me. They know that if I accept a contract, it will be handled with discretion."~ */
  IF ~~ THEN REPLY #37602 /* ~"What kind of creature are we talking about?"~ */ GOTO 32
  IF ~~ THEN REPLY #37603 /* ~"I see, an interesting proposal."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 32.1 33.1
  SAY #37604 /* ~He looks at you hopefully. "Will you do it, cutter?"~ */
  IF ~  Global("Grosuk_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #37605 /* ~"I've already killed him."~ */ JOURNAL #37609 /* ~A mage named Sebastion wanted me to kill an abishai for him. In return he was willing to help me with my scars. Fortunately I had already done this and out of gratitude Sebastion helped anyway.~ */ GOTO 57
  IF ~~ THEN REPLY #37606 /* ~"Yes, give me the details."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ JOURNAL #37610 /* ~A mage named Sebastion wants me to kill an abishai for him. In return he will help me with my scars. I've agreed to do this.~ */ GOTO 35
  IF ~~ THEN REPLY #37607 /* ~"No, I don't want to get involved."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",2)
~ GOTO 36
  IF ~~ THEN REPLY #37608 /* ~"I don't know, I'll take it under consideration."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #37611 /* ~He smiles at you and gives a sigh of relief. "Thank you, cutter. The creature is an abishai named Grosuk. You will need a magic weapon to cause it any harm, so check with some of the shops if you do not own one. A spell caster can harm it as well. Grosuk can be found to the east, beyond the siege tower."~ */
  IF ~~ THEN REPLY #37612 /* ~"Siege tower?"~ */ GOTO 55
  IF ~~ THEN REPLY #37613 /* ~"All right, but I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37614 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2 34.3
  SAY #37615 /* ~He tries to hide his disappointment from you with a smile. "I understand, cutter. Is there anything else I can help you with?"~ */
  IF ~~ THEN REPLY #37616 /* ~"Yes, I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37617 /* ~"No, farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 38 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #37618 /* ~Sebastion smiles at your approach. "Good day, cutter. Have you considered my proposal and decided to accept?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37619 /* ~"Actually, I want to talk to you about Dimtree."~ */ GOTO 20
  IF ~~ THEN REPLY #37620 /* ~"Yes, give me the details."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37621 /* ~"I'm still thinking about it. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #37622 /* ~Sebastion smiles at your approach. "Good day, cutter. Please tell me that you've changed your mind and will help me with my problem."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37623 /* ~"Actually, I want to talk to you about Dimtree."~ */ GOTO 20
  IF ~~ THEN REPLY #37624 /* ~"Yes, give me the details."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37625 /* ~"No. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN BEGIN 39 // from:
  SAY #37626 /* ~Sebastion smiles at your approach. "Good day, cutter. Have you completed your quest?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37627 /* ~"Actually, I want to talk to you about Dimtree."~ */ GOTO 20
  IF ~~ THEN REPLY #37628 /* ~"No, I'm working on it."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 60 43 even though they appear after this state */
~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #37629 /* ~Sebastion smiles at your approach. "Good day, cutter. Have you completed your quest?"~ */
  IF ~~ THEN REPLY #37630 /* ~"Yes, and I've come for what is due me."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #37631 /* ~"One moment please, cutter." Sebastion reaches into his robe and removes a small crystal ball. He gazes into it for a moment before returning his attention to you. "I cannot thank you enough, cutter. I shall live up to my part of the bargain. Are you ready?"~ */
  IF ~~ THEN REPLY #37632 /* ~"Yes."~ */ DO ~AddexperienceParty(4000)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #37633 /* ~"It is done, cutter. Once again I thank you." Sebastion bows deeply to you.~ */
  IF ~~ THEN REPLY #37634 /* ~"Thank you and farewell, Sebastion."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66544 /* ~I killed the abishai, Grosuk, for Sebastion. As per our agreement he helped me with my scars. I noticed quite an improvement in my general appearance. ~ */ EXIT
END

IF WEIGHT #0 ~  Global("Snuff_Grosuk","GLOBAL",4)
~ THEN BEGIN 43 // from:
  SAY #37635 /* ~Sebastion smiles at you. "Good day, cutter. How may I help you?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37636 /* ~"Actually, I want to talk to you about Dimtree."~ */ GOTO 20
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #64548 /* ~"Can you train me in the Art, Sebastion?"~ */ GOTO 59
  IF ~~ THEN REPLY #64549 /* ~"Never mind, Sebastion. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.1 38.1
  SAY #37638 /* ~He smiles at you and gives a sigh of relief. "Thank you, cutter. The creature is an abishai named Grosuk. It can be found to the east, beyond the siege tower."~ */
  IF ~~ THEN REPLY #37639 /* ~"All right. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 45 // from:
  SAY #37640 /* ~Sebastion smiles at your approach. "Good day, cutter. It's good to see you again."~ */
  IF ~~ THEN REPLY #37641 /* ~"I have some questions..."~ */ GOTO 2
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #37642 /* ~"Can you train me in the Art, Sebastion?"~ */ GOTO 59
  IF ~~ THEN REPLY #37643 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 12.0 12.1
  SAY #37644 /* ~The world around you fades and you find yourself in the darkened streets of Sigil. Your heart is pounding, trying to break free from your chest; your breath comes in ragged gasps. You've been running for hours it seems, and yet you cannot stop...~ */
  IF ~~ THEN REPLY #37645 /* ~Continue.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #37646 /* ~You turn a corner and enter an alley, finally slowing your flight. You feel your strength fade as you lean against a nearby wall and try to catch your breath. You become aware of something hard pressed into the palm of your hand. Glancing down you open your clenched fist to stare at the gem embedded in the flesh.~ */
  IF ~~ THEN REPLY #37647 /* ~Continue.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #37648 /* ~Your body sags toward the wall until your forehead touches its cold, damp surface. Your eyes close and you force yourself to take slow deep breaths. Just as you feel your strength returning you hear a faint noise and instantly snap to full awareness. You turn to look toward the alley mouth.~ */
  IF ~~ THEN REPLY #37649 /* ~Continue.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #37650 /* ~At first you see nothing, just ghost visions caused by the shadows of the night. You are about to turn away when a slight movement catches your eye. Slowly, a female form glides around the corner, pauses, and then turns to face you. Your eyes travel from her slender waist toward her full bosom, and then her blade-enshrouded face. Even in the darkness you can see her cold, emotionless eyes...~ */
  IF ~~ THEN REPLY #37651 /* ~Continue.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #37652 /* ~The memory fades and your normal vision returns. You are standing before Sebastion in the market. He is looking at you with some concern, but this passes when he sees that you are all right. "Thought I lost you for a moment there, cutter."~ */
  IF ~~ THEN REPLY #37653 /* ~"What became of this Shadow-Sorcelled Key?"~ */ GOTO 13
  IF ~~ THEN REPLY #37654 /* ~"Interesting, I have some other questions for you..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 51 // from: 20.1
  SAY #37655 /* ~He beams at you. "Why thank you, cutter. It's always nice to find someone who can appreciate the humor of such a situation."~ */
  IF ~~ THEN REPLY #37656 /* ~"Tell me, why did you do it in the first place?"~ */ GOTO 52
  IF ~~ THEN REPLY #37657 /* ~"Yes... I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #37658 /* ~"Well, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 21.2 51.0
  SAY #37659 /* ~"Oh..." He laughs, shakes his head, and then tries to adopt a more serious composure. "Hamrys loves the sound of his own voice, cutter. He would wander the market for hours, bending people's ears to his endless prattle. Businesses were failing. Dimtree provides him a willing companion to listen to his many tales and, more importantly, keep him in his shop."~ */
  IF ~~ THEN REPLY #37660 /* ~"I see. I have some questions for you..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #37661 /* ~"Oh..." He laughs, shakes his head, and then tries to adopt a more serious composure. "Hamrys loves the sound of his own voice, cutter. He would wander the market for hours, bending people's ears to his endless prattle. Businesses were failing as customers fled him! Dimtree provides him a willing companion to listen to his many tales and, more importantly, keep him in his shop."~ */
  IF ~~ THEN REPLY #37662 /* ~"I see. Well, never mind then. I have some questions for you..."~ */ GOTO 2
  IF ~~ THEN REPLY #37663 /* ~"Be that as it may, what you did is still wrong. You need to release Dimtree."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #37664 /* ~He sighs and seems to be deep in thought. "Yes... you are correct, of course. A pox on me for my stupidity!"~ */
  IF ~~ THEN REPLY #37665 /* ~"Then you'll release him?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 55 // from: 35.0
  SAY #37666 /* ~"Yes, over beyond the market. Damned thing just appeared one day, several years back. No one knows why and no one seems able to get inside it to find out."~ */
  IF ~~ THEN REPLY #37667 /* ~"I see. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37668 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.2
  SAY #37669 /* ~You focus your thoughts and concentrate. Slowly the world regains its color and becomes animate again. The memory fades...~ */
  IF ~~ THEN REPLY #37670 /* ~"What became of this Shadow-Sorcelled Key?"~ */ GOTO 13
  IF ~~ THEN REPLY #37671 /* ~"Interesting, I have some other questions for you..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 57 // from: 34.0
  SAY #37672 /* ~"One moment please, cutter." Sebastion reaches into his robe and removes a small crystal ball. He gazes into it for a moment before returning his attention to you. "I cannot thank you enough, cutter. Even though we have not entered into an agreement, I will help you with your scars. Are you ready?"~ */
  IF ~~ THEN REPLY #37673 /* ~"Yes. Thank you."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
PermanentStatChange(Protagonist,CHR,RAISE,2)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66545 /* ~I killed an abishai by the name of Grosuk. It seems Sebastion wanted the creature dead for some reason. As a reward, Sebastion helped me with my scars. I noticed an immediate improvement in my general appearance.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #37674 /* ~He smiles at you. "It is done, cutter. Once again, I thank you."~ */
  IF ~~ THEN REPLY #37676 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #37677 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 43.1 45.1
  SAY #37678 /* ~"Are you sure you want to give up your current profession and take up the Art as a mage?"~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #52386 /* ~"Yes..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",3)
~ GOTO 61
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #52387 /* ~"Yes..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 63
  IF ~~ THEN REPLY #58936 /* ~"No, let me think about it. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 60 // from:
  SAY #50446 /* ~You see an older man in elegant robes. He has bright eyes and a warm smile. He gives you a slight bow as you approach. "Good day, cutter. I am Sebastion, how may I serve you?"~ */
  IF ~~ THEN REPLY #50447 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #50448 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #52388 /* ~"This is not something I normally do. However, show me what you know and I'll give you some pointers." He watches you carefully as you demonstrate what you know. At several points he stops you and shows you ways to improve upon your skills. Within a few hours' time you think you feel comfortable with your abilities as a mage.~ */
  IF ~~ THEN REPLY #62180 /* ~"Thank you, Sebastion."~ */ DO ~GiveExperience(Protagonist,5000)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #62174 /* ~"You are most welcome, friend. Take these two spells as well; they may come in handy. Now if you'll forgive me, I have work to do."~ */
  IF ~~ THEN REPLY #62177 /* ~"Farewell."~ */ DO ~GiveItemCreate("Spwi101",Protagonist,1,1,0)
GiveItemCreate("Spwi102",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY #64650 /* ~"This is not something I normally do. However, show me what you know and I'll give you some pointers." He watches you carefully as you demonstrate what you know. At several points he stops you and shows you ways to improve upon your skills. Within a few hours' time you think you feel comfortable with your abilities as a mage.~ */
  IF ~~ THEN REPLY #64651 /* ~"Thank you, Sebastion."~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #64652 /* ~"You are most welcome, friend. Now if you'll forgive me, I have work to do."~ */
  IF ~~ THEN REPLY #64653 /* ~"Farewell."~ */ EXIT
END
