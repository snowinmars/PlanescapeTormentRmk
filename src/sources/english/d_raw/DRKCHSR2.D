// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR2~

IF ~  Global("RChaser","AR0400",0)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15606 /* ~This grubby-looking Collector is staring off into space, seemingly oblivious to his surroundings.~ */
  IF ~~ THEN REPLY #15721 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #15722 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15723 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 65.0
  SAY #15607 /* ~He flinches, startled out of his meditations. As he sees you, a look of panic begins to creep over his features.~ */
  IF ~~ THEN REPLY #15724 /* ~"We need to speak..."~ */ GOTO 2
  IF ~~ THEN REPLY #15725 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15726 /* ~"Just passing by. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #15608 /* ~"Ah... eh... of what did ya wish to speak, m'lord?"~ */
  IF ~~ THEN REPLY #15727 /* ~"You can drop the facade. I know what you are, fiend."~ */ GOTO 3
  IF ~~ THEN REPLY #15728 /* ~"How about that pendant you've got?"~ */ GOTO 53
  IF ~~ THEN REPLY #15729 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15730 /* ~"Nothing, never mind. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 53.0
  SAY #15617 /* ~"What? No, m'lord! I know not of what ya... ya..." He becomes silent beneath your hard stare, then sighs. When he next speaks, his voice is calm and cultured: "Very well. And how didst thou come to learn my secret?"~ */
  IF ~~ THEN REPLY #15731 /* ~"A rat-catcher told me about you."~ */ GOTO 4
  IF ~~ THEN REPLY #15732 /* ~"A pair of fiends told me."~ */ GOTO 8
  IF ~~ THEN REPLY #15733 /* ~"That's no concern of yours. I have questions..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #15619 /* ~"A rat-catcher? How odd." He scratches at his chin for a moment. "Hmm. Wouldst thou know this person's name?"~ */
  IF ~~ THEN REPLY #15734 /* ~"Yes. They were called Ratbone."~ */ GOTO 5
  IF ~~ THEN REPLY #15736 /* ~Lie: "No, I would not."~ */ GOTO 6
  IF ~~ THEN REPLY #15738 /* ~"I can't say."~ */ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #15621 /* ~"I see; I thank thee." He pauses, perhaps to commit the name to memory. "Now, to what purpose hast thou come to see me?"~ */
  IF ~~ THEN REPLY #15742 /* ~"For your pendant."~ */ GOTO 12
  IF ~~ THEN REPLY #15743 /* ~"I have some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15745 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15748 /* ~"For nothing, really. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #15623 /* ~He shakes his head sadly. "A shame, that. Now, to what purpose hast thou come to see me?"~ */
  IF ~~ THEN REPLY #15787 /* ~"For your pendant."~ */ GOTO 12
  IF ~~ THEN REPLY #15788 /* ~"I have some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15789 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15793 /* ~"For nothing, really. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.2
  SAY #15624 /* ~He shakes his head sadly. "Understandable, that; after all, what hath I to offer thee in return for such information? Thou wouldst be a fool to betray their identity for nothing... unless thou wished harm upon them. Now, to what purpose hast thou come to see me?"~ */
  IF ~~ THEN REPLY #15796 /* ~"For your pendant."~ */ GOTO 12
  IF ~~ THEN REPLY #15799 /* ~"I have some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15801 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15803 /* ~"For nothing, really. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #15625 /* ~He looks incredulous. "What?! Such a thing is impossible! How did... how dare they!" His eyes become dark, and his lips peel back from his stained and crooked teeth in a snarl. "Who? What were their names? Know thee this?"~ */
  IF ~~ THEN REPLY #15804 /* ~"Yes. Aethelgrin and Tegar'in Thrice-Damned."~ */ GOTO 9
  IF ~~ THEN REPLY #15805 /* ~Lie: "No, I don't."~ */ GOTO 10
  IF ~~ THEN REPLY #15806 /* ~"I can't say."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #15627 /* ~He sneers. "Thrice-damned, indeed! Oh, how they shall pay, shouldst it take me one thousand years to see them suffer!" He recomposes himself. "Now, to what purpose hast thou come to see me?"~ */
  IF ~~ THEN REPLY #15807 /* ~"For your pendant."~ */ GOTO 12
  IF ~~ THEN REPLY #15808 /* ~"I have some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15809 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15810 /* ~"For nothing, really. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #15629 /* ~He sneers, clenching his fists in frustration. "Argh! I'll find them out... oh, how they shall pay, shouldst it take me one thousand years to see them suffer!" He recomposes himself. "Now, to what purpose hast thou come to see me?"~ */
  IF ~~ THEN REPLY #15811 /* ~"For your pendant."~ */ GOTO 12
  IF ~~ THEN REPLY #15812 /* ~"I have some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15813 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15814 /* ~"For nothing, really. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.2
  SAY #15631 /* ~"Is that so? Then, to what purpose hast thou come to see me?"~ */
  IF ~~ THEN REPLY #15815 /* ~"For your pendant."~ */ GOTO 12
  IF ~~ THEN REPLY #15816 /* ~"I have some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15817 /* ~"Your death..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15818 /* ~"For nothing, really. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 6.0 7.0 9.0 10.0 11.0 54.5
  SAY #15632 /* ~"Hmm?" He appears confused. "And what pendant wouldst that be?"~ */
  IF ~~ THEN REPLY #15819 /* ~"Don't waste my time. You know what I'm speaking of."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15820 /* ~"Don't you have a pendant? Shaped like a skull?"~ */ GOTO 13
  IF ~~ THEN REPLY #15821 /* ~"Never mind. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15822 /* ~"Forget I asked. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #15633 /* ~"Why, no... nothing like at, at all. From where didst thou get such an idea?"~ */
  IF ~~ THEN REPLY #15823 /* ~"Don't waste my time. You know what I'm speaking of."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15824 /* ~"You wouldn't mind if you searched you, then..."~ */ DO ~SetGlobal("RC_Pendant","AR0400",1)
