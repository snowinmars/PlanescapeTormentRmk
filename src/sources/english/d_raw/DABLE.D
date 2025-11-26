// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DABLE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #2873 /* ~This older man looks somewhat bookish. His clothing and accessories are extremely clean, neat and well cared for, and he often pauses to brush some fleck of dust or lint off of them. A symbol resembling a stylized dagger, piercing upwards through a flame, is embroidered upon his tunic.~ */
  IF ~~ THEN REPLY #2874 /* ~"Greetings..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30849 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 23.0
  SAY #30708 /* ~The man's eyes pass over you, gleaming as they fix on Morte. "Oh, I say! Would you look at that! A floating skull!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 292
END

IF ~~ THEN BEGIN 2 // from:
  SAY #30709 /* ~The man gasps. "By the unjust laws of Tuerny the Merciless!"~ */
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30850 /* ~"Who?"~ */ GOTO 3
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30851 /* ~"Who?"~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30852 /* ~"Who?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #30710 /* ~He suddenly covers his mouth and looks around apologetically. "Sorry, sorry... the man was a horrible tyrant, now long dead. His name should never be spoken so; 'tis rather vulgar."~ */
  IF ~~ THEN REPLY #30853 /* ~"Watch your tongue more closely, then."~ */ GOTO 7
  IF ~~ THEN REPLY #30854 /* ~"Speak however you like; I don't offend easily."~ */ GOTO 7
  IF ~~ THEN REPLY #30855 /* ~Shrug it off.~ */ GOTO 7
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #30711 /* ~He suddenly covers his mouth and looks at Fall-from-Grace apologetically. "Sorry, sorry... the man was a horrible tyrant, now long dead. His name should never be spoken so; 'tis rather vulgar. My deepest apologies, Lady Grace. I did not mean to offend."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 128
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30712 /* ~"Yes, yes, you are probably right."~ */
  IF ~~ THEN REPLY #30856 /* ~Try and get his attention.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 2.2
  SAY #30713 /* ~He suddenly covers his mouth and looks at Annah apologetically. "Sorry, sorry... the man was a horrible tyrant, now long dead. His name should never be spoken so; 'tis rather vulgar. My deepest apologies, m'lady. I did not mean to offend."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 167
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 5.0
  SAY #30714 /* ~He turns back to Morte. "But behold! A skull, buoyant, levitating off the ground, cognitive of its environment, and possessing hearing, speaking, and seeing capabilities."~ */
  IF ~~ THEN REPLY #30857 /* ~"He act-"~ */ GOTO 8
  IF ~~ THEN REPLY #30858 /* ~"I had-"~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #30715 /* ~He turns to you, as if you are suddenly a confidant. "This is truly one of the reasons that the planes shall never become dull to me, sir - just when you think you have seen everything, the planes show you yet another corner to peer around, and..." He raises his hands gloriously. "...suddenly whole new, wondrous vistas are open to you."~ */
  IF ~~ THEN REPLY #30859 /* ~"Actually, the talking, floating skull thing is quite common - right up there with self-resurrecting amnesiacs scouring Sigil for their lost identities."~ */ GOTO 9
  IF ~~ THEN REPLY #30860 /* ~"I'm not sure if Morte qualifies as a 'wondrous vista.'"~ */ GOTO 9
  IF ~~ THEN REPLY #30861 /* ~"Yes, yes... I had some questions..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1 8.2
  SAY #30716 /* ~The man ignores you, looking to Morte instead. "I say, skull..." he begins.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 293
END

IF ~~ THEN BEGIN 10 // from:
  SAY #30717 /* ~The man seems to have forgotten you entirely, instead turning in shock to look for this 'other' floating skull. "No! Where? Where!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 294
END

IF ~~ THEN BEGIN 11 // from:
  SAY #30718 /* ~"Where? I cannot see it!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 295
END

IF ~~ THEN BEGIN 12 // from:
  SAY #30719 /* ~He turns and harrumphs. "I sense you also possess a peculiar degree of mockery."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 296
END

IF ~~ THEN BEGIN 13 // from: 18.2 19.2 20.2 21.2 22.1
  SAY #30720 /* ~He suddenly seems to see you for the first time...~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #30721 /* ~The man's eyes widen. "By the unjust laws of Tuerny the...!" He catches himself, looking apologetic. "I say, are you all right? You look..." He fumbles for the words. "...hurt."~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #30862 /* ~"I'm all right. I had some questions..."~ */ GOTO 16
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #30863 /* ~"I'm all right."~ */ EXTERN ~DANNAH~ 168
END

IF WEIGHT #4 /* Triggers after states #: 24 17 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #30722 /* ~This older man looks somewhat bookish. His clothing and accessories are extremely clean, neat and well cared for, and he often pauses to brush some fleck of dust or lint off of them. A symbol resembling a stylized dagger, piercing upwards through a flame, is embroidered upon his tunic.~ */
  IF ~~ THEN REPLY #30864 /* ~"Greetings..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 14.0 18.1 19.1 20.1 21.1 22.0 25.3 26.1 27.1 28.2 29.3 30.3 31.2 32.3 33.1 34.6 35.1 36.3 37.1 38.1 40.1 41.1 42.1 43.4 45.2 47.2 49.10 50.9 52.3 54.3 55.2 57.2 61.3 63.2 64.4 65.2 66.2 67.2 70.2 71.2 75.3 76.2 77.2 79.2 81.1 82.0 83.3 84.1 86.0 87.1 102.0 103.0 104.0 105.0 106.0 107.0 108.0
  SAY #30723 /* ~The man nods... eagerly. "Of course, of course! I am always most happy to answer what questions I can, young sir."~ */
  IF ~  Global("CW_Research_Language","AR0600",2)
~ THEN REPLY #30865 /* ~"Find out anything about the writing in that 'journal' I showed you?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
SetGlobal("Know_Finam_Lang","GLOBAL",1)
~ JOURNAL #30878 /* ~Able Ponder-Thought told me that the language on the strange journal I found was a dead one. He mentioned that he had heard of a scholar of language at the Civic Festhall, Finam, who may be able to help me translate the writing.~ */ GOTO 86
  IF ~  Global("CW_Research_Ravel","AR0600",2)
~ THEN REPLY #30866 /* ~"Find out anything more about Ravel Puzzlewell?"~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",3)
~ JOURNAL #30880 /* ~Able Ponder-Thought told me that Ravel had been cast into one of the Lady of Pain's mazes, and that the key to her maze's portal was rumored to be something of hers. Not very helpful.~ */ GOTO 87
  IF ~  Global("CW_Research_Incarnations","AR0600",2)
