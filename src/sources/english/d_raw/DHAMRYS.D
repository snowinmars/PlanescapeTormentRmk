// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAMRYS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAMRYS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #9 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3020 /* ~You see a rugged looking, square jawed man. He turns to you with a wide smile. "How are you, cutter, good day to you, good day indeed." He squints at you for a second, then juts his hand out to shake yours.~ */
  IF ~~ THEN REPLY #3021 /* ~Shake his hand: "Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36645 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36646 /* ~"Hamrys at your service, member of the Harmonium and the fashioner of fine coffins for the recently departed. I think I know you, do I not...? Let me see if I can place it..." He pauses to think a moment. "Sharp with names I was in the Harmonium, let me tell you. Knew everyone on the entire Ward..."~ */
  IF ~~ THEN REPLY #36647 /* ~Lie: "My name is Adahn."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Hamrys_1","GLOBALLAW",-1)
~ GOTO 18
  IF ~~ THEN REPLY #36648 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36649 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 14.2 15.3 16.1 17.1 18.0 19.0 20.1 21.0 23.1 24.1 25.1 29.1 31.1 32.1 33.1 34.1 35.1 36.1 37.2 38.3 39.1 40.1 41.1 42.1 43.1 45.0 47.0 48.1 49.2 50.2 52.1 54.2 55.2 57.1 59.1 60.0 61.3 62.1 63.1 64.1 65.0 66.0 67.2 68.2 69.1 71.2 72.2 73.0 74.1 76.0
  SAY #36650 /* ~He nods at you. "Ask away." He gives you a broad smile.~ */
  IF ~  Global("Dream","GLOBAL",3)
Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36651 /* ~"I need to buy a coffin pillow."~ */ GOTO 3
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36652 /* ~"I'm looking for someone named Lothar, or the Master of the Bones..."~ */ GOTO 19
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36653 /* ~"I had a skull and it's been stolen from me. Do you know anyone who would do such a thing?"~ */ GOTO 20
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #36654 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 22
  IF ~  Global("Know_Hamrys_Father","GLOBAL",1)
~ THEN REPLY #36655 /* ~"I hear your father died. Can you tell me what happened?"~ */ GOTO 41
  IF ~  !Global("Release_Dimtree","GLOBAL",5)
