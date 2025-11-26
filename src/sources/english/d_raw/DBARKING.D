// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKING.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKING~

IF ~  Global("Wilder","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9712 /* ~This wild-eyed man is hunched over, snarling and giving low growls. It looks like he hasn't trimmed his hair in years... it's so long it forms a veil over his eyes. He has a long, stringy moustache caked with grease and sweat, and the tips of the moustache droop so much that they have become tangled in his ragged beard. ~ */
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13835 /* ~"Greetings."~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13836 /* ~"Greetings."~ */ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13837 /* ~"Greetings."~ */ GOTO 1
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",0)
~ THEN REPLY #13838 /* ~Growl at him.~ */ DO ~SetGlobal("Annah_Wilder_Quip_1","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ EXTERN ~DANNAH~ 93
  IF ~  NearbyDialog("DAnnah")
Global("Annah_Wilder_Quip_1","GLOBAL",1)
~ THEN REPLY #13839 /* ~Growl at him.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #13840 /* ~Growl at him.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13841 /* ~Leave the man alone.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13842 /* ~Leave the man alone.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2 0.4 0.5
  SAY #13793 /* ~The man stops in mid-snarl, and he reaches up to part the curtain of hair that cover his eyes. As his withered hand pulls away his dirty locks, several strange, puce-colored bugs fall from his hair and scatter across the cobbles. Behind the cloak of hair, the man's flesh is moon-pale and creased with wrinkles. His thick, bushy eyebrows form a 'V' as he stares at you. "Hand, my take th' moon fly, toooo?"~ */
  IF ~~ THEN REPLY #13843 /* ~"Uh, not today. I had some questions..."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13844 /* ~"'Take your hand and fly to the moon'? Not today, my friend."~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13845 /* ~"'Take your hand and fly to the moon'? Not today, my friend."~ */ GOTO 4
  IF ~~ THEN REPLY #13846 /* ~"Moon - moons - snoom - noom?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13847 /* ~Snarl at him, then start barking.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #13848 /* ~Tilt your head to one side, as if studying him.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13849 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13850 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #13794 /* ~The man nods his head eagerly, then claps his hands like a child. "Answers split with half-blue's oil! KNOW! Self yer quest shun!" At the end of this, he gives a long, warbling howl, cut short with a sharp bark.~ */
  IF ~~ THEN REPLY #13851 /* ~"Look, calm down. I have some questions for you..."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13852 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13853 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.0 4.1
  SAY #13795 /* ~The man throws back his head and *howls.* It is such a terrible sound that you are forced to cover your ears. Even that isn't enough: As you cover your ears, the howl seems to grow into a shrieking, drilling into your head, slipping inside your ears, burrowing beneath the skin, then crawling along the inside of your skull and eating the shreds of your sanity. The sound is so unbearable, you can't even muster the strength to speak. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13854 /* ~Turn away, leave the man be.~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13855 /* ~Turn away, leave the man be.~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 4 // from: 1.1 1.2 1.3 1.4 1.5
  SAY #13796 /* ~The man frowns, but his eyebrows tilt upwards in a reverse 'V,' creating a bizarre expression. You have no idea how he accomplished the facial expression, but it makes you uncomfortable watching the muscles beneath his face shift into the new pattern. You can't tell whether he's angry, curious, both or neither. "Singed kisssspeak a man, answersss pre-fur a wood woman heart."~ */
  IF ~~ THEN REPLY #13856 /* ~"Uh, not today. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #13857 /* ~"Hunh?"~ */ GOTO 3
  IF ~  GlobalLT("Law","GLOBAL",-12)
~ THEN REPLY #13858 /* ~Improvise Song: "Single man, shingle man, through the forest they go... a wood woman's heart never apart and laughing in the snow."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #13859 /* ~"'A single kiss speaks a woman's heart, but a man's answer is what you would prefer'? Very well, then, but know this: my answer is a question, and an answer from you is what I would prefer."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #13860 /* ~"'A single kiss speaks a woman's heart, but a man's answer is what you would prefer'? Very well, then, but know this: my answer is a question, and an answer from you is what I would prefer."~ */ DO ~SetGlobal("Wilder","GLOBAL",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13861 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13862 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 5 // from: 4.2 4.3 4.4
  SAY #13797 /* ~The man seems mesmerized by your voice. With every word you speak, a light flickers in his eyes. "Barking Wilder Am-I, I-Am! A-Wanting, Asking-A, May-You, You-May?"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13863 /* ~"You may, and I will: Who... or what... are you?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13864 /* ~"You may, and I will: Are you one of the Chaosmen?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13865 /* ~"My question is this: Are you one of the Starved Dogs Barking?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13866 /* ~"May I join the Chaosmen?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13867 /* ~"Join the can I the Chaosmen?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13868 /* ~"Join the can I the Chaosmen?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13869 /* ~"I'm looking for a man named Pharod. Do you know of him?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13870 /* ~"I'm looking for a lost journal. Do you know where I might find one?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13871 /* ~"What were you saying about my journals again?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13872 /* ~"What do I get for joining the Chaosmen? Any powers? Any special abilities?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13873 /* ~"Can I see what items the Chaosmen sell to their members?"~ */ GOTO 30
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13874 /* ~"Uh... no asking-a, today. Farewell."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13875 /* ~"Uh... no asking-a, today. Farewell."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 6 // from: 8.3 9.2 10.2 11.2 12.0 13.0 14.0 15.0 16.1 18.0 20.2 23.0 24.0 25.9 26.0 27.5 28.1 29.0 31.0 32.1 33.0 34.0 35.0 35.1 35.3
  SAY #13798 /* ~He claps his hands delightedly, like a child at a festival, then gives a howling shout: "Quest SHUN! Quest SHUN!"~ */
  IF ~  Global("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #13876 /* ~"Do not shun this question: Who... or what... are you?"~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
~ THEN REPLY #13877 /* ~"Do not shun this question: Are you one of the Chaosmen?"~ */ GOTO 13
  IF ~  Global("Know_SDB","GLOBAL",1)
~ THEN REPLY #13878 /* ~"My question is this: Are you one of the Starved Dogs Barking?"~ */ GOTO 14
  IF ~  Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13879 /* ~"May I join the Chaosmen?"~ */ GOTO 15
  IF ~  GlobalLT("Law","GLOBAL",-20)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13880 /* ~"Join the can I the Chaosmen?"~ */ GOTO 25
  IF ~  GlobalLT("Law","GLOBAL",-35)
Global("Know_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Chaosmen_2","GLOBAL",0)
~ THEN REPLY #13881 /* ~"Join the can I the Chaosmen?"~ */ DO ~SetGlobal("Join_Chaosmen_2","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #13882 /* ~"I'm looking for a man named Pharod. Do you know of him?"~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
Global("Wilder_Journal","GLOBAL",0)
~ THEN REPLY #13883 /* ~"I'm looking for a lost journal. Do you know where I might find one?"~ */ DO ~SetGlobal("Wilder_Journal","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 7
  IF ~  Global("Wilder_Journal","GLOBAL",1)
~ THEN REPLY #13884 /* ~"What were you saying about my journals again?"~ */ GOTO 7
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13885 /* ~"What do I get for joining the Chaosmen? Any powers? Any special abilities?"~ */ GOTO 29
  IF ~  !Global("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #13886 /* ~"Can I see what items the Chaosmen sell to their members?"~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13887 /* ~"Uh... no asking-a, today. Farewell."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13888 /* ~"Uh... no asking-a, today. Farewell."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 7 // from: 5.7 5.8 6.7 6.8
  SAY #13799 /* ~He frowns, squints his eyes shut, then opens them back up. When he speaks again, his voice is level and straightforward... it's like a different, saner, person is speaking. The effect is eerie. "More than one lost, more than one must you find. Each part of you had one, so more than one must you find." He blinks and shakes his head for a moment, as if surprised at himself, then chuckles uneasily.~ */
  IF ~~ THEN REPLY #13889 /* ~"Can you tell me where at least one of them is?"~ */ JOURNAL #58924 /* ~I "spoke" to Barking-Wilder outside the Smoldering Corpse bar - to my surprise, not only did he seem to know where my journal is, he said that there was more than one of them. He said one was 'on the walls of a tomb sealed deep beneath the city where the stones weep,' another was 'in a cupboard in my guest room in the Hall of the Sensates,' and that there were others to be found as well. I don't know how much to trust his information, but he actually seemed sane when he mentioned the journals.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #13800 /* ~He looks like he is about to object, then suddenly his left fist comes up and smacks him in the temple. He howls in response, then suddenly stops, blinking. "One is in a cupboard in your guest room in the hall of the Sensates, and another is on the walls of a tomb sealed deep beneath the city where the stones weep. The others are..." Before he can finish, his right fist comes up and smashes him in the face, causing him to yowl again. He blinks and shakes his head for a moment, as if surprised at himself, then smiles uneasily.~ */
  IF ~~ THEN REPLY #13890 /* ~"Hall of the Sensates? Where's that?"~ */ GOTO 9
  IF ~~ THEN REPLY #13891 /* ~"Tomb beneath the city? Where?"~ */ GOTO 10
  IF ~~ THEN REPLY #13892 /* ~"Where are these other journals?"~ */ GOTO 11
  IF ~~ THEN REPLY #13893 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13894 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13895 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0
  SAY #13801 /* ~Barking-Wilder holds up his hands... he doesn't seem to recall what he just said. ~ */
  IF ~~ THEN REPLY #13896 /* ~"You said one was in a sarcophagus beneath the city? Where?"~ */ GOTO 10
  IF ~~ THEN REPLY #13897 /* ~"Where are those other journals you mentioned?"~ */ GOTO 11
  IF ~~ THEN REPLY #13898 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13899 /* ~"Forget it, then. I'll try and find it on my own."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13900 /* ~"Forget it, then. I'll try and find it on my own."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.1
  SAY #13802 /* ~Barking-Wilder looks frightened for a moment, then points upwards with a hopeful expression. "Uh... there?" He gulps. He doesn't seem to know, and for some reason, you believe him.~ */
  IF ~~ THEN REPLY #13901 /* ~"You said one was in the Hall of the Sensates? Where's that?"~ */ GOTO 9
  IF ~~ THEN REPLY #13902 /* ~"Where are those other journals you mentioned?"~ */ GOTO 11
  IF ~~ THEN REPLY #13903 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13904 /* ~"Forget it, then. I'll try and find it on my own."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13905 /* ~"Forget it, then. I'll try and find it on my own."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.1
  SAY #13803 /* ~Barking-Wilder shrugs, watching you warily. "Other places maybe?" He gulps.~ */
  IF ~~ THEN REPLY #13906 /* ~"You said one was in the Hall of the Sensates? Where's that?"~ */ GOTO 9
  IF ~~ THEN REPLY #13907 /* ~"You said one was in a sarcophagus beneath the city? Where?"~ */ GOTO 10
  IF ~~ THEN REPLY #13908 /* ~"I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13909 /* ~"Forget it, then. I'll try and find them on my own."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13910 /* ~"Forget it, then. I'll try and find them on my own."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 12 // from: 5.6 6.6
  SAY #13804 /* ~Barking-Wilder shrugs, then responds in a sing-song voice. "Fair odd? Not fair, not odd, lost not, help not..." He growls to himself, as if to clear his throat. "Maybe you lose him first, then ask me, then fair odds it will be?"~ */
  IF ~~ THEN REPLY #13911 /* ~"To lose him, I'd have to find him first. I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13912 /* ~"Forget it, then. I'll try and find him on my own."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13913 /* ~"Forget it, then. I'll try and find him on my own."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 13 // from: 5.0 5.1 6.0 6.1
  SAY #13805 /* ~"Kay-osh!" He stutters out the word, as if having difficulty getting his tongue around it. "Some say Xaositects, I say S-tect-I-soax. CHAOS-men. Men no. Nem no, men yes, three nose make a yes." He hunches down on his knees and begins to rock back and forth, singing in a child-like soprano. "Chaos-man, chaos-man, hop-a-long home, a faction-it-is, yet we-are-alone."~ */
  IF ~~ THEN REPLY #13914 /* ~"So you are one of the Chaosmen. Very well. I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13915 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13916 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 14 // from: 5.2 6.2
  SAY #13806 /* ~In response, he starts barking at the top of his lungs. You watch spittle fly from his mouth in streaming arcs, and you take a step back to avoid the spray. After a moment, he stops, and then gives a long, forlorn howl.~ */
  IF ~~ THEN REPLY #13917 /* ~"That would be a yes, I suppose. Very well. I had some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13918 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13919 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 15 // from: 5.3 6.3
  SAY #13807 /* ~He looks at you askance, shrugs, then bends forward to sniff you. "Squat... stiff, lank... dank, damp... tramp, cod..." He snorts and growls to himself. "Sod!"~ */
  IF ~~ THEN REPLY #13920 /* ~"That would be a no, I suppose. Very well. I had some other questions..."~ */ GOTO 6
  IF ~  GlobalLT("Law","GLOBAL",-20)
~ THEN REPLY #13921 /* ~"Hmmmm. Join the can I the Chaosmen?"~ */ GOTO 25
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13922 /* ~"Uh... farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13923 /* ~"Uh... farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 16 // from: 5.5 6.5
  SAY #13808 /* ~This is the first thing you have said to Barking-Wilder that seems to confuse him. He thinks for a moment, growls, then jabs his finger at you. "Are a man-of-chaos already you! All ready you are-are-are!"~ */
  IF ~~ THEN REPLY #13924 /* ~Smile, narrow your eyes, and say: "Ex-act-ly."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_4","GLOBALLaw",-3)
AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #13925 /* ~"Oh, I forgot. Sorry. I have some other questions..."~ */ GOTO 6
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #13926 /* ~"Worth a try. Farewell, then."~ */ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #13927 /* ~"Worth a try. Farewell, then."~ */ EXTERN ~DMORTE~ 165
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #13809 /* ~It's like someone lit a torch in Wilder's skull, for his eyes pop open and he gives a wide smile. The smile breaks into a grin, then into a sneer. He begins to caper and dance before you. "Smart! Cart! Tart!" He claps you on the shoulder with both hands then howls at the sky. "Again you are Xaositect! Twice! Thrice! Lice!"~ */
  IF ~  GlobalGT("Law","GLOBAL",-20)
~ THEN REPLY #13928 /* ~"Lice-are-I, Xaositect-are-I!"~ */ GOTO 18
  IF ~  GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13929 /* ~"Lice-am-I, Xaositect-are-I!"~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #13810 /* ~Wilder stops dancing enough to affix you with a stare. "A factol you will soon be with such a mind, a price your mind pays for such thoughts!" He chuckles and throws his hands up into the air. "The mad king comes, and the planes come a-tumbling up!"~ */
  IF ~~ THEN REPLY #13930 /* ~"Perhaps, perhaps. But for you other questions have I..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #13811 /* ~Wilder makes an 'O' of surprise. "A factol you have become, the price your mind pays for such thoughts!" He points his finger at you like a scepter. "Bow, factol! King of Chaos-men! I pronounce you man of flesh and wife of chaos! You may now kiss the bridle!"~ */
  IF ~~ THEN REPLY #13931 /* ~"Uh... factol?"~ */ GOTO 21
  IF ~~ THEN REPLY #13932 /* ~"Factol-am-I! Bridles for everynone!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 20 // from: 35.2
  SAY #13812 /* ~Wilder looks up as he hears you, and makes an 'O' of surprise. He leaps to his feet and points his finger at you like a scepter. "Bow, factol! King of ALL Chaos-men! I pronounce you man of flesh and wife of chaos! You may now kiss the bridle!"~ */
  IF ~~ THEN REPLY #13933 /* ~"Uh... factol?"~ */ GOTO 21
  IF ~~ THEN REPLY #13934 /* ~"Factol-am-I! Bridles for everynone!"~ */ GOTO 24
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #14006 /* ~"Listen not to my QUEST-SHUNS, Wilder, QUEST-SHUNS have I..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #13813 /* ~Wilder folds his arms. "King of Chaos, you are, factol is but a name that you hang upon yourself like a dirty shirt."~ */
  IF ~~ THEN REPLY #13935 /* ~"I don't want to be factol."~ */ GOTO 22
  IF ~~ THEN REPLY #13936 /* ~"Factol-am-I! Dirty shirts forever none!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #13814 /* ~Wilder shrugs, then grins wickedly. "Like life, no choice. Baddest of luck and a wealth of curses to you!" He narrows his eyes. "You want to change title, change your mind. One easier than other unless hardhead you are!"~ */
  IF ~~ THEN REPLY #13937 /* ~"Well, I don't think it's fair that I've become a factol and no one even asked me. There should be some rule about this."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Wilder_1","GLOBALLaw",1)
~ GOTO 23
  IF ~~ THEN REPLY #13938 /* ~"Factol-am-I! Heads hard all round!"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #13815 /* ~Wilder does a low bow and presses his fingers together in a triangle shape. "Tricky, tricky! Now no factol are you! Fair and rules and laws and such stubborn things cannot be in a factol's mind..." He thinks about it for a moment. "Chains are off!" He frowns again, then shrugs. "And chains are on! But no factol now."~ */
  IF ~~ THEN REPLY #13939 /* ~"Now that we've got the de-throning out of the way, I have some questions for you..."~ */ GOTO 6
  IF ~~ THEN REPLY #13940 /* ~"Just wanted to clear that up. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 22.1
  SAY #13816 /* ~You and Wilder caper about madly for several minutes, howling at the sky. Several passersby give you strange looks, and someone in the distance starts shouting at you both to be quiet. Eventually, Wilder trips and the dance stops as he pulls himself to his feet.~ */
  IF ~~ THEN REPLY #13941 /* ~"I have questions!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ GOTO 6
  IF ~~ THEN REPLY #13942 /* ~"I do not have questions! Fare-thee-well! Well-thee-fare!"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 6.4 15.1
  SAY #13817 /* ~As you speak the words, a spark of human light seems to spring forth in the man's eyes. He looks up to the sky for a moment, then lifts up his left foot and looks beneath it. He doesn't seem to find anything, so he stretches out his hands and turns one eye on each, causing his eyes to bend in opposite directions. He then shakes his head (re-adjusting his eyes in the process) and squints at your face. ~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13943 /* ~"I'm already a member of the Godsmen, but..."~ */ GOTO 27
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13944 /* ~"I'm already a member of the Dustmen, but..."~ */ GOTO 27
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13945 /* ~"I'm already a member of the Anarchists, but..."~ */ GOTO 27
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13946 /* ~"I'm already a member of the Sensates, but..."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13947 /* ~"I'm already a member of the Godsmen. I've changed my mind... I won't turn stag on them."~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13948 /* ~"I'm already a member of the Dustmen. I've changed my mind... I won't turn stag on them."~ */ GOTO 26
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13949 /* ~"I'm already a member of the Anarchists. I've changed my mind... I won't turn stag on them."~ */ GOTO 26
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13950 /* ~"I'm already a member of the Sensates. I've changed my mind... I won't turn stag on them."~ */ GOTO 26
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13951 /* ~"So... what's the next step?"~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13952 /* ~"You know what, never mind. I had some questions instead..."~ */ GOTO 6
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13953 /* ~"Actually, forget it. I don't want to be a Chaosman. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.4 25.5 25.6 25.7
  SAY #13818 /* ~Wilder shrugs. He doesn't seem to care overmuch. "No-kay, Kay-O, hey?"~ */
  IF ~~ THEN REPLY #13954 /* ~"I had some other questions, though..."~ */ GOTO 6
  IF ~~ THEN REPLY #13955 /* ~"Uh... farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 25.2 25.3
  SAY #13820 /* ~"Back going no..." Wilder mumbles, still squinting. "Old faction forgive-no..."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #13956 /* ~"Join ready the Xaositects am I. Loyalty none faction old I have Godsmen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #13957 /* ~"Join ready the Xaositects am I. Loyalty none faction old I have Dustmen."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",2)
SetGlobal("Dead_Truce","GLOBAL",0)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13958 /* ~"Join ready the Xaositects am I. Loyalty none faction old I have Anarchists."~ */ DO ~SetGlobal("Join_Anarchists","GLOBAL",2)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #13959 /* ~"Join ready the Xaositects am I. Loyalty none faction old I have Sensates."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #13960 /* ~Lie to infiltrate Chaosmen for Anarchists: "Join ready the Xaositects am I. Loyalty none faction old I have."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Wilder_2","GLOBALLaw",-1)
SetGlobal("Join_Chaosmen","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 28
  IF ~~ THEN REPLY #13961 /* ~"Forget it. I had some other questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #13962 /* ~"I don't think I'm ready to do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.8 27.0 27.1 27.2 27.3 27.4
  SAY #13819 /* ~He mumbles to himself for a moment, then shouts, "Matters Knot!" Before you can react, his hand swings through the air with a high-pitched whine and slaps you across the face. "Met well! Thrice wit kayos are you!" He giggles as the sting in your face subsides. You have a strange feeling you have just been initiated... and that the Wilder enjoyed it too much.~ */
  IF ~~ THEN REPLY #13963 /* ~Attack him for striking you.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #13964 /* ~"Then for you other questions have I..."~ */ GOTO 6
  IF ~~ THEN REPLY #13965 /* ~"Uh... farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 5.9 6.9 6.10
  SAY #13821 /* ~The man snarls, then smiles, putting two fingers to his head as mock horns. "None!" He sneers, and he takes away his mock horns and flaps his hands like wings. "All!" He gives a choked sob and wipes his eyes. "Searching leads to finding, finding leads to searching..." He claps his hands. "What matters it? Look not for an advance-age, advan-tage, and it will search for you..."~ */
  IF ~~ THEN REPLY #13966 /* ~"I had other questions then..."~ */ GOTO 6
  IF ~~ THEN REPLY #13967 /* ~"Uh... farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 5.10
  SAY #13822 /* ~Wilder suddenly seems interested. "What got you for me, hmmmm?!"~ */
  IF ~~ THEN REPLY #13968 /* ~"No, no, I asked what you have for me."~ */ GOTO 32
  IF ~  PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13969 /* ~Show him what you have.~ */ DO ~TakePartyItemNum("Tail",1)
GiveItemCreate("Ratcharm",Protagonist,3,0,0)
SetGlobal("Wilder_Tail","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Wilder_Tail","GLOBAL",1)
~ THEN REPLY #13970 /* ~Show him what you have.~ */ GOTO 31
  IF ~  !PartyHasItem("Tail")
Global("Wilder_Tail","GLOBAL",0)
~ THEN REPLY #13971 /* ~Show him what you have.~ */ GOTO 31
  IF ~~ THEN REPLY #13972 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.3
  SAY #13823 /* ~He looks at your items with disinterest. "Nothing! A motley bunch of jack-a-napes! Worthless trinkets!"~ */
  IF ~~ THEN REPLY #13973 /* ~"I had other questions, then..."~ */ GOTO 6
  IF ~~ THEN REPLY #13974 /* ~Let Wilder alone.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #13824 /* ~He harumphs and crosses his arms. He looks like he is hiding behind his hair. "Nothing have!"~ */
  IF ~~ THEN REPLY #13975 /* ~Kick him in the shins. Hard.~ */ GOTO 33
  IF ~~ THEN REPLY #13976 /* ~"I had other questions, then..."~ */ GOTO 6
  IF ~~ THEN REPLY #13977 /* ~Let Wilder alone.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #13825 /* ~He yelps... "Everything! I have everything! And everything is nothing, so better off you are KNOT!" He blubbers like a child, clutching his shin. "Poor shin, poor shin, didn't mean to see you hurt..."~ */
  IF ~~ THEN REPLY #13978 /* ~"I had other questions, then..."~ */ GOTO 6
  IF ~~ THEN REPLY #13979 /* ~Let Wilder alone.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 30.1
  SAY #13826 /* ~Wilder's eye is immediately consumed by one of your rat tails. He plucks the rat tail from your grasp and holds it between his fingers as if it were a wriggling worm. With lightning-like speed, he knits it into a strange shape and flicks it back to you. "Charm'd, ahhhm suuuure..." He slurs the words, then chuckles.~ */
  IF ~~ THEN REPLY #13980 /* ~"I had some other questions for you..."~ */ GOTO 6
  IF ~~ THEN REPLY #13981 /* ~"Thanks, Wilder. Farewell."~ */ EXIT
END

IF ~  Global("Wilder","GLOBAL",1)
~ THEN BEGIN 35 // from:
  SAY #13827 /* ~You see Barking-Wilder. He is still hunched beneath his long, dirty locks... he seems preoccupied with growling to himself. ~ */
  IF ~  Global("Join_Chaosmen","GLOBAL",0)
~ THEN REPLY #13982 /* ~"Quest SHUN, Wilder! Close your ears and here me!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalGT("Law","GLOBAL",-36)
~ THEN REPLY #13983 /* ~"Quest SHUN, Wilder! Close your ears and here me!"~ */ GOTO 6
  IF ~  Global("Join_Chaosmen","GLOBAL",1)
GlobalLT("Law","GLOBAL",-35)
~ THEN REPLY #13984 /* ~"Quest SHUN, Wilder! Close your ears and hear me!"~ */ GOTO 20
  IF ~  Global("Join_Chaosmen","GLOBAL",3)
~ THEN REPLY #13985 /* ~"Listen not to my QUEST-SHUNS, Wilder, QUEST-SHUNS have I..."~ */ GOTO 6
  IF ~~ THEN REPLY #14005 /* ~Let Wilder alone.~ */ EXIT
END