~ GOTO 14
  IF ~~ THEN REPLY #15825 /* ~"Never mind your pendant. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15826 /* ~"Forget I asked. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0 13.1
  SAY #15635 /* ~He sighs. "Again, very well. And what is it about my pendant thou dost seek to know?"~ */
  IF ~~ THEN REPLY #15827 /* ~"I seek only to have it."~ */ GOTO 15
  IF ~~ THEN REPLY #15828 /* ~"What is it, exactly?"~ */ GOTO 16
  IF ~~ THEN REPLY #15829 /* ~"Never mind your pendant. I had some questions..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 15 // from: 14.0 54.6
  SAY #15637 /* ~"But..." he steps back from you. "I cannot lose it! Thou dost not understand... I may as well perish!"~ */
  IF ~~ THEN REPLY #15830 /* ~"Then you'll perish..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15831 /* ~"But why? What is it, exactly?"~ */ GOTO 16
  IF ~~ THEN REPLY #15832 /* ~"Never mind your pendant. I had some questions..."~ */ GOTO 54
END

IF ~~ THEN BEGIN 16 // from: 14.1 15.1 54.2
  SAY #15639 /* ~"'Tis a vessel, no more. The pendant can ensnare a soul as it flees its dying shell, entrapping it before it moves on to its proper plane of existence."~ */
  IF ~~ THEN REPLY #15833 /* ~"Why would someone make such a thing?"~ */ GOTO 17
  IF ~~ THEN REPLY #15834 /* ~"What do you need it for?"~ */ GOTO 22
  IF ~~ THEN REPLY #15835 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15836 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15837 /* ~"I had some other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15838 /* ~"That's all I wanted to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #15641 /* ~"It was commissioned by a mortal sorcerer of no small power, Yemeth. He sought immortality, but the idea of lichdom repulsed him. According to his journals, his studies of necromancy's darkest lore inspired the device's construction. With it, he could capture souls and use their essences to prolong his own existence, fueling his life force even as it waned."~ */
  IF ~~ THEN REPLY #15839 /* ~"Lichdom?"~ */ GOTO 21
  IF ~~ THEN REPLY #15840 /* ~"Who actually made the pendant?"~ */ GOTO 18
  IF ~~ THEN REPLY #15841 /* ~"How did he lose the pendant, then?"~ */ GOTO 19
  IF ~~ THEN REPLY #15842 /* ~"Could it be used to increase one's power?"~ */ GOTO 20
  IF ~~ THEN REPLY #15847 /* ~"What do you need it for?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #15852 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15859 /* ~"I had some other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15864 /* ~"That's all I wanted to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0 20.0 21.0
  SAY #15643 /* ~"Their identity hath been lost to time. Several artificers claimed credit for the device's design at one time or another, and there art even rumors that the thing was hatched from a fiend's mind."~ */
  IF ~~ THEN REPLY #15865 /* ~"How did Yemeth lose the pendant?"~ */ GOTO 19
  IF ~~ THEN REPLY #15866 /* ~"Could it be used to increase one's power?"~ */ GOTO 20
  IF ~~ THEN REPLY #15868 /* ~"What do you need it for?"~ */ GOTO 22
  IF ~~ THEN REPLY #15870 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15871 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #15872 /* ~"I had some other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #15874 /* ~"That's all I wanted to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.0 20.1 21.1
  SAY #15650 /* ~"He was destroyed utterly in a cataclysmic magical battle, most likely with a rival mage of power... supposedly, there was nothing left of him for the device's energies to power. The pendant itself changed hands time and again over the centuries, until I came to possess it."~ */
  IF ~~ THEN REPLY #16006 /* ~"Who actually made the pendant?"~ */ GOTO 18
  IF ~~ THEN REPLY #16007 /* ~"Could it be used to increase one's power?"~ */ GOTO 20
  IF ~~ THEN REPLY #16008 /* ~"What do you need it for?"~ */ GOTO 22
  IF ~~ THEN REPLY #16009 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16010 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16011 /* ~"I had some other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16012 /* ~"That's all I wanted to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.1 19.1 21.2
  SAY #15654 /* ~"Conceivably, yes, but I wouldst not know how. Again, the pendant is a simple vessel - its various applications require rituals and spells which may be lost forever, having died with Yemeth himself."~ */
  IF ~~ THEN REPLY #16013 /* ~"Who actually made the pendant?"~ */ GOTO 18
  IF ~~ THEN REPLY #16014 /* ~"How did he lose the pendant, then?"~ */ GOTO 19
  IF ~~ THEN REPLY #16015 /* ~"What do you need it for?"~ */ GOTO 22
  IF ~~ THEN REPLY #16016 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16017 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16018 /* ~"I had some other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16019 /* ~"That's all I wanted to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 17.0
  SAY #15657 /* ~He sighs softly. "The process by which a mortal mage or cleric becomes an Undead Being of great strength. The process is long and involved - years in the undertaking, requiring gross sums of arcane reagents and the like - and often fails. A Lich, then, is a sort of free-willed undead, like a vampire, that retains the mind and abilities the mortal had in life."~ */
  IF ~~ THEN REPLY #16020 /* ~"Who actually made the pendant?"~ */ GOTO 18
  IF ~~ THEN REPLY #16021 /* ~"How did Yemeth lose the pendant?"~ */ GOTO 19
  IF ~~ THEN REPLY #16022 /* ~"Could the pendant be used to increase one's power?"~ */ GOTO 20
  IF ~~ THEN REPLY #16023 /* ~"What do you need the pendant for?"~ */ GOTO 22
  IF ~~ THEN REPLY #16024 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16025 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16026 /* ~"I had some other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16027 /* ~"That's all I wanted to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1 17.4 18.2 19.2 20.2 21.3 54.0
  SAY #15659 /* ~"The story is long. Shouldst thou truly wish to know my reasons, I must start at the very beginning."~ */
  IF ~~ THEN REPLY #16028 /* ~"Very well. Go on..."~ */ DO ~SetGlobal("RC_Tale","AR0400",1)