~ THEN REPLY #36656 /* ~"Who's your friend here?"~ */ GOTO 42
  IF ~~ THEN REPLY #36657 /* ~"Can you tell me about this ward?"~ */ GOTO 46
  IF ~~ THEN REPLY #36658 /* ~"What can you tell me about the city of Sigil?"~ */ GOTO 55
  IF ~~ THEN REPLY #36659 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36660 /* ~He nods at you. "Ah! You are here to purchase then. I assure you, what I do is a labor of love. The real value of my profession is in the building of the coffin... in doing it and doing it well. It is an act of perfectly ordered creation, every piece must fit just so for the betterment of the whole. It is much like a metaphor for the Harmonium philosophy... we create order, and it is beauty..."~ */
  IF ~~ THEN REPLY #36661 /* ~"I just need a pillow..."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #36662 /* ~He nods at you again. "I need fifty coppers for the basic boards used in construction, though the expense doesn't cover the time. Usually, it's either whitewashed or painted some color of the person's choosing. The boards themselves are usually a sixteenth handspan thick, maybe even thicker depending on the nature of the corpse, whether it's a human being buried or not. Or whether they're worried that the person might get back up again." He laughs. ~ */
  IF ~~ THEN REPLY #36663 /* ~"I just need a pillow..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #36664 /* ~He nods at you again. "Some prefer Bytopian pine, which is fine and traditional, but I prefer the heavy Arborean oak materials, simply because they have a good weight about them. Even a twentieth inch of the oak is stronger than a sixteenth of a handspan of pine..." He pauses for a moment.~ */
  IF ~~ THEN REPLY #36665 /* ~"I said, I just need a pillow..."~ */ GOTO 6
  IF ~~ THEN REPLY #36666 /* ~"I've had enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36667 /* ~He nods at you. "From there, I might need about a score multiplied by a score of steel wood-screws, gauge about eight by one and a quarter inch, or so. Lots of shops around here carry them, not a big deal to acquire them. I'll also need some sort of metal pins for securing the interior lining, best to pick them up with the bunch. Then there's the matter of the battens and corner blocks, depending on how you wish to do it."~ */
  IF ~~ THEN REPLY #36668 /* ~"Are you listening to me? I said I just need a pillow!"~ */ GOTO 7
  IF ~~ THEN REPLY #36669 /* ~"I've had enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36670 /* ~He places his hand on his chin. "And although I usually let the natural wood speak the color of the coffin for itself, sometimes the person commissioning it wants it painted special or engraved... I don't usually do the finer work for that, though I am skilled, but contract it out..." He pauses for a breath. "And the handles alone are another matter entirely..." He nods knowingly.~ */
  IF ~~ THEN REPLY #36671 /* ~Sigh: "What about the handles?"~ */ GOTO 8
  IF ~~ THEN REPLY #36672 /* ~"If you don't shut up and give me a pillow I'm going to hit you... hard."~ */ GOTO 10
  IF ~~ THEN REPLY #36673 /* ~"I've had enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #36674 /* ~"Big thing handles: everything about handles depends on how the coffin is to be carried: you got skilled men carrying the coffin at shoulder height, don't even need to worry about handles, professional pallbearers never use them, see. If you got your family and friends carrying the coffin, then the handles are necessary. You'll need some rope handles or even metal handles..." He gives you a satisfied look.~ */
  IF ~~ THEN REPLY #36675 /* ~"That's fine and all, but I came in here for a pillow... Do you have any?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #36676 /* ~"Let me give you an example: I think the most beautiful coffin I'd ever seen was this one of clear pine. I don't know where they managed to get it, whether from a place in Bytopia or elsewhere... Anyway, it was pegged together carefully and trimmed with this beautiful run of redwood. The effect was somewhat ruined by the crude amounts of thick hemp rope that surrounded the affair. Surely, something was needed for the pallbearers to hold on to, but to ruin the entire beauty of the coffin with such badly-woven rope..." Hamrys shakes his head.~ */
  IF ~~ THEN REPLY #36677 /* ~"I'm sure this is fascinating and all, but I just want a pillow..."~ */ GOTO 10
  IF ~~ THEN REPLY #36678 /* ~"I've had enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 9.0
  SAY #36679 /* ~"Then there's the matter of measurements. They can be tricky, and I try and do it myself, since occasionally a client will neglect to inform me as to the race of the deceased or forget something like the hip width... very important indeed. Also, if the client is still alive, I try and make precautions should the client 'fill out' before they die, you know?" He pauses. "Then there's the construction itself..."~ */
  IF ~~ THEN REPLY #36680 /* ~"Hamrys..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #36681 /* ~"There's many different ways of attaching the sides and ends to the floor of the coffin, and to each other. Some use internal battens or corner-blocks, with plenty of wood screws to secure it in place. You can also do the fiend's tooth method, and just cut alternating tongues and recesses all along the edges to be joined, so that they fit together, like a fiend's jaw. Requires a little more work and precision, but the result is neat and very strong." He pauses to breathe once again.~ */
  IF ~~ THEN REPLY #36682 /* ~"Hamrys..."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36683 /* ~"Then there's the lid. The lid's gonna need a rim or lip all round its edge, made from a strip of wood pinned to the box or carved around the edge itself. Once you have some pilot holes drilled into the main box, then drill in the screws in the top of the lid maybe half a handspan apart..." You get the impression that he is not going to stop talking now that he is on a roll.~ */
  IF ~~ THEN REPLY #36684 /* ~"If you don't shut up and give me a pillow I'm going to hit you... Hard."~ */ GOTO 13
  IF ~~ THEN REPLY #36685 /* ~"I've had enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #36686 /* ~You think you finally got his attention. He frowns at you with a confused look on his face. "Pardon?"~ */
  IF ~~ THEN REPLY #36687 /* ~"I said, I need a coffin pillow. That's all, just a pillow. Do you have any?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #36688 /* ~He looks relieved and smiles. "A pillow? Ah, I thought you might need the entire coffin." He puts his hand on his chin again. "I'm so sorry, but I'm out of stock on pillows right now. I don't know when I'll have them again, what with the warehouse being closed and all..."~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36689 /* ~"The warehouse?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36690 /* ~"Yes, you mentioned a problem. What was that about again?"~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #36691 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36692 /* ~"I've had enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #36693 /* ~"Yes... The warehouse where I store my goods is having internal problems of some sort. New management or some such nonsense. I haven't been able to replenish my stock of late." He frowns. "The Harmonium would never let things get so out of hand as to cause distress to its customers..." His voice fades away as he thinks and then he looks at you. "Perhaps you would look into the matter for me?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36694 /* ~"I've dealt with the warehouse, I'll just go there and get a pillow."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36695 /* ~"I guess I don't have a choice if I want a pillow. I'll do it."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~It seems there's some sort of trouble at the warehouse. If I want a coffin pillow I'm going to have to find out what it is and take care of it.~ */ GOTO 16
  IF ~~ THEN REPLY #36696 /* ~"It's not my problem... why don't you handle it?"~ */ GOTO 17
  IF ~~ THEN REPLY #36697 /* ~"I'll think about it. I have some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36698 /* ~"I've got to go, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1 17.0 67.0 68.0
  SAY #36699 /* ~He smiles broadly. "Excellent. If you deal with this issue satisfactorily you may have your pillow for free..." He gets that *lecture* look on his face again. "That may not seem like sufficient payment, but let me tell you about the construction of those pillows..."~ */
  IF ~~ THEN REPLY #36700 /* ~"No thank you! I'll just get started on this right away. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36701 /* ~"Another time, I have some questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 17 // from: 15.2
  SAY #36702 /* ~He frowns. "I've tried but had little success. I've taken the matter before the Harmonium but they are unable to assist me at this time." He gives you an innocent look and holds up his hands in surrender. "If you truly need the pillow..." He looks at you expectantly.~ */
  IF ~~ THEN REPLY #36703 /* ~"All right. I'll look into the matter."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~It seems there's some sort of trouble at the warehouse. If I want a coffin pillow I'm going to have to find out what it is and take care of it.~ */ GOTO 16
  IF ~~ THEN REPLY #36704 /* ~"I'll think about it. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36705 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0
  SAY #36706 /* ~He snaps his fingers. "Of course! Adahn! I knew I recognized you. Anyway, you require my services?" He studies you, then smiles, seeing the opportunity for a joke at your expense. "It seems to me, sir, that you are one in desperate need of a coffin, and soon." He seems pleased with his wit.~ */
  IF ~~ THEN REPLY #36707 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36708 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 2.1
  SAY #36709 /* ~He frowns deeply in thought. "Can't say as I've ever heard of the fellow. Master of the Bones you said? Catchy title that." He smiles. "In a way, I guess you could say that's my title as well, dealing with corpses as much as I do. Now, I know that most of them are covered in flesh but there have been plenty of times when I've had to make a coffin just for bones. There was this one fellow that had his bones picked clean by something, never did find out by what..."~ */
  IF ~~ THEN REPLY #36710 /* ~Interrupt: "I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36711 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.2
  SAY #36712 /* ~He raises his eyebrows, then shrugs. "I've no idea who would do such a thing. I've buried quite a few skulls in my day, though. See, most people couldn't think of who would bury a skull alone in a coffin, but I've got plenty of tales involving some peculiar requests for coffin construction. Among them were a number of people who simply wanted skulls buried, since the remainder of the dead person's body parts could not usually be found. There was one man whose body had been ravaged by a group of Xaositects, so much so that..."~ */
  IF ~~ THEN REPLY #36713 /* ~Interrupt: "What is a Xaositect?"~ */ GOTO 21
  IF ~~ THEN REPLY #36714 /* ~Interrupt: "I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36715 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #36716 /* ~He pauses for some time before answering. "There is no way to answer that question, friend. They are one of the factions of Sigil who believes in chaos." He thinks some more then shrugs. "You can't even talk to them half the time, they just babble incomplete sentences and jump from one subject to the next. Their minds, if they have one, must be a mass of confusion. Now, as I was saying..."~ */
  IF ~~ THEN REPLY #36717 /* ~Interrupt: "I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36718 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 2.3
  SAY #36719 /* ~He shrugs. "Can't say I've seen one... except my own journal, that is. I like to keep notes and reflections on record, and it makes fascinating reading, looking back on one's thoughts a month to a half-month later." He nods at you, as if you understand exactly what he is talking about. ~ */
  IF ~~ THEN REPLY #36720 /* ~"That's fine but..."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36721 /* ~He continues droning on. "I've talked to several of the printers in the Clerk's Ward about possibly getting them printed. I've been told that they are quite insightful about various aspects of city life that I have observed in my tour of duty with the Harmonium. Even with no formal training, many have agreed that my writing style is quite striking... but enough about that. It would be far easier to let you listen for yourself: I could read for you some of my more insightful passages..."~ */
  IF ~~ THEN REPLY #36722 /* ~"All right, go ahead."~ */ GOTO 24
  IF ~~ THEN REPLY #36723 /* ~"Not right now, I have some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36724 /* ~"I've had enough for today, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #36725 /* ~Hamrys reads several passages in his monotonous journals to you, all of them boring to some degree. You are about to find some way to escape, when he mentions something about the disappearance of his father that you don't quite catch. For some reason, it tugs at you.~ */
  IF ~~ THEN REPLY #36726 /* ~"Wait, you said your father disappeared?"~ */ GOTO 25
  IF ~~ THEN REPLY #36727 /* ~"This is all fine, but I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36728 /* ~"I've had enough for today, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36729 /* ~Hamrys holds up his hand to stop your interruption until he finishes the next paragraph in one of his dull journals. "So what do you think so far? Surprisingly more insightful than one might expect from a simple member of the Harmonium, no?" He smiles. He seems to have ignored your interruption.~ */
  IF ~~ THEN REPLY #36730 /* ~"Yes, very insightful. Did you say your father disappeared?"~ */ GOTO 26
  IF ~~ THEN REPLY #36731 /* ~"Actually, your journals are... more than I can handle in one sitting. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36732 /* ~"I've heard enough of your voice to last me a lifetime. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 41.0
  SAY #36733 /* ~He nods. "Oh, yes. Many, many years ago. My father was a talented stonemason, and he did not only construct sarcophagi, but he was also quite skilled in tomb design. People from across Sigil..." The room begins to fade around you as a memory tugs at your consciousness...~ */
  IF ~  !Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36734 /* ~Relax and try to remember.~ */ DO ~SetGlobal("Hamrys_Mem","AR0506",1)