~ THEN REPLY #30868 /* ~"Find out anything interesting about dead men fitting my description?"~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",3)
~ JOURNAL #30881 /* ~Able Ponder-Thought told me of what I believe to be two prior 'incarnations' of myself... a bloodthirsty murderer and a suspicious recluse... and a Sensate, strangely enough... who destroyed all records of himself before disappearing.~ */ GOTO 88
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30869 /* ~"Could I ask you to research something for me?"~ */ GOTO 83
  IF ~~ THEN REPLY #30870 /* ~"I had questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30871 /* ~"I had questions about this place..."~ */ GOTO 32
  IF ~~ THEN REPLY #30873 /* ~"I had questions about this city..."~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #30874 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 78
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #30876 /* ~"What do you know of the Blood War?"~ */ GOTO 82
  IF ~~ THEN REPLY #30877 /* ~"I've nothing to ask now, actually. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 17 // from:
  SAY #30724 /* ~This older man looks somewhat bookish. His clothing and accessories are extremely clean, neat and well cared for, and he often pauses to brush some fleck of dust or lint off of them. A symbol resembling a stylized dagger, piercing upwards through a flame, is embroidered upon his tunic.~ */
  IF ~~ THEN REPLY #30882 /* ~"Greetings..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30883 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #30725 /* ~The man's eyes pass over you, gleaming as they fix on Nordom. "A quadrone is he?" He looks puzzled. "However... oh, my! A rogue modron! Oh, dear!" He looks quite distressed.~ */
  IF ~~ THEN REPLY #30887 /* ~"What's wrong?"~ */ GOTO 19
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30888 /* ~"Don't trouble yourself over it. I had some questions..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30889 /* ~"Don't trouble yourself over it. I had some questions..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #30726 /* ~"Well, he's a rogue. He is a contaminated modron, and such modrons only drain power from their home plane, Mechanus. You see, all modrons hold some of the Source of Mechanus with them... when one is not working properly or leaves the other modrons, it weakens all of Mechanus."~ */
  IF ~~ THEN REPLY #30890 /* ~"Go on..."~ */ GOTO 20
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30891 /* ~"I've no time for this. I had some questions..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30892 /* ~"I've no time for this. I had some questions..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #30727 /* ~"When the others - other modrons - find him, they will take him back to Mechanus to be punished. He will be destroyed. The broken modron must return to the Source."~ */
  IF ~~ THEN REPLY #30893 /* ~"But why?"~ */ GOTO 21
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30894 /* ~"I see. I had some questions..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30895 /* ~"I see. I had some questions..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #30728 /* ~"Because he is not a modron, yet he drains them with his presence. He weakens Mechanus without cause or right. He must become part of Mechanus to be corrected."~ */
  IF ~~ THEN REPLY #30899 /* ~"I don't *want* him corrected. Nordom likes being what he is."~ */ GOTO 22
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30901 /* ~"I see. I had some questions..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30902 /* ~"I see. I had some questions..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #30729 /* ~"He is terribly misguided, then! There are people I can contact..."~ */
  IF ~  GlobalGT("Able","GLOBAL",0)
~ THEN REPLY #30903 /* ~"Don't. I had some questions..."~ */ GOTO 16
  IF ~  Global("Able","GLOBAL",0)
~ THEN REPLY #30904 /* ~"Don't. I had some questions..."~ */ DO ~SetGlobal("Able","GLOBAL",1)
~ GOTO 13
END

IF WEIGHT #1 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DMorte")
Global("CW_Able_Morte","AR0600",0)
~ THEN BEGIN 23 // from:
  SAY #30730 /* ~You've met this older, bookish-looking man before. He seems lost in thought, and hasn't noticed you yet.~ */
  IF ~~ THEN REPLY #30905 /* ~"Greetings..."~ */ DO ~SetGlobal("CW_Able_Morte","AR0600",1)
~ GOTO 1
  IF ~~ THEN REPLY #30906 /* ~Leave him be.~ */ EXIT
END

IF WEIGHT #3 ~  GlobalGT("Able","GLOBAL",0)
NearbyDialog("DNordom")
Global("CW_Able_Nordom","AR0600",0)
~ THEN BEGIN 24 // from:
  SAY #30731 /* ~You've met this older, bookish-looking man before. He seems lost in thought, and hasn't noticed you yet.~ */
  IF ~~ THEN REPLY #30907 /* ~"Greetings..."~ */ DO ~SetGlobal("CW_Able_Nordom","AR0600",1)
~ GOTO 18
  IF ~~ THEN REPLY #30908 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.4 26.0 27.0 28.1 29.2 30.2 31.1
  SAY #30732 /* ~"Me? Certainly..."~ */
  IF ~~ THEN REPLY #30909 /* ~"Who are you?"~ */ GOTO 26
  IF ~~ THEN REPLY #30910 /* ~"What do you do here?"~ */ GOTO 27
  IF ~~ THEN REPLY #30911 /* ~"What's that symbol embroidered on your tunic mean?"~ */ GOTO 28
  IF ~~ THEN REPLY #30912 /* ~"Actually, I had other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30913 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #30733 /* ~"Why, my name is Able Ponder-Thought."~ */
  IF ~~ THEN REPLY #30914 /* ~"I had other questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30915 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30916 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1
  SAY #30734 /* ~"I passed my Administrator exam just recently, and have achieved the status of an 'A9,' a research consultant in the Hall of Records, one of the many aides specializing in Sigil's physical laws and history. I research topics and laws of interest to others. It is quite fascinating, really..."~ */
  IF ~~ THEN REPLY #30918 /* ~"I had other questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30919 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30920 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #30735 /* ~"Why, 'tis the symbol of the Fraternity of Order. We are responsible for much of the law-making and running the courts here in Sigil. Many judges, advocates and clerks are members of our Order, and we are pleased to be able to help enforce Sigil's laws and keep things orderly. We make a strident effort to learn all laws, whether they pertain to Sigil, the planes, or the multiverse itself."~ */
  IF ~~ THEN REPLY #30922 /* ~"What does the Fraternity of Order believe?"~ */ JOURNAL #31027 /* ~Able Ponder-Thought explained to me that the Fraternity of Order believes that the multiverse is governed by laws. When one knows all the laws, one will understand the multiverse. Also, by understanding the laws and their limits, they learn to avoid certain laws.~ */ GOTO 29
  IF ~~ THEN REPLY #30923 /* ~"I had other questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30924 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30925 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 45.0 49.0 50.0
  SAY #30736 /* ~"The Fraternity of Order believes that the multiverse is governed by laws. When one knows all the laws, one will understand the multiverse. That is our goal. By understanding the laws, their limits, we learn to avoid certain laws."~ */
  IF ~~ THEN REPLY #30927 /* ~"If you don't mind me asking, what sort of benefits are in the position?"~ */ GOTO 30
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #30929 /* ~"I had other questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30930 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30931 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #30737 /* ~"Well, our fraternity allows us to read languages quite easily. And we may use some rules of the multiverse on occasion to suit our benefits."~ */
  IF ~  PartyHasItem("P_JRNL")
