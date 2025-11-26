// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17604 /* ~This older merchant has a worldly look to him. His deep voice is gentle but confident. "Ah, hello there. Are you ready to sample some of the most delectable treats from across the planes, my good man?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22180 /* ~"Mebbeth, the midwife of the Square, needs some herbs sprung from this seed, here. Can you help me?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17627 /* ~"What do you have?"~ */ GOTO 3
  IF ~~ THEN REPLY #17628 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17629 /* ~"No, I was just passing by. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17605 /* ~"We meet again. Some sea-plums, today? Arborean fireseed?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22188 /* ~"Mebbeth, the midwife of the Square, needs some herbs sprung from this seed, here. Can you help me?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17630 /* ~"What do you have?"~ */ GOTO 3
  IF ~~ THEN REPLY #17631 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17632 /* ~"No, I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2 5.1 6.8 6.10 7.2 8.2 9.2 10.2 11.2 12.2 13.2 15.1 16.1 17.1 18.1 19.1 20.1 21.1
  SAY #17606 /* ~He shakes his head. "Then I advise you to seek answers elsewhere, sir. I deal only in exotic foodstuffs, spices, and herbs, and have time nor care for little else."~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22194 /* ~"Mebbeth, the midwife of the Square, needs some herbs sprung from this seed, here. Can you help me?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17633 /* ~"In that case, what do you have?"~ */ GOTO 3
  IF ~~ THEN REPLY #17634 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1 24.0
  SAY #17607 /* ~"All manner of delicacies to delight your palate, my good man. Arborean fireseeds, Gar-Bar root, Elysian pears, crimson lotus petals, Bytopian shepherd's bread, shiftspice from the chaos of Limbo, and sea-plums are what I have at the moment. Merely five coppers for a taste of anything you'd like."~ */
  IF ~~ THEN REPLY #17635 /* ~Ask about something's taste.~ */ GOTO 4
  IF ~~ THEN REPLY #17636 /* ~Purchase something.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17608 /* ~"Hmm?"~ */
  IF ~~ THEN REPLY #17637 /* ~"What do the fireseeds taste like?"~ */ GOTO 5
  IF ~~ THEN REPLY #17638 /* ~"What does Gar-Bar root taste like?"~ */ GOTO 5
  IF ~~ THEN REPLY #17639 /* ~"What do the pears taste like?"~ */ GOTO 5
  IF ~~ THEN REPLY #17640 /* ~"What do the petals taste like?"~ */ GOTO 5
  IF ~~ THEN REPLY #17641 /* ~"What does the bread taste like?"~ */ GOTO 5
  IF ~~ THEN REPLY #17642 /* ~"What does the shiftspice taste like?"~ */ GOTO 5
  IF ~~ THEN REPLY #17643 /* ~"What do the sea-plums taste like?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5 4.6
  SAY #17609 /* ~"I can only suggest that you try it, my good man, and see for yourself."~ */
  IF ~~ THEN REPLY #17644 /* ~Purchase something.~ */ GOTO 6
  IF ~~ THEN REPLY #17645 /* ~"Actually, I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #17646 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0 7.1 8.1 9.1 10.1 11.1 12.1 13.1 15.0 16.0 17.0 18.0 19.0 20.0 21.0
  SAY #17610 /* ~"Hmm?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17647 /* ~"I'll try some fireseeds."~ */ GOTO 7
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17649 /* ~"I'll try a Gar-Bar root."~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17650 /* ~"I'll try a pear."~ */ GOTO 9
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17651 /* ~"I'll try some petals."~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17652 /* ~"I'll try some bread."~ */ GOTO 11
  IF ~  PartyGoldGT(4)
!NearbyDialog("DDakkon")
~ THEN REPLY #17653 /* ~"I'll try the shiftspice."~ */ GOTO 12
  IF ~  PartyGoldGT(4)
NearbyDialog("DDakkon")
~ THEN REPLY #17654 /* ~"I'll try the shiftspice."~ */ GOTO 14
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17655 /* ~"I'll try a sea-plum."~ */ GOTO 13
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17656 /* ~"Nothing for me, actually. I had some questions..."~ */ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17657 /* ~"On second thought, nothing for me. Farewell."~ */ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17658 /* ~"I don't have enough for anything. I had some questions, though."~ */ GOTO 2
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17659 /* ~"I don't have enough for anything. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #17611 /* ~"Don't swallow them; simply spit them out when they've finished tingling." He smiles and offers you a handful of small, red seeds.~ */
  IF ~~ THEN REPLY #17661 /* ~Pop them into your mouth.~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~~ THEN REPLY #17664 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17666 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17667 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #17612 /* ~He offers a small brown cube of what looks to be rubbery vegetable matter. "It is quite chewy... do not swallow it, but spit it out when it no longer has taste."~ */
  IF ~~ THEN REPLY #17668 /* ~Pop it into your mouth.~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~~ THEN REPLY #17670 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17672 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17674 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #17613 /* ~He proffers you the largest, juiciest-looking pear you've ever laid eyes on. "These are my favorites," the old merchant chuckles. "So sweet! Reminds me of my youth."~ */
  IF ~~ THEN REPLY #17675 /* ~Eat the pear.~ */ DO ~TakePartyGold(5)
~ GOTO 17
  IF ~~ THEN REPLY #17681 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17682 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17683 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #17614 /* ~The old man offers what looks like small, brownish-red flakes. Upon closer inspection, they are revealed to be dried flower-petals. "These may make you a bit dizzy, my good man, so take care once you've eaten them."~ */
  IF ~~ THEN REPLY #17684 /* ~Pop them into your mouth.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~~ THEN REPLY #17686 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17687 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17688 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #17615 /* ~He offers you two thick slices of spiced nut-bread. They are very aromatic, smelling of carrots and almond.~ */
  IF ~~ THEN REPLY #17689 /* ~Eat the bread.~ */ DO ~TakePartyGold(5)
