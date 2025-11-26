// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIMASXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIMASXI~

IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2941 /* ~The wild-looking tiefling girl meets your gaze with an angry scowl. Her tattooed body is practically naked, covered by only a narrow leather thong, a black cloth brassier and armored shoulder pads that appear to serve more as decoration rather than actual protection. Her spiked hair - as well as the thin fur that covers her goat-like legs - is brassy white, and numerous silver rings dangle from her ears, nostrils, lips and brow. She wears a leather collar around her throat with the inscription "Kimasxi Addertongue."~ */
  IF ~~ THEN REPLY #2942 /* ~"Greetings..."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41630 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41579 /* ~Kimasxi bares her teeth at you. "And just what are *you* looking at, you banged-up sod?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 434
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41643 /* ~"You. I had some questions..."~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41644 /* ~"You - and I'm not too impressed. Farewell."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41645 /* ~"Nothing. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY #41580 /* ~She sneers at Morte, then looks below him, where a body would normally be. "Sharp tongue... for a stemless deader."~ */
  IF ~~ THEN REPLY #41721 /* ~"That's enough, you two."~ */ EXTERN ~DMORTE~ 435
  IF ~~ THEN REPLY #41722 /* ~Let them keep at it.~ */ EXTERN ~DMORTE~ 436
END

IF ~~ THEN BEGIN 3 // from:
  SAY #41581 /* ~"Ticks?! The only annoying insect around here is *you!*" She suddenly turns to you. "Hey! You here to talk to me, or what?"~ */
  IF ~~ THEN REPLY #41723 /* ~"'Or what?' What else can I do with you?"~ */ GOTO 5
  IF ~~ THEN REPLY #41724 /* ~"Yes... I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41725 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 1.3 5.2 8.2 9.3 10.3 12.2 14.1 15.1 16.1 21.2 21.3
  SAY #41582 /* ~She rolls her eyes. "Pike off, then!"~ */
  IF ~~ THEN REPLY #41726 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #41583 /* ~"What did you have in mind, you sodding jawbox? Go ahead; give me a reason to say 'no' to you."~ */
  IF ~~ THEN REPLY #41727 /* ~"What do you usually do for patrons?"~ */ GOTO 6
  IF ~~ THEN REPLY #41728 /* ~"I just had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41729 /* ~"Forget it. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41584 /* ~"I'm a practitioner of abuse."~ */
  IF ~~ THEN REPLY #41730 /* ~"What's that mean?"~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 7
  IF ~~ THEN REPLY #41731 /* ~"I had another question..."~ */ GOTO 14
  IF ~~ THEN REPLY #41732 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #41585 /* ~"I'll show you." Her hand lashes out to slap your face, but you manage to barely dodge the blow. Kimasxi pouts visibly, then scowls. "Oh, well."~ */
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41733 /* ~"Say... can you teach Morte here to be more abusive?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~~ THEN REPLY #41734 /* ~"I would've thought something half-animal would have faster reflexes."~ */ GOTO 8
  IF ~~ THEN REPLY #41735 /* ~"I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41736 /* ~"That's enough of you for me. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #41586 /* ~She gives you a skeptical look. "You can *think?* Huh. You know, *I* would've thought something half-zombie would have *slower* reflexes."~ */
  IF ~~ THEN REPLY #41737 /* ~"Well you thought wrong... I imagine it happens a lot."~ */ GOTO 9
  IF ~~ THEN REPLY #41738 /* ~"Look, I just had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41739 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #41587 /* ~"You must *imagine* a lot: imagine you're not so thrice-damned hideous, imagine women take you seriously... and stop staring at my breasts!" Her last words come as a surprise - because you weren't.~ */
  IF ~~ THEN REPLY #41740 /* ~"What are you talking about?"~ */ GOTO 10
  IF ~~ THEN REPLY #41741 /* ~"Is *that* what those are? I figured them for some sort of tiny, knobby cancerous growths."~ */ GOTO 12
  IF ~~ THEN REPLY #41742 /* ~"Look, I just had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41743 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41588 /* ~"Oh, sure; you weren't looking, huh? You hulking, lecherous corpse... what's the matter with you? Haven't you even seen a pair of teats before?"~ */
  IF ~~ THEN REPLY #41744 /* ~"I wasn't looking at them. You're acting like a mad woman..."~ */ GOTO 11
  IF ~~ THEN REPLY #41745 /* ~"Is *that* what those are? I figured them for some sort of tiny, knobby cancerous growths."~ */ GOTO 12
  IF ~~ THEN REPLY #41746 /* ~"Look, I just had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41747 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #41589 /* ~Kimasxi rolls her eyes before crossing her arms and pursing her lips. "You're about as fun to talk to as a modron. Pike off, boring-boy; you're better off with one of the more *common* chits around here."~ */
  IF ~~ THEN REPLY #41748 /* ~"Wait - I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41749 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1 10.1
  SAY #41590 /* ~She raises an eyebrow. "Look, if you can't identify a pair of breasts as nice as mine, you *obviously* haven't spent much time in the company of women..."~ */
  IF ~~ THEN REPLY #41750 /* ~"Are you implying that you're female? Isn't that stretching the definition?"~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41751 /* ~"Look, I just had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41752 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0 16.0
  SAY #41591 /* ~Kimasxi looks at a loss for something to say. For an instant, a smile threatens to crack the grimacing mask of her face - then she becomes more of a basilisk than ever. "All right, what do you want of me?"~ */
  IF ~~ THEN REPLY #41753 /* ~"Questions answered..."~ */ GOTO 22
  IF ~~ THEN REPLY #41754 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.1 3.1 5.1 6.1 7.2 8.1 9.2 10.2 11.0 12.1 21.0 41.0
  SAY #41592 /* ~The tiefling rolls her eyes. "And what makes you think I *care?* Why don't you lick my backside?"~ */
  IF ~~ THEN REPLY #41755 /* ~"My tongue's not wide enough... and I don't like hair in my mouth."~ */ GOTO 15
  IF ~~ THEN REPLY #41756 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #41593 /* ~"Well, you seem to like the taste of offal in your mouth, you dung-breathed cretin."~ */
  IF ~~ THEN REPLY #41757 /* ~"Only because it's like kissing you, you mangy stink-pot."~ */ GOTO 16
  IF ~~ THEN REPLY #41758 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41594 /* ~"Kiss *me?*" She makes a retching sound. "I'd rather kiss a bloody mass of phlegm than lay my lips on you. No thanks!"~ */
  IF ~~ THEN REPLY #41759 /* ~"Don't thank me... thank the powers someone actually wants to kiss you."~ */ DO ~SetGlobal("Kimasxi","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #41760 /* ~"That's enough of you for me. Farewell."~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.0 22.2
  SAY #41595 /* ~She raises her eyebrows. "Now *that's* an unusual request. I don't know, it seems pretty foul-mouthed already..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 437