~ THEN REPLY #30933 /* ~"Languages? Can you read this? I think it's a journal of some sort."~ */ GOTO 31
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31057 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #30934 /* ~"I had other questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30935 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30936 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #30738 /* ~He glances over it, eyebrows raised. "Odd! No, I cannot. Is it a language?"~ */
  IF ~  Global("CW_Able_Research","AR0600",1)
~ THEN REPLY #30937 /* ~"I believe so. Can you research it?"~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ JOURNAL #30941 /* ~I met a man in the Clerk's Ward, Able Ponder-Thought, who works as a research consultant and would be willing to look a few things up for me.~ */ GOTO 84
  IF ~~ THEN REPLY #30938 /* ~"I'm not sure. I had other questions about you..."~ */ GOTO 25
  IF ~~ THEN REPLY #30939 /* ~"I don't know, really. I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #30940 /* ~"I'm not clear on that, myself. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 16.5 33.0 34.5 35.0 36.2 37.0 38.0 40.0 41.0 42.0
  SAY #30739 /* ~"I'll admit I know little of this part of the Clerk's Ward, sir, but please... ask."~ */
  IF ~~ THEN REPLY #30942 /* ~"Why's it called the Clerk's Ward?"~ */ GOTO 33
  IF ~~ THEN REPLY #30943 /* ~"What's of interest around here?"~ */ GOTO 34
  IF ~~ THEN REPLY #30944 /* ~"Know of any work available locally?"~ */ GOTO 42
  IF ~~ THEN REPLY #30945 /* ~"Let me ask about something else, actually..."~ */ GOTO 16
  IF ~~ THEN REPLY #30946 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #30740 /* ~"It is the seat of much of Sigil's record halls and administration. The staff at these places give the Ward its name. Many clerks, scribes, priests, bureaucrats and administration officials live in this Ward."~ */
  IF ~~ THEN REPLY #30947 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30948 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30949 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #30741 /* ~"There is one of the finest advocates in Sigil located here. The Civic Festhall, home of the Society of Sensation, is also located nearby." He lowers his voice. "And the Brothel, sir, of Slating Intellectual Lusts..."~ */
  IF ~~ THEN REPLY #30950 /* ~"Tell me of the Advocate."~ */ GOTO 35
  IF ~~ THEN REPLY #30951 /* ~"Tell me of the Festhall."~ */ GOTO 36
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30952 /* ~"Tell me of the Brothel."~ */ GOTO 38
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #30953 /* ~"Tell me of the Brothel."~ */ GOTO 39
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #30954 /* ~"Tell me of the Brothel."~ */ GOTO 41
  IF ~~ THEN REPLY #30955 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30956 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30957 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #30742 /* ~"He is also one of the Fraternity of Order, though his time there has ebbed somewhat since the unfortunate troubles he has experienced... I am not one to speak of them. His residence is just across the way, south and east of here."~ */
  IF ~~ THEN REPLY #30958 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30959 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30960 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #30743 /* ~"'Tis a beautiful structure that is both the headquarters of the Society of Sensation and acts as a hall for the arts here in Sigil and the planes. It is an opera house, museum, art gallery, wine shop, tavern, training hall, theater, sensoriums... many things can be found there."~ */
  IF ~~ THEN REPLY #30961 /* ~"Tell me about the Society of Sensation."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Able Ponder-Thought explained to me that the Society of Sensation is one of the most prominent of Sigil's fifteen factions. They hold the belief that the true secrets of the multiverse can be known only by directly experiencing as much of the universe as possible; tasting every substance, feeling every range of emotion, and visiting every place in the multiverse.~ */ GOTO 62
  IF ~~ THEN REPLY #30962 /* ~"Sensoriums?"~ */ GOTO 37
  IF ~~ THEN REPLY #30963 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30964 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30965 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.1
  SAY #30744 /* ~"Yes, the Sensates possess sensory stones, minerals that can store a person's experiences within them. Once recorded, anyone may touch the stone and relive the experience stored in the sensory stone. Quite intriguing, really!"~ */
  IF ~~ THEN REPLY #30967 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30968 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30969 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 34.2
  SAY #30745 /* ~He nods, looking somewhat embarrassed. "Yes, well, I am known to go there... for the conversation. 'Tis a large, round building, in the center of this part of the Ward."~ */
  IF ~~ THEN REPLY #30970 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30971 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30972 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 34.3
  SAY #30746 /* ~He nods, looking somewhat embarrassed. "Yes, well, I am known to go there... for the conversation." He turns to Fall-from-Grace. "It is a noble pursuit you are engaged in, Lady Grace. I wish you would instruct your students in a more formal regimen, perhaps give them more an overview in the city's laws and policies; then they..."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 129
END

