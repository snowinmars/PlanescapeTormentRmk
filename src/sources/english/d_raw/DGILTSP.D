// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILTSP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILTSP~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN BEGIN 0 // from:
  SAY #45541 /* ~You see a florid, boisterous man. He's shouting and carrying on like there's a war that's about to come through, like he's got something lodged in his intestines, like... well, like he's too excited about something to talk in a normal tone of voice. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 483
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #45542 /* ~You see a florid, boisterous man. He's shouting and carrying on like there's a war that's about to come through, like he's got something lodged in his intestines, like... well, like he's too excited about something to talk in a normal tone of voice. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 484
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 2 // from:
  SAY #45543 /* ~You see a florid, boisterous man. He's shouting and carrying on like there's a war that's about to come through, like he's got something lodged in his intestines, like... well, like he's too excited about something to talk in a normal tone of voice. ~ */
  IF ~~ THEN EXTERN ~DMORTE~ 485
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 3 // from:
  SAY #45544 /* ~You see a florid, boisterous man. He's shouting and carrying on like there's a war that's about to come through, like he's got something lodged in his intestines, like... well, like he's too excited about something to talk in a normal tone of voice. His rapid-fire delivery makes it difficult to understand him. "You, sir, you there! You look like you could use something! I'm not quite sure what it is yet, but give me time, give me time, and I'll have it figured out on the spot! You need rooms? I've got rooms! You need supplies? I've got supplies!"~ */
  IF ~~ THEN REPLY #45545 /* ~"What are you selling?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45546 /* ~"I had some questions for you, first."~ */ GOTO 5
  IF ~~ THEN REPLY #45547 /* ~"I'd like to sell something to you."~ */ GOTO 6
  IF ~~ THEN REPLY #45548 /* ~"Thanks for your time, but... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #45549 /* ~His rapid-fire delivery makes it difficult to understand him. "You, sir, you there! You look like you could use something! I'm not quite sure what it is yet, but give me time, give me time, and I'll have it figured out on the spot! You need rooms? I've got rooms! You need supplies? I've got supplies!"~ */
  IF ~~ THEN REPLY #45550 /* ~"What are you selling?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45551 /* ~"I had some questions for you, first."~ */ GOTO 5
  IF ~~ THEN REPLY #45552 /* ~"I'd like to sell something to you."~ */ GOTO 6
  IF ~~ THEN REPLY #45553 /* ~"Thanks for your time, but... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.1 6.8 7.1 8.2 9.0 9.1 10.0 11.1 12.3 14.3 15.1 16.1 17.0 18.2 19.2 21.0 22.1 23.0 24.0 25.0 26.0 27.0
  SAY #45554 /* ~"Anything you want, friend! Time and words are money, so keep it snappy!" ~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #45555 /* ~"I'm looking for a floating skull. It was stolen from me. Do you know where I might find it?"~ */ GOTO 11
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #45556 /* ~"Tell me about this Master of the Bones..."~ */ GOTO 14
  IF ~~ THEN REPLY #45557 /* ~"Who are you and what do you do?"~ */ GOTO 18
  IF ~~ THEN REPLY #45558 /* ~"What is this place? What can you tell me of this area?"~ */ GOTO 19
  IF ~~ THEN REPLY #45559 /* ~"What can you tell me of the Godsmen?"~ */ GOTO 20
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45560 /* ~"Do you know of any jobs that need doing?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45561 /* ~"That handbill is printed."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~I told Giltspur that I had delivered his handbill to Scofflaw Penn.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45562 /* ~"The message is delivered."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~I told Giltspur that I had delivered his message to Keldor at the Great Foundry.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45563 /* ~"The bill is posted at the Smoldering Corpse."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~I told Giltspur that I had his message posted at the Smoldering Corpse.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45564 /* ~"Do you have any more jobs for me?"~ */ GOTO 27
  IF ~~ THEN REPLY #45565 /* ~"What are you selling?"~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45566 /* ~"I'd like to sell something to you."~ */ GOTO 6
  IF ~~ THEN REPLY #45567 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.2 5.11 7.2 18.0
  SAY #45568 /* ~"Then you've chosen the right man to talk to! I buy, I sell, I lease rooms! I can get you nearly anything! What do you have?"~ */
  IF ~  PartyHasItem("S_Limlim")