~ GOTO 19
  IF ~~ THEN REPLY #17690 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17692 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17693 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY #17616 /* ~He dangles a tiny paper packet before you. "Wet your fingertip and place it into the spice, then simply lick it from your finger. Each dip should taste slightly different."~ */
  IF ~~ THEN REPLY #17694 /* ~Try some.~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~~ THEN REPLY #17696 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17697 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17698 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.7
  SAY #17617 /* ~He hands you a small plum of an odd, blue-green color. "Don't worry, they're pitless. Eat the whole of it."~ */
  IF ~~ THEN REPLY #17699 /* ~Eat the sea-plum.~ */ DO ~TakePartyGold(5)
~ GOTO 21
  IF ~~ THEN REPLY #17701 /* ~"I don't think that I'd like that. Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17702 /* ~"I've changed my mind. I had questions, though..."~ */ GOTO 2
  IF ~~ THEN REPLY #17703 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.6
  SAY #17618 /* ~He dangles a tiny paper packet before you. "Wet your fingertip and place it into the spice, then simply lick it from your finger. Each dip should taste slightly different."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 76
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #17619 /* ~The seeds, sweet and tasting faintly of cinnamon, become warm and tingle in your mouth... it takes a moment for you to realize that they've actually burst into flame. Soon, however, the sensation dies out, and you spit them into the gutter.~ */
  IF ~~ THEN REPLY #17457 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17704 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17706 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #17620 /* ~The root, initially quite hard and difficult to chew, has a sweet, syrupy taste. Soon it becomes soft and gummy, and you find yourself merrily smacking away. Eventually, though, the flavor dies off, and you spit the gooey, brown wad into the gutter.~ */
  IF ~~ THEN REPLY #17707 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17708 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17709 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY #17621 /* ~There is nothing supernatural about this pear's flavor, but it may well be the best you've ever had.~ */
  IF ~~ THEN REPLY #17710 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17711 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17712 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0
  SAY #17622 /* ~The petals melt quickly on your tongue, leaving behind an odd, but not quite unpleasant, aftertaste that you can't place. Despite the old merchant's warning, however, you don't feel the slightest bit disoriented. He seems slightly disappointed to see it has no effect on you.~ */
  IF ~~ THEN REPLY #17713 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17714 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17715 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY #17623 /* ~The bread tastes, much as you had expected, of carrots and almonds. It is slightly sweet and light, leaving you hungry for more of the stuff.~ */
  IF ~~ THEN REPLY #17716 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17717 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17718 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.0
  SAY #17624 /* ~You finish off the entire packet in a matter or nine or ten 'licks.' As promised, each taste provided you a different flavor.~ */
  IF ~~ THEN REPLY #17719 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17720 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17721 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0
  SAY #17625 /* ~The plum's rind is slightly bitter and extremely sour - enough to make one grimace and shudder - but the fruit's meat is remarkably sweet. Eaten together, they complement each other well.~ */
  IF ~~ THEN REPLY #17722 /* ~"Let me try something else."~ */ GOTO 6
  IF ~~ THEN REPLY #17723 /* ~"That's all, for now. I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17724 /* ~"I don't need anything more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.0 1.0 2.0
  SAY #22184 /* ~The man takes the seed, looks at it critically... as he presses it between his thumb and forefinger, he winces, and a small drop of blood appears on his thumb. "Ah! This seed's got a bite on it..."~ */
  IF ~~ THEN REPLY #22199 /* ~"I noticed that. Do you have the herbs she's talking about?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22186 /* ~He can't seem to take his eye off the seed. "Lad, I don't know if there's *anyone* who has what your friend seeks... to be square, I've never seen such a seed before. You would need someone who cultivates seeds such as this, for I have none."~ */
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22204 /* ~"Very well, then... where would I find such a person?"~ */ JOURNAL #21906 /* ~The merchant at the market said I would need to find a gardener to help cultivate the seed - there must be one *somewhere* in the Hive. I've seen trees on some of the streets, so someone must take care of them.~ */ GOTO 24
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22206 /* ~"Very well, then... where would I find such a person?"~ */ JOURNAL #21907 /* ~The merchant at the market said I would need to find a gardener to help cultivate the seed - perhaps I could ask Mourns-for-Trees for help.~ */ GOTO 24
  IF ~  Dead("MFTree")
~ THEN REPLY #22208 /* ~"Very well, then... where would I find such a person?"~ */ JOURNAL #21908 /* ~The merchant at the market said I would need to find a gardener to help cultivate the seed. Still, since killing Mourns-for-Trees, I bet he's the only one who could've helped me. I better just head back to Mebbeth and salvage the situation.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 23.2
  SAY #22187 /* ~"Don't know the dark of that, friend." He hands the seed back to you. "You'd be hard-pressed to find a gardener in the Hive..." ~ */
  IF ~  !Dead("MFTree")
~ THEN REPLY #22213 /* ~"I see. Can I see what else you have?"~ */ GOTO 3
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22220 /* ~"Looks like I'll have to. Thanks for your help. Farewell."~ */ EXIT
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22222 /* ~"Hmmm. Maybe Mourns-for-Trees could help... farewell."~ */ EXIT
  IF ~  Dead("MFTree")
~ THEN REPLY #22225 /* ~"The only one I've I seen... died. Never mind, then. Farewell."~ */ EXIT
END