IF ~~ THEN BEGIN 40 // from:
  SAY #30747 /* ~He digests that for a moment, then nods, beaming. "Thank you, Lady Grace." He turns to you once more.~ */
  IF ~~ THEN REPLY #30975 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30976 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30978 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 34.4
  SAY #30748 /* ~He nods, looking somewhat embarrassed. "Yes, well, I am known to go there... for the conversation." He glances at Annah, then flushes an even deeper red. "'Tis a large, round building, in the center of this part of the Ward."~ */
  IF ~~ THEN REPLY #30979 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30981 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30983 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 32.2
  SAY #30749 /* ~"None of the temporary sort, no."~ */
  IF ~~ THEN REPLY #30984 /* ~"I had other questions about the Ward..."~ */ GOTO 32
  IF ~~ THEN REPLY #30985 /* ~"I had questions about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30986 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 16.6 45.1 47.1 49.9 52.2 54.2 55.1 57.1 61.2 63.1 64.3 65.1 66.1 67.1 70.1 71.1 75.2 76.1 77.1
  SAY #30750 /* ~"Questions about Sigil? Please, sir... ask whatever you like!"~ */
  IF ~~ THEN REPLY #30987 /* ~"I'm curious about the factions."~ */ DO ~SetGlobal("Know_Factions","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #30988 /* ~"I'm curious about the Lady of Pain."~ */ GOTO 71
  IF ~~ THEN REPLY #30989 /* ~"What's outside of Sigil?"~ */ GOTO 44
  IF ~~ THEN REPLY #30991 /* ~"Where's daylight here come from? I don't see a sun."~ */ GOTO 46
  IF ~~ THEN REPLY #30992 /* ~"Actually, let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #30993 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.2
  SAY #30751 /* ~"No one knows, and it is not from want of trying. At the places where no true wall exists are solid walls of buildings, with no windows that look beyond. Some claim to have climbed roofs and seen the outside of Sigil, but they can only describe the outside as *nothing*..."~ */
  IF ~~ THEN REPLY #30994 /* ~Continue to listen.~ */ GOTO 45
  IF ~~ THEN REPLY #30995 /* ~Attempt to interrupt him.~ */ GOTO 45
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #30996 /* ~Pick his pockets while he lectures away.~ */ GOTO 89
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1 89.0
  SAY #30752 /* ~He continues: "That is an unacceptable explanation, but it still remains a mystery. It is rumored, without fact, that to step beyond Sigil's walls takes the traveler to a random plane, but this has not been confirmed. The Fraternity of Order has mounted many expeditions, and we have yet to retrieve concrete information."~ */
  IF ~~ THEN REPLY #30997 /* ~"The Fraternity of Order?"~ */ JOURNAL #31027 /* ~Able Ponder-Thought explained to me that the Fraternity of Order believes that the multiverse is governed by laws. When one knows all the laws, one will understand the multiverse. Also, by understanding the laws and their limits, they learn to avoid certain laws.~ */ GOTO 29
  IF ~~ THEN REPLY #30998 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #30999 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31000 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.3
  SAY #30753 /* ~"The haze can make it difficult to determine for certain, so I understand your difficulty. The light comes not from a sun, but from a gradual luminescence that fills the sky..."~ */
  IF ~~ THEN REPLY #31002 /* ~Continue to listen.~ */ GOTO 47
  IF ~~ THEN REPLY #31004 /* ~Attempt to interrupt him.~ */ GOTO 47
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31006 /* ~Pick his pockets while he lectures away.~ */ GOTO 90
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 90.0
  SAY #30754 /* ~He continues: "It reaches a peak, called *peak,* then fades until the Sigil is completely dark, called *anti-peak.* The source of luminescence is unknown, but it is most likely the Lady's will."~ */
  IF ~~ THEN REPLY #31007 /* ~"The Lady?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",1)
~ GOTO 72
  IF ~~ THEN REPLY #31009 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31010 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31011 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 43.0
  SAY #30755 /* ~"Yes, there are fifteen factions in Sigil. Once, there were forty-nine factions. Then, about six hundred years ago, the Lady of Pain let it be known that only fifteen would remain. That was known as the Great Upheaval..."~ */
  IF ~~ THEN REPLY #31012 /* ~Continue to listen.~ */ GOTO 49
  IF ~~ THEN REPLY #31013 /* ~Attempt to interrupt him.~ */ GOTO 49
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31014 /* ~Pick his pockets while he lectures away.~ */ GOTO 91
END

IF ~~ THEN BEGIN 49 // from: 48.0 48.1 91.0
  SAY #30756 /* ~He continues: "And sure enough, in a fortnight thirty-four of them perished or faded. Many thousands died by sword or by other means... many were simply found dead. I, myself, am a member of the Fraternity of Order. Others include the Believers of the Source, the Dustmen, the Harmonium, the Mercykillers, the Revolutionary League, the Society of Sensation, and the Xaositects."~ */
  IF ~~ THEN REPLY #31015 /* ~"Tell me of the Fraternity of Order."~ */ JOURNAL #31027 /* ~Able Ponder-Thought explained to me that the Fraternity of Order believes that the multiverse is governed by laws. When one knows all the laws, one will understand the multiverse. Also, by understanding the laws and their limits, they learn to avoid certain laws.~ */ GOTO 29
  IF ~~ THEN REPLY #31016 /* ~"Tell me of the Believers of the Source."~ */ JOURNAL #31028 /* ~Able Ponder-Thought explained to me that the Believers of the Source, or Godsmen, believe that every living thing in the multiverse has the potential to become a deity.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31017 /* ~"Tell me of the Dustmen."~ */ JOURNAL #31029 /* ~Able Ponder-Thought explained to me that the Dustmen believe we are already dead, that Sigil and the planes are where we all end up after we die. According to their beliefs, everything is dead and this existence is a false one. To keep any ties or feelings for this existence only prevents a soul from truly dying.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31018 /* ~"Tell me of the Dustmen."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Able Ponder-Thought explained to me that the Dustmen believe we are already dead, that Sigil and the planes are where we all end up after we die. According to their beliefs, everything is dead and this existence is a false one. To keep any ties or feelings for this existence only prevents a soul from truly dying.~ */ GOTO 53
  IF ~~ THEN REPLY #31019 /* ~"Tell me of the Harmonium."~ */ JOURNAL #31031 /* ~Able Ponder-Thought explained to me that the Harmonium is devoted to peace and harmony throughout the planes... thus their name. They believe that the end justifies the means, however, and so are willing to do just about anything to get a fellow to see things 'their way.'~ */ GOTO 55
  IF ~~ THEN REPLY #31020 /* ~"Tell me of the Mercykillers."~ */ JOURNAL #31032 /* ~Able Ponder-Thought explained to me that the Mercykillers believe that justice is everything. Mallin, their last factol, once said that when properly applied, punishment leads to perfection.~ */ GOTO 56
  IF ~~ THEN REPLY #31021 /* ~"Tell me of the Revolutionary League."~ */ JOURNAL #31033 /* ~Able Ponder-Thought explained to me that the Revolutionary League is widespread in Sigil. They hold the belief that all institutions have been established to block their access to the truth of the multiverse. The only way they see to discover the truth is to tear down all organization. They claim that the truth can only be discovered when people are completely 'free.'~ */ GOTO 58
  IF ~~ THEN REPLY #31022 /* ~"Tell me of the Society of Sensation."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Able Ponder-Thought explained to me that the Society of Sensation is one of the most prominent of Sigil's fifteen factions. They hold the belief that the true secrets of the multiverse can be known only by directly experiencing as much of the universe as possible; tasting every substance, feeling every range of emotion, and visiting every place in the multiverse.~ */ GOTO 62
  IF ~~ THEN REPLY #31023 /* ~"Tell me of the Xaositects."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Able Ponder-Thought explained to me that the Xaositects believe that only by embracing the random chaos of the multiverse may one learn its secrets. ~ */ GOTO 64
  IF ~~ THEN REPLY #31024 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31025 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31026 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 29.1 30.1 52.1 54.1 55.0 57.0 61.1 63.0 64.2 65.0 66.0 67.0 70.0
  SAY #30757 /* ~"Oh? Which, sir?"~ */
  IF ~~ THEN REPLY #31037 /* ~"Tell me of the Fraternity of Order."~ */ JOURNAL #31027 /* ~Able Ponder-Thought explained to me that the Fraternity of Order believes that the multiverse is governed by laws. When one knows all the laws, one will understand the multiverse. Also, by understanding the laws and their limits, they learn to avoid certain laws.~ */ GOTO 29
  IF ~~ THEN REPLY #31038 /* ~"Tell me of the Believers of the Source."~ */ JOURNAL #31028 /* ~Able Ponder-Thought explained to me that the Believers of the Source, or Godsmen, believe that every living thing in the multiverse has the potential to become a deity.~ */ GOTO 51
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31039 /* ~"Tell me of the Dustmen."~ */ JOURNAL #31029 /* ~Able Ponder-Thought explained to me that the Dustmen believe we are already dead, that Sigil and the planes are where we all end up after we die. According to their beliefs, everything is dead and this existence is a false one. To keep any ties or feelings for this existence only prevents a soul from truly dying.~ */ GOTO 53
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #31040 /* ~"Tell me of the Dustmen."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ JOURNAL #31029 /* ~Able Ponder-Thought explained to me that the Dustmen believe we are already dead, that Sigil and the planes are where we all end up after we die. According to their beliefs, everything is dead and this existence is a false one. To keep any ties or feelings for this existence only prevents a soul from truly dying.~ */ GOTO 53
  IF ~~ THEN REPLY #31041 /* ~"Tell me of the Harmonium."~ */ JOURNAL #31031 /* ~Able Ponder-Thought explained to me that the Harmonium is devoted to peace and harmony throughout the planes... thus their name. They believe that the end justifies the means, however, and so are willing to do just about anything to get a fellow to see things 'their way.'~ */ GOTO 55
  IF ~~ THEN REPLY #31042 /* ~"Tell me of the Mercykillers."~ */ JOURNAL #31032 /* ~Able Ponder-Thought explained to me that the Mercykillers believe that justice is everything. Mallin, their last factol, once said that when properly applied, punishment leads to perfection.~ */ GOTO 56
  IF ~~ THEN REPLY #31043 /* ~"Tell me of the Revolutionary League."~ */ JOURNAL #31033 /* ~Able Ponder-Thought explained to me that the Revolutionary League is widespread in Sigil. They hold the belief that all institutions have been established to block their access to the truth of the multiverse. The only way they see to discover the truth is to tear down all organization. They claim that the truth can only be discovered when people are completely 'free.'~ */ GOTO 58
  IF ~~ THEN REPLY #31044 /* ~"Tell me of the Society of Sensation."~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ JOURNAL #31034 /* ~Able Ponder-Thought explained to me that the Society of Sensation is one of the most prominent of Sigil's fifteen factions. They hold the belief that the true secrets of the multiverse can be known only by directly experiencing as much of the universe as possible; tasting every substance, feeling every range of emotion, and visiting every place in the multiverse.~ */ GOTO 62
  IF ~~ THEN REPLY #31045 /* ~"Tell me of the Xaositects."~ */ DO ~SetGlobal("Know_Chaosmen","GLOBAL",1)
