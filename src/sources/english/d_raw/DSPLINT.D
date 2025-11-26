// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPLINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPLINT~

IF ~  NumTimesTalkedTo(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2989 /* ~This towering man's golden skin sparkles slightly, almost as if it were metallic - whether it's his actual flesh or merely painted on, you cannot tell. He regards you coolly as you approach, giving a respectful bow as you draw near. "Welcome to the Civic Festhall, traveler; We are Splinter, doorman to the Festhall and Priest-King of Ur. How may We help you?" Despite his humble offer of aid, his voice is powerful and commanding, a deep and rumbling sound that resonates throughout the chamber.~ */
  IF ~~ THEN REPLY #65145 /* ~"How can you help me?"~ */ GOTO 2
  IF ~~ THEN REPLY #48511 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #48512 /* ~"I don't need anything just now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0 3.3 4.3 5.0 6.3 7.1 8.1 9.0 10.8 11.0 12.0 13.0 14.0 15.1 16.0 17.9 18.4 19.1 20.0 20.1 21.1 22.0 23.5 27.0 30.0 31.1 32.1 35.2 36.0 37.0 38.0 39.0 41.0 43.1 44.0 45.0
  SAY #48513 /* ~"We would be pleased to answer what questions We can, so long as they pertain to the Festhall or the Society of Sensation."~ */
  IF ~  Global("Iannis_Sensory_Quest","GLOBAL",1)
~ THEN REPLY #51522 /* ~"There is a man, Iannis, whom I was hoping you would grant temporary access to the private sensorium..."~ */ GOTO 40
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #65152 /* ~"Is there a linguist or scholar here who could help me with the language in this dodecahedron?"~ */ DO ~SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66262 /* ~"Jumble Murdersense cursed me. Could you or anyone you know of here help me?"~ */ JOURNAL #66264 /* ~I spoke to Splinter about Jumble's curse on me, and he suggested that I speak to a man named Salabesh. He told me that Salabesh should be in or just outside the Festhall, and normally wears robes of red and black.~ */ GOTO 45
  IF ~~ THEN REPLY #48514 /* ~"I wanted to ask about you..."~ */ GOTO 5
  IF ~~ THEN REPLY #48515 /* ~"How can you help me, Splinter?"~ */ GOTO 2
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48516 /* ~"Is there somewhere I could rest here?"~ */ GOTO 31
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #66170 /* ~"Is there somewhere I could rest here?"~ */ GOTO 44
  IF ~~ THEN REPLY #48517 /* ~"Tell me about the Festhall."~ */ GOTO 6
  IF ~~ THEN REPLY #48518 /* ~"Tell me about the Society of Sensation."~ */ GOTO 7
  IF ~~ THEN REPLY #48519 /* ~"There was someone I was looking for, here..."~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #48520 /* ~"Is there anyone here who might know about Ravel Puzzlewell?"~ */ GOTO 35
  IF ~~ THEN REPLY #48521 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.4 32.0
  SAY #48522 /* ~"We do many things in this fine hall, traveler. We answer questions guests might have regarding it or its inhabitants. We direct both visitors and members of the Society of Sensation alike to the sensoriums or lecture halls. We also accept new members into the Society. Lastly, it is through us that purchases from the Society's vaults are made... spells, items and such."~ */
  IF ~~ THEN REPLY #48523 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48524 /* ~"Can you show me to the sensoriums?"~ */ GOTO 3
  IF ~~ THEN REPLY #48525 /* ~"What lectures are there to attend?"~ */ GOTO 4
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48526 /* ~"I'd like to buy something from the Sensate vaults..."~ */ DO ~StartStore("Splinter",Protagonist)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48527 /* ~"How could I buy something from the Sensate vaults?"~ */ GOTO 18
  IF ~~ THEN REPLY #48528 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 8.0
  SAY #48529 /* ~"There are two; the public sensorium, where visitors may use the sensory stones for anywhere between ten and fifty commons, and the private sensorium, where only members of the Society of Sensation are allowed. You can reach neither of them yourself; We must *take* you there."~ */
  IF ~~ THEN REPLY #48530 /* ~"Take me to the public sensorium, then."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48531 /* ~"Take me to the private sensorium, then."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48532 /* ~"How could I get into the private sensorium?"~ */ GOTO 18
  IF ~~ THEN REPLY #48533 /* ~"Wait... I had a question about something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #48534 /* ~"Actually, I'll just leave now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #48535 /* ~"The Festhall's current speakers include Death's Advocate, who speaks of death and what follows it, Ghysis the Crooked, who speaks of the Blood War, and Three-Planes-Aligned, who speaks of the power of alignment and belief. Assuming they are currently here and well, We could direct you to one of their lectures at any time."~ */
  IF ~  !Dead("DeathAd")
~ THEN REPLY #48536 /* ~"I'd like to attend Death's Advocate's lecture."~ */ GOTO 37
  IF ~  !Dead("Ghysis")
~ THEN REPLY #48537 /* ~"I'd like to attend Ghysis the Crooked's lecture."~ */ GOTO 38
  IF ~  !Dead("3Planes")
~ THEN REPLY #48538 /* ~"I'd like to attend Three-Planes-Aligned's lecture."~ */ GOTO 39
  IF ~~ THEN REPLY #48539 /* ~"I had a question about something else..."~ */ GOTO 1
  IF ~~ THEN REPLY #48540 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3
  SAY #48541 /* ~"There is little to say that We have not told you. We are the Splinter, doorman to the Festhall, demigod son of Isahar and Priest-King of Ur. Planewalkers came to our world and told Us of the Society of Sensation; We were fascinated and returned with them. We left Ur in the capable hands of our queen so that We might come to this place and experience 'servitude' and 'humility' for a time. As time does not pass here as it does in Ur, the century We have spent here will be as a mere several months in our own world. After another decade or so, We imagine We shall be ready to return to Ur and rule it once more."~ */
  IF ~~ THEN REPLY #48542 /* ~"I... see. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48543 /* ~"That's... all I wished to know. Farewell, Splinter."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.7
  SAY #48544 /* ~"The Civic Festhall is one of largest buildings in Sigil; fitting, as it is home to the Society of Sensation, the city's largest faction. It holds the sensoriums, lecture halls, training chambers, and such for visitors and members of the Society alike."~ */
  IF ~~ THEN REPLY #48545 /* ~"Tell me about the Society of Sensation."~ */ GOTO 7
  IF ~~ THEN REPLY #48546 /* ~"Tell me about the sensoriums."~ */ GOTO 8
  IF ~~ THEN REPLY #48547 /* ~"Tell me about the training chambers."~ */ GOTO 9
  IF ~~ THEN REPLY #48548 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48549 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.8 6.0
  SAY #48550 /* ~"The core of a Sensate's belief is that the multiverse can only be *truly* known through the senses. If one cannot sense it, then a thing *isn't.* Only through experience... through experiencing all the sensations to be had... can the full Truth of the multiverse be revealed. The Society of Sensation, then, is where experiences gather and are shared with others, usually via the sensoriums."~ */
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48551 /* ~"Might I become a Sensate?"~ */ GOTO 17
  IF ~~ THEN REPLY #48552 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48553 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #48554 /* ~"Sensoriums are chambers which hold many recorder or sensory stones. These stones are enchanted so that they may hold various sensations or experiences that may be later had by others using the stone. If you so please, We might direct you to one of them."~ */
  IF ~~ THEN REPLY #48742 /* ~"Yes, please do."~ */ GOTO 3
  IF ~~ THEN REPLY #48556 /* ~"No, but I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48557 /* ~"No... not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #48558 /* ~"There are three - one for warriors, one for thieves, and one for practitioners of magic. If you would find them, pass through the middle door on the eastern wall, and the door beyond that as well. You will be at the corner of a hallway... along the one that goes east, there are three doors along the southern wall. Each door leads to one of the training chambers."~ */
  IF ~~ THEN REPLY #48559 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48560 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.9
  SAY #48561 /* ~"Who was it you were seeking, traveler?"~ */
  IF ~  Global("P_Journal","GLOBAL",3)
Global("Know_Finam_Lang","GLOBAL",1)
~ THEN REPLY #48562 /* ~"Finam, the linguist."~ */ GOTO 11
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #48563 /* ~"Mistress Jolmi of the House Syrma..."~ */ GOTO 12
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #48564 /* ~"Merriman."~ */ GOTO 36
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #48565 /* ~"Qui-Sai, the warriors' tutor."~ */ GOTO 13
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #48566 /* ~"Eli Havelock, the thieves' tutor."~ */ GOTO 14
  IF ~  Global("Thorncombe","GLOBAL",1)
~ THEN REPLY #48567 /* ~"Lady Thorncombe, the mages' tutor."~ */ GOTO 15
  IF ~  Global("Jul_Mission_1","GLOBAL",1)
~ THEN REPLY #48568 /* ~"Montague, a factotum here."~ */ GOTO 16
  IF ~  Global("Jul_Mission_2","GLOBAL",1)
~ THEN REPLY #48569 /* ~"Montague, a factotum here."~ */ GOTO 16
  IF ~~ THEN REPLY #48570 /* ~"No one, actually. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48571 /* ~"Never mind. Farewell, Splinter."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 43.0
  SAY #48572 /* ~"Finam is currently not lecturing here, so your best chance to find him would be at his home. Walk south of the Festhall entrance, between Yvana's Galleria and the Apothecary. You will see it on your right; a small five-sided home west of the Curiosity Shop."~ */
  IF ~~ THEN REPLY #48573 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48574 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #48575 /* ~"Jolmi has taken to waiting about in this very chamber of late. We think she is looking or waiting for someone. In any case, she should be nearby."~ */
  IF ~~ THEN REPLY #48576 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48577 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.3
  SAY #48579 /* ~"Qui-Sai often seeks quiet places to meditate. He will most likely be in a less crowded chamber, standing apart from others, motionless and in a state of silent contemplation."~ */
  IF ~~ THEN REPLY #48580 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48581 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.4
  SAY #48582 /* ~"Eli Havelock left the building some time ago looking angered. We imagine he might be wandering the Ward somewhere near the Civic Festhall."~ */
  IF ~~ THEN REPLY #48583 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48584 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.5
  SAY #48585 /* ~Splinter frowns slightly, narrowing his eyes. "She will doubtless be found in one of the sensoriums. Lady Thorncombe has been shirking her duties lately, spending far too much of her time with the sensory stones. You cannot reach that place yourself, but We might *take* you to one, if you would like."~ */
  IF ~~ THEN REPLY #48586 /* ~"Yes, please do."~ */ DO ~TeleportParty("AR0603",[1686.1498],6)
~ EXIT
  IF ~~ THEN REPLY #48587 /* ~"No, but I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48588 /* ~"No... not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.6 10.7
  SAY #48589 /* ~"Montague is a busy young man; he can usually be found moving between this chamber and three that lie along its eastern wall."~ */
  IF ~~ THEN REPLY #48590 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48591 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0 18.0
  SAY #48592 /* ~"In order to join the Society of Sensation, one must be willing and prepared to share their own experiences. Five are required - one from each of the senses. Alternately, one may contribute a single experience that has strong elements from all five senses. These must be either new sensations, or improvements upon our current stock. Should We find them acceptable, they will be placed into sensory stones and you, having become a Sensate, will be taught the Sensory Touch. It will allow you to draw other's wounds onto yourself, healing them by accepting their suffering."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48593 /* ~"I'm already a member of the Godsmen, but..."~ */ GOTO 23
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48594 /* ~"I'm already a member of the Dustmen, but..."~ */ GOTO 23
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48595 /* ~"I'm already a member of... another faction, but..."~ */ GOTO 23
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48596 /* ~"I'm already a member of the Xaositects, but..."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48597 /* ~"I'm already a member of the Godsmen. I've changed my mind... I won't turn stag on them."~ */ GOTO 22
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48598 /* ~"I'm already a member of the Dustmen. I've changed my mind... I won't turn stag on them."~ */ GOTO 22
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48599 /* ~"I'm already a member of... another faction. I've changed my mind... I won't turn stag on them."~ */ GOTO 22
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48600 /* ~"I'm already a member of the Xaositects. I've changed my mind... I won't turn stag on them."~ */ GOTO 22
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #48601 /* ~"I'm ready. I want to become a Sensate."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~~ THEN REPLY #48602 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48603 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.4 3.2 31.0 35.1
  SAY #48604 /* ~"You must be a member of the Society of Sensation."~ */
  IF ~~ THEN REPLY #48605 /* ~"Might I become a Sensate, then?"~ */ GOTO 17
  IF ~  Global("PC_Was_Sensate","GLOBAL",1)
~ THEN REPLY #48606 /* ~"What if I already *was* a Sensate? I haven't come to this place in a long time, but I assure you... I was a Sensate."~ */ GOTO 19
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #48607 /* ~Bluff: "Oh, but I *am* a Sensate, really."~ */ GOTO 20
  IF ~  Global("Join_Sensates","GLOBAL",0)
Global("PC_Was_Sensate","GLOBAL",0)
CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #48608 /* ~Bluff: "But I am a member, Splinter... I simply have not been here for a long, long while. I've gathered many experiences in my absence... as many as the scars upon my body."~ */ GOTO 21
  IF ~~ THEN REPLY #48609 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48610 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #48611 /* ~Splinter bends down a ways to examine you more closely. "We do not recognize you... but We see no lies dripping from your tongue. Very well. We shall grant you access to those privileges allowed only to members of the Society of Sensation... *if* you can show Us what sensations you have gathered recently."~ */
  IF ~~ THEN REPLY #48612 /* ~"All right... I'm ready."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48613 /* ~"Forget it. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48614 /* ~"Never mind. Farewell, Splinter."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.2
  SAY #48615 /* ~"A true Priest-King of Ur can see the lies dripping from one's tongue. It is unwise to lie to Us, traveler."~ */
  IF ~~ THEN REPLY #48616 /* ~"I was... jesting, not lying. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48617 /* ~"Forgive me, then. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48618 /* ~"I was merely... joking with you, Splinter. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #48619 /* ~"Then I ask your forgiveness, Splinter. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.3
  SAY #48620 /* ~He narrows his eyes, *hrming* as he looks you over. "Very... well. We shall grant you access to those privileges allowed only to members of the Society of Sensation... *if* you can show Us what sensations you have gathered recently."~ */
  IF ~~ THEN REPLY #48621 /* ~"All right... I'm ready."~ */ DO ~SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 28
  IF ~~ THEN REPLY #48622 /* ~"Forget it. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48623 /* ~"Never mind. Farewell, Splinter."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.4 17.5 17.6 17.7
  SAY #48624 /* ~Splinter only nods.~ */
  IF ~~ THEN REPLY #48625 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48626 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 17.0 17.1 17.2 17.3
  SAY #48627 /* ~"They will not forgive you. There shall be no going back."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #48628 /* ~"I'm ready to join the Society of Sensation. I feel no more loyalty towards the Godsmen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #48629 /* ~"I'm ready to join the Society of Sensation. I feel no more loyalty towards the Dustmen."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
SetGlobal("Dead_Truce","GLOBAL",0)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48630 /* ~"I'm ready to join the Society of Sensation. I feel no more loyalty towards... my old faction."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #48631 /* ~"I'm ready to join the Society of Sensation. I feel no more loyalty towards the Xaositects."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
SetGlobal("Join_Sensates","GLOBAL",1)
SetGlobal("Sensate_Access","GLOBAL",1)
ApplySpell(Protagonist,SPECIAL_ADD_SENSORY_TOUCH)
~ GOTO 24
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #48632 /* ~Lie to infiltrate the Sensates for the Anarchists: "I'm ready to join the Society of Sensation. I feel no more loyalty towards... my old faction."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Splinter_1","GLOBALLaw",-1)
SetGlobal("Sensate_Access","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #48633 /* ~"Forget it. I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #48634 /* ~"I don't think I'm ready to do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.8 23.0 23.1 23.2 23.3 23.4
  SAY #48635 /* ~"First, what *smell* - or experience involving it - would you offer Us?"~ */
  IF ~~ THEN REPLY #48636 /* ~"Actually, I'd like to contribute one experience that involves all five senses: I woke up, not knowing where I was, on a cold, blood-slicked iron slab in the bowels of the Mortuary, a place where only the Dustmen or the corpses in their care have seen..."~ */ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 33.0
  SAY #48637 /* ~He nods. "A disturbing experience."~ */
  IF ~~ THEN REPLY #48638 /* ~"And I even left out the part about the chattering skull that flew at me as soon as I was upright. Will it suffice, Splinter?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #48639 /* ~"Yes... we shall go to an empty stone, now, to record your experience. You will then be granted access to those privileges allowed only to members of the Society of Sensation, as well as taught the Sensory Touch."~ */
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #48640 /* ~Accompany him to record your experience and learn the Sensory Touch.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",0)
~ THEN REPLY #48641 /* ~Accompany him to record your experience and pretend to learn the Sensory Touch.~ */ DO ~GiveExperience(Protagonist,10000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #48642 /* ~You return to the Civic Festhall's foyer with Splinter.

"We welcome you into the Society of Sensation, traveler. May further journeys and experiences pave your road to the great truths of the multiverse."~ */
  IF ~~ THEN REPLY #48643 /* ~"Thanks, Splinter. I had a question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48644 /* ~"My thanks. Farewell, Splinter."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.0 21.0
  SAY #48645 /* ~"We would ask for five sensations, then, each pertaining to one of the body's senses... or a single experience which has strong elements of all five senses."~ */
  IF ~~ THEN REPLY #48646 /* ~"I'd have a single experience to contribute, then: I woke up, not knowing where I was, on a cold, blood-slicked iron slab in the bowels of the Mortuary, a place where only the Dustmen or the corpses in their care have seen..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 34.0
  SAY #48647 /* ~He nods. "A disturbing experience."~ */
  IF ~~ THEN REPLY #48648 /* ~"And I even left out the part about the chattering skull that flew at me as soon as I was upright. Will it suffice, Splinter?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #48649 /* ~"Yes. We welcome you back, traveler, and grant you access to those privileges allowed only to members of the Society of Sensation."~ */
  IF ~~ THEN REPLY #48650 /* ~"Thanks, Splinter. I had a question..."~ */ DO ~GiveExperience(Protagonist,10000)
~ GOTO 1
  IF ~~ THEN REPLY #48651 /* ~"My thanks. Farewell, Splinter."~ */ DO ~GiveExperience(Protagonist,10000)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 1.5
  SAY #48652 /* ~"There are lodgings within the Festhall, but only members of the Society of Sensation are permitted to use them. Should you wish to visit them, walk eastwards through the Festhall from here; you will eventually come to them. The clerk there allows Sensates into their rooms."~ */
  IF ~~ THEN REPLY #48653 /* ~"So... there are no other ways to get a room here?"~ */ GOTO 18
  IF ~~ THEN REPLY #48654 /* ~"I had another question..."~ */ GOTO 1
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48655 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Splinter","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY #48656 /* ~Splinter regards you coolly as ever as you approach. "We welcome you once more to the Civic Festhall, traveler. How may We help you?"~ */
  IF ~~ THEN REPLY #65146 /* ~"How can you help me?"~ */ GOTO 2
  IF ~~ THEN REPLY #48657 /* ~"I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #48658 /* ~"I don't need anything just now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0
  SAY #48659 /* ~Splinter nods. "Go on."~ */
  IF ~~ THEN REPLY #48660 /* ~"My entire body reeked of embalming fluid, but even the smell of that was not enough to match the coppery scent of gore around me. Dozens of bodies lie on countless bloody slabs like the one I rose from, all in the process of being gutted, flayed, and the like by nightmarish clockwork devices for reasons unknown. The only sounds were the squeals of labored metal and the unsteady tread of undead workers as they pushed the slabs about the Mortuary on rusted iron tracks."~ */ GOTO 25
END

IF ~~ THEN BEGIN 34 // from: 28.0
  SAY #48661 /* ~Splinter nods. "Go on."~ */
  IF ~~ THEN REPLY #48662 /* ~"My entire body reeked of embalming fluid, but even the smell of that was not enough to match the coppery scent of gore around me. Dozens of bodies lie on countless bloody slabs like the one I rose from, all in the process of being gutted, flayed, and the like by nightmarish clockwork devices for reasons unknown. The only sounds were the squeals of labored metal and the unsteady tread of undead workers as they pushed the slabs about the Mortuary on rusted iron tracks."~ */ GOTO 29
END

IF ~~ THEN BEGIN 35 // from: 1.10
  SAY #48663 /* ~Splinter closes his eyes and thinks briefly. "We would recommend that you speak to a wizard by the name of Quell about Ravel. Quell is always somewhere in the Festhall, most often in the private sensorium."~ */
  IF ~  Global("Sensate_Access","GLOBAL",1)
~ THEN REPLY #48664 /* ~"Show me to the private sensorium."~ */ DO ~TeleportParty("AR0604",[397.945],10)
~ EXIT
  IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN REPLY #48665 /* ~"How could I get into the private sensorium?"~ */ GOTO 18
  IF ~~ THEN REPLY #48666 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48667 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 10.2
  SAY #48668 /* ~"Merriman is usually pacing back and forth around the lecture halls. Travel through the middle door on the eastern wall, and the door beyond that as well. He will likely be wandering within the hallway you'll find yourself in."~ */
  IF ~~ THEN REPLY #48669 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #48670 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 4.0
  SAY #49868 /* ~"Travel through the middle door on the eastern wall, and the door beyond that as well. Continue straight down the hallway you'll find yourself in, and enter the second door on the north side."~ */
  IF ~~ THEN REPLY #49869 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #49870 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 4.1
  SAY #49871 /* ~"Travel though the southernmost door on the eastern wall."~ */
  IF ~~ THEN REPLY #49872 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #49873 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 4.2
  SAY #49874 /* ~"Travel through the middle door on the eastern wall, and the door beyond that as well. Continue straight down the hallway you'll find yourself in, and enter the first door on the north side."~ */
  IF ~~ THEN REPLY #49875 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #49876 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 1.0
  SAY #51517 /* ~"And for what reason would We allow such a thing?"~ */
  IF ~~ THEN REPLY #51518 /* ~"Because one of the stones there contains a fragment of his daughter's experiences. She died far from home not having seen him in a long while, and he mourns her loss deeply."~ */ DO ~SetGlobal("Iannis_Sensory_Quest","GLOBAL",2)
~ JOURNAL #51523 /* ~I spoke to Splinter, doorman of the Civic Festhall, about getting Iannis permission to view his daughter's sensory stone. Splinter agreed, and now all I have to do is let Iannis know he'll be allowed inside...~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #51519 /* ~Splinter nods, thinks for a moment, then nods again. "Yes, We shall allow this Iannis to enter the private Sensorium - well-escorted, of course. You may tell him he has permission."~ */
  IF ~~ THEN REPLY #51520 /* ~"Thanks, Splinter. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #51521 /* ~"My thanks. Farewell, Splinter."~ */ EXIT
END

IF ~  Global("Splinter","GLOBAL",1)
~ THEN BEGIN 42 // from:
  SAY #56842 /* ~The towering man sneers down at you. "You shall trouble the good people here no more; We shall see you flung far from this place." He waves his hand, and your vision blurs as the Festhall seems to melt around you...~ */
  IF ~~ THEN REPLY #56843 /* ~"What...?"~ */ DO ~SetGlobal("Splinter","GLOBAL",0)
TeleportParty("AR0500",[980.2100],0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 1.1
  SAY #65147 /* ~"We know of one such man who might help you - Finam."~ */
  IF ~~ THEN REPLY #65148 /* ~"Where would I find him?"~ */ GOTO 11
  IF ~~ THEN REPLY #65150 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #65151 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 1.6
  SAY #66167 /* ~"Yes, there are lodgings within the Festhall. Should you wish to visit them, walk eastwards through the Festhall from here; you will eventually come to them. Speak to the room clerk there."~ */
  IF ~~ THEN REPLY #66168 /* ~"I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #66169 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 1.2
  SAY #66258 /* ~"We would recommend that you speak to one known as Salabesh. If he is not within the Festhall at the moment, he will be in its immediate vicinity. Salabesh is tall and thin, oft dressed in robes of black or crimson."~ */
  IF ~~ THEN REPLY #66259 /* ~"Thanks. I had another question..."~ */ GOTO 1
  IF ~~ THEN REPLY #66260 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