PlaySoundNotRanged("SPTR_01")
AddexperienceParty(500)
~ JOURNAL #36029 /* ~I think I hired Hamrys' father to build a tomb for me and then killed him. I don't know why I would have done that...~ */ GOTO 27
  IF ~~ THEN REPLY #36735 /* ~Force it away and continue with Hamrys.~ */ GOTO 29
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #68426 /* ~Relax and try to remember.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.2
  SAY #36736 /* ~You find yourself standing in this very shop, talking with an older man while a child sits in the corner and plays. On the counter between you and the shopkeeper is a set of plans. He seems to be explaining some intricacies with the construction of a tomb. Your vision fades as you try to examine the details of the plans.~ */
  IF ~~ THEN REPLY #36737 /* ~Continue.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #36738 /* ~When your sight returns you are standing in a cavern in front of a tomb. Above the entry you see the slogan: Engineered for Eternity, clearly carved in the stone. The shopkeeper is standing next to you, a broad smile on his face. He gestures to you and begins to walk into the tomb. You quickly match his pace from behind and draw your blade...~ */
  IF ~~ THEN REPLY #36739 /* ~Continue.~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.1 28.0
  SAY #36740 /* ~You find yourself back in Hamrys' shop. He is looking at you with some concern. "Are you well, sir?"~ */
  IF ~~ THEN REPLY #36741 /* ~"Tell me what happened to your father."~ */ GOTO 30
  IF ~~ THEN REPLY #36742 /* ~"I'm fine, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36743 /* ~"No, I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36744 /* ~"He simply vanished one day, leaving most of his commissions unfinished. Most embarrassing; took a long while to get out of the debt caused by his disappearance, and to an extent, I am still settling various accounts. Still, I have a certain aptitude for the work, and..." He sighs lightly and gets a far-away look in his eyes.~ */
  IF ~~ THEN REPLY #36745 /* ~"Go on."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #36746 /* ~He shrugs. "Sorry, I was just thinking... My father's disappearance was the reason I joined the Harmonium, and left it later on. At first I had a burning desire to find out what happened to him, later I felt a certain obligation to continue his life's work." He sighs. "I never found the answers I sought. It was quite the mystery as to what happened..." His voice fades to silence.~ */
  IF ~  Global("Plans_Quest","GLOBAL",0)
