// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWESKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DWESKULL~

IF ~  Global("WeSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31810 /* ~This strangely-shaped skull emits a high-pitched chitter before it speaks to you. "C-c-c-can I h-help you?"~ */
  IF ~~ THEN REPLY #31811 /* ~"Who are you?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31812 /* ~"How did you get here?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~~ THEN REPLY #31813 /* ~"What can you tell me of Lothar?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 4
  IF ~~ THEN REPLY #31814 /* ~"What can you tell me of the other skulls on this shelf?"~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ GOTO 5
  IF ~~ THEN REPLY #31815 /* ~"No. Farewell."~ */ DO ~SetGlobal("WeSkull_Talk","AR0508",1)
~ EXIT
END

IF ~  Global("WeSkull_Talk","AR0508",1)
~ THEN BEGIN 1 // from:
  SAY #31816 /* ~"Y-y-y-y-you again?"~ */
  IF ~~ THEN REPLY #31817 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #31818 /* ~"How did you get here?"~ */ GOTO 3
  IF ~~ THEN REPLY #31819 /* ~"What can you tell me of Lothar?"~ */ GOTO 4
  IF ~~ THEN REPLY #31820 /* ~"What can you tell me of the other skulls on this shelf?"~ */ GOTO 5
  IF ~~ THEN REPLY #31821 /* ~"Not for long. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #31822 /* ~"I'm G-g-g-g-goatscomb. I was a wererat."~ */
  IF ~~ THEN REPLY #31823 /* ~"Were-RAT? How many were-beasts are there, anyway?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 5.1
  SAY #31824 /* ~"It's e-e-e-embarrassing. I was in rat-form looking for some f-f-f-food at the Smoldering Corpse, when... let's j-j-j-just say I never expected a serving wench to have a s-s-s-silver fork. Mantuok f-f-found me twitching, and I w-w-w-wound up here."~ */
  IF ~~ THEN REPLY #31825 /* ~"What can you tell me of Mantuok?"~ */ GOTO 7
  IF ~~ THEN REPLY #31826 /* ~"What can you tell me of the other skulls here?"~ */ GOTO 5
  IF ~~ THEN REPLY #31827 /* ~"What can you tell me of Lothar?"~ */ GOTO 4
  IF ~~ THEN REPLY #31828 /* ~"I see. Well, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.2 5.2
  SAY #31829 /* ~Goatscomb's skull falls entirely silent. If it had eyes, you're sure they'd be rolling around in terror. "Go... away..." the skull whispers. It refuses to speak to you.~ */
  IF ~~ THEN REPLY #31830 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 3.1
  SAY #31831 /* ~"They're all m-m-most judgmental. J-j-just because they were m-m-mostly human skulls, they th-th-think they're somehow b-b-b-better than me. I h-h-HATE them."~ */
  IF ~~ THEN REPLY #31832 /* ~"That's a healthy attitude. Tell me about yourself, why don't you?"~ */ GOTO 2
  IF ~~ THEN REPLY #31833 /* ~"That's nice. How did you come to be here?"~ */ GOTO 3
  IF ~~ THEN REPLY #31834 /* ~"You must like Lothar then, right?"~ */ GOTO 4
  IF ~~ THEN REPLY #31835 /* ~"Good for you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #31836 /* ~"Oh, a g-g-g-great number. R-r-ravens, w-wolves, b-b-bears, badgers... even c-c-crocodiles! It's like all the animals in the B-b-beastlands have a lycanthropic c-c-c-counterpart. I-I-I-it's quite interesting, really."~ */
  IF ~~ THEN REPLY #31837 /* ~"What wererats are around here?"~ */ GOTO 8
  IF ~~ THEN REPLY #31838 /* ~"How do you kill a werebeast?"~ */ GOTO 9
  IF ~~ THEN REPLY #31839 /* ~"I'll say. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0 8.0
  SAY #31840 /* ~"That s-s-s-sodding hedge-wizard! That b-b-b-bubber! I made him what he is today. Y-y-y-years ago, when he was just a stinking b-b-b-biped, I found him and m-made his leg a sn-sn-snack. Tasted like pickled m-m-m-meat. I was dr-drunk for d-d-d-d-days. Then he shows up. Then he g-g-gets some fancy b-b-book, and I'm y-y-y-yesterday's trash and a decoration on a sh-sh-shelf. Bastard."~ */
  IF ~~ THEN REPLY #31841 /* ~"Do you know any of his secrets?"~ */ GOTO 10
  IF ~~ THEN REPLY #31842 /* ~"How can I kill him?"~ */ GOTO 9
  IF ~~ THEN REPLY #31843 /* ~"Tough life. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #31844 /* ~"There's M-m-m-mantuok and his band. I made him, and w-w-w-what does he do? Goes and sells me to L-l-lothar! That's okay, though... I sp-sp-spilled all his secrets to the boss. Mantuok may think h-he's safe, but Lothar kn-n-n-nows everything."~ */
  IF ~~ THEN REPLY #31845 /* ~"What can you tell me about Mantuok?"~ */ GOTO 7
  IF ~~ THEN REPLY #31846 /* ~"Like what?"~ */ GOTO 10
  IF ~~ THEN REPLY #31847 /* ~"How can I kill him?"~ */ GOTO 9
  IF ~~ THEN REPLY #31848 /* ~"Good. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.1 8.2
  SAY #31849 /* ~"K-k-killing a lycanthrope is easy. Just f-f-find a silver or m-m-magic weapon, and stick 'em! Normal weapons d-d-d-don't work so well, though... was a t-t-t-time I got folks to shoot me fulla arrows. D-d-d-d-didn't do nothing but sting. I looked like a p-p-p-porcupine!"~ */
  IF ~~ THEN REPLY #31850 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.1
  SAY #31851 /* ~"His s-s-s-secret is that he works for b-b-b-both Lothar and M-m-m-many-as-One, the cranium rat hive mind. I don't know w-w-w-what he's planning, b-b-but ... it doesn't m-m-m-m-matter, because I t-t-t-told Lothar all of it anyway."~ */
  IF ~~ THEN REPLY #31852 /* ~"I see. Thanks, and farewell."~ */ EXIT
END