Global("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45569 /* ~"I have a stone Lim-Lim. What will you give me for that?"~ */ GOTO 8
  IF ~  PartyHasItem("S_Limlim")
GlobalGT("Know_An_Pass","GLOBAL",0)
~ THEN REPLY #45570 /* ~"I have a stone Lim-Lim. What will you give me for that?"~ */ GOTO 9
  IF ~~ THEN REPLY #45571 /* ~"Let's barter."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45572 /* ~"Do you have any jobs that need doing?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45573 /* ~"That handbill is printed."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ JOURNAL #66517 /* ~I told Giltspur that I had delivered his handbill to Scofflaw Penn.~ */ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45574 /* ~"The message is delivered."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ JOURNAL #66518 /* ~I told Giltspur that I had delivered his message to Keldor at the Great Foundry.~ */ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45575 /* ~"The bill is posted at the Smoldering Corpse."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ JOURNAL #66519 /* ~I told Giltspur that I had his message posted at the Smoldering Corpse.~ */ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45576 /* ~"Do you have any more jobs for me?"~ */ GOTO 27
  IF ~~ THEN REPLY #45577 /* ~"Nothing for right now, I guess. Answer some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45578 /* ~"Nothing right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #45579 /* ~"Once again! Once again! You come to me once again! There must be something I can do for you that my brother Deran cannot, eh? Ha!"~ */
  IF ~~ THEN REPLY #45580 /* ~"I'd like to buy something."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45581 /* ~"I had some questions for you."~ */ GOTO 5
  IF ~~ THEN REPLY #45926 /* ~"Let's talk about trades."~ */ GOTO 6
  IF ~  !Global("Penn_Out","GLOBAL",2)
Global("Gilt_Miss","GLOBAL",0)
~ THEN REPLY #45583 /* ~"Do you have any jobs to do?"~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",1)
~ GOTO 23
  IF ~  Global("Gilt_Miss","GLOBAL",2)
~ THEN REPLY #45584 /* ~"That handbill is printed."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",3)
GivePartyGold(50)
AddexperienceParty(6000)
~ GOTO 24
  IF ~  Global("Gilt_Miss","GLOBAL",4)
~ THEN REPLY #45585 /* ~"The message is delivered."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",5)
GivePartyGold(100)
AddexperienceParty(6000)
~ GOTO 25
  IF ~  Global("Gilt_Miss","GLOBAL",6)
~ THEN REPLY #45586 /* ~"The bill is posted at the Smoldering Corpse."~ */ DO ~SetGlobal("Gilt_Miss","GLOBAL",7)
GivePartyGold(200)
AddexperienceParty(8000)
~ GOTO 26
  IF ~  Global("Gilt_Miss","GLOBAL",7)
~ THEN REPLY #45587 /* ~"Do you have any more jobs for me?"~ */ GOTO 27
  IF ~~ THEN REPLY #45588 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45589 /* ~His expression becomes somber. "I can give you a secret password, and tell you where to use it. How does that strike you?"~ */
  IF ~~ THEN REPLY #45590 /* ~"Tell me the password."~ */ DO ~SetGlobal("Know_An_Pass","GLOBAL",1)
TakePartyItemNum("S_Limlim",1)
~ GOTO 10
  IF ~~ THEN REPLY #45591 /* ~"Can you just give me some money instead?"~ */ GOTO 9
  IF ~~ THEN REPLY #45592 /* ~"Neither sounds appealing right now. Answer some questions instead."~ */ GOTO 5
  IF ~~ THEN REPLY #45593 /* ~"Not interested. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 8.1
  SAY #45594 /* ~"I can give you seventy-five coins for that. Take it or leave it, friend!"~ */
  IF ~~ THEN REPLY #45595 /* ~"I'll take it. And answer a few more questions for me..."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ GOTO 5
  IF ~~ THEN REPLY #45596 /* ~"I'll leave it. Answer a few more questions for me..."~ */ GOTO 5
  IF ~~ THEN REPLY #45597 /* ~"I'll take it. Farewell."~ */ DO ~GivePartyGold(75)
TakePartyItemNum("S_Limlim",1)
~ EXIT
  IF ~~ THEN REPLY #45598 /* ~"I'll leave it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #45614 /* ~He deftly snatches the calcified Lim-Lim from you and whispers in your ear: "The password is 'eclipse'. It can get you access to the warehouse Vault of the Ninth World. There are Anarchists there. Tell them the password - but don't tell them who told you!"~ */
  IF ~~ THEN REPLY #45616 /* ~"'Eclipse.' Got it. I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45622 /* ~"'Eclipse.' Got it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #45625 /* ~"A skull, eh? Eh? Ha! There's but one market for that sort of thing that I know of! But..." and his voice drops, "I could not tell you where it is... unless..."~ */
  IF ~~ THEN REPLY #45627 /* ~"Unless?"~ */ GOTO 12
  IF ~~ THEN REPLY #45628 /* ~"Forget it. Answer some more questions for me..."~ */ GOTO 5
  IF ~~ THEN REPLY #45630 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #45632 /* ~"I couldn't tell you, friend, for it would endanger your life. No, sir, your life and mine are both far too precious to be thrown away for such a trivial tidbit of knowledge!"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #45633 /* ~"Would ten coins change your mind?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~  PartyGoldLT(10)
~ THEN REPLY #45637 /* ~"What if I gave you the contents of my purse?"~ */ DO ~TakePartyGold(10)
SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45640 /* ~"What if I threatened you?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #45642 /* ~"Forget it, then. Answer some more questions for me."~ */ GOTO 5
  IF ~~ THEN REPLY #45644 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #45647 /* ~"That would do it," he says. "Listen to me, and listen closely." He bends his head toward you to whisper loudly in your ear. "Only one man I know dares to traffic in such occult arcana, and that man is no man to be trifled with! Danger wafts from him, and few dare speak his name! I speak of..." He pauses, so he can hiss melodramatically, "... Lothar, Master of the Bones!"~ */
  IF ~~ THEN REPLY #45650 /* ~"Who?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 5.1 13.0
  SAY #45652 /* ~"The Master of the Bones! The Lord of the Bones of the Night, librarian of the most grisly library this side of Set's home! Skulls sit upon his shelves, whispering their secrets into Lothar's hardened heart and all who have the temerity to face them. There is much that can be learned there... if the place doesn't drive you *mad* first!"~ */
  IF ~~ THEN REPLY #45653 /* ~"Can you get to the point?"~ */ GOTO 15
  IF ~~ THEN REPLY #45655 /* ~"And where is this place?"~ */ GOTO 16
  IF ~~ THEN REPLY #45656 /* ~"What does he want with these skulls?"~ */ GOTO 17
  IF ~~ THEN REPLY #45658 /* ~"Thanks. I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45659 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #45660 /* ~He clears his throat. "My apologies for trying to make this a little more interesting to you. Just tryin' to add a little spice. It's to the spireward of Sigil - there *might* be a burnt shell of a building. It's *possible* that you will find a ladder strung of human sinew - or perhaps just wood - that leads down, down, down, down, into the heart of Sigil - and when you set foot on ground again... you *could* come face-to-face with Lothar himself!"~ */
  IF ~~ THEN REPLY #45661 /* ~"What does he do with the skulls?"~ */ GOTO 17
  IF ~~ THEN REPLY #45662 /* ~"Thanks. I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45663 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #45664 /* ~"It's to the spireward of Sigil - you *might* come across a wrecked building. You *might* find a ladder of bones that leads down, down into the heart of Sigil, and it *could* be the ladder will lead you to the Salon of Skulls, and a meeting with Lothar himself!"~ */
  IF ~~ THEN REPLY #45665 /* ~"What does he do with the skulls?"~ */ GOTO 17
  IF ~~ THEN REPLY #45666 /* ~"Thanks. I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45667 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.0 16.0
  SAY #45668 /* ~"They say dead men tell no tales... but in Lothar's salon, the dead spill their secrets to the willing ear! The more dead, the more tales, the more chant, and the more chant... why, the more one's eyes are opened to the very heart of the multiverse!" He wags his eyebrows for emphasis.~ */
  IF ~~ THEN REPLY #45669 /* ~::Sigh:: "Thanks. I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45670 /* ~::Sigh:: "Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.2
  SAY #45671 /* ~"I? I am Giltspur the auctioneer, at your service! I buy, I sell, I provide services and employment!"~ */
  IF ~~ THEN REPLY #45672 /* ~"I'd like to sell something."~ */ GOTO 6
  IF ~~ THEN REPLY #45673 /* ~"I'd like to buy something."~ */ DO ~StartStore("Giltspur",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #45674 /* ~"How about some questions?"~ */ GOTO 5
  IF ~~ THEN REPLY #45675 /* ~"Great, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #45676 /* ~"This? Why, this is the Lower Ward! Home to the Godsmen, the Great Foundry, and a host of services! What you need is what we have!"~ */
  IF ~~ THEN REPLY #45677 /* ~"What can you tell me of the Godsmen?"~ */ GOTO 20
  IF ~~ THEN REPLY #45678 /* ~"What can you tell me of the Foundry?"~ */ GOTO 22
  IF ~~ THEN REPLY #45679 /* ~"Answer some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45680 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.4 19.0 22.0
  SAY #45681 /* ~"Ah, a group of people close to my heart. They say we are all our own gods, that we have potential for godliness within our spirits. From the lowest beggar to the highest king, we all nurse gods in our breasts! Who could think of something finer?"~ */
  IF ~~ THEN REPLY #45682 /* ~"The Harmonium."~ */ GOTO 21
  IF ~~ THEN REPLY #45683 /* ~"The Anarchists."~ */ GOTO 21
  IF ~~ THEN REPLY #45684 /* ~"The Sensates."~ */ GOTO 21
  IF ~~ THEN REPLY #45685 /* ~"The Dustmen."~ */ GOTO 21
  IF ~~ THEN REPLY #45686 /* ~"The Mercykillers."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1 20.2 20.3 20.4
  SAY #45687 /* ~"Aye, good one! A fine answer!" He chuckles.~ */
  IF ~~ THEN REPLY #45688 /* ~"I had a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45689 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.1
  SAY #45690 /* ~"To me, the Foundry is but an opportunity! A place where all can test their mettle against their metal, where souls meet their measure and are quenched in the water of knowledge - or shattered against the forge of truth!" His voice drops to normal tones for a moment. "That's what the Godsmen say, at any rate."~ */
  IF ~~ THEN REPLY #45691 /* ~"What can you tell me of the Godsmen?"~ */ GOTO 20
  IF ~~ THEN REPLY #45692 /* ~"I had a few other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45693 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 6.3 7.3
  SAY #45694 /* ~"I certainly do, friend! I have a little errand for you to run, if you'll take it! It'll net you fifty coins! All you need to do is run this handbill down to the printshop, and ask Scofflaw Penn to print up one hundred copies for me! Here! Take it!" He shoves a crumpled piece of paper into your hands.~ */
  IF ~~ THEN REPLY #45695 /* ~"All right. I had a few more questions."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Giltspur the auctioneer has asked me to deliver a handbill to Scofflaw Penn, the printer, in exchange for fifty coins.~ */ GOTO 5
  IF ~~ THEN REPLY #45696 /* ~"Thanks, I guess. Farewell."~ */ DO ~GiveItemCreate("GiltBill",Protagonist,1,0,0)
~ JOURNAL #39510 /* ~Giltspur the auctioneer has asked me to deliver a handbill to Scofflaw Penn, the printer, in exchange for fifty coins.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.6 6.4 7.4
  SAY #45697 /* ~"It's printed? Terrific! I knew you were the man for the job! Here, take this message to Keldor of Durian at the Foundry. I'm sure he'll be glad to receive it, and you'll be glad of the hundred coins you get in return."~ */
  IF ~~ THEN REPLY #45698 /* ~"All right. I had a few more questions."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Once I finished the delivery to Scofflaw Penn, Giltspur the auctioneer asked me to deliver a message to Keldor of Durian at the Great Foundry, in exchange for one hundred coins. ~ */ GOTO 5
  IF ~~ THEN REPLY #45699 /* ~"Thanks, I guess. Farewell."~ */ DO ~GiveItemCreate("GiltNote",Protagonist,1,0,0)
~ JOURNAL #39509 /* ~Once I finished the delivery to Scofflaw Penn, Giltspur the auctioneer asked me to deliver a message to Keldor of Durian at the Great Foundry, in exchange for one hundred coins. ~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.7 6.5 7.5
  SAY #45700 /* ~"That was certainly speedy, wasn't it? My thanks, my thanks, friend. One more task for you, for the princely sum of two hundred coins! Just take this handbill down to Barkis at the Smoldering Corpse and ask him to post it somewhere. He's an old friend, so he'll be glad to see it!"~ */
  IF ~~ THEN REPLY #45701 /* ~"All right. I had a few more questions."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Once I delivered the message to Keldor, Giltspur the auctioneer asked me to deliver a handbill to Barkis at the Smoldering Corpse bar for the sum of two hundred coins. ~ */ GOTO 5
  IF ~~ THEN REPLY #45702 /* ~"Thanks, I guess. Farewell."~ */ DO ~GiveItemCreate("GiltPost",Protagonist,1,0,0)
~ JOURNAL #39508 /* ~Once I delivered the message to Keldor, Giltspur the auctioneer asked me to deliver a handbill to Barkis at the Smoldering Corpse bar for the sum of two hundred coins. ~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.8 6.6 7.6
  SAY #45703 /* ~"Then I have no more jobs for you, my friend. You have my thanks!" He turns back to the crowd and begins hectoring them.~ */
  IF ~~ THEN REPLY #45704 /* ~"I had a few more questions..."~ */ JOURNAL #67155 /* ~After I delivered the handbill to the Smoldering Corpse, I returned to Giltspur, who said he had no more jobs for me.~ */ GOTO 5
  IF ~~ THEN REPLY #45705 /* ~"Farewell, then."~ */ JOURNAL #67155 /* ~After I delivered the handbill to the Smoldering Corpse, I returned to Giltspur, who said he had no more jobs for me.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.9 6.7 7.7
  SAY #45706 /* ~"My apologies, friend. I have nothing more... you've run all my errands!" He laughs.~ */
  IF ~~ THEN REPLY #45707 /* ~"Then maybe you can answer a few more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #45708 /* ~"Thanks, then. Farewell."~ */ EXIT
END