~ THEN REPLY #36747 /* ~"Did your father keep any of the plans for the tombs he built?"~ */ GOTO 32
  IF ~~ THEN REPLY #36748 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36749 /* ~"I will leave you now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #36750 /* ~He thinks for a moment. "Yes he did. After I came of age and inherited the business I went through all of his records. They were quite extensive. Why do you ask?"~ */
  IF ~  Global("Hamrys_Mem","AR0506",1)
~ THEN REPLY #36751 /* ~"If I describe a tomb to you, could you tell me if it was your father's work?"~ */ GOTO 33
  IF ~~ THEN REPLY #36752 /* ~"No reason, I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36753 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #36754 /* ~He frowns in thought then shrugs. "I can but try. My Harmonium training has blessed me with a sharp memory, I should be able to recognize my father's work if you give me enough details." He looks at you expectantly.~ */
  IF ~~ THEN REPLY #36755 /* ~Describe the tomb from your memory. ~ */ GOTO 34
  IF ~~ THEN REPLY #36756 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36757 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36758 /* ~He thinks for some time. "There is little doubt that the tomb you describe is my father's work, the slogan you mentioned has been the family trademark for several generations." He pauses and gives you a strange look. "This tomb, where is it located?"~ */
  IF ~~ THEN REPLY #36759 /* ~Describe the location.~ */ GOTO 35
  IF ~~ THEN REPLY #36760 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36761 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36762 /* ~You describe the location in detail, surprising yourself with the knowledge you have of the area. Hamrys watches you with a concerned look. "Odd, I don't recall anything in the family records that would even have permitted him to construct a tomb there. The Dustmen are very careful about building rights and real estate, especially beneath the streets of Sigil..."~ */
  IF ~~ THEN REPLY #36763 /* ~"Then you recognize the location?"~ */ GOTO 36
  IF ~~ THEN REPLY #36764 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36765 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36766 /* ~He nods enthusiastically. "Oh, yes. Sounds like the Drowned Nations Catacombs to me." He pauses. "I've never been there myself, but I've heard the area described many a time in my years in the Harmonium."~ */
  IF ~~ THEN REPLY #36767 /* ~"I need to know if your father kept the plans for that tomb."~ */ GOTO 37
  IF ~~ THEN REPLY #36768 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36769 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #36770 /* ~"Yes... the warehouse where I store my goods handles my business documents as well. Anyway, they are having internal problems of some sort. New management or some such nonsense. I haven't been able to replenish my stock of late and I doubt I could retrieve any paperwork from them either." He frowns. "The Harmonium would never let things get so out of hand as to cause distress to its customers..." His voice fades away as he thinks and then he looks at you. "Perhaps you would look into the matter for me?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36771 /* ~"The warehouse?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~  GlobalGT("Pillow_Quest","GLOBAL",0)
