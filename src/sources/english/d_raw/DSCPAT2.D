// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Ignus","GLOBAL",1)
NearbyDialog("DIgnus")
~ THEN BEGIN 0 // from:
  SAY #3073 /* ~As you approach the woman to talk to her, Ignus' eyes flare up, and before you can stop him, he embraces her. She returns his embrace, losing herself in his flames. She does not cry out. Your last glimpse of her is burned into your memory: Her eyes are full of fiery passion and all-engulfing love. Nothing is left of her - not even ashes.~ */
  IF ~~ THEN REPLY #10815 /* ~"That was thorough, Ignus, and hasty. I wanted to speak with her."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
SetAnimState(Myself,ANIM_MIMEDIE)
SetGlobal("Drusilla","GLOBAL",2)
DestroySelf()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10816 /* ~This is a woman with fading bruises on her face and arms and a look of despairing longing in her sunken eyes. She might have been pretty once, but those days were long ago. She turns slowly to face you. Life pours into her features, and the spark of sardonic light that dances in her eyes now makes you wonder if your eyes were deceiving you. "Welcome to the Smoldering Corpse, scarred man."~ */
  IF ~~ THEN REPLY #10817 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10818 /* ~"I'm looking for a journal. Would you happen to have seen it?"~ */ GOTO 4
  IF ~~ THEN REPLY #10819 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10820 /* ~"Who is that burning by the entryway?"~ */ JOURNAL #68053 /* ~Drusilla, who stands by the door in the Smoldering Corpse Bar, told me of the man burning over the grill. His name is Ignus, and he was apparently the best mage to come out of the Hive in ages. His rivals opened a channel to the Elemental Plane of Fire through him, and now he keeps himself alive by sheer concentration. A powerful man, indeed...~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10821 /* ~"I'm looking for a Collector by the name of Pharod. Have you seen or heard of him?"~ */ GOTO 19
  IF ~~ THEN REPLY #10822 /* ~"Nothing. Good day."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 15 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10823 /* ~This time, Drusilla seems slightly more lively - at least, you don't catch a glimpse of the despair that you smelled on her the first time you spoke with her. "'Lo again, traveler."~ */
  IF ~~ THEN REPLY #10824 /* ~"Hello, Drusilla. I'd like you to answer some questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10825 /* ~"Hello, Drusilla, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 7.0
  SAY #10826 /* ~"I? I am Drusilla. And you must be clueless. Don't ask me how I know that. It just shines off you."~ */
  IF ~~ THEN REPLY #10827 /* ~"Clueless? I think not."~ */ GOTO 8
  IF ~~ THEN REPLY #10828 /* ~"Shines. Right. Answer some questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10829 /* ~"I don't want to hear it. Especially not from you. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 7.1
  SAY #10830 /* ~"A journal? Oh, sure. I've kept an eye out for all stray journals. Just in case some scarred man walks into my favorite bar and starts asking about it. Do you ask that of everyone you meet? What a fascinating life."~ */
  IF ~~ THEN REPLY #10831 /* ~"You have a smart mouth on you, don't you?"~ */ GOTO 9
  IF ~~ THEN REPLY #10832 /* ~"Just answer my questions and let's get through this."~ */ GOTO 7
  IF ~~ THEN REPLY #10833 /* ~"Far more so than yours, I'd wager."~ */ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.2 7.2
  SAY #10834 /* ~"Here? This is the Smoldering Corpse, though the person smoldering ain't dead yet. He's just keepin' himself alive till someone comes along to help him out. Sods who like to see people in pain come here. Fiends like it. Folks who don't much care for bein' bothered come here too... the name alone keeps out most of the berks."~ */
  IF ~~ THEN REPLY #10835 /* ~"Who is he, anyway?"~ */ JOURNAL #68053 /* ~Drusilla, who stands by the door in the Smoldering Corpse Bar, told me of the man burning over the grill. His name is Ignus, and he was apparently the best mage to come out of the Hive in ages. His rivals opened a channel to the Elemental Plane of Fire through him, and now he keeps himself alive by sheer concentration. A powerful man, indeed...~ */ GOTO 6
  IF ~~ THEN REPLY #10836 /* ~"I understand. Answer some more questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10837 /* ~"Good name for it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 5.0 7.4
  SAY #10838 /* ~That despair you saw on her face before flits across it again like a black-winged shadow before she masters herself. "That's Ignus, one of the greatest wizards ever to come out of this slummy excuse for a cesspool. They caught him and they opened a channel to the plane of Fire through him, and now he's just a doorway for it, keepin' himself alive by force o' will alone. If someone could douse him for a few moments, it'd give him his life back again - but they don't make enough water to do that."~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10839 /* ~"What about this decanter? Word has it it's endless."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10840 /* ~"Someone should be able to find something. Ah, well. Can you answer some more questions for me?"~ */ GOTO 7
  IF ~~ THEN REPLY #10841 /* ~"What's your connection to him?"~ */ GOTO 18
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20699 /* ~"What about this decanter of water? Word has it it's endless."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #10842 /* ~"That's too bad. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.1 4.1 5.1 6.1 8.0 9.0 18.0 19.0
  SAY #10843 /* ~"Aye, traveler? What is it you seek?"~ */
  IF ~~ THEN REPLY #10844 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10845 /* ~"I'm looking for a journal. Would you happen to have seen it?"~ */ GOTO 4
  IF ~~ THEN REPLY #10846 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10847 /* ~"I'm looking for a Collector by the name of Pharod. Have you seen or heard of him?"~ */ GOTO 19
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10848 /* ~"Who is that burning by the entryway?"~ */ JOURNAL #68053 /* ~Drusilla, who stands by the door in the Smoldering Corpse Bar, told me of the man burning over the grill. His name is Ignus, and he was apparently the best mage to come out of the Hive in ages. His rivals opened a channel to the Elemental Plane of Fire through him, and now he keeps himself alive by sheer concentration. A powerful man, indeed...~ */ GOTO 6
  IF ~~ THEN REPLY #10849 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.0
  SAY #10850 /* ~She smirks at you, and her bruises seem almost to fade. "Whatever you say, dearie."~ */
  IF ~~ THEN REPLY #10851 /* ~"Whatever. Answer some questions for me."~ */ GOTO 7
  IF ~~ THEN REPLY #10852 /* ~"Whatever. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0
  SAY #10853 /* ~"Aye, a smart mouth for a smart head. I ain't the addle-cove you might think, sod. I got a brain on me."~ */
  IF ~~ THEN REPLY #10854 /* ~"If you're so smart, you should be able to answer my questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10855 /* ~"Too bad it's not IN you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.2
  SAY #10856 /* ~"Oh, is that so, aye? Have you ever been in love with a living flame? Have you ever wanted to vanish utterly in the arms of another, to lose yourself in the heat of passion? Your eyes tell me that you wish you had, but you've had no luck. Don't talk to me about fascinating. Scars ain't fascinating. Fights ain't fascinating. Tough ain't fascinating. YOU ain't fascinating."~ */
  IF ~~ THEN REPLY #10857 /* ~"I don't really see that I need to justify myself to you."~ */ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #10858 /* ~"Where should I start? I'm immortal, I lose my memory every time I die, I have a floating skull for a sidekick, I'm having experiences that would make most mortals scream their souls out through their eyes, and you're telling me that being in love with a fire is fascinating? That's not fascinating - it's just crazy."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #10859 /* ~"Where should I start? I'm immortal, I lose my memory every time I die, I'm having experiences that would make most mortals scream their souls out through their eyes, and you're telling me that being in love with a fire is fascinating? That's not fascinating - it's just crazy."~ */ DO ~SetGlobal("Drusilla","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #10860 /* ~"This conversation is over."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #10861 /* ~"No, that'd be too hard, wouldn't it? G'wan. I don't need to talk to you." She turns her back on you, dismissing you.~ */
  IF ~~ THEN REPLY #10862 /* ~"You haven't seen the last of me."~ */ EXIT
  IF ~~ THEN REPLY #10863 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 10.2
  SAY #10864 /* ~She recoils suddenly, and looks at you more closely. Excitement creeps into her voice. "You're him, aren't you? You're him!"~ */
  IF ~~ THEN REPLY #10865 /* ~"What do you mean?"~ */ GOTO 13
  IF ~~ THEN REPLY #10866 /* ~"No, I'm not. Answer some more questions."~ */ GOTO 13
  IF ~~ THEN REPLY #10867 /* ~"No, I'm not. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #10868 /* ~"He said you'd come! He said you're the one who'll set him free! He spoke to me in a dream and told me that you'd come with an ocean of water to balance him, so he could burn across the planes! Free him! Please, save him!"~ */
  IF ~~ THEN REPLY #10869 /* ~"What's your connection to him?"~ */ GOTO 14
  IF ~~ THEN REPLY #10870 /* ~"I'll think about it. Answer some more questions for me, first."~ */ GOTO 15
  IF ~~ THEN REPLY #10871 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.1
  SAY #10872 /* ~"I was Ignus' lover. We both loved the flame, though he loved it more than I did. But now I watch his beauty as he writhes in the heart of the fire, and I, Drusilla, love them equally."~ */
  IF ~~ THEN REPLY #10873 /* ~"You're barmy, aren't you? All right, answer some questions for me."~ */ GOTO 15
  IF ~~ THEN REPLY #10874 /* ~"You're totally over the edge. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Drusilla","GLOBAL",1)