~ GOTO 23
  IF ~~ THEN REPLY #16029 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16030 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16031 /* ~"Another time, perhaps. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16032 /* ~"Maybe another time. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 54.1
  SAY #15661 /* ~"As you hath noted, I am a baatezu - a fiend. I am of the sort called 'erinyes,' a devilish temptress. My true form is one of unimaginable beauty, the sort which makes weak men's blood boil with desire, and petty women grind their teeth in a jealous rage."~ */
  IF ~~ THEN REPLY #16033 /* ~"How am I to believe this?"~ */ GOTO 24
  IF ~~ THEN REPLY #16034 /* ~"I see. Go on..."~ */ GOTO 25
  IF ~~ THEN REPLY #16035 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16036 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16037 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16038 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #15662 /* ~"I will explain all in good time. Willt thou listen, or no?"~ */
  IF ~~ THEN REPLY #16039 /* ~"Yes. Go on..."~ */ GOTO 25
  IF ~~ THEN REPLY #16040 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16041 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16042 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16043 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0
  SAY #15663 /* ~"There art but five hundred of us in all the planes - didst thou know this? We art a rare and haughty breed, envious of those above us and scornful of those below. Beauty aside, each of my Sisters and I art as ambitious as any fiend, competing for advancement within our own exclusive ranks by tempting mortal souls into the fell pits of Baator."~ */
  IF ~~ THEN REPLY #16044 /* ~"Go on..."~ */ GOTO 26
  IF ~~ THEN REPLY #16045 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16046 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16047 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16048 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #15664 /* ~"The 'greatest' of souls are those of mortals who thought themselves most pious and pure... those of the clergy, for instance. It was with this in mind that I so foolishly overreached, too tempted by the acclaim it wouldst win me shouldst I succeed in such a daunting task..."~ */
  IF ~~ THEN REPLY #16049 /* ~Keep listening.~ */ GOTO 27
  IF ~~ THEN REPLY #16050 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16051 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16052 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16053 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #15665 /* ~"I tried to seduce a holy man of outstanding faith, a high cleric who wielded considerable spiritual might. So close I was to winning him over, too - or so I had thought - until the day he suddenly turned on me."~ */
  IF ~~ THEN REPLY #16054 /* ~"Continue..."~ */ GOTO 28
  IF ~~ THEN REPLY #16055 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16056 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16057 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16058 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #15667 /* ~"He cursed me, the bastard, into this wretched thing thou dost see before thee. Normally such things are a trifling matter to devils, but such was this mortal's strength... surely, his power's eyes must hath been upon me, then!"~ */
  IF ~~ THEN REPLY #16059 /* ~"Cursed into the form of a hideous male? Ironic. Go on..."~ */ GOTO 29
  IF ~~ THEN REPLY #16060 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16061 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15669 /* ~"As thou may hath guessed, there was no help to be found in my Sisters, eager as they were to see me demoted and a new, lowly Erinye installed into the five-hundredth rank - thereby increasing their own positions."~ */
  IF ~~ THEN REPLY #16062 /* ~"Go on..."~ */ GOTO 30
  IF ~~ THEN REPLY #16063 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16064 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16065 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16066 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #15672 /* ~"The Dark Eight, those mighty devils to which all Erinye report, found the entire affair amusing but were not without compassion - or rather, they knew it would not benefit them to lose a seductress of such considerable experience. I was given an ultimatum..."~ */
  IF ~~ THEN REPLY #16067 /* ~"Continue..."~ */ GOTO 31
  IF ~~ THEN REPLY #16068 /* ~Truth: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16069 /* ~Bluff: "Enough. Give me the pendant or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16070 /* ~"I'll hear the rest another time. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16071 /* ~"That's all I wished to hear for the moment. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #15675 /* ~"I hath a single year in which to bring ten souls to Baator... no more, no less. Shouldst I succeed, I am to be restored to my former glory. Shouldst I fail, I am to be demoted into a miserable kocrachon - or something worse, a barbazu or..." he shudders, "...a spinagon."~ */
  IF ~~ THEN REPLY #16072 /* ~"So, this pendant is..."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15676 /* ~"Yes, 'tis my only hope. I hath gathered several souls into it, and will release them into Baator where they shall remain, trapped for all eternity. I hath little time left to garner but one more soul... one more soul with which I may redeem myself, and rejoin the ranks of my lovely, horrible Sisters."~ */
  IF ~~ THEN REPLY #16073 /* ~Truth: "Interesting tale. Now hand over the bauble or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_RCII_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16074 /* ~Bluff: "Interesting tale. Now hand over the bauble or die."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_RCII_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #16075 /* ~"I see. I must take the pendant just the same, though."~ */ GOTO 55
  IF ~~ THEN REPLY #16076 /* ~"Never mind the pendant for now. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16077 /* ~"I'll let you keep the pendant, then. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 16.2 16.3 17.5 18.3 18.4 19.3 19.4 20.3 20.4 21.4 21.5 22.1 22.2 23.2 23.3 24.1 24.2 25.1 25.2 26.1 26.2 27.1 27.2 29.1 29.2 30.1 30.2 32.0 32.1
  SAY #15677 /* ~He takes another step away from you: "Hold! Thou dost not understand! To die is merely an inconvenience; in time, I would simply reform in Baator. However, it will take longer than the year I hath been given... I would be demoted, cast from the ranks of the erinyes for centuries - perhaps forever. Dost thou see? Death is no worse than losing the pendant!"~ */
  IF ~~ THEN REPLY #16078 /* ~"Why should this matter to me?"~ */ GOTO 34
  IF ~~ THEN REPLY #16079 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16080 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 57.0
  SAY #15679 /* ~"For two reasons... one is that I am not wholly without power. Think for a moment... the young fighter who protected me by day is in my thrall; forever ensnared by my devilish powers. Do you envy his position?"~ */
  IF ~~ THEN REPLY #16081 /* ~"Are you threatening me?"~ */ GOTO 35
  IF ~~ THEN REPLY #16082 /* ~"No, but what is the second reason?"~ */ GOTO 36
  IF ~~ THEN REPLY #16083 /* ~"You're bluffing. I know the curse has made you weak."~ */ GOTO 36
  IF ~~ THEN REPLY #16084 /* ~Attack him before he says anything more.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16085 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #15682 /* ~"I am not, but listen to me!"~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 34.1 34.2 35.0
  SAY #15684 /* ~He continues: "The second reason is that thou dost not stand to benefit significantly from the pendant, whereas I do. What wouldst thou do with the thing? Wouldst it better thee more than the favor of an Erinye? Think about that..."~ */
  IF ~~ THEN REPLY #16086 /* ~"It just might. I've been promised power for its delivery."~ */ GOTO 37
  IF ~~ THEN REPLY #16087 /* ~"Do you have an offer for me, then?"~ */ GOTO 42
  IF ~~ THEN REPLY #16088 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16089 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 55.0 56.1 58.0
  SAY #15686 /* ~"Power?" he scoffs. "Who? What sort of power hast thou been promised? Surely nothing I cannot match."~ */
  IF ~~ THEN REPLY #16090 /* ~"By a pair of fiends, and I'm not sure what sort of power."~ */ GOTO 38
  IF ~~ THEN REPLY #16091 /* ~"That's no concern of yours."~ */ GOTO 59
  IF ~~ THEN REPLY #16092 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16093 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 59.0
  SAY #15687 /* ~He stares at you silently for a moment. "Not sure of the power's extent or function? Didst thou sign a contract?"~ */
  IF ~~ THEN REPLY #16094 /* ~"No."~ */ GOTO 40
  IF ~~ THEN REPLY #16095 /* ~"What does it matter?"~ */ GOTO 39
  IF ~~ THEN REPLY #16096 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16097 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.1
  SAY #15688 /* ~"Oh, 'tis of the utmost importance, believe me!"~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #15689 /* ~"Without a contract, the fiends are under no obligation to deliver said power, whatever such power might be. And what if it were power not to thy liking?"~ */
  IF ~~ THEN REPLY #16098 /* ~"What do you mean?"~ */ GOTO 41
  IF ~~ THEN REPLY #16099 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16100 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #15690 /* ~"What if, for instance, thou were to sprout antlers, thereby becoming endowed with 'uncanny antler powers'? Or perhaps the power to turn violet every fortnight? What makes thee think such power might be of any use to thee? If these fiends are worth their brimstone, they hath nothing for thee but tricks or empty promises."~ */
  IF ~~ THEN REPLY #16101 /* ~"Do you have an offer for me, then?"~ */ GOTO 42
  IF ~~ THEN REPLY #16102 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16103 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.1 41.0 59.1
  SAY #15691 /* ~"I do. Allow me to retain the pendant; with its aid I shall regain my brilliant splendor of old. I will have many obligations to see to, as well as bloody vengeance to exact... but, in three years' time, I pledge to serve you for no less than four whole months. I will sign to this - a valid contract - should you agree. Think, scarred one: a servile fiend, or a possibly useless trinket?"~ */
  IF ~~ THEN REPLY #16104 /* ~"I agree. Let me see this contract."~ */ GOTO 45
  IF ~~ THEN REPLY #16105 /* ~"Three years is too far off."~ */ GOTO 43
  IF ~~ THEN REPLY #16106 /* ~"I want eight months. Will you serve that long?"~ */ GOTO 44
  IF ~~ THEN REPLY #16107 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16108 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1 44.1
  SAY #15694 /* ~He laughs softly, shaking his head. "Tut-tut! What wouldst thou hath given for an exquisitely beautiful and utterly shameless she-devil at thy beck and call, now? I can tell thou art of long years, scarred one - how long, I do not know, but long enough. Thou shouldst know better than to be so short-sighted. If thou must insist upon impatience, I may serve thee for two months in two years' time."~ */
  IF ~~ THEN REPLY #16109 /* ~"I agree to two months service in two years."~ */ GOTO 45
  IF ~~ THEN REPLY #16110 /* ~"I will agree to four months service in three years."~ */ GOTO 45
  IF ~~ THEN REPLY #16111 /* ~"I want eight months. Will you serve that long?"~ */ GOTO 44
  IF ~~ THEN REPLY #16112 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16113 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.2 43.2
  SAY #15696 /* ~"I will serve thee six months in three years' time, but no more. Wilt thou agree to this?"~ */
  IF ~~ THEN REPLY #16114 /* ~"I agree. Let me see this contract."~ */ GOTO 45
  IF ~~ THEN REPLY #16115 /* ~"Three years is too far off."~ */ GOTO 43
  IF ~~ THEN REPLY #16116 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16117 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0 43.0 43.1 44.0
  SAY #15698 /* ~He nods. "'Tis uncommon for me to deal in these, but I should still have the means to..." he pauses, frowning as he paws through the folds of his robes. Finally, his eyes light up - he reaches behind him and pulls a bound scroll from thin air. "Ah! Here thou art..." He hands you the contract and a red quill pen.~ */
  IF ~~ THEN REPLY #16118 /* ~Sign the contract.~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #16119 /* ~Read the contract.~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16120 /* ~Read the contract.~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16121 /* ~Read the contract.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16122 /* ~Read the contract.~ */ GOTO 49
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16123 /* ~Read the contract.~ */ GOTO 50
  IF ~~ THEN REPLY #16124 /* ~"I've changed my mind - I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16125 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.1
  SAY #15700 /* ~The contract appears to be written on flesh, rather than parchment; the writing, delicate lines of blood just beneath the skin's surface. Everything in the contract seems to be in order.~ */
  IF ~~ THEN REPLY #16126 /* ~Sign the contract.~ */ GOTO 52
  IF ~~ THEN REPLY #16127 /* ~"I've changed my mind - I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16128 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #15702 /* ~The contract appears to be written on flesh, rather than parchment; the writing, delicate lines of blood just beneath the skin's surface. As you suspected, there are some less-than-satisfying clauses hidden in the document.~ */
  IF ~~ THEN REPLY #16129 /* ~"We need to renegotiate some of these fine points..."~ */ GOTO 51
  IF ~~ THEN REPLY #16130 /* ~Sign the contract as it is.~ */ GOTO 52
  IF ~~ THEN REPLY #16131 /* ~"I've changed my mind - I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16132 /* ~"Forget it - keep your pendant. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.3
  SAY #15703 /* ~The contract appears to be written on flesh, rather than parchment; the writing, delicate lines of blood just beneath the skin's surface. Just as you had logically assumed there might be, there are some less-than-satisfying clauses hidden in the document.~ */
  IF ~~ THEN REPLY #16133 /* ~"We need to renegotiate some of these fine points..."~ */ GOTO 51
  IF ~~ THEN REPLY #16134 /* ~Sign the contract as it is.~ */ GOTO 52
  IF ~~ THEN REPLY #16135 /* ~"I've changed my mind - I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16136 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 45.4
  SAY #15704 /* ~The contract appears to be written on flesh, rather than parchment; the writing, delicate lines of blood just beneath the skin's surface. Just as you had logically assumed there might be, there are some less-than-satisfying clauses hidden in the document. You also search for loopholes that might be used to your benefit, but can find none.~ */
  IF ~~ THEN REPLY #16137 /* ~"We need to renegotiate some of these fine points..."~ */ GOTO 51
  IF ~~ THEN REPLY #16138 /* ~Sign the contract as it is.~ */ GOTO 52
  IF ~~ THEN REPLY #16139 /* ~"I've changed my mind - I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16140 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 45.5
  SAY #15705 /* ~The contract appears to be written on flesh, rather than parchment; the writing, delicate lines of blood just beneath the skin's surface. You instantly spot some less-than-satisfying clauses in the document, some of them hidden quite insidiously. You also see a number of loopholes that might possibly be used to your benefit.~ */
  IF ~~ THEN REPLY #16141 /* ~"We need to renegotiate some of these fine points..."~ */ GOTO 51
  IF ~~ THEN REPLY #16142 /* ~Sign the contract as it is.~ */ GOTO 52
  IF ~~ THEN REPLY #16143 /* ~"I've changed my mind - I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16144 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 47.0 48.0 49.0 50.0
  SAY #15706 /* ~"Of course; I expected as much from thee." As you begin to go over the contract with the devil, arguing and prying, compromising and maneuvering, you begin to feel as if this is something you've done before...~ */
  IF ~~ THEN REPLY #16145 /* ~Try to recall the memory.~ */ GOTO 63
  IF ~~ THEN REPLY #16146 /* ~Repress the memory.~ */ GOTO 62