~ JOURNAL #31036 /* ~Able Ponder-Thought explained to me that the Xaositects believe that only by embracing the random chaos of the multiverse may one learn its secrets. ~ */ GOTO 64
  IF ~~ THEN REPLY #31046 /* ~"Actually, let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31047 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 49.1 50.1
  SAY #30758 /* ~"The Believers of the Source, or Godsmen, believe that every living thing in the multiverse has the potential to become a power..."~ */
  IF ~~ THEN REPLY #31053 /* ~Continue to listen.~ */ GOTO 52
  IF ~~ THEN REPLY #31054 /* ~Attempt to interrupt him.~ */ GOTO 52
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31055 /* ~Pick his pockets while he lectures away.~ */ GOTO 92
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.1 92.0
  SAY #30759 /* ~He continues: "The Godsmen have their headquarters in the Great Foundry, and they have helped to keep peace in Sigil in a number of matters... they have no desire to see any creature placed in the dead-book before it has a chance to reach its potential."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #31056 /* ~"I myself uphold their beliefs. You sound as if you disagree with them..."~ */ GOTO 66
  IF ~~ THEN REPLY #31057 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31058 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31059 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31060 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.2 49.3 50.2 50.3
  SAY #30760 /* ~"The Dustmen believe we are already dead, that Sigil and the planes are where we all end up after we die. According to their beliefs, everything is dead and this existence is a false one. To keep any ties or feelings for this existence only prevents a soul from truly dying."~ */
  IF ~~ THEN REPLY #31061 /* ~Continue to listen.~ */ GOTO 54
  IF ~~ THEN REPLY #31062 /* ~Attempt to interrupt him.~ */ GOTO 54
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31063 /* ~Pick his pockets while he lectures away.~ */ GOTO 93
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 93.0
  SAY #30761 /* ~He continues: "You see, the Dustmen believe that death in this 'existence' is a matter of degree and only those who are 'truly dead' and have divested themselves of all ties to this existence can hope to be at peace. A philosophy that has some basis in fact, but much of it bears further examination."~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #31064 /* ~"I myself uphold their beliefs. You sound as if you disagree with them..."~ */ GOTO 67
  IF ~~ THEN REPLY #31065 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31066 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31067 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31068 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 49.4 50.4
  SAY #30762 /* ~"The Harmonium is devoted to peace and harmony throughout the planes... thus their name. They believe that the end justifies the means, however, and so are willing to do just about anything to get a fellow to see things 'their way.' Regardless of one's personal opinion of them, they do a fine job of policing Sigil's streets."~ */
  IF ~~ THEN REPLY #31069 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31070 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31071 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31072 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 49.5 50.5
  SAY #30763 /* ~"The Mercykillers believe that justice is everything. Mallin, their last factol, once said that when properly applied, punishment leads to perfection..."~ */
  IF ~~ THEN REPLY #31073 /* ~Continue to listen.~ */ GOTO 57
  IF ~~ THEN REPLY #31074 /* ~Attempt to interrupt him.~ */ GOTO 57
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31075 /* ~Pick his pockets while he lectures away.~ */ GOTO 94
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 94.0
  SAY #30764 /* ~He continues: "Those new to Sigil oft-times commit the error of thinking their name implies that they kill out of mercy - rather, though, it is that they seek to kill Mercy itself. The faction members take it upon themselves to punish the guilty of Sigil, whatever the cost."~ */
  IF ~~ THEN REPLY #31076 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31077 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31078 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31079 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.6 50.6
  SAY #30765 /* ~"They are also called the Anarchists. Not many know this, but the Revolutionary League is actually quite widespread in Sigil... and a shame that is, too. They hold the misguided belief that all institutions have been established to block their access to the truth of the multiverse." ~ */
  IF ~~ THEN REPLY #31080 /* ~Continue to listen.~ */ GOTO 59
  IF ~~ THEN REPLY #31081 /* ~Attempt to interrupt him.~ */ GOTO 59
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31082 /* ~Pick his pockets while he lectures away.~ */ GOTO 95
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1 95.0
  SAY #30766 /* ~"The only way they see to discover the truth is to tear down all organization. They claim that the truth can only be discovered when people are completely 'free.'" He shakes his head. "I often wish that they would open their eyes to the truth *around* them. They do nothing but blind themselves and block everyone's access to the truth."~ */
  IF ~~ THEN REPLY #31083 /* ~Continue to listen.~ */ GOTO 60
  IF ~~ THEN REPLY #31084 /* ~Attempt to interrupt him.~ */ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #30767 /* ~He gives a long sigh, then wags his finger disapprovingly, as if talking to some imaginary bad child. "It is interesting to note that they have no real plans for seeking the truth past tearing down everything that they can see. Very interesting, indeed."~ */
  IF ~~ THEN REPLY #31085 /* ~Continue to listen.~ */ GOTO 61
  IF ~~ THEN REPLY #31086 /* ~Attempt to interrupt him.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0 60.1
  SAY #30768 /* ~He frowns. "It is also of interest that while the Revolutionary League has a large number of members, the very nature of their faction causes these members to work counter to each other's interests. Often, cells fight amongst each other, each one claiming to know the 'proper' way to go about tearing everything down."~ */
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #31087 /* ~"Does the method really matter, so long as what's false is torn down?"~ */ GOTO 68
  IF ~~ THEN REPLY #31088 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31089 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31090 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31091 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 36.0 49.7 50.7
  SAY #30769 /* ~"Ah, the Society of Sensation! They are one of the most prominent of Sigil's fifteen factions. They hold the belief that the true dark of the multiverse can be known only by directly experiencing as much of the universe as possible; tasting every substance, feeling every range of emotion, and visiting every place in the multiverse."~ */
  IF ~~ THEN REPLY #31092 /* ~Continue to listen.~ */ GOTO 63
  IF ~~ THEN REPLY #31093 /* ~Attempt to interrupt him.~ */ GOTO 63
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31094 /* ~Pick his pockets while he lectures away.~ */ GOTO 96
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1 96.0
  SAY #30770 /* ~He continues: "Their faction headquarters is at the Civic Festhall, where they seek to bring experiences to all of Sigil. At the moment, they are the most numerous faction in all Sigil... and the most powerful. If I am not mistaken, the most recent census of their members is over twenty times thousand members."~ */
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #31095 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31097 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31098 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31100 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 49.8 50.8
  SAY #30771 /* ~He harrumphs. "Rabble-rousers! Not a proper faction at all, that raggedy bunch. Why, even the Revolutionary League is more organized! The Xaositects think that, by embracing chaos, they'll somehow discover the secrets of the multiverse. Ridiculous notion."~ */
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!NearbyDialog("DMorte")
~ THEN REPLY #31101 /* ~"Well I, for one, plan on discovering the secrets of the multiverse by rubbing cottage cheese on my belly and eating vast quantities of fresh-water fish. Mmm... cheese."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ GOTO 65
  IF ~  GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
