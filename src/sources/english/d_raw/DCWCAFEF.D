// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27654 /* ~This finely attired woman is relaxing here, enjoying the outside air while sipping at a beverage purchased from the nearby cafe.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27655 /* ~"Greetings..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #27656 /* ~"Greetings..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 49
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #27657 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #27658 /* ~Leave the woman be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #27659 /* ~Her eyes widen slightly as she takes your appearance in. "Ah... greetings to you as well, sir." She smiles uneasily.~ */
  IF ~~ THEN REPLY #27660 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27661 /* ~"Something troubling about my appearance?"~ */ GOTO 2
  IF ~~ THEN REPLY #27662 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 49.4
  SAY #27663 /* ~"I... I am ashamed to admit that I was momentarily startled by your appearance. 'Tis not often I converse with men of such... worldly... appearance." She bows her head apologetically. "I pray that I have not caused offence, sir."~ */
  IF ~~ THEN REPLY #27664 /* ~"Worldly?"~ */ GOTO 3
  IF ~~ THEN REPLY #27665 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27666 /* ~"Don't worry. I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27667 /* ~"Perhaps 'well-traveled' would be more fitting? Your appearance, sir... it's slightly, ah, disheveled. It might make you stand out a bit, 'tis all. But Sigil is full of oddities, no? The Clerk's Ward just sees less of them than the rest of Sigil, 'tis all. Save for the Festhall, of course."~ */
  IF ~~ THEN REPLY #27668 /* ~"The Clerk's Ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #27669 /* ~"The Festhall?"~ */ GOTO 22
  IF ~~ THEN REPLY #27670 /* ~"You mean I look dead, right? Well I am, you know. Dead!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27671 /* ~"Hmm. I had some question..."~ */ GOTO 4
  IF ~~ THEN REPLY #27672 /* ~"Understandable, I suppose. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.10 13.2 15.2 16.2 17.2 18.3 19.3 21.2 22.4 23.4 24.2 25.8 26.2 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1 49.3 52.0 54.0
  SAY #27673 /* ~She nods. "Please, ask."~ */
  IF ~~ THEN REPLY #27674 /* ~"What is this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #27675 /* ~"What is of interest here?"~ */ GOTO 7
  IF ~~ THEN REPLY #27676 /* ~"Where could I find work, here?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27677 /* ~"I wanted to ask about a specific place..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27678 /* ~"I just needed directions..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27679 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 42
  IF ~~ THEN REPLY #27680 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27681 /* ~She looks at you as if you were joking and, realizing you're not, gives an embarrassed laugh. "'Tis the Clerk's Ward you are in, sir."~ */
  IF ~~ THEN REPLY #27682 /* ~"What can you tell me about the Ward?"~ */ GOTO 6
  IF ~~ THEN REPLY #27683 /* ~"True. I had other questions, in fact..."~ */ GOTO 4
  IF ~~ THEN REPLY #27684 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27685 /* ~"Well, the vast majority of the Ward - where my duties keep me most often - is filled with record halls and administrative buildings... not here, though."~ */
  IF ~~ THEN REPLY #27686 /* ~"Your duties?"~ */ GOTO 10
  IF ~~ THEN REPLY #27687 /* ~"What makes this section different?"~ */ GOTO 7
  IF ~~ THEN REPLY #27688 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27689 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27690 /* ~"The Civic Festhall, of course. The Art and Curio Galleria, as well..."~ */
  IF ~~ THEN REPLY #27691 /* ~"Go on..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27692 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27693 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27694 /* ~"Other places of interest might be the advocate's home, the apothecary, the Brothel of Slating Intellectual Lusts, the catacombs beneath the Ward, and the tailor. And that odd little curiosity shop, too."~ */
  IF ~~ THEN REPLY #27695 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27696 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27697 /* ~"You seek only temporary work, correct? You don't seem the sort to be settling here, no..." She pauses for a second, looking you over. "So: I would seek work at the advocate's home, the apothecary, or the Civic Festhall. There are doubtless some odd tasks that need handling, there."~ */
  IF ~~ THEN REPLY #27698 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27699 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27700 /* ~She nods and rolls her eyes. "My duties, sir. To my employer. I work in one of the many, many administration buildings here in the Ward."~ */
  IF ~~ THEN REPLY #27701 /* ~"What do you do there?"~ */ GOTO 11
  IF ~~ THEN REPLY #27702 /* ~"So what makes this section different from the rest of the Ward?"~ */ GOTO 7
  IF ~~ THEN REPLY #27703 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27704 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27705 /* ~She shakes her head, smiling. "Please, sir, do me the favor of not bringing up that subject, would you? Not here, while I am trying to relax for but a moment."~ */
  IF ~~ THEN REPLY #27706 /* ~"So what makes this section different from the rest of the Ward?"~ */ GOTO 7
  IF ~~ THEN REPLY #27707 /* ~"I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27708 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 19.2 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27709 /* ~"I will tell you what little I can..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27710 /* ~"The advocate's home."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27711 /* ~"The advocate's home."~ */ GOTO 14
  IF ~~ THEN REPLY #27712 /* ~"The apothecary."~ */ GOTO 16
  IF ~~ THEN REPLY #27713 /* ~"The art store."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27714 /* ~"The Brothel."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27715 /* ~"The Brothel."~ */ GOTO 19
  IF ~~ THEN REPLY #27716 /* ~"UnderSigil, the Realm Below."~ */ GOTO 21
  IF ~~ THEN REPLY #27717 /* ~"The Civic Festhall."~ */ GOTO 22
  IF ~~ THEN REPLY #27718 /* ~"The curiosity shop."~ */ GOTO 23
  IF ~~ THEN REPLY #27719 /* ~"The tailor."~ */ GOTO 24
  IF ~~ THEN REPLY #27720 /* ~"Never mind. Let me ask about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27721 /* ~"Nowhere, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27722 /* ~"Advocates help argue cases, draft legal documents and act as legal representatives for their clients. The one close by, Iannis, is well-respected and quite dependable. He has resided and worked within the Ward a long, long while."~ */
  IF ~~ THEN REPLY #27723 /* ~"How do I reach Iannis' home?"~ */ GOTO 26
  IF ~~ THEN REPLY #27724 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27725 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27726 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 26.1
  SAY #27727 /* ~"Advocates help argue cases, draft legal documents and act as legal representatives for their clients."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 267
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27729 /* ~"The one close by, Iannis, is well-respected and quite dependable. He has resided and worked within the Ward a long, long while."~ */
  IF ~~ THEN REPLY #27730 /* ~"How do I reach Iannis' home?"~ */ GOTO 26
  IF ~~ THEN REPLY #27731 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27732 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27733 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 27.0
  SAY #27734 /* ~"The apothecary sells various salves, potions, herbs, and the like." She frowns momentarily. "The place's proprietors are a bit barmy, constantly sampling the store's stock. Good men, though."~ */
  IF ~~ THEN REPLY #27735 /* ~"How do I reach the apothecary?"~ */ GOTO 27
  IF ~~ THEN REPLY #27736 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27737 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27738 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.3 28.0
  SAY #27739 /* ~"Yvanna's Art and Curio Galleria is a most intriguing place. She has a collection of artwork, antiques, and artifacts from all across the planes."~ */
  IF ~~ THEN REPLY #27740 /* ~"How do I reach the art store?"~ */ GOTO 28
  IF ~~ THEN REPLY #27741 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27742 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27743 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.4 29.0
  SAY #27744 /* ~"A Sensate establishment that exists to pleasure a man's mind and senses. It is run by a succubus, appropriately enough, called Fall-from-Grace."~ */
  IF ~~ THEN REPLY #27745 /* ~"Sensate?"~ */ GOTO 36
  IF ~~ THEN REPLY #27746 /* ~"How do I reach the Brothel?"~ */ GOTO 29
  IF ~~ THEN REPLY #27747 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27748 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27749 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.5 29.1
  SAY #27750 /* ~"A Sensate establishment that exists to pleasure a man's mind and senses. It is run by a succubus, appropriately enough." She nods politely to Fall-from-Grace.~ */
  IF ~~ THEN REPLY #27751 /* ~"Sensate?"~ */ GOTO 36
  IF ~~ THEN REPLY #27752 /* ~"How do I reach the Brothel?"~ */ GOTO 29
  IF ~~ THEN REPLY #27753 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27754 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27755 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27756 /* ~[no text]~ */
  IF ~~ THEN REPLY #27757 /* ~[no text]~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6 30.0
  SAY #27758 /* ~A look of concern crosses the woman's brow. "I find it so strange that any entrances to that place here haven't been closed off. As I understand it, the Realm Below is full of nothing but trouble, dangerous to all those who find their way there."~ */
  IF ~~ THEN REPLY #27759 /* ~"How would I find my way down there?"~ */ GOTO 30
  IF ~~ THEN REPLY #27760 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27761 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27762 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.7 31.0
  SAY #27763 /* ~"One of Sigil's most wondrous establishments... it is the headquarters of the Sensate faction, known throughout the multiverse for its concerts, art exhibitions, and lectures. But its most fascinating feature is its sensoriums."~ */
  IF ~~ THEN REPLY #27764 /* ~"Sensates?"~ */ GOTO 36
  IF ~~ THEN REPLY #27765 /* ~"Sensoriums?"~ */ GOTO 38
  IF ~~ THEN REPLY #27766 /* ~"Where is the Festhall?"~ */ GOTO 31
  IF ~~ THEN REPLY #27767 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27768 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27769 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.8 32.0
  SAY #27770 /* ~"I won't profess to have been there myself, but I understand it's run by an importer of sorts... a half-fiend, in fact, whose goods come from the Lower Planes."~ */
  IF ~~ THEN REPLY #27771 /* ~"A half-fiend?"~ */ GOTO 35
  IF ~~ THEN REPLY #27772 /* ~"The Lower Planes?"~ */ GOTO 34
  IF ~~ THEN REPLY #27773 /* ~"Where can I find this place?"~ */ GOTO 32
  IF ~~ THEN REPLY #27774 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27775 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27776 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.9 33.0
  SAY #27777 /* ~"Goncalves is an excellent tailor, but he is short of temper and easily offended. I must warn you, sir: he will likely judge you by your appearance, and thus you might have a difficult time making a friend of him."~ */
  IF ~~ THEN REPLY #27778 /* ~"Where is Goncalves' shop?"~ */ GOTO 33
  IF ~~ THEN REPLY #27779 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27780 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27781 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27782 /* ~"Oh? To where?"~ */
  IF ~~ THEN REPLY #27783 /* ~"The advocate's home."~ */ GOTO 26
  IF ~~ THEN REPLY #27784 /* ~"The apothecary."~ */ GOTO 27
  IF ~~ THEN REPLY #27785 /* ~"The art store."~ */ GOTO 28
  IF ~~ THEN REPLY #27786 /* ~"The Brothel."~ */ GOTO 29
  IF ~~ THEN REPLY #27787 /* ~"UnderSigil, the Realm Below."~ */ GOTO 30
  IF ~~ THEN REPLY #27788 /* ~"The Civic Festhall."~ */ GOTO 31
  IF ~~ THEN REPLY #27789 /* ~"The curiosity shop."~ */ GOTO 32
  IF ~~ THEN REPLY #27790 /* ~"The tailor."~ */ GOTO 33
  IF ~~ THEN REPLY #27791 /* ~"Never mind. Let me ask about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27792 /* ~"Nowhere, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27793 /* ~"Iannis' home is south of the gate to the Lower Ward - where you first entered this place, most likely. It will be on the eastern side of the road."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27794 /* ~"What can you tell me about the advocate?"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27795 /* ~"What can you tell me about the advocate?"~ */ GOTO 14
  IF ~~ THEN REPLY #27796 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27797 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27798 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, east of the road. It faces southwards and has three windows of stained glass."~ */
  IF ~~ THEN REPLY #27799 /* ~"What can you tell me about the place?"~ */ GOTO 16
  IF ~~ THEN REPLY #27800 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27801 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27802 /* ~"Follow the road that leads east from the gate to the Lower Ward - where you first entered this place, most likely. When the road forks northeast and southeast, go southwards... you will find it, there, west of the road. It faces southwards and has a roof whose tiles are held down by large stones."~ */
  IF ~~ THEN REPLY #27803 /* ~"What do you know about the place?"~ */ GOTO 17
  IF ~~ THEN REPLY #27804 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27805 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 19.1 25.3
  SAY #27806 /* ~She frowns pointedly, shaking her head. "'Tis just east of the gate to the Lower Ward - where you first entered this place, most likely. It is a large, round building, whose entrance faces southwards."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27807 /* ~"What can you tell me of the Brothel?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27808 /* ~"What can you tell me of the Brothel?"~ */ GOTO 19
  IF ~~ THEN REPLY #27809 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27810 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27811 /* ~She shrugs. "I do not know. I would be most careful were I to find it, though. It is said that nothing comes up from the Realm Below... including those who enter it."~ */
  IF ~~ THEN REPLY #27812 /* ~"What else can you tell me about it?"~ */ GOTO 21
  IF ~~ THEN REPLY #27813 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27814 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27815 /* ~"The Festhall is most easy to find, sir. 'Tis a massive structure in the northeastern portion of this area."~ */
  IF ~~ THEN REPLY #27816 /* ~"What can you tell of the Festhall?"~ */ GOTO 22
  IF ~~ THEN REPLY #27817 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27818 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27819 /* ~"'Tis in the southeast section of this area. An unusual building, set atop a wide flight of stairs. I've never entered the place, myself... I've an odd feeling about it."~ */
  IF ~~ THEN REPLY #27820 /* ~"What do you know of the place?"~ */ GOTO 23
  IF ~~ THEN REPLY #27821 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27822 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27823 /* ~"You will find the tailor's shop just to the north and east of the gate to the Lower Ward - where you first entered this place, most likely. 'Tis a wide building, whose entrance faces southwards."~ */
  IF ~~ THEN REPLY #27824 /* ~"What can you tell me of the place?"~ */ GOTO 24
  IF ~~ THEN REPLY #27825 /* ~"Thanks. Let me ask you about something else..."~ */ GOTO 4
  IF ~~ THEN REPLY #27826 /* ~"I see. Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27827 /* ~She nods, lowering her voice to a whisper. "You know, sir... Baator, the Abyss, and the like. Terrible places."~ */
  IF ~~ THEN REPLY #27828 /* ~"You said she was a half-fiend?"~ */ GOTO 35
  IF ~~ THEN REPLY #27829 /* ~"Where can I find this curiosity shop?"~ */ GOTO 32
  IF ~~ THEN REPLY #27830 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27831 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27832 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27833 /* ~"Not a tiefling, mind you, but a proper half-fiend. Daughter of an incubus and a mortal woman, I am told. I care not for gossip, however, so let's speak of her no more."~ */
  IF ~~ THEN REPLY #27834 /* ~"You said her goods were from the Lower Planes?"~ */ GOTO 34
  IF ~~ THEN REPLY #27835 /* ~"Where can I find this curiosity shop?"~ */ GOTO 32
  IF ~~ THEN REPLY #27836 /* ~"I wanted to ask about somewhere else..."~ */ GOTO 12
  IF ~~ THEN REPLY #27837 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27838 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 19.0 22.0
  SAY #27839 /* ~"Yes. Their proper name is the 'Society of Sensation.' They believe that the true nature of the multiverse can only be discovered through direct experience..."~ */
  IF ~~ THEN REPLY #27840 /* ~"I see. Go on."~ */ GOTO 48
  IF ~~ THEN REPLY #27841 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27842 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27843 /* ~"They actually have found a means of sharing their experiences with others, with the sensoriums."~ */
  IF ~~ THEN REPLY #27844 /* ~"Sensoriums?"~ */ GOTO 38
  IF ~~ THEN REPLY #27845 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27846 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27847 /* ~"The Sensates have created a means by which they may take experiences, capture them in stones, and allow *others* to experience them. The Sensates roam the planes and search their inner selves for experiences to share with others... virtually everything they have felt or sensed lies in their sensoriums."~ */
  IF ~~ THEN REPLY #27848 /* ~"Where are these sensoriums located?"~ */ GOTO 39
  IF ~~ THEN REPLY #27849 /* ~"These experiences... are they like memories?"~ */ GOTO 40
  IF ~~ THEN REPLY #27850 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27851 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27852 /* ~"Within the Civic Festhall. There are sensoriums that are open to the public, and those open only to Sensates. There is a slight fee for using them, but it is a modest price to pay for the experience."~ */
  IF ~~ THEN REPLY #27853 /* ~"Where is the Festhall?"~ */ GOTO 31
  IF ~~ THEN REPLY #27854 /* ~"These experiences... are they like memories?"~ */ GOTO 40
  IF ~~ THEN REPLY #27855 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27856 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27857 /* ~"In a *way,* yes, but very intense... and not memories that you have had, but another has had, captured within the stone."~ */
  IF ~~ THEN REPLY #27858 /* ~"Captured? Does one lose their memory or experience when it's put into the stone?"~ */ GOTO 41
  IF ~~ THEN REPLY #27859 /* ~"Where are these sensoriums located?"~ */ GOTO 39
  IF ~~ THEN REPLY #27860 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27861 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27862 /* ~"No..." She frowns. "Or at least, I think not. I believe the stone *copies* the sensory experience. You might ask a Sensate about it to make sure, but that is my understanding."~ */
  IF ~~ THEN REPLY #27863 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27864 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27865 /* ~"The name sounds familiar... is she a character in a book? The villain in a novel, no? I cannot recall."~ */
  IF ~~ THEN REPLY #27866 /* ~"Never mind. I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27867 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27868 /* ~"A fancy to meet you again, sir." She smiles at you over her cup. "More questions, I am certain?"~ */
  IF ~~ THEN REPLY #27869 /* ~"That's right."~ */ GOTO 4
  IF ~~ THEN REPLY #27870 /* ~"Actually, no... just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27871 /* ~She looks puzzled. "Say again, sir?"~ */
  IF ~~ THEN REPLY #27872 /* ~"I said, 'I'm dead!' Dead, dead, la-la! Dead, dead, la-la..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27873 /* ~"Never mind. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27874 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27875 /* ~The woman's expression becomes wary. "Ah, yes... aren't we all. I must take my leave, sir. I sense I have pressing business elsewhere."~ */
  IF ~~ THEN REPLY #27876 /* ~"Wait! I haven't told you *why* I'm dead..."~ */ GOTO 46
  IF ~~ THEN REPLY #27877 /* ~"Hold a moment. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27878 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27879 /* ~She takes a step back. "I must profess no interest in the matter, sir." She begins looking around, as if seeking someone who might come to her aid.~ */
  IF ~~ THEN REPLY #27880 /* ~"Because I killed too many people in my previous lives."~ */ GOTO 47
  IF ~~ THEN REPLY #27881 /* ~"Never mind, then. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27882 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27883 /* ~She drops her cup, shouting: "Guards! Guards!"~ */
  IF ~~ THEN REPLY #27884 /* ~Attack her.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27885 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27886 /* ~"They dedicate their lives to experiencing as much of the multiverse as they can; they travel extensively, both across the planes, and into the depths of their own minds and emotions. But they take it a step further, you know..."~ */
  IF ~~ THEN REPLY #27887 /* ~"How so?"~ */ GOTO 37
  IF ~~ THEN REPLY #27888 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27889 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.1
  SAY #27890 /* ~Her eyes widen slightly as she takes your appearance in. She smiles uneasily. "Ah... greetings to-" Suddenly, her eyes alight on Morte. "Oh! What a cute little mimir!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #27891 /* ~"Mimir?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 268
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27892 /* ~"Isn't he? He likes to have the top of his skull scratched."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27893 /* ~"I wouldn't touch him - he bites."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 272
  IF ~~ THEN REPLY #27894 /* ~"Yes, yes. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27895 /* ~"Something troubling about my appearance?"~ */ GOTO 2
  IF ~~ THEN REPLY #27896 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #27897 /* ~The woman smiles. "How darling! It talks on its own!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 269
END

IF ~~ THEN BEGIN 51 // from: 53.0
  SAY #27899 /* ~She shakes her head. "No, none that I've seen. They're merely objects, aren't-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 271
END

IF ~~ THEN BEGIN 52 // from:
  SAY #27901 /* ~The woman shrugs. "That could certainly be."~ */
  IF ~~ THEN REPLY #27902 /* ~"I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27903 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.1
  SAY #27904 /* ~"Truly?" She remains smiling, but looks suspicious. "Surely you jest, sir! 'Tis only a mimir..."~ */
  IF ~~ THEN REPLY #27905 /* ~"What do you mean? Don't they all enjoy that?"~ */ GOTO 51
  IF ~~ THEN REPLY #27906 /* ~"No, I speak the truth. Go ahead."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 54
  IF ~~ THEN REPLY #27907 /* ~"Never mind him. I had some questions..."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #27908 /* ~She reaches out and gingerly pats Morte... who promptly nuzzles up against her hand, grinning wildly and winking at you all the while. She laughs uneasily: "How strange!"~ */
  IF ~~ THEN REPLY #27909 /* ~"Yes... well, I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #27910 /* ~"Isn't it all? Farewell."~ */ EXIT
END