END

IF ~~ THEN BEGIN 52 // from: 45.0 46.0 47.1 48.1 49.1 50.1 62.0
  SAY #15707 /* ~As you finish signing the contract, both it and the quill pen dissipate into sweet-smelling curls of reddish smoke. "Farewell, wanderer... I shall see thee once more when the proper time has passed, whereupon I shall serve thee in the manner outlined for the agreed duration." He bows and turns to leave.~ */
  IF ~~ THEN REPLY #16147 /* ~"Wait; I had some questions..."~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 64
  IF ~~ THEN REPLY #16148 /* ~Let him go.~ */ DO ~SetGlobal("RC_Contract","GLOBAL",1)
AddexperienceParty(1000)
Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 53 // from: 2.1
  SAY #15708 /* ~"What's that, m'lord? I wear no jewelry..."~ */
  IF ~~ THEN REPLY #16149 /* ~"You can drop the facade. I know what you are, fiend."~ */ GOTO 3
  IF ~~ THEN REPLY #16150 /* ~"No more talk... I'll just slay you and take it."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16151 /* ~"Never mind. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 54 // from: 5.1 6.1 7.1 9.1 10.1 11.1 12.2 13.2 14.2 15.2 16.4 17.6 18.5 19.5 20.5 21.6 22.3 23.4 24.3 25.3 26.3 27.3 28.1 29.3 30.3 32.3 55.4 56.3 57.2 58.3 60.0 61.0
  SAY #15709 /* ~"I shall answer thee as best I can."~ */
  IF ~  Global("RC_Tale","AR0400",0)
