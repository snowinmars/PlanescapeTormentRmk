// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMFTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMFTREE~

IF ~  Global("Mourns","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9707 /* ~You see a tired-looking, sorrowful old man who is gazing at the ash-dead tree in front of him. He is mumbling to himself and tapping his chin, as if trying to figure something out. Occasionally, he shakes his head sadly.~ */
  IF ~~ THEN REPLY #16643 /* ~"Greetings..."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #16644 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16560 /* ~He seems momentarily startled as you interrupt his train of thought. He speaks in a calm, unhurried tone, but one full of sadness. "Oh... greetings to you too, friend. How's this day find you?"~ */
  IF ~~ THEN REPLY #16645 /* ~"It finds me well."~ */ GOTO 2
  IF ~~ THEN REPLY #16646 /* ~"It finds me miserable."~ */ GOTO 3
  IF ~~ THEN REPLY #16647 /* ~"Does it matter?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #16648 /* ~"Never mind that for now - I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #16649 /* ~"Never mind... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #16561 /* ~He smiles, but sorrow still lies in his eyes. "That's good, friend. Hope your good fortune continues." He seems about to turn back to the tree.~ */
  IF ~~ THEN REPLY #16650 /* ~"And how's this day find you?"~ */ GOTO 5
  IF ~~ THEN REPLY #16651 /* ~"Wait - I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16652 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.1
  SAY #16562 /* ~He seems to become even more downhearted. "That's too bad, friend... sorry to hear that. Hope your fortune improves." He seems about to turn back to the tree.~ */
  IF ~~ THEN REPLY #16653 /* ~"And how's this day find you?"~ */ GOTO 5
  IF ~~ THEN REPLY #16654 /* ~"Wait - I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16655 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16563 /* ~The man is caught off-guard, but then nods assent confidently. "Yes, friend, it does. To me, at least... though that doesn't count for much, it seems." He seems about to turn back to the tree.~ */
  IF ~~ THEN REPLY #16656 /* ~"It finds me well, then."~ */ GOTO 2
  IF ~~ THEN REPLY #16657 /* ~"It finds me miserable, then."~ */ GOTO 3
  IF ~~ THEN REPLY #16658 /* ~"Doesn't count much? What do you mean?"~ */ GOTO 7
  IF ~~ THEN REPLY #16659 /* ~"Wait - I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16660 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0
  SAY #16564 /* ~He shrugs slightly and proffers a bit of a smile. "Fortune finds me well, though I'm saddened just the same."~ */
  IF ~~ THEN REPLY #16661 /* ~"Why's that?"~ */ GOTO 6
  IF ~~ THEN REPLY #16662 /* ~"That's too bad. I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16663 /* ~"That's too bad. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 9.0 29.0
  SAY #16565 /* ~He pats the tree beside him. "It's the trees, here, in the Hive. They're dying, friend - and no one cares." Seeing the look on your face, he holds his hands up, as if to silence you for a moment. "It may not matter to some, but it's important to me. I feel it's a shame to see the last tatters of life and beauty in this ward left, uncared for, to die. Can you understand that, friend?"~ */
  IF ~~ THEN REPLY #16664 /* ~"Yes... you're right, it's a sad thing."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourns_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #16665 /* ~"No. All things die, in time; why concern yourself with the when and how of it?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16666 /* ~"No, I can't. Unless the trees are of use to someone, who would care?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mourns_1","GLOBALGood",-1)
~ GOTO 8
  IF ~~ THEN REPLY #16667 /* ~"Yes. I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16668 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 30.0
  SAY #16566 /* ~"It's a long story... not something the casual passerby would want to stand around for, I'm sure. Let's just say that any efforts I've made to rouse the people here to action have been... ignored."~ */
  IF ~~ THEN REPLY #16669 /* ~"What is it you had wanted the people to do?"~ */ GOTO 9
  IF ~~ THEN REPLY #16670 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16671 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 6.1 6.2 14.4 14.5 17.4 17.5
  SAY #16567 /* ~He sighs. "I expected that: no different from the others. Just leave me to my thoughts, will you?" He turns away from you.~ */
  IF ~~ THEN REPLY #16672 /* ~Leave.~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #16568 /* ~"I wanted them to... to..." He seems exasperated, frustrated at his loss for words. "...to *care.* Is that so much, friend?" He looks at you in earnest.~ */
  IF ~~ THEN REPLY #16673 /* ~"Care about what?"~ */ GOTO 6
  IF ~~ THEN REPLY #16674 /* ~"I suppose not. I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16675 /* ~"Perhaps not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #16569 /* ~He seems surprised, and blurts out: "Really? Oh! I mean, wonderful! Perhaps you would..." He pauses, and seems suddenly suspicious. He recomposes himself, speaking in his usual, slow manner. "In any case, that's good. I suppose you 'have some questions' for me, now..."~ */
  IF ~~ THEN REPLY #16676 /* ~"Yes, I... er, had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16677 /* ~"No, not just yet. What is it you were going to ask?"~ */ GOTO 11
  IF ~~ THEN REPLY #16678 /* ~"No, I don't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #16570 /* ~For the first time, the man seems genuinely happy. Beaming, he explains: "It's difficult for anything to survive here... just look around and you'll see what I mean, friend. I'm not sure if it's possible for the trees to thrive here, even if they somehow *were* to get enough light and clean water..."~ */
  IF ~~ THEN REPLY #16679 /* ~"Go on..."~ */ DO ~SetGlobal("Mourns_Belief","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #16680 /* ~"I'll have to hear this another time. Farewell."~ */ DO ~SetGlobal("Mourns","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #16571 /* ~He nods enthusiastically. "But if enough people *care*... really *want* them to live... I just know they'll survive! They'll turn green again, and flourish!"~ */
  IF ~~ THEN REPLY #16681 /* ~"What? That makes no sense."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Mourns_1","GLOBALLaw",1)
~ GOTO 13
  IF ~~ THEN REPLY #16682 /* ~"You could be right."~ */ GOTO 14
  IF ~~ THEN REPLY #16683 /* ~"Perhaps they would. I had some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #16684 /* ~"It could happen. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #16572 /* ~He smiles knowingly, shaking his head. "You're new here, I can see that now. You don't understand how things *work* in Sigil, friend. Belief is everything here... everything!"~ */
  IF ~~ THEN REPLY #16685 /* ~"You could be right."~ */ GOTO 14
  IF ~~ THEN REPLY #16686 /* ~"Maybe so. I had some questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #16687 /* ~"Perhaps. Farewell."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.0
  SAY #16573 /* ~"I *am* right, I'm certain of it." A sense of conviction surrounds him like an aura; he seems so unlike the man you first spoke to. "That's all I'd ask of you, friend... just care for them, hope for their recovery. In time, should enough people want it, it will come to pass. Can you do that for me, friend?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16688 /* ~Truth: "Yes, I'll help."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16689 /* ~Truth: "Yes, I'll help."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16690 /* ~Lie: "Yes, I'll help you."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16691 /* ~Lie: "Yes, I'll help you."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16692 /* ~"No, but I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #16693 /* ~"No, I can't. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 15 // from: 14.0 17.0
  SAY #16574 /* ~"Excellent, my friend, excellent! I thank you... you've given me back my confidence, my purpose. Perhaps I can find others like you, who'll listen... perhaps we'll make a difference. Now, what can I do for you, friend?"~ */
  IF ~~ THEN REPLY #16694 /* ~"I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16695 /* ~"Nothing, but thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.1
  SAY #16575 /* ~"Excellent, my friend, excellent! I thank you... you've given me back my confidence, my purpose. Perhaps I can find others like you, who'll listen... perhaps we'll make a difference. What about your companions, friend? Would you speak to them on my behalf?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16698 /* ~"Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16699 /* ~"Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16700 /* ~"Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16701 /* ~"Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16702 /* ~"Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16703 /* ~"Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16706 /* ~"Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16707 /* ~"Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16708 /* ~"Perhaps later. I had some questions..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16709 /* ~"Maybe another time. Farewell."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2 12.3 13.1 13.2
  SAY #16576 /* ~"Wait, friend... hear me out." A sense of conviction surrounds him like an aura; he seems so unlike the man you first spoke to. "I'd only ask one thing of you... just care for them, hope for their recovery. In time, should enough people want it, it will come to pass. Can you do that for me, friend?"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #16710 /* ~Truth: "Yes, I'll help."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 15
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16711 /* ~Truth: "Yes, I'll help."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Mourns_2","GLOBALGood",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
AddexperienceParty(500)
~ GOTO 16
  IF ~  NumInParty(1)
~ THEN REPLY #16713 /* ~Lie: "Yes, I'll help you."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 48
  IF ~  NumInPartyGT(1)
~ THEN REPLY #16714 /* ~Lie: "Yes, I'll help you."~ */ DO ~SetGlobal("Mourns_Quest","AR0400",1)
SetGlobal("Mourns","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_3","GLOBALLaw",-1)
~ GOTO 49
  IF ~~ THEN REPLY #16715 /* ~"No, but I had some questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #16717 /* ~"No, I can't. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 28.5
  SAY #16577 /* ~"Just look at your surroundings, friend. Can you imagine *anything* having an easy life here? And besides the wretched conditions, the dabus rarely come to this part of Sigil."~ */
  IF ~~ THEN REPLY #16718 /* ~"Dabus?"~ */ GOTO 19
  IF ~~ THEN REPLY #16720 /* ~"Why is that?"~ */ GOTO 21
  IF ~~ THEN REPLY #16721 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16722 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 21.0
  SAY #16578 /* ~"You know, dabus. Surely you've seen them... they're the Lady's servants - they care for the city. Some parts of it more than others, of course." He looks sadly at the tree beside him.~ */
  IF ~~ THEN REPLY #16723 /* ~"The Lady?"~ */ GOTO 20
  IF ~~ THEN REPLY #16724 /* ~"Why don't they come here often?"~ */ GOTO 21
  IF ~~ THEN REPLY #16726 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16727 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0 21.1
  SAY #16579 /* ~"The Lady of Pain, friend? The Mistress of Sigil?" He stops speaking suddenly. Making a semi-circular sign over his chest, he leans close to whisper: "It does no one good to speak of the Lady. Know only that she alone controls the city - whether it appears that way at times or not - and speak of her no more."~ */
  IF ~~ THEN REPLY #16735 /* ~"Very well. Why don't the dabus come here often?"~ */ GOTO 21
  IF ~~ THEN REPLY #16736 /* ~"I understand. I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16737 /* ~"I won't mention her to you again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.1 20.0
  SAY #16580 /* ~"The Hive's a dangerous place, but that's not it... the dabus have the Lady watching over them, and no one's foolish enough to tangle with her, friend. I suppose it's really all on account of Fell."~ */
  IF ~~ THEN REPLY #16738 /* ~"Dabus?"~ */ GOTO 19
  IF ~~ THEN REPLY #16739 /* ~"The Lady?"~ */ GOTO 20
  IF ~~ THEN REPLY #16740 /* ~"Who is Fell?"~ */ GOTO 22
  IF ~~ THEN REPLY #16741 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16742 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.2
  SAY #16581 /* ~"Fell? He's... ah... well, friend, I'll just say he's the only dabus that doesn't serve the Lady. I don't know the whole 'dark' of it, as they say, but he's shunned by his fellows and lives here, alone, in the Hive. He runs a tattoo parlor, but most of Sigil is wary of the place."~ */
  IF ~~ THEN REPLY #16743 /* ~"Tell me about this tattoo parlor."~ */ GOTO 23
  IF ~~ THEN REPLY #16744 /* ~"What's there to be wary of?"~ */ GOTO 26
  IF ~~ THEN REPLY #16745 /* ~"You don't have any idea of how he came to be shunned?"~ */ GOTO 27
  IF ~~ THEN REPLY #16746 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16747 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 26.0 27.2 41.2 42.0 43.1
  SAY #16582 /* ~"Fell's parlor is only a few buildings east of here; it is marked with his personal symbol, a white oval pierced by a lightning bolt. I've never been there myself, friend, but as I understand it, he's able to turn images from his speech - you know dabus speak in images, yes? Rebuses?"~ */
  IF ~~ THEN REPLY #16748 /* ~"Yes, go on."~ */ GOTO 24
  IF ~~ THEN REPLY #16749 /* ~"They do?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #16583 /* ~He nods. "So he's somehow able to turn images from his speech into tattoos. And not just ordinary inkings, either - I'm told there's magic about them, and more than just in their making. I don't know much else about it, though."~ */
  IF ~~ THEN REPLY #16750 /* ~"So what about the place is there to be wary of?"~ */ GOTO 26
  IF ~~ THEN REPLY #16751 /* ~"You don't have any idea of how he came to be shunned?"~ */ GOTO 27
  IF ~~ THEN REPLY #16752 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16753 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #16584 /* ~"They do. You'll see what I mean if you ever try talking to one. They float streams of symbols over their heads," he waggles his fingers over his head to illustrate, "instead of speaking. It's up to a listener to puzzle out just what a dabus is saying, but I hear it's something you get better at with practice." He shrugs.~ */
  IF ~~ THEN REPLY #16754 /* ~"I see. Go on with what you were saying."~ */ GOTO 24
END

IF ~~ THEN BEGIN 26 // from: 22.1 24.0 27.3 41.3 42.1 43.2
  SAY #16585 /* ~"Well, friend, since he turned from the Lady, many people think it's just a matter of time before her shadow falls on him. No one wants to be about when and if *that* happens, I'm sure."~ */
  IF ~~ THEN REPLY #16755 /* ~"Tell me about his tattoo parlor."~ */ GOTO 23
  IF ~~ THEN REPLY #16756 /* ~"You don't have any idea of how he came to be shunned?"~ */ GOTO 27
  IF ~~ THEN REPLY #16757 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16758 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.2 24.1 26.1
  SAY #16586 /* ~"Like I said, friend, I'm not too sure. I've only heard vague rumors about him being on the wrong side of the issue when some power decided to butt heads with the Lady. You could always try and ask him, friend. I'm told he's friendly enough, if not a little odd."~ */
  IF ~~ THEN REPLY #16759 /* ~"Some power?"~ */ GOTO 41
  IF ~~ THEN REPLY #16760 /* ~"The Lady?"~ */ GOTO 42
  IF ~~ THEN REPLY #16761 /* ~"Tell me about his tattoo parlor."~ */ GOTO 23
  IF ~~ THEN REPLY #16762 /* ~"What's to be wary of about his parlor?"~ */ GOTO 26
  IF ~~ THEN REPLY #16763 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16764 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 2.1 3.1 4.3 5.1 6.3 7.1 9.1 10.0 15.0 16.8 18.2 19.2 20.1 21.3 22.3 24.2 26.2 27.4 29.2 30.1 31.3 32.2 33.2 34.1 35.0 36.0 37.0 40.0 41.4 42.2 43.3 44.0 45.8 46.0 47.0 48.1 49.9 50.0 51.8 53.0 61.0
  SAY #16587 /* ~He nods, awaiting your question.~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",2)
~ THEN REPLY #22248 /* ~"I need some herbs sprung from this seed. Can you help me?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",3)
~ GOTO 54
  IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Tree_Helpers","AR0400",3)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16765 /* ~"Any change in the trees, yet?"~ */ GOTO 45
  IF ~  Global("Mourns","GLOBAL",3)
GlobalGT("Tree_Helpers","AR0400",2)
Global("Mourns_Quest","AR0400",1)
~ THEN REPLY #16766 /* ~"Any change in the trees, yet?"~ */ DO ~SetGlobal("Mourns_Quest","AR0400",2)
AddexperienceParty(500)
~ GOTO 46
  IF ~~ THEN REPLY #16767 /* ~"Who are you?"~ */ GOTO 29
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16768 /* ~"What are you doing here?"~ */ GOTO 30
  IF ~~ THEN REPLY #16769 /* ~"Why are all the trees dying?"~ */ GOTO 18
  IF ~~ THEN REPLY #16770 /* ~"What can you tell me about this place?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #16771 /* ~"I'm looking for a man named Pharod."~ */ GOTO 35
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #16772 /* ~"I'm looking for a journal I've lost."~ */ GOTO 36
  IF ~~ THEN REPLY #16773 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #16588 /* ~"I am called 'Mourns-for-Trees' by the people here, friend."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16774 /* ~"Why is that?"~ */ GOTO 6
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16775 /* ~"What are you doing here?"~ */ GOTO 30
  IF ~~ THEN REPLY #16776 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16777 /* ~"Farewell, then, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.4 29.1 31.0 32.0
  SAY #16589 /* ~"I'm wasting time, if anything, friend." He sighs miserably.~ */
  IF ~~ THEN REPLY #16778 /* ~"What do you mean?"~ */ GOTO 7
  IF ~~ THEN REPLY #16779 /* ~"I see. I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16780 /* ~"I'll leave you to it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.6
  SAY #16590 /* ~"It's the worst Sigil has to offer, friend. Not much else to say about it." He smiles sadly.~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16781 /* ~"Why are you here, then?"~ */ GOTO 30
  IF ~~ THEN REPLY #16782 /* ~"What if I was looking for work?"~ */ GOTO 32
  IF ~~ THEN REPLY #16783 /* ~"Where could I go to enjoy myself?"~ */ GOTO 33
  IF ~~ THEN REPLY #16784 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16785 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.1 33.1 34.0
  SAY #16591 /* ~"In the Hive? Unless you're a thief, I doubt you'll find any. You could always gather corpses and haul them to the Mortuary gates, if you're that desperate. I hear the Dustmen pay a pittance for them, there, in an effort to keep the Hive's streets and alleyways from becoming even more foul."~ */
  IF ~  GlobalLT("Mourns","GLOBAL",3)
~ THEN REPLY #16786 /* ~"Why are you here?"~ */ GOTO 30
  IF ~~ THEN REPLY #16787 /* ~"Where could I go to enjoy myself?"~ */ GOTO 33
  IF ~~ THEN REPLY #16788 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16789 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 31.2 32.1
  SAY #16592 /* ~"Well, friend... it takes a certain sort to find anything of amusement in a place like this. I'd look for entertainment in another ward, if I were you. Safer."~ */
  IF ~~ THEN REPLY #16790 /* ~"What's dangerous?"~ */ GOTO 34
  IF ~~ THEN REPLY #16791 /* ~"Where could I go to find work here?"~ */ GOTO 32
  IF ~~ THEN REPLY #16792 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16793 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #16593 /* ~"Here? Everything, friend. Everything. Well, maybe not me. Heh."~ */
  IF ~~ THEN REPLY #16794 /* ~"Where could I go to find work here?"~ */ GOTO 32
  IF ~~ THEN REPLY #16795 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16796 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 28.7
  SAY #16594 /* ~"Sorry, friend. When I first came here, I spoke to many people... but I don't remember anyone by that name."~ */
  IF ~~ THEN REPLY #16797 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16798 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 28.8
  SAY #16595 /* ~"I can't recall seeing one anywhere. Where do you last remember having it, friend?"~ */
  IF ~~ THEN REPLY #16799 /* ~"I'm not sure. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16800 /* ~"I couldn't say. Farewell."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #16596 /* ~"Hello again, friend."~ */
  IF ~~ THEN REPLY #16801 /* ~"Greetings. I had questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16802 /* ~"Greetings... and farewell."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #16597 /* ~He looks at you for only a moment before averting his eyes. "Oh, it's you again... friend."~ */
  IF ~~ THEN REPLY #16803 /* ~"I had some questions..."~ */ GOTO 39
  IF ~~ THEN REPLY #16804 /* ~"I wanted to apologize for my rudeness earlier."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #16805 /* ~Lie: "I regret my rudeness, earlier... I wanted to apologize."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #22239 /* ~"Greetings... and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #16598 /* ~"I'm sorry... friend. I've got a lot on my mind. Maybe we can talk another time."~ */
  IF ~~ THEN REPLY #16806 /* ~"I wanted to apologize for my rudeness earlier."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #20431 /* ~Lie: "I regret my rudeness, earlier... I wanted to apologize."~ */ DO ~SetGlobal("Mourns","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Mourns_5","GLOBALLaw",-1)
~ GOTO 40
  IF ~~ THEN REPLY #16807 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 38.2 39.0 39.1
  SAY #16599 /* ~He simply looks back at you for a moment, quietly. "I'll accept your apology, friend. Did you have questions for me?"~ */
  IF ~~ THEN REPLY #16808 /* ~"Yes..."~ */ GOTO 28
  IF ~~ THEN REPLY #16809 /* ~"No, I said what I came to say. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 27.0
  SAY #16600 /* ~"A deity, friend? A god? Normally the Lady has no problems with the likes of them, as she keeps their lot out of Sigil entirely. His name was Aoskar, but I don't know much else about the affair."~ */
  IF ~~ THEN REPLY #16810 /* ~"The Lady?"~ */ GOTO 42
  IF ~~ THEN REPLY #16811 /* ~"His name 'was'?"~ */ GOTO 43
  IF ~~ THEN REPLY #16812 /* ~"Tell me about his tattoo parlor."~ */ GOTO 23
  IF ~~ THEN REPLY #16813 /* ~"What's to be wary of about his parlor?"~ */ GOTO 26
  IF ~~ THEN REPLY #16814 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16815 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.1 41.0 43.0
  SAY #16601 /* ~"The Lady of Pain, friend? The Mistress of Sigil?" He stops speaking suddenly. Making a semi-circular sign over his chest, he leans close to whisper: "It does no one good to speak of the Lady. Know only that she alone controls the city - whether it appears that way at times or not - and speak of her no more."~ */
  IF ~~ THEN REPLY #16816 /* ~"Very well. Tell me about Fell's tattoo parlor."~ */ GOTO 23
  IF ~~ THEN REPLY #16817 /* ~"What's to be wary of about Fell's parlor?"~ */ GOTO 26
  IF ~~ THEN REPLY #16818 /* ~"I understand. I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16819 /* ~"I won't mention her to you again. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #16602 /* ~The man nods gravely. "As I understand it, the Lady destroyed him. I wouldn't forget that, if you were to ever consider messing about with her or her servants."~ */
  IF ~~ THEN REPLY #16820 /* ~"The Lady?"~ */ GOTO 42
  IF ~~ THEN REPLY #16821 /* ~"Tell me about Fell's tattoo parlor."~ */ GOTO 23
  IF ~~ THEN REPLY #16822 /* ~"What's to be wary of about Fell's parlor?"~ */ GOTO 26
  IF ~~ THEN REPLY #16823 /* ~"I had other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16824 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  Global("Mourns","GLOBAL",3)
GlobalLT("Mourns_Quest","AR0400",2)
~ THEN BEGIN 44 // from:
  SAY #16603 /* ~Mourns-for-Trees smiles widely upon seeing you. "Ah, my friend; you've returned! Something you wished of me?"~ */
  IF ~~ THEN REPLY #16825 /* ~"Yes, I had some questions..."~ */ GOTO 28
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16826 /* ~"No, I wanted to ask Morte to help you."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16827 /* ~"No, I wanted to Ask Annah to help you."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16828 /* ~"No, I wanted to ask Ignus to help you."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16829 /* ~"No, I wanted to ask Fall-from-Grace to help you."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16830 /* ~"No, I wanted to ask Dak'kon to help you."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16831 /* ~"No, but I found some help for you. Dak'kon: aid this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16832 /* ~"No, I wanted to ask Nordom to help you."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16833 /* ~"No, I wanted to ask Vhailor to help you."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16834 /* ~"No, just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 28.1
  SAY #16604 /* ~"No, not yet, friend. I still have hope, though - I speak to people every day."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16835 /* ~"I wanted to ask Morte to help you."~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16836 /* ~"I wanted to ask Annah to help you."~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16837 /* ~"I wanted to ask Ignus to help you."~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16838 /* ~"I wanted to ask Fall-from-Grace to help you."~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16839 /* ~"I wanted to ask Dak'kon to help you."~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  InParty("Dakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16840 /* ~"Good. I found some help for you. Dak'kon: aid this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16841 /* ~"I wanted to ask Nordom to help you."~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16842 /* ~"I wanted to ask Vhailor to help you."~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16843 /* ~"That's good. I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16844 /* ~"That's good. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 28.2
  SAY #16605 /* ~"Yes, friend, there has been! It's so slight you can barely see it, but look: fresh sap, from the trunk, and a handful of new buds. It's only a matter of time, now. I thank you again for giving me hope once more."~ */
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16845 /* ~"My pleasure. I had some questions..."~ */ GOTO 28
  IF ~  Global("Good_Mourns_2","GLOBAL",1)
~ THEN REPLY #16846 /* ~"You're welcome, Mourns-for-Trees. Farewell."~ */ EXIT
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16847 /* ~"My... pleasure. I had some questions..."~ */ GOTO 47
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16848 /* ~"You're... welcome, Mourns-for-Trees. Farewell."~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.2 46.3
  SAY #16606 /* ~Mourns looks troubled for a moment. "Is something wrong, friend? You seem upset, somehow..."~ */
  IF ~~ THEN REPLY #16849 /* ~"Ah... no. I just had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16850 /* ~"No, nothing's wrong at all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 14.2 17.2
  SAY #16607 /* ~"Excellent, my friend, excellent! I thank you... you've given me back my confidence, my purpose. Perhaps I can find others like you, who'll listen... perhaps we'll make a difference. Now, what can I do for you, friend?"~ */
  IF ~~ THEN REPLY #16851 /* ~Look at the trees, imagine them dead.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 50
  IF ~~ THEN REPLY #16852 /* ~"I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16853 /* ~"Nothing, but thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 14.3 17.3
  SAY #16608 /* ~"Excellent, my friend, excellent! I thank you... you've given me back my confidence, my purpose. Perhaps I can find others like you, who'll listen... perhaps we'll make a difference. What about your companions, friend? Would you speak to them on my behalf?"~ */
  IF ~~ THEN REPLY #16854 /* ~Look at the trees, imagine them dead.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourns_4","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Mourns_2","GLOBALGood",-1)
~ GOTO 51
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16855 /* ~"Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16856 /* ~"Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16857 /* ~"Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16858 /* ~"Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16859 /* ~"Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16860 /* ~"Dak'kon: help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16861 /* ~"Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16862 /* ~"Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16863 /* ~"Perhaps later. I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16864 /* ~"Maybe another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #16609 /* ~Mourns-for-Trees smiles at you, but looks puzzled. "What is it you find so amusing, friend?"~ */
  IF ~~ THEN REPLY #16865 /* ~"Eh... nothing at all, friend. I had some questions..."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ GOTO 28
  IF ~~ THEN REPLY #16866 /* ~"Oh, nothing at all. Farewell, Mourns."~ */ DO ~SetGlobal("Mourns","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.0
  SAY #16610 /* ~Mourns-for-Trees smiles at you, but looks puzzled. "What is it you find so amusing, friend?"~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16867 /* ~"Nothing, really. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16868 /* ~"It's nothing. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16869 /* ~"Was I smiling? Ignore it. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16870 /* ~"It's nothing at all. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16871 /* ~"Nothing, nothing. Dak'kon, could you help this man?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16872 /* ~"It was nothing. Dak'kon: come and help this man."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16873 /* ~"Oh, nothing. Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16874 /* ~"Nothing, Mourns. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16875 /* ~"Eh... nothing at all. I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16876 /* ~"Nothing at all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #16611 /* ~Mourns-for-Trees stares on in horror as he realizes what is about to occur. Suddenly, he leaps into action, thrusting himself between Ignus and the trees: "No! Stop! You can't!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16877 /* ~Continue...~ */ EXTERN ~DMORTE~ 186
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16878 /* ~Continue...~ */ EXTERN ~DIGNUS~ 13
END

IF ~  Global("Mourns","GLOBAL",3)
Global("Mourns_Quest","AR0400",2)
~ THEN BEGIN 53 // from:
  SAY #16612 /* ~Mourns-for-Trees smiles widely upon seeing you. "Ah, my friend; you've returned! The trees seem to improve each day. Something you wished of me?"~ */
  IF ~~ THEN REPLY #16879 /* ~"Yes, I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #16880 /* ~"No, just passing by. Farewell, Mourns-for-Trees."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 28.0
  SAY #22240 /* ~Mourns-for-Trees takes the seed from you and holds it up to his eye. "What an odd seed... are those teeth along the edge? Barbs, perhaps... where did you come by it, friend?"~ */
  IF ~~ THEN REPLY #22249 /* ~"Old Mebbeth, the midwife of the Square, needs some herbs sprung from that seed. Do you know where I could get some?"~ */ GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #22241 /* ~"No..." Mourns-for-Trees continues to stare at the seed in his hand. "This is the only seed of its kind I've ever seen... I... ah!" He winces, and a spot of blood glistens on his thumb. "The barbs on it are sharp, indeed. Perhaps you should hold it."~ */
  IF ~~ THEN REPLY #22250 /* ~"So you can't help me, either?"~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #22242 /* ~"Unless you can make that one grow, I cannot... again, I've never seen a seed of its like before, friend."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22251 /* ~"If we wanted it to grow enough, is it possible to make it grow?"~ */ GOTO 58
  IF ~~ THEN REPLY #22252 /* ~"Is there any way to make it grow faster?"~ */ GOTO 58
  IF ~~ THEN REPLY #22254 /* ~"I am not going to wait for this damn thing to grow. I need those herbs, and I need them now."~ */ GOTO 60
  IF ~~ THEN REPLY #22255 /* ~"I suppose I could wait for it to grow... how long would it take?"~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.3
  SAY #22243 /* ~Mourns-for-Trees shakes his head. "I do not know. Perhaps many seasons."~ */
  IF ~  Global("Mourns_Belief","GLOBAL",1)
~ THEN REPLY #22256 /* ~"If we wanted it to grow enough, is it possible to make it grow?"~ */ GOTO 58
  IF ~~ THEN REPLY #22257 /* ~"Is there any way to make it grow faster?"~ */ GOTO 58
  IF ~~ THEN REPLY #22258 /* ~"I am not going to wait for this damn thing to grow. I need those herbs, and I need them now."~ */ GOTO 60
  IF ~~ THEN REPLY #22259 /* ~"I *really* need those herbs. Is there anything that can be done?"~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 56.0 56.1 57.0 57.1 57.3
  SAY #22244 /* ~Mourns-for-Trees looks at the seed. "Perhaps... if you *cared* enough to see it grow..."~ */
  IF ~~ THEN REPLY #22260 /* ~"What do you mean?"~ */ GOTO 59
  IF ~~ THEN REPLY #22261 /* ~Focus on the seed, *will* it to grow.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22262 /* ~"Well, I guess it's worth a try..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #22245 /* ~"This is Sigil, friend. Belief is everything. Everything... from the spire on which Sigil rests, to even that tiny seed you hold there. If you *believe* enough, anything is possible..."~ */
  IF ~~ THEN REPLY #22263 /* ~Focus on the seed, *will* it to grow.~ */ DO ~AddexperienceParty(500)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
  IF ~~ THEN REPLY #22264 /* ~"Well, I guess it's worth a try..."~ */ DO ~AddexperienceParty(250)
DestroyPartyItem("BSeed1",TRUE)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 56.2 57.2 58.1 58.2 59.0 59.1
  SAY #22246 /* ~To your surprise, there is a *crack* and the seed splits, twigs splitting from its surface like fingers. Instinctively, you drop the seed, but the talon-like twigs wrap around your wrist and will not let go.~ */
  IF ~~ THEN REPLY #22265 /* ~"What the hells?"~ */ JOURNAL #21910 /* ~Just *willing* the seed to grow caused it to blossom... now the damn thing is wrapped around my wrist and won't let go. At least it doesn't take up any room in my pack... still, I better return the thing to Mebbeth and see if it's what she wanted.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #22247 /* ~Mourns-for-Trees stares at the barbed branches wrapped around your wrist, stunned. "I... think the barbs on those new branches would be more than enough for what your friend needs."~ */
  IF ~~ THEN REPLY #22266 /* ~"I hope she can get this damn thing off of me. Look, before I go, I had some questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #22267 /* ~"I will return it to her, then... thank you for your help. Farewell."~ */ EXIT
END