NearbyDialog("DMorte")
~ THEN REPLY #31102 /* ~"Well I, for one, plan on discovering the secrets of the multiverse by rubbing cottage cheese on my belly and eating vast quantities of fresh-water fish. Mmm... cheese."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_1","GLOBALLaw",-1)
~ EXTERN ~DMORTE~ 297
  IF ~~ THEN REPLY #31103 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31104 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31105 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31106 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #30772 /* ~The man stares at you for a moment. "Pardon... did you... cheese? I... ah, had best be going, sir..."~ */
  IF ~~ THEN REPLY #31107 /* ~"Wait... I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31109 /* ~"Hold on. I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31110 /* ~"Hold it... let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31111 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 52.0
  SAY #30773 /* ~"I find their philosophy respectable... good for Sigil and its people in every way... but it's far too simple. How do you expect to discover the secrets of the multiverse by merely 'living well'? Will such knowledge appear spontaneously one fateful day, at last enlightening one of your myriad incarnations? If such things even exists! But I see, sir, that you have little time for debate. I will drop the matter."~ */
  IF ~~ THEN REPLY #31112 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31113 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31114 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31115 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 54.0
  SAY #30774 /* ~"Simply because the lynchpin of their system of beliefs revolves around a matter of *faith.* I would require hard facts - and nothing less, my good man - to give up my love for this life so easily. But I see, sir, that you have little time for debate. I will drop the matter."~ */
  IF ~~ THEN REPLY #31116 /* ~"I'd like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31117 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31118 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31119 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 61.0
  SAY #30775 /* ~"The method *itself* is falsity! How can-" He pauses, narrowing his eyes suspiciously. "One moment, sir... you're not... not..."~ */
  IF ~~ THEN REPLY #31120 /* ~"Yes, I am. Go ahead, say it: an Anarchist."~ */ GOTO 69
  IF ~~ THEN REPLY #31121 /* ~Lie: "Not a... what? I don't know what you're talking about."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Able_2","GLOBALLaw",-1)
~ GOTO 70
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #30776 /* ~He backs away, calling for the guards. "Guards! An Anarchist! GUARDS!"~ */
  IF ~~ THEN REPLY #31122 /* ~Attack him.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #31123 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 70 // from: 68.1
  SAY #30777 /* ~"Hmmm..."~ */
  IF ~~ THEN REPLY #31124 /* ~"I'd, uh, like to hear more of the other factions..."~ */ GOTO 50
  IF ~~ THEN REPLY #31125 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31126 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31127 /* ~"I'd best be leaving, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 43.1
  SAY #30778 /* ~"The Lady of Pain, yes, yes... she is the force behind Sigil, you know. Very impressive figure, but little is known about her."~ */
  IF ~~ THEN REPLY #31128 /* ~"What *is* known about her?"~ */ GOTO 72
  IF ~~ THEN REPLY #31129 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31130 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31131 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 47.0 71.0
  SAY #30779 /* ~He begins ticking off the points on his fingers: "One: She is not just a symbol of Sigil, as some claim. She is very real and very dangerous. Two: She is believed to be the one that keeps the powers... deities... out of Sigil. As long as she is present, the powers cannot enter Sigil..."~ */
  IF ~~ THEN REPLY #31132 /* ~Continue to listen.~ */ GOTO 73
  IF ~~ THEN REPLY #31133 /* ~Attempt to interrupt him.~ */ GOTO 73
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31134 /* ~Pick his pockets while he lectures away.~ */ GOTO 97
END