~ THEN REPLY #36772 /* ~"Yes, you mentioned a problem. What was that about again?"~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",1)
~ GOTO 38
  IF ~~ THEN REPLY #36773 /* ~"I have other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36774 /* ~"Never mind, I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #36775 /* ~"Yes... The warehouse is having some *internal problems* of some sort, whatever that means. I can't get any stock from them until the matter is cleared up." He frowns. "The Harmonium would never let things get so out of hand as to cause distress to its customers..." His voice fades away as he thinks and then he looks at you. "Perhaps you would look into the matter for me?"~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36776 /* ~"I've dealt with the warehouse, I'll just go there and get the plans."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #36777 /* ~"I guess I don't have a choice if I want the plans. I'll do it."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~It seems there's some sort of trouble at the warehouse. If I want the tomb plans I'm going to have to find out what it is and take care of it.~ */ GOTO 39
  IF ~~ THEN REPLY #36778 /* ~"It's not my problem... why don't you handle it?"~ */ GOTO 40
  IF ~~ THEN REPLY #36779 /* ~"I'll think about it. I have some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #36780 /* ~"I've got to go, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1 40.0 71.0 72.0
  SAY #36781 /* ~He smiles broadly. "Excellent. If you deal with this issue satisfactorily you may have your plans for free..." He gets that *lecture* look on his face again. "That may not seem like sufficient payment, but let me tell you about the difficulty involved in creating those plans..."~ */
  IF ~~ THEN REPLY #36782 /* ~"No thank you! I'll just get started on this right away. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36783 /* ~"Another time, I have some questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 40 // from: 38.2
  SAY #36784 /* ~He frowns. "I've tried but had little success. I've taken the matter before the Harmonium but they are unable to assist me at this time." He gives you an innocent look and holds up his hands in surrender. "If you truly need the plans..." He looks at you expectantly.~ */
  IF ~~ THEN REPLY #36785 /* ~"All right. I'll look into the matter."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ GOTO 39
  IF ~~ THEN REPLY #36786 /* ~"I'll think about it. I have some questions..."~ */ JOURNAL #36028 /* ~It seems there's some sort of trouble at the warehouse. If I want the tomb plans I'm going to have to find out what it is and take care of it.~ */ GOTO 2
  IF ~~ THEN REPLY #36787 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 2.4
  SAY #36788 /* ~He frowns at you. "Well, he disappeared some time ago so I can only assume that he is dead. Where did you hear this?"~ */
  IF ~~ THEN REPLY #36789 /* ~"I don't recall. You say he disappeared?"~ */ GOTO 26
  IF ~~ THEN REPLY #36790 /* ~"Never mind, I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36791 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 2.5
  SAY #36792 /* ~He glances at the customer. "Dimtree?" He shrugs, like he hadn't considered the fellow before. "Quiet, doesn't say much - do you, Dimtree?" Dimtree doesn't respond, but simply gives the same blank expression. A few seconds later, he nods. Hamrys shrugs, turns back to you. "Wandered in one day a few weeks back, been a regular ever since. He hasn't bought anything, but he doesn't cause any trouble, so I let him stay. Seems harmless enough. You see, when I was serving the Harmonium, part of our work was to take people under our wing, give them a little shelter from the chaos of the streets, get 'em spruced up..."~ */
  IF ~  Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36793 /* ~"You do know that he's a zombie, don't you?"~ */ GOTO 43
  IF ~  !Global("Dimtree_Zombie","GLOBAL",1)