~ THEN BEGIN 15 // from: 13.1 14.0 17.0 20.0 21.0 22.0 23.0
  SAY #10875 /* ~"When will you free Ignus?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10876 /* ~"As soon as I can get this to him. They say this decanter holds an endless supply of water."~ */ GOTO 16
  IF ~~ THEN REPLY #10877 /* ~"Who are you, exactly?"~ */ GOTO 14
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10878 /* ~"I'm looking for a journal. Would you happen to have seen it?"~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10879 /* ~"I'm looking for a Collector by the name of Pharod. Have you seen or heard of him?"~ */ GOTO 20
  IF ~~ THEN REPLY #10880 /* ~"What can you tell me about this tavern?"~ */ GOTO 17
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #20700 /* ~"As soon as I can get this to him. They say this decanter holds an endless supply of water."~ */ GOTO 16
  IF ~~ THEN REPLY #20710 /* ~"When I get around to it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 6.0 6.3 15.0 15.5
  SAY #10882 /* ~"Yes! Use that on him and he'll be sure to come free! Oh, my Ignus, I await you!" She pauses for a moment, dread in her eyes. "Do you know the command word?"~ */
  IF ~  PartyHasItem("Decant")
~ THEN REPLY #10883 /* ~"Not yet."~ */ GOTO 23
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #10884 /* ~"Yes, I do."~ */ GOTO 22
END