IF ~~ THEN BEGIN 73 // from: 72.0 72.1 97.0
  SAY #30780 /* ~"Three: She also prevents unauthorized teleporting and gating into and out of Sigil. It prevents the outer planes creatures from bringing even more of their kind to Sigil outside of the conventional routes. Four: She has never spoken. To anyone. Five: She usurped control of Sigil from Aoskar, a power now believed dead."~ */
  IF ~~ THEN REPLY #31135 /* ~Continue to listen.~ */ GOTO 74
  IF ~~ THEN REPLY #31136 /* ~Attempt to interrupt him.~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1
  SAY #30781 /* ~"Six: Anyone who threatens Sigil... or her... is punished, either by falling beneath her shadow, which results in a series of invisible stab wounds that can kill even greater baatezu, or by being sent to the mazes, from whence few ever escape. Seven: She does not like to be worshipped. Those that do are often found with their skin missing."~ */
  IF ~~ THEN REPLY #31137 /* ~Continue to listen.~ */ GOTO 75
  IF ~~ THEN REPLY #31138 /* ~Attempt to interrupt him.~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #30782 /* ~"And lastly: The sight of her is believed to drive others mad."~ */
  IF ~~ THEN REPLY #31139 /* ~"She stole control of Sigil from a power? How do you know this?"~ */ GOTO 76
  IF ~~ THEN REPLY #31140 /* ~"The sight of her drives people mad?"~ */ GOTO 77
  IF ~~ THEN REPLY #31141 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31142 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31143 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 77.0
  SAY #30783 /* ~"'Tis the belief of my order."~ */
  IF ~~ THEN REPLY #31144 /* ~"You'd said the sight of her drives people mad?"~ */ GOTO 77
  IF ~~ THEN REPLY #31145 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31146 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31147 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 75.1 76.0
  SAY #30784 /* ~"Yes." He ponders it for a moment. "But I must add the caveat that I have never seen her, you understand."~ */
  IF ~~ THEN REPLY #31148 /* ~"So how is it that you know she created Sigil?"~ */ GOTO 76
  IF ~~ THEN REPLY #31149 /* ~"I have other questions about Sigil..."~ */ GOTO 43
  IF ~~ THEN REPLY #31150 /* ~"Let me ask about something else..."~ */ GOTO 16
  IF ~~ THEN REPLY #31151 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 16.7 83.1
  SAY #30785 /* ~"Ravel... *if* she truly existed, and there is little to prove that she did... was a night hag, one of the inhabitants of the Gray Waste, one of the Lower Planes, and believed by some to be the worst of the Lower Planes..." ~ */
  IF ~~ THEN REPLY #31152 /* ~Continue to listen.~ */ GOTO 79
  IF ~~ THEN REPLY #31153 /* ~Attempt to interrupt him.~ */ GOTO 79
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31154 /* ~Pick his pockets while he lectures away.~ */ GOTO 98
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.1 98.0
  SAY #30786 /* ~He continues: "As the legend goes, Ravel was mazed several centuries ago. She was believed of being a mistress of many strange magicks, and apparently her presence in Sigil constituted a threat to the Lady. I'm afraid that I know little about her."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31155 /* ~"So can you research her, then?"~ */ GOTO 84
  IF ~~ THEN REPLY #31156 /* ~"Mazed?"~ */ GOTO 80
  IF ~~ THEN REPLY #31157 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31158 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.1 87.0
  SAY #30787 /* ~"The mazes! These are creations by the Lady... you see, she takes a small piece of Sigil, copies it, then uses a portal to place the copied bit into the Deep Ethereal. Once there, the piece of Sigil then becomes a demiplane, an endless maze that curls and twists about itself..."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31159 /* ~"So can you research her, then?"~ */ GOTO 84
  IF ~~ THEN REPLY #31160 /* ~Continue to listen.~ */ GOTO 81
  IF ~~ THEN REPLY #31161 /* ~Attempt to interrupt him.~ */ GOTO 81
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #31162 /* ~Pick his pockets while he lectures away.~ */ GOTO 99
END

IF ~~ THEN BEGIN 81 // from: 80.1 80.2 99.0
  SAY #30788 /* ~He continues: "The Lady uses these mazes to imprison anyone who threatens her power. Once she has determined that you are to be imprisoned, there is no escaping them. There is believed to be a way out of each maze, but it is most likely extremely difficult."~ */
  IF ~  Global("CW_Research_Ravel","AR0600",1)
~ THEN REPLY #31163 /* ~"So can you research her, then?"~ */ GOTO 84
  IF ~~ THEN REPLY #31164 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31165 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 16.8
  SAY #30789 /* ~"The long-standing war between the chaotic tanar'ri and the lawful baatezu. It is a war of ideology that has raged ever since the two races crossed paths in the Lower Planes, and the multiverse has been in its shadow ever since. My Blood War history is somewhat rusty, I'm afraid, as there have been numerous clashes over the millennia."~ */
  IF ~~ THEN REPLY #31166 /* ~"I had some other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31167 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 16.3 84.0
  SAY #30790 /* ~"I can most certainly try, sir... what is it you seek to know of?"~ */
  IF ~  PartyHasItem("P_JRNL")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #31168 /* ~Unfold the dodecahedron to a page with 'writing' on it and ask if he can research it.~ */ DO ~SetGlobal("CW_Research_Language","AR0600",3)
~ GOTO 84
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("CW_Research_Ravel","AR0600",0)
~ THEN REPLY #31169 /* ~"I'm looking for information about a night hag named Ravel Puzzlewell."~ */ DO ~SetGlobal("CW_Research_Ravel","AR0600",1)
~ GOTO 78
  IF ~  Global("CW_Research_Incarnations","AR0600",0)
~ THEN REPLY #31170 /* ~"I'm looking for information on any deceased person who matches my description."~ */ DO ~SetGlobal("CW_Research_Incarnations","AR0600",1)
~ GOTO 85
  IF ~~ THEN REPLY #31171 /* ~"Actually, let me ask you about something else."~ */ GOTO 16
  IF ~~ THEN REPLY #31172 /* ~"Nothing, come to think of it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 31.0 79.0 80.0 81.0 83.0 85.0
  SAY #30791 /* ~"Yes; I shall look into it. I should have the information in less than a day from now."~ */
  IF ~~ THEN REPLY #31173 /* ~"Thanks. Can I ask you to look into something else?"~ */ GOTO 83
  IF ~~ THEN REPLY #31174 /* ~"My thanks. I had other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31175 /* ~"It's well appreciated. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 83.2
  SAY #30792 /* ~He seems puzzled. "An... odd request, sir. Such a man or men would have to have been noteworthy figures for my work to turn up anything of interest. Are you investigating an ancestor of yours, or...?"~ */
  IF ~~ THEN REPLY #31176 /* ~"Something like that. Can you check?"~ */ GOTO 84
END