~ THEN REPLY #16152 /* ~"Why are you here?"~ */ GOTO 22
  IF ~  Global("RC_Tale","AR0400",1)
~ THEN REPLY #16153 /* ~"Tell me your tale again."~ */ GOTO 23
  IF ~~ THEN REPLY #16154 /* ~"Tell me about your pendant."~ */ GOTO 16
  IF ~  !Dead("Adyzoel")
~ THEN REPLY #16155 /* ~"Who is the rake that you stand nearby each day?"~ */ GOTO 60
  IF ~  Dead("Adyzoel")
~ THEN REPLY #16156 /* ~"Who was the rake that you stood by each day?"~ */ GOTO 61
  IF ~  Global("RC_Pendant","AR0400",0)
~ THEN REPLY #16157 /* ~"Never mind; just give me the pendant."~ */ GOTO 12
  IF ~  Global("RC_Pendant","AR0400",1)
~ THEN REPLY #16158 /* ~"Never mind; just give me the pendant."~ */ GOTO 15
  IF ~~ THEN REPLY #16159 /* ~"Never mind. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 32.2
  SAY #15710 /* ~"But why?"~ */
  IF ~~ THEN REPLY #16160 /* ~"Because I've been promised power for its delivery."~ */ GOTO 37
  IF ~~ THEN REPLY #16161 /* ~"Because what you're doing with it is wrong."~ */ GOTO 56
  IF ~~ THEN REPLY #16162 /* ~"It's no concern of yours."~ */ GOTO 58
  IF ~~ THEN REPLY #16163 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16164 /* ~"Never mind your pendant for now. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16165 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.1 58.1
  SAY #15711 /* ~"And what wouldst thou do with it, then? Prevent it from falling into the wrong hands? Sell it? Barter it away? Just what dost thou think the pendant's next owner shall do with the thing?"~ */
  IF ~~ THEN REPLY #16166 /* ~"Nothing worse than what you're doing."~ */ GOTO 57
  IF ~~ THEN REPLY #16167 /* ~"I'm trading it to two fiends for power."~ */ GOTO 37
  IF ~~ THEN REPLY #16168 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16169 /* ~"Never mind your pendant for now. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16170 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15712 /* ~"Only if thou couldst somehow manage to hide the pendant where no being would ever find it. Its very nature ensures no good can come of its use. There are reasons why it might be best to leave the thing in my hands, I assure thee."~ */
  IF ~~ THEN REPLY #16171 /* ~"Such as?"~ */ GOTO 34
  IF ~~ THEN REPLY #16172 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16173 /* ~"Never mind your pendant for now. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16174 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.2
  SAY #15713 /* ~He looks shocked. "How couldst thee say such a thing? Thou wouldst rob me like a common brigand, steal my one great and true chance, dash my hopes to pieces and then tell me your reasons are not mine to wonder about?"~ */
  IF ~~ THEN REPLY #16175 /* ~"Because I've been promised power for its delivery."~ */ GOTO 37
  IF ~~ THEN REPLY #16176 /* ~"Because what you're doing with it is wrong."~ */ GOTO 56
  IF ~~ THEN REPLY #16177 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16178 /* ~"Never mind your pendant for now. I had some questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16179 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 59 // from: 37.1
  SAY #15714 /* ~"Thou art quite mistaken; it is my chief concern, at the moment. How wouldst I respond with an appropriate counter-offer, shouldst I not know thy current contract's terms?"~ */
  IF ~~ THEN REPLY #16180 /* ~"By a pair of fiends, then, and I'm not sure what sort of power."~ */ GOTO 38
  IF ~~ THEN REPLY #16181 /* ~"You have an offer for me, then?"~ */ GOTO 42
  IF ~~ THEN REPLY #16182 /* ~"Enough talk - I'll just slay you and take the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16183 /* ~"Forget it - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 60 // from: 54.3
  SAY #15715 /* ~"Simply an arrogant young nobleman and impeccable swordsman. He is in my thrall, though he does not realize it as such, until I choose to release him or perish, myself."~ */
  IF ~~ THEN REPLY #16184 /* ~"I had other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16185 /* ~"That's all I wished to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from: 54.4
  SAY #15716 /* ~"Simply an arrogant young nobleman and impeccable swordsman. He had been in my thrall though he had not realized it as such, and unwittingly served me as a protector of sorts."~ */
  IF ~~ THEN REPLY #16186 /* ~"I had other questions..."~ */ GOTO 54
  IF ~~ THEN REPLY #16187 /* ~"That's all I wished to know. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 51.1 63.0 63.1 63.2 63.3
  SAY #15717 /* ~You finish the contract negotiations at last. "Well? Art thou satisfied?"~ */
  IF ~~ THEN REPLY #16188 /* ~"Yes; I'll sign it, now."~ */ GOTO 52
  IF ~~ THEN REPLY #16189 /* ~"No... I'll just slay you for the pendant."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16190 /* ~"Never mind the contract - keep your pendant. Farewell."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 51.0
  SAY #15718 /* ~Mulling it over, you realize you're certain you've done this before. Days spent among musty tomes and legal documents in preparation for intense negotiations to come, carefully-worded phrases with hidden double-meanings, loopholes upon loopholes, lies buried in truths, twisting laws and promises until they're hardly recognizable as such... recollections of all these things and more wash over you in a sudden rush.~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #16192 /* ~Continue...~ */ DO ~AddexperienceParty(200)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #16191 /* ~Continue...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16193 /* ~Continue...~ */ DO ~AddexperienceParty(400)
~ GOTO 62
  IF ~  CheckStatGT(Protagonist,16,INT)
CheckStatLT(Protagonist,17,WIS)
~ THEN REPLY #16194 /* ~Continue...~ */ DO ~AddexperienceParty(600)
~ GOTO 62
END

IF ~~ THEN BEGIN 64 // from: 52.0
  SAY #15719 /* ~"No questions. We shall have much time to speak when we next meet; ask me what thou will, then. Farewell."~ */
  IF ~~ THEN DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Global("RChaser2","AR0400",0)
~ THEN BEGIN 65 // from:
  SAY #15720 /* ~Malric, the Rake-Chaser, is standing here staring off into space. 'He' seems oblivious to his surroundings.~ */
  IF ~~ THEN REPLY #16195 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #16196 /* ~Attack him.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #16197 /* ~Leave 'him' in peace.~ */ EXIT
END