~ THEN REPLY #36794 /* ~"I see, I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36795 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #36796 /* ~He frowns, glances at Dimtree, then back at you. "What nonsense are you rattling on about? Dimtree's no zombie. Sure, he may be quiet and doesn't move much, but it's just because he is a good listener-"~ */
  IF ~~ THEN REPLY #36797 /* ~Punch Dimtree: "Look, Dimtree is a zombie." ~ */ GOTO 44
  IF ~~ THEN REPLY #36798 /* ~"Never mind. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36799 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #36800 /* ~Hamrys looks at you in shock. "What in the Harmonium's name are you-?!" You cuff Dimtree on the skull. Hard. He doesn't even blink. Hamrys turns red and starts bellowing. "You've gone too far! I won't have you striking my customers! I'm placing you under arrest by the authority of the Harmonium-" He stops and stares in wonder as Dimtree still fails to react.~ */
  IF ~~ THEN REPLY #36801 /* ~"He's a zombie, Hamrys..."~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #36802 /* ~Hamrys stares at Dimtree in confusion. "I wonder how he died." You get the feeling that Hamrys just isn't getting it. "Just the other day, he seemed quite lively." He harrumphs, for once at a loss for words. "Well, it looks like old Dimtree will need a coffin. Good thing he ended up here. Thing is, what kind of coffin should..." He looks like he is going to begin a lecture.~ */
  IF ~~ THEN REPLY #36803 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36804 /* ~"I'll be leaving now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 2.6
  SAY #36805 /* ~"Yes, the Lower Ward..." He leans forward, as if explaining something to a small child. "...you know, it's little known to most newcomers and even people in the Ward: most people think that this Ward gets its name simply because it's not as prestigious as some of the other wards, but that's not it at all. Not at all. Do you know where the name comes from? Hmmm?" He looks at you expectantly.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #36806 /* ~"From all the Lower Plane portals?"~ */ GOTO 47
  IF ~~ THEN REPLY #36807 /* ~"No, I don't know where it gets its name."~ */ GOTO 48
  IF ~~ THEN REPLY #36808 /* ~"I don't care where it gets the name from, can you tell me what there is to see in the ward?"~ */ GOTO 49
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #36809 /* ~He nods, though he seems a little disappointed that you know. "Yes, indeed. These portals to the Lower Planes are actually the reason for the smog in the skies here..." He glances upwards, as if imagining a sky above your heads. "...but I'm sure you are already aware of the conditions that plague this Ward."~ */
  IF ~~ THEN REPLY #36810 /* ~"Yes, I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36811 /* ~"No, tell me about it."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.1
  SAY #36812 /* ~"It's because of the portals to the Lower Planes! They are the reason behind all the smog that fills the area, belching out noxious gasses and all. Fortunately, winds from the Spire help to blow away the worst of the mists, but it can bring others in the Ward with much weaker constitutions down and fill them full of sickness." Shakes his head sadly. "Fortunately, my Harmonium training has prepared me for all sorts of hazardous conditions, and after my travels to the Lower Planes, the smog of this Ward is little to bear, indeed..."~ */
  IF ~~ THEN REPLY #36813 /* ~"What is there to see in the Ward?"~ */ GOTO 49
  IF ~~ THEN REPLY #36814 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36815 /* ~"I must be going. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.2 48.0
  SAY #36816 /* ~He smiles broadly. "A great deal, a great deal. Where to start... If we were to step past all the kilns, forges, breweries, and distilleries scattered amongst the many garbage fires, not to mention the alchemists' dens, the crematoriums, meat curing houses, and the charcoal burners, and examine the Ward itself as a whole, one could say... Well, there's the Foundry, the siege tower, and..." He begins to falter and stops to think.~ */
  IF ~~ THEN REPLY #36817 /* ~"Tell me about the Foundry."~ */ GOTO 50
  IF ~~ THEN REPLY #36818 /* ~"Tell me about the siege tower."~ */ GOTO 51
  IF ~~ THEN REPLY #36819 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36820 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0 52.0
  SAY #36821 /* ~"The Great Foundry is the headquarters for the Believers of the Source, also known to some of the laymen as 'Godsmen,' because of their belief that everyone can achieve divinity." He shakes his head. "The Great Foundry is much like their philosophy: a large sprawling structure that seems to produce nothing but smoke." He laughs. "I mean, when was the last time you saw one of the Believers of the Source suddenly become a power? Not any time in the faction's history."~ */
  IF ~~ THEN REPLY #36822 /* ~"Tell me about the Godsmen."~ */ GOTO 53
  IF ~~ THEN REPLY #36823 /* ~"Tell me about the siege tower."~ */ GOTO 51
  IF ~~ THEN REPLY #36824 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36825 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1 54.0
  SAY #36826 /* ~"That scarred iron wreck? A Ward mystery it is, but I have some thoughts on it. First off, it wasn't always here, as I understand it. It simply arrived one night, and no one saw how it got here. Now you've seen the outside of it? It's seen battle, and it looks like battles that most people could not imagine. Me, however, I've seen the edges of the Blood War, even tackled a tanar'ri fiend or two when things were desperate with only my Harmonium fellows beside me... and those scars on the tower look like they were gathered over several centuries at least." He pauses for a moment.~ */
  IF ~~ THEN REPLY #36827 /* ~"Go on."~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #36828 /* ~"Now, listen close: My experience allows me to recognize some of those scars that decorate the sides of the tower: some are acidic blasts, surely enough from some major sorceries, some are tanar'ric teething blades, others look like detonations from 'loth globes or scars from baatezu cornugon whips. However, a lot of the weapons embedded in the sides are weapons like none I've ever seen, and I'm well-versed in a variety of weapons on many different worlds and on many different planes. Makes you wonder what's held in the inside of the tower. Basher who cracks that tower might have a museum in their hands. Makes you curious doesn't it?" He stares at you.~ */
  IF ~~ THEN REPLY #36829 /* ~"Tell me about the Foundry."~ */ GOTO 50
  IF ~~ THEN REPLY #36830 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36831 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 50.0
  SAY #36832 /* ~"Actually, friend, 'Godsmen' is the layman's term for their faction; the real name of their organization is, in actuality, the Believers of the Source. They hold to an interesting, if ultimately flawed, philosophy: they believe that everyone has the capability of aspiring to divine status simply by applying themselves..." He shakes his head indulgently as he pauses to think.~ */
  IF ~~ THEN REPLY #36833 /* ~"Go on."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #36834 /* ~"As my tour of duty with the Harmonium quickly proved, there are many who could never aspire to divinity, no matter how long they sought it or applied themselves..." He scoffs. "Nonetheless, the Believers of the Source work quite hard..." He shrugs. "...and their little faction is pleasant enough."~ */
  IF ~~ THEN REPLY #36835 /* ~"Tell me about the siege tower."~ */ GOTO 51
  IF ~~ THEN REPLY #36836 /* ~"Can you tell me about some of the other factions?"~ */ GOTO 61
  IF ~~ THEN REPLY #36837 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36838 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 2.7
  SAY #36839 /* ~"Sigil..." He lets out a long breath. "Sigil is the city at the center of all things, or so many believe. It is the city of doors; there are literally thousands of portals here. It is home to the Lady of Pain herself." He shrugs. "Sigil... is a topic that can fill volumes, and volumes of volumes..."~ */
  IF ~~ THEN REPLY #36840 /* ~"Tell me about the Lady of Pain."~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #36841 /* ~"You mentioned portals. Do you know of any?"~ */ GOTO 65
  IF ~~ THEN REPLY #36842 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36843 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #36844 /* ~"The Lady of Pain..." Hamrys leans in, and drops his voice slightly. "One of the multiverse's greatest mysteries, everyone will agree. I think she's proved beyond doubt's shadow that females are the most dangerous creatures in the multiverse..." He sighs. ~ */
  IF ~~ THEN REPLY #36845 /* ~"Go on."~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #36846 /* ~"Some say she's a goddess, a power that's made Sigil her home. Truth is, she breaks the laws of every power I've encountered. Powers need worshippers - gives them their power - but the Lady doesn't like to be worshipped. People who do end up in her shadow, their flesh torn apart by invisible blades. Now, I've seen some horrible things in my life, things that would make another man's knees go weak and make him lose control of his vitals. Doesn't even compare to seeing one of the Lady's victims."~ */
  IF ~~ THEN REPLY #36847 /* ~"Interesting, what else can you tell me?"~ */ GOTO 58
  IF ~~ THEN REPLY #36848 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36849 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #36850 /* ~"Next is, she don't take to people who try and play god in Sigil. See, you may not know this, but first off, no powers can enter Sigil, not Zeus, not Ra, no one. Word is that the Lady's presence somehow keeps them out. Can't get in, not a one, and that twists their stems like you wouldn't believe. Sigil's such a sweet fruit that anyone would want to pluck, that the other powers are always looking for some way into Sigil. They haven't succeeded."~ */
  IF ~~ THEN REPLY #36851 /* ~"Go on."~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #36852 /* ~"Well, it goes beyond that. Not only does the Lady keep them out, she keeps anybody inside the city from harming it. Certainly she has help from our faction, the Harmonium, since we like order. But every once in a while, a foolish basher takes it into their head to start fighting on the streets of the city, maybe decide to kill a few dabus, brew up some chaos, or start casting mass destruction spells. Not a good thing. Makes the Lady upset. Doesn't like to see her city hurt. She'll kill you... or maze you... for doing such."~ */
  IF ~~ THEN REPLY #36853 /* ~"Maze you?"~ */ GOTO 60
  IF ~~ THEN REPLY #36854 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36855 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #36856 /* ~"You haven't heard of the mazes?" He looks at you condescendingly. "You are green. The Lady's got extra-dimensional prisons she can place special offenders in. You see, she takes little bits of Sigil, shapes them into mazes, then cuts them off from Sigil. You'll be walking home one night, or be stepping through an archway near your home, then suddenly everything changes. You won't be in the place you remember. You'll be trapped. Chant is that there is one way to get out of each maze, but you'll be dead and gone before you tumble onto the dark of how to escape."~ */
  IF ~~ THEN REPLY #36857 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36858 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.1 62.0 63.0 64.0
  SAY #36859 /* ~He smiles at you, eager to talk. "Why certainly, friend. I can tell you a little about the Harmonium, the Mercykillers, or the Guvners. Which should I start with?"~ */
  IF ~~ THEN REPLY #36860 /* ~"The Guvners."~ */ GOTO 62
  IF ~~ THEN REPLY #36861 /* ~"The Harmonium."~ */ GOTO 63
  IF ~~ THEN REPLY #36862 /* ~"The Mercykillers."~ */ GOTO 64
  IF ~~ THEN REPLY #36863 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36864 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #36865 /* ~He nods knowingly. "The Fraternity of Order is their proper faction name. They are dedicated to law and knowledge; they spend most of their time simply researching every aspect of law. Now, I'm not talking just man-made laws. No, their search goes much deeper. They want to know the how and why behind everything. Because of their devotion to law, they also run the courts of Sigil and act as lawyers, judges, advocates and such."~ */
  IF ~~ THEN REPLY #36866 /* ~"Tell me about another faction..."~ */ GOTO 61
  IF ~~ THEN REPLY #36867 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36868 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #36869 /* ~He stands proudly. "The primary faction of Sigil is, of course, the Harmonium. We are the faction dedicated to preserving law and order in Sigil, and there is no other more important function. Progress can only be achieved in a state of peace and harmony. There are those that think otherwise, but they don't have our resolve, and thus, they shall fail."~ */
  IF ~~ THEN REPLY #36870 /* ~"Tell me about another faction..."~ */ GOTO 61
  IF ~~ THEN REPLY #36871 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36872 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #36873 /* ~He smiles. "The Mercykillers stand for justice. To them justice is everything. It is absolute and perfect. They dedicate their lives to dispensing justice, but it must be done correctly, according to the law. They firmly believe that by imposing justice on the multiverse it can be cleansed of evil and made perfect."~ */
  IF ~~ THEN REPLY #36874 /* ~"Tell me about another faction..."~ */ GOTO 61
  IF ~~ THEN REPLY #36875 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36876 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 55.1
  SAY #36877 /* ~He laughs. "Portals? Do I know about portals?" He pauses. "Well, none personally, except some of the more common ones. I imagine they can be found in practically every Ward... portals are funny things, sometimes they shift around, at other times, they simply seem to vanish... They are hard to keep track of." He shrugs.~ */
  IF ~~ THEN REPLY #36878 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36879 /* ~"I must be going, farewell."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 67 68 69 70 71 72 74 75 77 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 66 // from:
  SAY #36880 /* ~"Well, hello there. In the market for a coffin yet?" He smiles amiably.~ */
  IF ~~ THEN REPLY #36881 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36882 /* ~"I must be going, farewell."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 68 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",1)