IF ~~ THEN BEGIN 86 // from: 16.0
  SAY #30793 /* ~"Only that the language is a dead one. There was a professor of languages at the Civic Festhall, Finam, whom you may wish to seek out. He might know of this language, should he still be there."~ */
  IF ~~ THEN REPLY #31177 /* ~"You have my thanks. I had other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31178 /* ~"It's well appreciated. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 16.1
  SAY #30794 /* ~"Yes, apparently she disappeared from the Festhall one night and was believed to have been mazed, to many people's relief. Records indicate that something of hers was needed to open a portal to her maze, but none knew what this might be nor wanted to find out. You may want to ask people within the Festhall of her."~ */
  IF ~~ THEN REPLY #31179 /* ~"She was 'mazed'?"~ */ GOTO 80
  IF ~~ THEN REPLY #31180 /* ~"Interesting. I had other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31181 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 16.2
  SAY #30795 /* ~"Why, yes, actually. Most curious! I found mention of two different men who matched your description... both of the most despicable sort, I'm afraid. The first man was an utter madman... a berserk, bloodthirsty mercenary and duelist who killed all those who crossed him."~ */
  IF ~~ THEN REPLY #31182 /* ~"Go on..."~ */ GOTO 100
END

IF ~~ THEN BEGIN 89 // from: 44.2
  SAY #30796 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31183 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 45
END

IF ~~ THEN BEGIN 90 // from: 46.2
  SAY #30797 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31184 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 47
END

IF ~~ THEN BEGIN 91 // from: 48.2
  SAY #30798 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31185 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 49
END

IF ~~ THEN BEGIN 92 // from: 51.2
  SAY #30799 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31186 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 52
END

IF ~~ THEN BEGIN 93 // from: 53.2
  SAY #30800 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31187 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 54
END

IF ~~ THEN BEGIN 94 // from: 56.2
  SAY #30801 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31188 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 57
END

IF ~~ THEN BEGIN 95 // from: 58.2
  SAY #30802 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31189 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 59
END

IF ~~ THEN BEGIN 96 // from: 62.2
  SAY #30803 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31190 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 63
END

IF ~~ THEN BEGIN 97 // from: 72.2
  SAY #30804 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31191 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 73
END

IF ~~ THEN BEGIN 98 // from: 78.2
  SAY #30805 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31192 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 79
END

IF ~~ THEN BEGIN 99 // from: 80.3
  SAY #30806 /* ~You slip your hand into the man's purse and snatch a few coins.~ */
  IF ~~ THEN REPLY #31193 /* ~Pocket the coins and continue to listen.~ */ DO ~GiveGoldForce(4)
~ GOTO 81
END

IF ~~ THEN BEGIN 100 // from: 88.0
  SAY #30807 /* ~He nods. "He was finally captured - and subsequently drawn and quartered - by two dozen Mercykillers after a murderous rampage in a Lower Ward pub. His remains were cast beyond the walls of Sigil. This was all some three centuries past."~ */
  IF ~~ THEN REPLY #31194 /* ~"And the other man?"~ */ GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #30808 /* ~"Little is known of him. My research showed that he was a Sensate who, shortly before his death, destroyed all the dozens of sensory stones that he had recorded experiences into. It was noted as a great loss to the faction, for the man - though he had few friends, lashing out at anyone who approached him too closely - was said to have collected a great many wondrous sensations."~ */
  IF ~~ THEN REPLY #31195 /* ~"How did he die?"~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #30809 /* ~He shrugs. "I do not know; the records do not say."~ */
  IF ~~ THEN REPLY #31196 /* ~"You have my thanks. I had other questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31197 /* ~"It's well appreciated. Farewell."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,1)
~ THEN BEGIN 103 // from:
  SAY #30810 /* ~Able smiles at your approach. "Ah, good sir, we meet again! You know, I was thinking..." He begins talking at length of policies in procedures in the Sigilian courts and how processes might be made more efficient.~ */
  IF ~~ THEN REPLY #31198 /* ~"Wait... I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31199 /* ~"Yes... very interesting... but I must be going. Farewell."~ */ EXIT
END

IF WEIGHT #6 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,2)
~ THEN BEGIN 104 // from:
  SAY #30811 /* ~Able smiles at your approach. "Ah, good sir, we meet again! You know, I was thinking..." He begins talking at length of the structure of the administration complex he works in, and how various improvements in workflow could be facilitated through the use of rotating schedules.~ */
  IF ~~ THEN REPLY #31200 /* ~"Wait... I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31201 /* ~"Yes... very interesting... but I must be going. Farewell."~ */ EXIT
END

IF WEIGHT #7 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,3)
~ THEN BEGIN 105 // from:
  SAY #30812 /* ~Able smiles at your approach. "Ah, good sir, we meet again! You know, I was thinking..." He begins talking at length of how the Great Foundry spews various toxic gasses into the atmosphere of Sigil and of the ill effects they have on the various humors within one's body.~ */
  IF ~~ THEN REPLY #31202 /* ~"Wait... I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31203 /* ~"Yes... very interesting... but I must be going. Farewell."~ */ EXIT
END

IF WEIGHT #8 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,4)
~ THEN BEGIN 106 // from:
  SAY #30813 /* ~Able smiles at your approach. "Ah, good sir, we meet again! You know, I was thinking..." He begins talking at length of the way in which the Fraternity of Order, the Harmonium, and the Mercykillers work together to promote peace and stability in Sigil.~ */
  IF ~~ THEN REPLY #31204 /* ~"Wait... I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31205 /* ~"Yes... very interesting... but I must be going. Farewell."~ */ EXIT
END

IF WEIGHT #9 ~  GlobalGT("Able","GLOBAL",0)
RandomNum(6,5)
~ THEN BEGIN 107 // from:
  SAY #30814 /* ~Able smiles at your approach. "Ah, good sir, we meet again! You know, I was thinking..." He begins talking at length about the different styles of grooming and clothes which have waxed and waned in popularity throughout the decades he's lived in Sigil.~ */
  IF ~~ THEN REPLY #31206 /* ~"Wait... I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31207 /* ~"Yes... very interesting... but I must be going. Farewell."~ */ EXIT
END

IF WEIGHT #10 ~  GlobalGT("Able","GLOBAL",0)
~ THEN BEGIN 108 // from:
  SAY #30815 /* ~Able smiles at your approach. "Ah, good sir, we meet again! You know, I was thinking..." He begins talking at length of his work as a research consultant in the Hall of Records, giving you sentence-by-sentence descriptions of various 'interesting' conversations he's had with co-workers that week.~ */
  IF ~~ THEN REPLY #31208 /* ~"Wait... I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #31209 /* ~"Yes... very interesting... but I must be going. Farewell."~ */ EXIT
END
