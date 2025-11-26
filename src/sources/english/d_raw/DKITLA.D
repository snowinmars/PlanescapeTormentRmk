// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKITLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKITLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #49453 /* ~You see a tall, striking woman. She stands staring at the walls of the tavern without seeing them, her hands slowly curling into fists and unclenching. When she sees you, her eyes dart across your clothing and gear, and then back to your eyes; a sardonic smile crosses her face, and she looks away again.~ */
  IF ~~ THEN REPLY #49454 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #49455 /* ~Pass on.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49456 /* ~She looks back at you and scowls. "Do you always make a habit of talking to strangers?" ~ */
  IF ~~ THEN REPLY #49457 /* ~"If I need to ask them questions, then yes."~ */ GOTO 2
  IF ~~ THEN REPLY #49458 /* ~"Not usually, but I thought I'd talk to you."~ */ GOTO 2
  IF ~~ THEN REPLY #49459 /* ~"No. Farewell."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #49460 /* ~"What a fascinating life you must lead to do such things. Sadly for you, I'm busy. I'd appreciate being left alone."~ */
  IF ~~ THEN REPLY #49461 /* ~"I just had a few questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #49462 /* ~"I'll just leave you alone, then. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 3 // from: 2.0
  SAY #49463 /* ~"What part of 'I'm busy' did you not understand? Leave... me... alone. Thank you." She turns her attention back into herself, losing herself in thought. She begins chewing on her lower lip, and beads of blood sprout from it.~ */
  IF ~~ THEN REPLY #49464 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Mediate","GLOBAL",0)
NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #49465 /* ~You see a tall, striking woman. She stands staring at the walls of the tavern without seeing them, her hands slowly curling into fists and unclenching. When she sees you, her eyes dart across your clothing and gear, and then back to your eyes; a sardonic smile crosses her face, and she looks away again. "Looking for something, cutter?" she says, still not looking at you.~ */
  IF ~~ THEN REPLY #49466 /* ~"I understand you're the next person I'm to talk to about this key."~ */ GOTO 5
  IF ~~ THEN REPLY #49467 /* ~"I had some questions for you..."~ */ GOTO 5
  IF ~~ THEN REPLY #49468 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1
  SAY #49469 /* ~"About the key, hm?" She arches an eyebrow at you. "You want to know what you have to do for it, don't you? It's easy enough, friend. Interested? Of course you are; you've come to talk to me about it. Are you ready to listen, I guess, is the real question."~ */
  IF ~~ THEN REPLY #49471 /* ~"Tell me what I have to do."~ */ JOURNAL #49473 /* ~Kitla has assigned me the task of getting legacies from two men - Crumplepunch and Kester - or of solving the squabble they're having. In return for this, she'll give me the second part of the Key to see the deva.~ */ GOTO 6
  IF ~~ THEN REPLY #49472 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 10.7
  SAY #49474 /* ~"There are two men here, named Crumplepunch and Kester. Crumplepunch is the smith, Kester the distiller. They both owe me a *lot* of money. One of them owes the other as well, though, and so neither of them is paying me. They're arguing about an inheritance; get me the legacies they're holding on to. I can bargain with them *very* effectively, then. Failing that, get them to solve their problems with each other - or kill them - and I'll give you the second part of the Key."~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"I have both their legacies here."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"I have Crumplepunch's legacy."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"I have Kester's legacy."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Crumplepunch is dead."~ */ GOTO 21
  IF ~  !Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester is dead."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"They're both dead."~ */ GOTO 23
  IF ~~ THEN REPLY #3787 /* ~"I won't do it."~ */ GOTO 8
  IF ~  Global("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Will do. Farewell."~ */ DO ~SetGlobal("Mediate","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Mediate","GLOBAL",0)
~ THEN REPLY #6018 /* ~"Will do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 10.6
  SAY #49478 /* ~She gives you an arch look. "Maybe we can talk when you've finished that little mission, hm? Go run along now." She turns back to her drink.~ */
  IF ~~ THEN REPLY #49479 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.6
  SAY #49480 /* ~She smiles sweetly. "Then you won't get the Key. Go on now."~ */
  IF ~~ THEN REPLY #49481 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",2)
Global("Mediate","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #49482 /* ~"You're back, hm? It turns out that I've a use for you after all. You help me, I help you, and we all wind up happy."~ */
  IF ~~ THEN REPLY #49483 /* ~"What is it I have to do?"~ */ JOURNAL #49485 /* ~Kitla has assigned me the task of getting legacies from two men - Crumplepunch and Kester - or of solving the squabble they're having. In return for this, she'll give me the second part of the Key to see the deva.~ */ GOTO 6
  IF ~~ THEN REPLY #49484 /* ~"Maybe later. Farewell."~ */ JOURNAL #49485 /* ~Kitla has assigned me the task of getting legacies from two men - Crumplepunch and Kester - or of solving the squabble they're having. In return for this, she'll give me the second part of the Key to see the deva.~ */ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Mediate","GLOBAL",0)
!Global("Mediate","GLOBAL",6)
!Global("Mediate","GLOBAL",7)
!Global("Mediate","GLOBAL",8)
!Global("Mediate","GLOBAL",10)
~ THEN BEGIN 10 // from:
  SAY #49486 /* ~Her eyes gleam in the half-light of the tavern. "Do you have anything for me, scarred man?"~ */
  IF ~  PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49487 /* ~"I have both their legacies here."~ */ GOTO 11
  IF ~  PartyHasItem("CrumLeg")
!PartyHasItem("KestLeg")
~ THEN REPLY #49488 /* ~"I have Crumplepunch's legacy."~ */ GOTO 17
  IF ~  !PartyHasItem("CrumLeg")
PartyHasItem("KestLeg")
~ THEN REPLY #49489 /* ~"I have Kester's legacy."~ */ GOTO 18
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
!Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49490 /* ~"Crumplepunch is dead."~ */ GOTO 21
  IF ~  Global("Kester_Dead_KAPUTZ","GLOBAL",1)
!Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49491 /* ~"Kester is dead."~ */ GOTO 22
  IF ~  Global("Crumple_Dead_KAPUTZ","GLOBAL",1)
Global("Kester_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #66358 /* ~"They're both dead."~ */ GOTO 23
  IF ~~ THEN REPLY #66359 /* ~"Nothing right now. I'm working on it. I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #50063 /* ~"What was I supposed to do again?"~ */ GOTO 6
  IF ~~ THEN REPLY #49499 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0 10.0
  SAY #49492 /* ~"Really? Give them to me, and I'll give you the second part of the Key."~ */
  IF ~~ THEN REPLY #49493 /* ~"Here you go."~ */ DO ~TakePartyItemNum("CrumLeg",1)
TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",10)
AddexperienceParty(150000)
~ GOTO 12
  IF ~~ THEN REPLY #49494 /* ~"I'm still trying to work some angles. Give me a chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49495 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49496 /* ~She takes them from you and laughs evilly. "NOW let's see them tell me they can't find a way to pay me." She tucks the legacies away into a pouch at her belt. "Are you ready for the second part of the key?"~ */
  IF ~~ THEN REPLY #49497 /* ~"Yes. Tell me."~ */ GOTO 14
  IF ~~ THEN REPLY #49498 /* ~"Not yet. Answer some questions first."~ */ GOTO 16
  IF ~~ THEN REPLY #49499 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 17.1 18.1
  SAY #49500 /* ~She sighs. "The money they owe me isn't coming any faster with you talking to me. Go on... go get it."~ */
  IF ~~ THEN REPLY #49501 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 16.0 19.0 20.0 21.0 22.0 23.0
  SAY #49502 /* ~She concentrates for a moment, and her voice takes on another, deeper tone as she intones these words: "Here their Prison ordained in utter darkness..." She pauses, and speaks normally. "For the third part of the Key, go talk to Nabat over there." She yawns mightily. "I'm exhausted. Take this, and then leave me alone for a time. I need to think about my next step here. Farewell."~ */
  IF ~~ THEN REPLY #49503 /* ~"I just wanted to ask some questions..."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~I received the second part of the Key from Kitla. It was "Here their Prison ordained in utter darkness..." I am to go speak to a man called Nabat next.~ */ GOTO 15
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49504 /* ~"I wanted mage training."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~I received the second part of the Key from Kitla. It was "Here their Prison ordained in utter darkness..." I am to go speak to a man called Nabat next.~ */ GOTO 24
  IF ~~ THEN REPLY #67753 /* ~"Farewell."~ */ DO ~GiveItem("SPWI912",Protagonist)
SetGlobal("Curst_Key","GLOBAL",3)
~ JOURNAL #49505 /* ~I received the second part of the Key from Kitla. It was "Here their Prison ordained in utter darkness..." I am to go speak to a man called Nabat next.~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",5)
GlobalGT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 15 // from: 14.0 24.2 25.1
  SAY #49506 /* ~"Come back sometime later. I have a little too much on my mind right now..."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49507 /* ~"Can you train me as a mage?"~ */ GOTO 24
  IF ~~ THEN REPLY #67754 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.1
  SAY #49508 /* ~She sighs. "Look, I have a lot of planning to do with my future... let me just give you the Key and we'll call it even, all right?"~ */
  IF ~~ THEN REPLY #49509 /* ~"All right. Give it to me."~ */ GOTO 14
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #49510 /* ~"I wanted mage training."~ */ GOTO 24
  IF ~~ THEN REPLY #67755 /* ~"Maybe later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.1 10.1
  SAY #49511 /* ~"Are you going to give it to me?" She holds out her hand. "This'll make sure Crumplepunch will find a way to pay me."~ */
  IF ~~ THEN REPLY #49512 /* ~"Yes. Here you go."~ */ DO ~TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49513 /* ~"I'm still trying to work some angles. Give me a chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49514 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2 10.2
  SAY #49515 /* ~"Are you going to give it to me?" She holds out her hand. "This'll make sure Kester will find a way to pay me."~ */
  IF ~~ THEN REPLY #49516 /* ~"Yes. Here you go."~ */ DO ~TakePartyItemNum("KestLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 19
  IF ~~ THEN REPLY #49517 /* ~"I'm still trying to work some angles. Give me a chance."~ */ GOTO 13
  IF ~~ THEN REPLY #49518 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0
  SAY #49519 /* ~She tucks the legacy away into a pouch at her belt and smirks evilly. "Do you want the second part of the Key now?"~ */
  IF ~~ THEN REPLY #49520 /* ~"Yes. Tell me."~ */ GOTO 14
  IF ~~ THEN REPLY #49521 /* ~"Not yet. Answer some questions first."~ */ GOTO 20
  IF ~~ THEN REPLY #49522 /* ~"Not yet. Farewell."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Mediate","GLOBAL",5)
Global("Curst_Key","GLOBAL",2)
~ THEN BEGIN 20 // from: 19.1
  SAY #49523 /* ~She sighs. "Thanks for solving this thing, but... look, I have a lot of planning to do. Let me just give you the Key and we'll call it even, all right?"~ */
  IF ~~ THEN REPLY #49524 /* ~"All right. Give it to me."~ */ GOTO 14
  IF ~~ THEN REPLY #49525 /* ~"Maybe later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.3 10.3
  SAY #66361 /* ~"You killed him? Just as well... that old goat was always pawing at me. Are you ready for the second portion of the Key?"~ */
  IF ~~ THEN REPLY #66362 /* ~"Give it to me..."~ */ DO ~SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 22 // from: 6.4 10.4
  SAY #66363 /* ~"Good. I never could stand him. Are you ready for the second portion of the Key?"~ */
  IF ~~ THEN REPLY #66364 /* ~"Give it to me..."~ */ DO ~SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 6.5 10.5
  SAY #66365 /* ~"Well, hello, killer! I didn't expect that, but I'm not entirely disappointed, either. Are you ready for the second portion of the Key?"~ */
  IF ~~ THEN REPLY #66366 /* ~"Give it to me..."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
AddexperienceParty(131250)
~ GOTO 14
END

IF ~~ THEN BEGIN 24 // from: 14.1 15.0 16.1
  SAY #67738 /* ~Her eyes brighten. "Oh? Have you studied the Art before?"~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #67756 /* ~"Yes. I just need to brush up on some skills."~ */ GOTO 25
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #67757 /* ~"No. I need instruction."~ */ GOTO 27
  IF ~~ THEN REPLY #67758 /* ~"Forget it. Just answer some questions."~ */ GOTO 15
  IF ~~ THEN REPLY #67759 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #67739 /* ~"And you want to give up what you're doing now to renew your skills?"~ */
  IF ~~ THEN REPLY #67760 /* ~"Yes."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 26
  IF ~~ THEN REPLY #67761 /* ~"No, not really. Answer some questions instead..."~ */ GOTO 15
  IF ~~ THEN REPLY #67762 /* ~"No, not really. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #67740 /* ~After some time talking about the Art, she nods her head and smiles. "You are truly gifted. You have all you need to travel down the mystic path again."~ */
  IF ~~ THEN REPLY #67763 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.1
  SAY #67741 /* ~"Let's first see if you even have the aptitude for it." She proceeds to test your intelligence and reasoning ability with a long series of logic and word puzzles...~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #67764 /* ~Answer her questions as best you can.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetGlobal("Mage_Training","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #67765 /* ~Answer her questions as best you can.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #67742 /* ~"It looks like you have a functioning mind, at least." She studies you. "You've got a book, too. Good. You'll need that to write your spells in. All spells need someplace for storage. They come in all shapes and sizes, but in the end, they need to be written down for a mage to study. Are you understanding this so far?"~ */
  IF ~~ THEN REPLY #67766 /* ~"Yes. I need a book to write my spells in so I can study them later."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.1
  SAY #67743 /* ~She keeps herself from laughing outright at you, but you can see a gleam of contempt in her eyes. "You haven't the mind necessary to be a mage. All your spells would be like water in your mind, flowing out through your ears before you could ever cast them. Stick with the sword, stick with thievery. You'll never be good at spells."~ */
  IF ~~ THEN REPLY #67767 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #67744 /* ~"Let's give you a little test, now. Take a look at this." She produces a scroll. "Read this, and tell me what it says." The glyphs on the scroll squirm before your eyes, becoming meaningless.~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #67768 /* ~Examine the scroll.~ */ GOTO 31
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #67769 /* ~Examine the scroll.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #67745 /* ~Instinctively, you let your eyes relax and you take in the meaning of the scroll almost subconsciously, as if another part of your brain had reasserted itself. The scroll lists arcane syllables, spell components, gestures, and rituals necessary for the completion of a spell.~ */
  IF ~~ THEN REPLY #67770 /* ~"This is a minor divination, isn't it? Something to identify items for you."~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #67746 /* ~Try as you might, you can't get the letters on the scroll to make sense to you. Every time you think you've fixed the symbols in your mind, they swim in your vision, leaving you with a pounding headache. Finally, after minutes of intense scrutiny, you pull back from the parchment, your eyes glazing... and suddenly the contents of the scroll are made clear. The scroll lists arcane syllables, spell components, gestures, and rituals necessary for the completion of a spell.~ */
  IF ~~ THEN REPLY #67771 /* ~"This is a minor divination, isn't it? Something to identify items for you."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 31.0 32.0
  SAY #67747 /* ~Kitla smirks. "So you already know your way around a spell scroll, eh? What that means is that you've had training sometime, even if you've forgotten it, because only a mage could read the symbols on that scroll. You've opened your mind to it again. You've just saved yourself years of study. Congratulations."~ */
  IF ~~ THEN REPLY #67772 /* ~"Thanks. What's the next step?"~ */ JOURNAL #67774 /* ~Kitla, the mage in the Traitor's Gate tavern in Curst, showed me a magic scroll, and told me that my ability to read it meant that I had been a mage at some point in my life. ~ */ GOTO 34
  IF ~~ THEN REPLY #67773 /* ~"I think I've got the basics down. Let's get to training."~ */ JOURNAL #67774 /* ~Kitla, the mage in the Traitor's Gate tavern in Curst, showed me a magic scroll, and told me that my ability to read it meant that I had been a mage at some point in my life. ~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #67748 /* ~"You've already got the book, so all that's required now is that you know how to memorize and cast your spells. First, you need to have a clear head and plenty of rest before you can memorize spells. Before you rest, and this is essential, choose the spells you want to memorize, and then relax. When you awaken, spend some time with your written spells, and they'll enter into your mind."~ */
  IF ~~ THEN REPLY #67775 /* ~"How many spells can I cast?"~ */ GOTO 35
  IF ~~ THEN REPLY #67776 /* ~"I think I've got the basics down. Let's get to training."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #67749 /* ~"When you start out, your spells are limited. You'll be able to cast a single spell, perhaps even as many as three. Use 'em well, because when they're gone, you'll have to rest again before you can memorize more spells. As you progress in the Art, though, you'll find your memory holds more and more."~ */
  IF ~~ THEN REPLY #67777 /* ~"All right. Keep going."~ */ GOTO 36
  IF ~~ THEN REPLY #67778 /* ~"I think I've got the basics down. Let's get to training."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #67750 /* ~"Once you cast a spell, it's erased from your memory. If you need to cast the same spell twice, you'll need to memorize it twice." She pauses, thinking. "Keep a peery eye out for more spells. You can find them in many different places and forms, from different people. When you do find them, hoard them and put them in your spell book whenever possible. Just study them carefully and write them down."~ */
  IF ~~ THEN REPLY #67779 /* ~"All right. Is that all?"~ */ JOURNAL #67781 /* ~Kitla taught me the fundamentals of magic. Before I rest, I'll need to pick the spells I want to memorize by going to my spell book and choosing them. If I want to be able to cast a spell multiple times, I'll have to memorize the spell multiple times. Whenever I rest, I'll awake the next morning with the spells in my memory, ready to be cast. I can only cast a small number of spells each day until I become more proficient in their use.~ */ GOTO 37
  IF ~~ THEN REPLY #67780 /* ~"I think I've got the basics down. Let's get to training."~ */ JOURNAL #67781 /* ~Kitla taught me the fundamentals of magic. Before I rest, I'll need to pick the spells I want to memorize by going to my spell book and choosing them. If I want to be able to cast a spell multiple times, I'll have to memorize the spell multiple times. Whenever I rest, I'll awake the next morning with the spells in my memory, ready to be cast. I can only cast a small number of spells each day until I become more proficient in their use.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.1 34.1 35.1 36.0 36.1
  SAY #67751 /* ~"You've got it. Good. Here. Take these scrolls, and put them in your spell book. Good luck."~ */
  IF ~~ THEN REPLY #67752 /* ~"My thanks. Farewell."~ */ DO ~SetNamelessClass(MAGE)
GiveExperience(Protagonist,5000)
GiveItemCreate("SPWI105",Protagonist,0,0,0)
GiveItemCreate("SPWI502",Protagonist,0,0,0)
GiveItemCreate("SPWI207",Protagonist,0,0,0)
~ EXIT
END