IF ~~ THEN BEGIN 17 // from: 15.4
  SAY #10885 /* ~"It is the prison for my love, the place where they have kept him cruelly bound over the centuries, the place I have come over the decades to commune with him in his fiery torment. It is the place that has driven me to live beyond my years and beyond my means. I hate this place."~ */
  IF ~~ THEN REPLY #10886 /* ~"Very well. Answer some other questions."~ */ GOTO 15
  IF ~~ THEN REPLY #10887 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.2
  SAY #10888 /* ~Her voice practically throbs with a deep ache. "I was Ignus' lover and he, my beloved. He loved the flame more than me and now he has become the flame - and because I love him, I love the flame... but that's all done with now. Now I wait for him to douse himself. I sell what little I have just so I can be near him."~ */
  IF ~~ THEN REPLY #10889 /* ~"Very well. Answer some other questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10890 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 1.4 7.3
  SAY #10891 /* ~"Pharod?" she snickers. "The Collector King? You can probably find him and his stinking ilk in the trash warrens on the far side of the Hive. Good luck in getting any answers from him - he's a sly devil, he is."~ */
  IF ~~ THEN REPLY #10892 /* ~"Very well. Answer some other questions."~ */ GOTO 7
  IF ~~ THEN REPLY #10893 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3
  SAY #10894 /* ~"Pharod?" she sneers. "The Collector King? You can probably find him and his stinking ilk in the trash warrens on the far side of the Hive. He's a sly devil, he is. Not near as sly as my Ignus, though."~ */
  IF ~~ THEN REPLY #10895 /* ~"Very well. Answer some other questions."~ */ GOTO 15
  IF ~~ THEN REPLY #10896 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 15.2
  SAY #10897 /* ~"I've seen no journal that I can recall. I don't know. Maybe ask some of the Collectors. I don't know!"~ */
  IF ~~ THEN REPLY #10898 /* ~"That's no help. Give me some answers, Drusilla."~ */ GOTO 15
  IF ~~ THEN REPLY #10899 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 16.1
  SAY #20711 /* ~Her eyes brighten even further, if that's possible. "Then use it! Use it on him now!"~ */
  IF ~~ THEN REPLY #20712 /* ~"In a minute. I need some more answers from you."~ */ GOTO 15
  IF ~~ THEN REPLY #20713 /* ~"That's what I'm about to do."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #20714 /* ~"Then go find it, I implore you!" She tugs on your arm. Her eyes have taken a frantic sheen of madness.~ */
  IF ~~ THEN REPLY #20715 /* ~"I will, I will. I need more answers first..."~ */ GOTO 15
  IF ~~ THEN REPLY #20716 /* ~"I will. Farewell."~ */ EXIT
END