~ THEN BEGIN 67 // from:
  SAY #36883 /* ~Hamrys smiles at you. "Good day again, sir. Have you given any thought to helping me deal with the warehouse situation?"~ */
  IF ~~ THEN REPLY #36884 /* ~"Yes, I'll help you."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~It seems there's some sort of trouble at the warehouse. If I want a coffin pillow I'm going to have to find out what it is and take care of it.~ */ GOTO 16
  IF ~~ THEN REPLY #36885 /* ~"No, I'm still thinking about it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36886 /* ~"I have some questions..."~ */ GOTO 2
END

IF WEIGHT #7 /* Triggers after states #: 69 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",2)
~ THEN BEGIN 68 // from:
  SAY #36887 /* ~Hamrys smiles at you. "Good day again, sir. Have you changed your mind about helping me deal with the warehouse situation?"~ */
  IF ~~ THEN REPLY #36888 /* ~"Yes, I'll help you."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",3)
~ JOURNAL #36031 /* ~It seems there's some sort of trouble at the warehouse. If I want a coffin pillow I'm going to have to find out what it is and take care of it.~ */ GOTO 16
  IF ~~ THEN REPLY #36889 /* ~"No, I haven't. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36890 /* ~"I have some questions..."~ */ GOTO 2
END

IF WEIGHT #6 /* Triggers after states #: 70 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",3)
~ THEN BEGIN 69 // from:
  SAY #36891 /* ~Hamrys smiles at you. "Good day again, sir. Have you dealt with the situation at the warehouse yet?"~ */
  IF ~~ THEN REPLY #36892 /* ~"No, I'm still working on it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36893 /* ~"No, but I have some questions for you..."~ */ GOTO 2