END

IF ~~ THEN BEGIN 18 // from:
  SAY #41596 /* ~"You *wish* you had legs like mine, you pitiful wretch of a bone-box! I can walk, run, dance... what do you do? Bob around wishing you *had* a pair, goat's or otherwise!"

The two of them lay into one another, exchanging barbed, blistering insults and clashing with razor-edged tongues...~ */
  IF ~~ THEN REPLY #41761 /* ~Wait for it to end...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
IncrementGlobal("Morte_Taunt","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41597 /* ~At last the two stop their bickering, and eerie silence settles over them as they eye one another hatefully. Finally, the tiefling makes a grudging admission to Morte: "You're not bad, really. Not bad at all."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 438
END

IF ~~ THEN BEGIN 20 // from:
  SAY #41598 /* ~Kimasxi narrows her eyes at Morte. "Don't push it, *skull.*"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 439
END

IF ~~ THEN BEGIN 21 // from:
  SAY #41599 /* ~Kimasxi turns to you. "So was that all you wanted? I'm not spending any more time near you than I have to."~ */
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41762 /* ~"Actually, I had some questions..."~ */ GOTO 14
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41763 /* ~"Actually, I had some questions..."~ */ GOTO 22
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41764 /* ~"I feel the same way. Farewell."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN REPLY #41765 /* ~"That's it for now. Farewell."~ */ GOTO 4
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41766 /* ~"I feel the same way. Farewell."~ */ EXIT
  IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN REPLY #41767 /* ~"That's it for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 13.0 21.1 23.0 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 33.0 34.1 35.0 36.0 37.0 38.0 40.0 42.0 43.0
  SAY #41600 /* ~She looks annoyed. "Fine, whatever... ask."~ */
  IF ~~ THEN REPLY #41768 /* ~"Who are you?"~ */ GOTO 36
  IF ~~ THEN REPLY #41769 /* ~"What are you doing here?"~ */ GOTO 37
  IF ~  NearbyDialog("DMorte")
Global("Kimasxi_Train","AR0605",0)
~ THEN REPLY #41770 /* ~"Say... can you teach Morte here to be more abusive?"~ */ DO ~SetGlobal("Kimasxi_Train","AR0605",1)
~ GOTO 17
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41771 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67845 /* ~"What can you tell me about the silent prostitute?"~ */ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 43
  IF ~  Global("Know_Kim_Kes","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41772 /* ~"I heard you're Kesai-Serris' half-sister. Is that true?"~ */ GOTO 27
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41773 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ GOTO 25
  IF ~  Global("Nenny_Hint2","AR0605",1)
GlobalLT("Veil_Quest","AR0605",2)
~ THEN REPLY #41774 /* ~"I was told you were seen sneaking away from Marissa's chambers, recently... is that connected with her missing veil, somehow?"~ */ DO ~SetGlobal("Nenny_Hint2","AR0605",2)
~ GOTO 39
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41775 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ GOTO 32
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41776 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ GOTO 23
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41777 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~I asked one of the Brothel's prostitutes about Ravel, and she suggested I speak to Yves about it. I'm told that Yves collects all sorts of tales, and will likely have one about Ravel in her repertoire.~ */ GOTO 24
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #41778 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 34
  IF ~~ THEN REPLY #41779 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.9
  SAY #41602 /* ~She smirks. "Tch. Up your arse, perhaps? Hells, I don't know." Kimasxi smooths back her hair, which instantly springs back up into a spiky mess.~ */
  IF ~~ THEN REPLY #41780 /* ~"I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41781 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.10
  SAY #41603 /* ~"What would *I* know about her? I look like a scholar or something to you? Go ask someone more 'learned'... or Yves; she'll probably have at least *one* story about her in that pile of tales she carries about in her bone-box. Oh, and squat on a halberd, while you're at it."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41782 /* ~"I heard that Kesai-Serris is her daughter. Is that true?"~ */ GOTO 25
  IF ~~ THEN REPLY #41783 /* ~"I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41784 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.6 24.0
  SAY #41604 /* ~She shrugs. "Far as I know, yes." She looks suddenly suspicious. "Why?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41785 /* ~"I asked her about it, and she denied it."~ */ GOTO 26
  IF ~~ THEN REPLY #41786 /* ~"Don't worry about it. I had another question."~ */ GOTO 22
  IF ~~ THEN REPLY #41787 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #41605 /* ~"So? Not as if it's any of your business in the first place."~ */
  IF ~  Global("Know_Kim_Kes","AR0605",1)
~ THEN REPLY #41788 /* ~"I also heard you're Kesai-Serris' half-sister."~ */ GOTO 27
  IF ~~ THEN REPLY #41789 /* ~"Perhaps not. I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41790 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.5 26.0
  SAY #41606 /* ~"Yes, I'm related to that chubby, mewling, hook-nosed day-dreamer. Same father, different mothers. So?"~ */
  IF ~  Global("Kesai_Ask","AR0605",1)
~ THEN REPLY #41791 /* ~"I was hoping you could help me find out if Kesai is *really* Ravel's daughter."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",2)
~ JOURNAL #39475 /* ~Kimasxi Addertongue, Kesai-Serris' half-sister, told me that I should ask Kesai to look to her father for proof that she's Ravel Puzzlewell's daughter.~ */ GOTO 28
  IF ~~ THEN REPLY #41792 /* ~"Don't worry about it. I had another question."~ */ GOTO 22
  IF ~~ THEN REPLY #41793 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #41607 /* ~Kimasxi frowns at you. "Normally I'd loathe to help you like this, but I've a feeling it'd upset that flirting, preening doxy good and well. Tell her to ask our father... he's a powerful cambion, so she ought to be able to call to him right then and there. That'll get you your answer."~ */
  IF ~~ THEN REPLY #41794 /* ~"Cambion?"~ */ GOTO 29
  IF ~~ THEN REPLY #41795 /* ~"Thanks. I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41796 /* ~"I'll go speak to her, then. Thanks, Kimasxi, and Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #41608 /* ~"Yes, *cambion.*" Kimasxi rolls her eyes. "Didn't hear me the first time? Ears all stopped up with the last of your brains running out of them?"~ */
  IF ~~ THEN REPLY #41797 /* ~"I'm asking what one is..."~ */ GOTO 30
  IF ~~ THEN REPLY #41798 /* ~"No... but I had another question."~ */ GOTO 22
  IF ~~ THEN REPLY #41799 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41609 /* ~"My, you're Clueless." She shakes her head sadly, tutting all the while. "A half-fiend, berk; sort of like you... but you're half *dung,* I think. You smell it, at any rate."~ */
  IF ~~ THEN REPLY #41800 /* ~"Better that than half *you,* Kimasxi."~ */ GOTO 31
  IF ~~ THEN REPLY #41801 /* ~"I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41802 /* ~"Farewell, Kimasxi."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #41610 /* ~"You *wish* you were half-Kimasxi, sod... even if you ended up with a goat's bum on your shoulders it'd be better than that scarred-up face of yours."~ */
  IF ~~ THEN REPLY #41803 /* ~"That's enough, Kimasxi. I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41804 /* ~"I don't have time to get into this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.8
  SAY #41611 /* ~"Try a Hive gutter... or perhaps that's just a similar aroma. To be serious, though... Marissa stole it."~ */
  IF ~  GlobalGT("Marissa","GLOBAL",0)
~ THEN REPLY #41805 /* ~"Marissa? Are you sure?"~ */ GOTO 33
  IF ~  Global("Marissa","GLOBAL",0)
~ THEN REPLY #41806 /* ~"Marissa... I haven't met her, yet. Are you sure of this?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #41612 /* ~"No, but I'm hoping you'll go stomping into her room and upset her enough to do something awful to you."~ */
  IF ~~ THEN REPLY #41807 /* ~"Hmm. I have another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41808 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 22.11
  SAY #41613 /* ~"Yes, she's hiding under my bed. Go ahead... get down on all fours and check. I shan't kick you... really."~ */
  IF ~~ THEN REPLY #41809 /* ~Get down on your hands and knees and check.~ */ GOTO 35
  IF ~~ THEN REPLY #41810 /* ~"Hmm. I have another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41811 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41614 /* ~As you look beneath Kimasxi's bed - nothing's there, of course - you become aware of her standing behind you. "I couldn't... it's just too easy. Get up, you poor, stupid deader. There *is* no tenth student."~ */
  IF ~~ THEN REPLY #41812 /* ~"I have another question, then..."~ */ GOTO 22
  IF ~~ THEN REPLY #41813 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 22.0
  SAY #41615 /* ~"My name? Uninterested. I can guess yours, though: 'Scarbunch get-outta-here-before-I-put-a-fire-under-your-arse.'"~ */
  IF ~~ THEN REPLY #41814 /* ~"I have another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41815 /* ~"I'll assume it's Kimasxi like it says on the collar, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 22.1
  SAY #41616 /* ~"Not you, that's for certain." She smirks at you. "I'm contemplating the best way to tell you to pike off, next."~ */
  IF ~~ THEN REPLY #41816 /* ~"I have another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41817 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #41617 /* ~"Certainly. Fall-from-Grace gathers poor orphan girls off the streets of the Hive, raising us to perform coital acts with hideous men like you while she beats us, dresses us in rags and drinks our blood. It's horrible, really."~ */
  IF ~~ THEN REPLY #41818 /* ~"I... see. I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41819 /* ~"All right... I'll just take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 22.7
  SAY #41618 /* ~Kimasxi flies into a rage: "WHO TOLD YOU THA-" She suddenly falls silent, glaring at you through narrowed eyes. "If I *was* there, berk, I didn't take her filthy veil... search my room, if you'd like. I catch you sniffing at my britches, though, I'll see to it you're never allowed in here again."~ */
  IF ~~ THEN REPLY #41820 /* ~"Why would anyone *ever* sniff at your britches?"~ */ JOURNAL #66514 /* ~I asked Kimasxi about her being seen sneaking away from Marissa's chambers, and she denied having taken the Crimson Veil. She did, however, claim that her own room had been burgled.~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #41619 /* ~"Beats me. Someone's nicked more than a few pair of them, though. My favorite leather brassier, too, with the iron studs." She *hmphs* angrily.~ */
  IF ~~ THEN REPLY #41822 /* ~"Hmm. I had another question."~ */ GOTO 22
  IF ~~ THEN REPLY #41823 /* ~"That's all I wanted to know; farewell."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",1)
~ THEN BEGIN 41 // from:
  SAY #41620 /* ~"Well here you are, looking ugly as ever. Back for some more Kimasxi abuse, eh?"~ */
  IF ~~ THEN REPLY #41824 /* ~"No, I just had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #41825 /* ~"Just passing by, actually. Farewell."~ */ EXIT
END

IF ~  Global("Kimasxi","GLOBAL",2)
~ THEN BEGIN 42 // from:
  SAY #41621 /* ~"Oh, it's *you* again. Just can't get enough of me, huh?"~ */
  IF ~~ THEN REPLY #41826 /* ~"I had some questions..."~ */ GOTO 22
  IF ~~ THEN REPLY #41827 /* ~"I was just passing by, Kimasxi. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 22.3 22.4
  SAY #41622 /* ~"What, that 'Ecco' chit? Don't know anything about her. Don't talk to the girl... I mean, why? Not like she can talk back. Ask Frigid Dolora about her... I think I saw her playing Go with an old crush of Ecco's, back from when she could talk."~ */
  IF ~~ THEN REPLY #41828 /* ~"I had another question..."~ */ GOTO 22
  IF ~~ THEN REPLY #41829 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
