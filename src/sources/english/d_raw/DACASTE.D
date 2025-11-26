// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DACASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DACASTE~

IF ~  Global("Acaste","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2875 /* ~The rot-stink of this ancient-looking ghoul-woman is nauseating, even from a distance. Her gray-green skin is infested with tomb rot and festering sores, and her fingers, each capped by a long, curved talon, are covered in dried blood and filth. Her hair, thick with scuttling insects and worms, hangs to her knees. It hides nearly all her face in shadow, save for a fanged, feral grin and a lolling gray tongue.~ */
  IF ~~ THEN REPLY #2876 /* ~"Greetings..."~ */ DO ~SetGlobal("Acaste","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #20853 /* ~Leave the ghoul-woman be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20854 /* ~"Hsssst. What have we here? Some pretty meat, aye, a little tough gristle? Sharpen me teeth on yer bone and grow fat on yer marrow, hmmm? Hsssst."~ */
  IF ~  Global("Know_Acaste","GLOBAL",1)
~ THEN REPLY #20855 /* ~"You must be Acaste."~ */ GOTO 2
  IF ~~ THEN REPLY #20856 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #20857 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20858 /* ~"I don't *have* to be anything to ye, meat and bones. Ye watch yer tone with me, or no one will find ye in one piece again."~ */
  IF ~~ THEN REPLY #20859 /* ~"I'll use whatever tone I like with you, ghoul."~ */ GOTO 3
  IF ~~ THEN REPLY #20860 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #20861 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #20862 /* ~She begins to laugh before you've finished speaking, a terrible, shrill, mocking sound. "Foolish meat! Don't know, do ye! I am Acaste, ghoul-queen! My precious Blighted Ones'll feast upon you, devour every last bit, even yer marrow'll fill our bellies! Dare ye speak to me so?"~ */
  IF ~~ THEN REPLY #20863 /* ~"Your pack of sorry scavengers doesn't frighten me."~ */ GOTO 4
  IF ~~ THEN REPLY #20864 /* ~"Never mind. I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #20865 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #20866 /* ~She sneers at you. "Lucky, ye are, lucky meat, lucky! Lucky for the Silent King's word! Else ye'd be food for our bellies, wet and delicious!" She spits at your feet. "No more, no more speaking with the meat! Hssst!"~ */
  IF ~~ THEN REPLY #20867 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1
  SAY #20868 /* ~"Who are ye to come before me like a feast? Answer Acaste."~ */
  IF ~~ THEN REPLY #20869 /* ~"I have no name."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #20870 /* ~Lie: "I am... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #20871 /* ~"Answer my questions, first..."~ */ DO ~SetGlobal("Know_Acaste","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0 8.1
  SAY #20872 /* ~"Then neither does Acaste. I call ye blooded one. Pray ye still have a name and a will before I tear ye apart."~ */
  IF ~~ THEN REPLY #20873 /* ~"Blooded one?"~ */ GOTO 14
  IF ~~ THEN REPLY #20874 /* ~"My questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20875 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 8.2
  SAY #20876 /* ~"Aaaadahn..." She draws her long, gray tongue slowly across her lips, yellowish drool trickling from the corners of her mouth. "Yes..."~ */
  IF ~~ THEN REPLY #20877 /* ~"My questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20878 /* ~"I must take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #20879 /* ~"No. You will answer me now, before I flay the skin from yer bones and eat it! Ye'll make a fine feast for my Blighted Ones, yes..."~ */
  IF ~~ THEN REPLY #20880 /* ~"Watch your tongue, ghoul, or you'll find it ripped from your rotted head."~ */ GOTO 3
  IF ~~ THEN REPLY #20881 /* ~"I have no name."~ */ GOTO 6
  IF ~~ THEN REPLY #20882 /* ~Lie: "I am... Adahn."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Acaste_1","GLOBALLaw",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 6.1 7.0 10.2 11.1 12.2 13.1 14.0 15.2 17.5 18.0 19.1 23.3 24.1 25.1 29.5 30.2 31.1 32.2 33.2 34.5 35.3 36.1 37.2 38.0 39.0 40.2 41.2 42.2
  SAY #20883 /* ~"Go! Pester Acaste while ye still live, meat! Ask!"~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24203 /* ~"Did you know the Silent King is nothing but a skeleton?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20884 /* ~"Did you know the Silent King is nothing but a skeleton?"~ */ GOTO 24
  IF ~  Global("DN_Prisoner","GLOBAL",1)
~ THEN REPLY #20885 /* ~"Why have I been made a prisoner?"~ */ GOTO 10
  IF ~~ THEN REPLY #20886 /* ~"Where am I?"~ */ GOTO 11
  IF ~~ THEN REPLY #20887 /* ~"What are you doing here?"~ */ GOTO 12
  IF ~~ THEN REPLY #20888 /* ~"Who inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20889 /* ~"Let me ask you of someone in particular..."~ */ GOTO 34
  IF ~  Global("Pharod_Quest","GLOBAL",1)
!PartyHasItem("Bsphere")
~ THEN REPLY #20890 /* ~"Have you seen a small, bronze sphere anywhere here?"~ */ GOTO 38
  IF ~~ THEN REPLY #20891 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #20892 /* ~Acaste grimaces. "Hssst! Because we didn't catch ye in the dark halls, where ye'd have been a meal to us!" She shakes her head, snarling. "Damn the Silent King, damn his old bones! Meat caught here, by the others, stays here until it *joins* the others."~ */
  IF ~~ THEN REPLY #20893 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20894 /* ~"Others? Who else inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20895 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20896 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #20897 /* ~"Silent King's lands, Dead Nations... place of marrow-filled bones and herd of dead-flesh..." She licks her lips hungrily, clutching at her belly.~ */
  IF ~~ THEN REPLY #20898 /* ~"Who else inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20899 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20900 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.4 33.0
  SAY #20901 /* ~"We fight, win and feed. Blooded ones such as ye become our food in the end. Ravenous hungers we have, burn the stomach, never full. We hunger all the time... and here ye are... hurry up, die and be still!"~ */
  IF ~~ THEN REPLY #20902 /* ~"Blooded ones?"~ */ GOTO 14
  IF ~~ THEN REPLY #20903 /* ~"How did you come to be here?"~ */ GOTO 13
  IF ~~ THEN REPLY #20904 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20905 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #20906 /* ~"Wander catacombs, hunt and kill, crack open crypt and coffin, *eat* bones and dead-flesh. Come here..." Acaste blinks. "Here... strange place... Acaste stay among the weak, marrow-filled bones and herd of dead-flesh... can make noise, talk to them and they talk back."~ */
  IF ~~ THEN REPLY #20907 /* ~"So why have you not killed and eaten these undead, then?"~ */ GOTO 15
  IF ~~ THEN REPLY #20908 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20909 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.0 12.0 17.3
  SAY #20910 /* ~"Meat people to eat..." Her yellow eyes peer intently at you through her ragged, white hair. "...ye."~ */
  IF ~~ THEN REPLY #20911 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20912 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #20913 /* ~Acaste frowns. "Not easy prey. They are not still like other bones and dead-flesh are... they fight as pack and are many of them. Difficult to beat both, weaker separate, together strong, almost strong as Acaste. So we wait."~ */
  IF ~~ THEN REPLY #20914 /* ~"What is it you wait for?"~ */ GOTO 19
  IF ~~ THEN REPLY #20915 /* ~"What do you do while you wait, then?"~ */ GOTO 16
  IF ~~ THEN REPLY #20916 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20917 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #20918 /* ~"We say we fight for them, kill blooded ones when they come to take from us, hunt blooded rat things, kill them, eat them, leave bits of bodies we not eat as warning, say 'no come here or we eat you.' They make us protect here only. Hargrumm and Stale Maree say we not allowed to go kill blooded ones."~ */
  IF ~~ THEN REPLY #20919 /* ~"Who-"~ */ GOTO 17
  IF ~~ THEN REPLY #20920 /* ~"I had-"~ */ GOTO 17
  IF ~~ THEN REPLY #20921 /* ~"That's all I-"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 16.2
  SAY #20922 /* ~Acaste no longer seems aware of you. She hisses, baring sharp, bloody teeth. "Hate them! Want to eat blooded ones! Hungry, we are... kill all blooded ones, tear flesh with teeth and crack bone, suck sweet marrow out of their warmth!"~ */
  IF ~~ THEN REPLY #20923 /* ~"What is it you wait for?"~ */ GOTO 19
  IF ~~ THEN REPLY #20924 /* ~"Who is Hargrimm?"~ */ DO ~SetGlobal("Know_Hargrimm","GLOBAL",1)
~ GOTO 35
  IF ~~ THEN REPLY #20925 /* ~"Who is Stale Mary?"~ */ DO ~SetGlobal("Know_Stale_Mary","GLOBAL",1)
~ GOTO 36
  IF ~~ THEN REPLY #20926 /* ~"Blooded ones?"~ */ GOTO 14
  IF ~~ THEN REPLY #20927 /* ~"Blooded rats?"~ */ GOTO 18
  IF ~~ THEN REPLY #20928 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20929 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.4 29.4 41.0
  SAY #20930 /* ~"Go *squeak squeak,* run into dark small tunnels when chased, hard to catch. Snacks, hard to get. Warm flesh, easy crunch in teeth. Many of them elsewhere, we go kill them and eat them all. Hunger go away with so many in belly. Always watching us, with red juicy eyes in dark want to eat them."~ */
  IF ~~ THEN REPLY #20931 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20932 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0 17.0
  SAY #20933 /* ~"Wait for weakness, yes... wait to see how strong Silent King is, if he stronger than Acaste. Wait for herd of dead-flesh to stop following marrow-filled bones..."~ */
  IF ~~ THEN REPLY #20934 /* ~"What will you do, then?"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ JOURNAL #20938 /* ~Acaste, the leader of a pack of ghouls, is very eager to see the Dead Nations become her feeding ground. She is only waiting for a weakness to show itself before she and her ghouls begin to run rampant throughout the catacombs, killing and devouring all they run across.~ */ GOTO 20
  IF ~~ THEN REPLY #20935 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20936 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20937 /* ~"Would *eat* all. Hungry. Kill all small blood fur-things, *eat* all rag blooded beings in village, eat. Catacombs are full of feast. Hungry are we! *Hunt* and *eat!*" As she talks, she becomes more agitated, gnashing her teeth and spraying spittle...~ */
  IF ~~ THEN REPLY #20939 /* ~Let her rant.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 21
  IF ~~ THEN REPLY #20940 /* ~Leave her to her screaming.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20941 /* ~"HSSSSST! Kill them ALL, Acaste would! Tear and rend, shred the herd of dead-flesh stupid, stupid cattle! Slow and weak, fit only to eat and rend and tear! Break and snap the weak bones! Suck the marrow from their brittle bones! KILL and EAT them ALL!"~ */
  IF ~~ THEN REPLY #20942 /* ~Let her keep ranting.~ */ DO ~SetAnimState(Myself,ANIM_MIMEATTACK2)
~ GOTO 22
  IF ~~ THEN REPLY #20943 /* ~Leave her to her screaming.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20944 /* ~"Acaste want them to be quiet, still, dead-dead not talk and walk! DIE and be STILL so that it can be eaten, caught between the teeth, crack their skulls to suck forth their brain-meat, then pull open their rib cage and devour the soft parts past the skin!" Acaste smashes a clawed fist into the ground, shattering the tiles in her rage.~ */
  IF ~~ THEN REPLY #20945 /* ~Let her keep ranting.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 23
  IF ~~ THEN REPLY #20946 /* ~Leave her to her screaming.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20947 /* ~"HATE them. Tell Acaste, NO, do not hunt the blooded men who scavenge and creep in the tombs! Do not kill blooded rats! Leave them be, do not hunt, do not EAT! KILL THEM ALL and SILENCE them!" She suddenly falls silent, her rage finally spent, the last echoes of her screaming dying away in the darkness.~ */
  IF ~~ THEN REPLY #20948 /* ~"Give me things of value, and I will help you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Acaste_1","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24204 /* ~"Did you know the Silent King is nothing but a skeleton?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #20949 /* ~"Did you know the Silent King is nothing but a skeleton?"~ */ GOTO 24
  IF ~~ THEN REPLY #20950 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20951 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 9.0 9.1 23.1 23.2 42.0 42.1
  SAY #20952 /* ~"Hssssst?" Acaste's eyes narrow. "What ye say about the King, blooded thing?"~ */
  IF ~~ THEN REPLY #20953 /* ~"The Silent King is a dead thing. He isn't alive."~ */ GOTO 25
  IF ~~ THEN REPLY #20954 /* ~"Nothing. I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20955 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20956 /* ~"Certain of this, ye are? He is still and silent and food?"~ */
  IF ~~ THEN REPLY #20957 /* ~"I'm certain. He's definitely just a corpse."~ */ JOURNAL #20959 /* ~I told Acaste that the Silent King was dead, and she and her pack of ghouls began to terrorize the catacombs of the Dead Nations.~ */ GOTO 26
  IF ~~ THEN REPLY #61398 /* ~"Actually... maybe not. I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #61399 /* ~"Well... I could be wrong. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20961 /* ~Acaste face splits into a gruesome, toothy grin; she exhales a long, slow hiss, then screams: "*KILL THEM ALL, NOW! FEED!*"~ */
  IF ~~ THEN REPLY #20962 /* ~Meet her attack.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #20963 /* ~Flee.~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #20964 /* ~Acaste snarls. "Ye... silence the Silent One, make him still... Hssssst." Acaste eyes you warily, and circles you slightly. "Strong... strong... blooded one. Acaste will let ye leave this place now..."~ */
  IF ~~ THEN REPLY #20965 /* ~"No, not just yet."~ */ GOTO 28
  IF ~~ THEN REPLY #20966 /* ~"All right. Farewell."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #20967 /* ~Acaste's eyes narrow again. "Ye leave. Ye leave *now.*"~ */
  IF ~~ THEN REPLY #20968 /* ~"I'll leave when I like, ghoul."~ */ DO ~SetGlobal("Ghoul_Attack","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("DN_Prisoner","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #20969 /* ~"All right. Farewell."~ */ DO ~SetGlobal("DN_Prisoner","GLOBAL",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 9.5 10.1 11.0 30.1 31.0 32.0 33.1
  SAY #20970 /* ~"Many wander these halls, yes... marrow-filled bones, herd of dead-flesh, we, the Blighted Ones. All ruled by the Silent King..." She spits in disgust. "...who tells us what to do, what not to do. Also, the little tasties, blooded rats..." Acaste rubs her clawed hands together greedily.~ */
  IF ~~ THEN REPLY #20971 /* ~"Tell me of your own kind."~ */ GOTO 33
  IF ~~ THEN REPLY #20972 /* ~"Tell me about the bones."~ */ GOTO 30
  IF ~~ THEN REPLY #20973 /* ~"Tell me about the herd of dead-flesh."~ */ GOTO 31
  IF ~~ THEN REPLY #20974 /* ~"Tell me about the Silent King."~ */ DO ~SetGlobal("Know_Silent_King","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #20975 /* ~"Blooded rats?"~ */ GOTO 18
  IF ~~ THEN REPLY #20976 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20977 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1 35.0
  SAY #20978 /* ~"The bones, the skeletons. Weak. Tired, too many centuries, too *brittle.*" She snatches a bone off the floor, snapping it for emphasis. "*Weak.* Dead don't fear, but the bones *do.* *Afraid* to die and be fed upon by Acaste and Blighted Ones. Afraid to *die?* *We dead NOW.* *Fear* is something blooded ones stink of! *NOT DEAD ONES.*"~ */
  IF ~~ THEN REPLY #20979 /* ~"Blighted Ones?"~ */ GOTO 33
  IF ~~ THEN REPLY #20980 /* ~"Who else inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20981 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20982 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.2 35.1
  SAY #20983 /* ~"Hssst. Make noises like blooded cattle and stink of rot and sweet, stale juice." Acaste licks her lips, sucking spittle between her teeth. She frowns, then raises her arms and starts shambling about. "Go *unnnnnh unnnnh* most time, stumble-shamble and work. *Stupid* food! *Stupid* half-brain meat being!"~ */
  IF ~~ THEN REPLY #20984 /* ~"Who else inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20985 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20986 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 10.0 29.3 34.1
  SAY #20987 /* ~"*Unssseen* King, not Silent. He say - we do. Marrow-stuffed bones and herd of dead-flesh obey him, no question. Acaste not see, Acaste only *hear.* One day I shall meet this one... meat this one. Yessss. Acaste strong and Silent one weak. We shall see who master, yesss."~ */
  IF ~~ THEN REPLY #20988 /* ~"Who else inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20989 /* ~"Let me ask of someone else in particular..."~ */ GOTO 34
  IF ~~ THEN REPLY #20990 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20991 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 29.0 30.0 37.0
  SAY #20992 /* ~"We are the Blighted Ones, yesss, Acaste and her lovely ghouls, her children, always hungry..."~ */
  IF ~~ THEN REPLY #20993 /* ~"What are you doing here?"~ */ GOTO 12
  IF ~~ THEN REPLY #20994 /* ~"Who else inhabits this place?"~ */ GOTO 29
  IF ~~ THEN REPLY #20995 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #20996 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 9.6 32.1 35.2 36.0 37.1 40.1 41.1
  SAY #20997 /* ~Acaste narrows her eyes and cocks her head. "Who does the meat ask about?"~ */
  IF ~~ THEN REPLY #20998 /* ~"You, yourself."~ */ GOTO 37
  IF ~  Global("Know_Silent_King","GLOBAL",1)
~ THEN REPLY #20999 /* ~"The Silent King."~ */ GOTO 32
  IF ~  Global("Know_Hargrimm","GLOBAL",1)
!Dead("Hargrim")
~ THEN REPLY #21000 /* ~"Hargrimm."~ */ GOTO 35
  IF ~  Global("Know_Stale_Mary","GLOBAL",1)
!Dead("StaleMa")
~ THEN REPLY #21001 /* ~"Stale Mary."~ */ GOTO 36
  IF ~  Global("DN_Soego_Killed","GLOBAL",0)
~ THEN REPLY #21002 /* ~"Soego."~ */ GOTO 40
  IF ~~ THEN REPLY #21003 /* ~"Never mind. I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21004 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 17.1 34.2
  SAY #21005 /* ~"Marrow." Acaste licks her cracked lips and gives a feral grin. "Old marrow... but is marrow." Acaste snarls, eyes burn. "Kill him, kill all the bones if not for the weak bones *and* herd of dead-flesh."~ */
  IF ~~ THEN REPLY #21006 /* ~"Bones?"~ */ GOTO 30
  IF ~~ THEN REPLY #21007 /* ~"Herd of dead-flesh?"~ */ GOTO 31
  IF ~~ THEN REPLY #21008 /* ~"Let me ask of someone else..."~ */ GOTO 34
  IF ~~ THEN REPLY #21009 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21010 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 17.2 34.3
  SAY #21011 /* ~"Fleshy *food.* Not strong, like Acaste. Weak dead-flesh woman."~ */
  IF ~~ THEN REPLY #21012 /* ~"Let me ask of someone else..."~ */ GOTO 34
  IF ~~ THEN REPLY #21013 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21014 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.0
  SAY #21015 /* ~"Acaste, I am! Ghoul-mother and queen of the Blighted Ones, yesss! Strong, fast, we hunt and *eat* in these halls..."~ */
  IF ~~ THEN REPLY #21016 /* ~"Blighted Ones?"~ */ GOTO 33
  IF ~~ THEN REPLY #21017 /* ~"Let me ask of someone else..."~ */ GOTO 34
  IF ~~ THEN REPLY #21018 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21019 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 9.7
  SAY #21020 /* ~Acaste shakes her head, lice dropping from her long, white hair as it sways about. "Acaste opens many coffins, many tombs, never seen such a thing."~ */
  IF ~~ THEN REPLY #21021 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21022 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  Global("Acaste","GLOBAL",1)
~ THEN BEGIN 39 // from:
  SAY #21023 /* ~"Hssst! Meat thing comes once more, pestering Acaste, always!"~ */
  IF ~~ THEN REPLY #21024 /* ~"I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21025 /* ~"Farewell, Acaste."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 34.4
  SAY #21026 /* ~"Pale blooded one who sleeps in dust and smells like blooded rat? He first I eat."~ */
  IF ~~ THEN REPLY #21027 /* ~"He smells of blooded rat?"~ */ GOTO 41
  IF ~~ THEN REPLY #21028 /* ~"Let me ask of someone else..."~ */ GOTO 34
  IF ~~ THEN REPLY #21030 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21031 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #21029 /* ~"Hsssst. But good eat him anyway. He stink of dust but ripe blood and meat beneath his pale skin. Good to eat."~ */
  IF ~~ THEN REPLY #21032 /* ~"What's a blooded rat?"~ */ GOTO 18
  IF ~~ THEN REPLY #21033 /* ~"Let me ask of someone else..."~ */ GOTO 34
  IF ~~ THEN REPLY #21034 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21035 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 23.0
  SAY #21036 /* ~"Acaste have nothing to give ye except yer life not eat."~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #24205 /* ~"Did you know the Silent King is nothing but a skeleton?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
~ GOTO 24
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #21037 /* ~"Did you know the Silent King is nothing but a skeleton?"~ */ GOTO 24
  IF ~~ THEN REPLY #21038 /* ~"I had other questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #21039 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