END

IF WEIGHT #5 /* Triggers after states #: 71 72 74 75 77 even though they appear after this state */
~  Global("Pillow_Quest","GLOBAL",4)
~ THEN BEGIN 70 // from:
  SAY #36894 /* ~Hamrys smiles at you. "Good day again, cutter. Did you get the pillow you were looking for?"~ */
  IF ~~ THEN REPLY #52763 /* ~"Yes. I've dealt with the trouble at the warehouse and got the pillow."~ */ DO ~AddexperienceParty(2000)
SetGlobal("Pillow_Quest","GLOBAL",5)
~ JOURNAL #66530 /* ~I met with Hamrys and told him I was able to get the coffin pillow. For once he didn't talk my ear off.~ */ GOTO 76
END

IF WEIGHT #4 /* Triggers after states #: 72 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",1)
~ THEN BEGIN 71 // from:
  SAY #36897 /* ~Hamrys smiles at you. "Good day again, sir. Have you given any thought to helping me deal with the warehouse situation?"~ */
  IF ~~ THEN REPLY #36912 /* ~"Yes, I'll help you."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~It seems there's some sort of trouble at the warehouse. If I want the tomb plans I'm going to have to find out what it is and take care of it.~ */ GOTO 39
  IF ~~ THEN REPLY #36913 /* ~"No, I'm still thinking about it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36914 /* ~"I have some questions..."~ */ GOTO 2
END

IF WEIGHT #3 /* Triggers after states #: 74 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",2)
~ THEN BEGIN 72 // from:
  SAY #36915 /* ~Hamrys smiles at you. "Good day again, sir. Have you changed your mind about helping me deal with the warehouse situation?"~ */
  IF ~~ THEN REPLY #36916 /* ~"Yes, I'll help you."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",3)
~ JOURNAL #36028 /* ~It seems there's some sort of trouble at the warehouse. If I want the tomb plans I'm going to have to find out what it is and take care of it.~ */ GOTO 39
  IF ~~ THEN REPLY #36917 /* ~"No, I'm still thinking about it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #36918 /* ~"I have some questions..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 73 // from: 15.0 38.0
  SAY #36919 /* ~He smiles broadly. "Excellent. Is there something else I can help you with then?"~ */
  IF ~~ THEN REPLY #36920 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36921 /* ~"No, farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 75 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",3)
~ THEN BEGIN 74 // from:
  SAY #50440 /* ~Hamrys smiles at you. "Good day again, sir. Have you dealt with the situation at the warehouse yet?"~ */
  IF ~~ THEN REPLY #50441 /* ~"No, I'm still working on it. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #50442 /* ~"No, but I have some questions for you..."~ */ GOTO 2
END

IF WEIGHT #1 /* Triggers after states #: 77 even though they appear after this state */
~  Global("Plans_Quest","GLOBAL",4)
~ THEN BEGIN 75 // from:
  SAY #50443 /* ~Hamrys smiles at you. "Good day again, cutter. Did you get the plans you were looking for?"~ */
  IF ~  Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52766 /* ~"Yes. I've dealt with the situation at the warehouse and got the tomb plans. I picked up the coffin pillow as well."~ */ DO ~SetGlobal("Pillow_Quest","GLOBAL",5)
AddexperienceParty(2000)
SetGlobal("Plans_Quest","GLOBAL",5)
~ JOURNAL #66531 /* ~I met with Hamrys and told him I got the tomb plans and the coffin pillow from the warehouse. For once he didn't have much to say.~ */ GOTO 76
  IF ~  !Global("Pillow_Quest","GLOBAL",4)
~ THEN REPLY #52767 /* ~"Yes. I've dealt with the situation at the warehouse and got the tomb plans."~ */ DO ~SetGlobal("Plans_Quest","GLOBAL",5)
AddexperienceParty(2000)
~ JOURNAL #66532 /* ~I met with Hamrys and told him I got the tomb plans. For once he didn't have much to say.~ */ GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 70.0 75.0 75.1
  SAY #52764 /* ~He smiles and nods. "Well done, cutter. As I said, you may keep whatever you recovered from the warehouse as your reward. Thank you for your help."~ */
  IF ~~ THEN REPLY #61971 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #61972 /* ~"Farewell, Hamrys."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Hamrys_Done","GLOBAL",1)
~ THEN BEGIN 77 // from:
  SAY #64164 /* ~"Well, hello there. In the market for a coffin yet?" He smiles amiably. "I don't have any more work for you so... How can I help you?"~ */
  IF ~~ THEN REPLY #64165 /* ~"I have some questions..."~ */ EXIT
  IF ~~ THEN REPLY #64166 /* ~"Nothing, farewell."~ */ EXIT
END
