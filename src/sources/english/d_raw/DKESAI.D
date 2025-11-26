// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESAI~

IF ~  Global("Kesai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2939 /* ~This alarmingly voluptuous woman has a thick mane of wavy, raven-colored hair, bluish skin and shimmering, crimson eyes, like rubies which have fires lit behind them. Though she is not beautiful in the typical sense of the word, her features are exotic and not altogether unattractive.~ */
  IF ~~ THEN REPLY #2940 /* ~"Greetings..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #40857 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #40858 /* ~The woman's voice is deep and sensuous: "And my greetings to *you,* sir." Her burning eyes roam over you. "I'm Kesai-Serris. So tell me: what might I do for you, hmmm?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 432
  IF ~  !NearbyDialog("DMorte")
Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40859 /* ~"Kesai? Are you Ravel's daughter?"~ */ GOTO 41
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40860 /* ~"Well, what do you usually do for patrons?"~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40861 /* ~"I had some questions..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40862 /* ~"Nothing, thanks. Farewell."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #40863 /* ~Kesai laughs heartily, revealing canines long enough to be considered fangs. She shakes her head and smiles at Morte. "Truly, though, please... what can I do for you?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40864 /* ~"Kesai? Are you Ravel's daughter?"~ */ GOTO 41
  IF ~~ THEN REPLY #40865 /* ~"Well, what do you usually do for patrons?"~ */ GOTO 4
  IF ~~ THEN REPLY #40866 /* ~"I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #40867 /* ~"Nothing, thanks. Farewell."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.4 2.3 66.3 67.3 68.4
  SAY #40868 /* ~She arches her eyebrows: "A tease, eh? Hmph!" Kesai smiles at you, narrowing her flashing red eyes. "Come back when you'd like to talk, hmmm?"~ */
  IF ~~ THEN REPLY #40869 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 66.1 67.1 68.2
  SAY #40870 /* ~"Talk, of course! Usually about dreams, often those erotic in nature... but not always!" Kesai winks at you, smiling. "So! Would you like to tell me yours? Don't be shy; I've heard everything, you know. Nothing will shock or surprise me, and I so love to hear people's dreams. We can trade if you'd like, too - but you must go first."~ */
  IF ~  CheckStatLT(Protagonist,15,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40871 /* ~"My dreams were recently revised when I saw you..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 6
  IF ~  CheckStatGT(Protagonist,14,CHR)
Global("Kesai_Flirt","AR0605",0)
~ THEN REPLY #40872 /* ~"My dreams were recently revised when I saw you, my lady..."~ */ DO ~SetGlobal("Kesai_Flirt","AR0605",1)
~ GOTO 7
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40873 /* ~"I don't have many dreams, really. For a long time, I had none at all."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40874 /* ~"I... don't have dreams, actually."~ */ GOTO 21
  IF ~~ THEN REPLY #40875 /* ~"No... I'd rather not."~ */ GOTO 5
  IF ~~ THEN REPLY #40876 /* ~"I'd like to, but I've too little time."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.4 4.5 6.2 6.3 13.1 14.1 15.2 15.3 16.2 17.2 17.3 19.2 19.3 23.1
  SAY #40877 /* ~Kesai pouts for a moment, then shrugs. "As you like! I'll be waiting if you ever change your mind..."~ */
  IF ~~ THEN REPLY #40878 /* ~"Wait... I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #40879 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #40880 /* ~"Were they, now?" Kesai smiles and shakes her head. "Come, come... let's hear the real thing! What do you dream about, hmm?"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40881 /* ~"I don't have many dreams, really. For a long time, I had none at all."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40882 /* ~"I... don't have dreams, actually."~ */ GOTO 21
  IF ~~ THEN REPLY #40883 /* ~"I'd rather not talk about it."~ */ GOTO 5
  IF ~~ THEN REPLY #40884 /* ~"I'd like to tell you, but I've too little time."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 4.1
  SAY #40885 /* ~"*Were* they, now?" Kesai smiles, her gleaming red eyes looking you over once more. "You look very savage, you know? Tell me: are you rough with your lovers? In the *act,* I mean... very physical?"~ */
  IF ~~ THEN REPLY #40886 /* ~"Do you mean 'abusive'?"~ */ GOTO 8
  IF ~~ THEN REPLY #40887 /* ~"Why would you ask such a thing?"~ */ GOTO 9
  IF ~~ THEN REPLY #40888 /* ~"No, I'm quite gentle, actually."~ */ GOTO 10
  IF ~~ THEN REPLY #40889 /* ~"Yes, I suppose I am."~ */ GOTO 10
  IF ~~ THEN REPLY #40890 /* ~"Only if it pleases them."~ */ GOTO 10
  IF ~~ THEN REPLY #40891 /* ~"It depends on the mood I'm in, really."~ */ GOTO 10
  IF ~~ THEN REPLY #40892 /* ~"I... don't know, really."~ */ GOTO 18
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40893 /* ~"The many heavens forbid, no!" Kesai gives an exasperated sigh. "Some people have a very *slow* and *sensuous* way of doing things... while others are more forward about it, all rough and tumble and rolling about, you know? I merely wondered where *you* fell in, is all."~ */
  IF ~~ THEN REPLY #40894 /* ~"Why would you ask about such a thing?"~ */ GOTO 9
  IF ~~ THEN REPLY #40895 /* ~"I'm quite gentle, actually."~ */ GOTO 10
  IF ~~ THEN REPLY #40896 /* ~"I suppose I am a bit rough, then."~ */ GOTO 10
  IF ~~ THEN REPLY #40899 /* ~"I'm only rough if it pleases them."~ */ GOTO 10
  IF ~~ THEN REPLY #40900 /* ~"It depends on the mood I'm in, really."~ */ GOTO 10
  IF ~~ THEN REPLY #40901 /* ~"I... don't know, really."~ */ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #40902 /* ~Kesai shrugs. "I was curious... and enjoy talking about the act of love. Many people are uncomfortable speaking of it, but it's important to be able to, especially with one's partner - it's good for the both of them! It's my hope that my clients will find the voice to talk to their own lovers about such things, if they don't already. So: you never gave me an answer..."~ */
  IF ~~ THEN REPLY #40903 /* ~"I'm quite gentle, actually."~ */ GOTO 10
  IF ~~ THEN REPLY #40904 /* ~"I suppose I am a bit rough."~ */ GOTO 10
  IF ~~ THEN REPLY #40905 /* ~"I'm only rough if it pleases them."~ */ GOTO 10
  IF ~~ THEN REPLY #40906 /* ~"It depends on the mood I'm in, really."~ */ GOTO 10
  IF ~~ THEN REPLY #40907 /* ~"I... don't know, really."~ */ GOTO 18
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 7.4 7.5 8.1 8.2 8.3 8.4 9.0 9.1 9.2 9.3
  SAY #40908 /* ~Kesai nods, smiling. "I thought you'd say as much. I'm quite rough, myself... I like to be carried around, and I particularly enjoy biting! I've sharp teeth, though, so I've to take care. Sometimes I get carried away and draw a little blood, you know?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 433
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40909 /* ~"You have sharp teeth?"~ */ GOTO 12
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40910 /* ~"I wouldn't mind that..."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40911 /* ~"That would *not* go over well with me..."~ */ GOTO 16
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40912 /* ~"Yes... well, I had some questions..."~ */ GOTO 26
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40913 /* ~"I see. I'd best take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #40914 /* ~"Roaming the Outlands, most likely. But that was a rhetorical question, wasn't it?" She winks at Morte, then turns to you again.~ */
  IF ~~ THEN REPLY #40915 /* ~"You have sharp teeth?"~ */ GOTO 12
  IF ~~ THEN REPLY #40916 /* ~"I don't think I'd mind the biting..."~ */ GOTO 13
  IF ~~ THEN REPLY #40917 /* ~"Biting would *not* go over well with me..."~ */ GOTO 16
  IF ~~ THEN REPLY #40918 /* ~"I had some questions, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40919 /* ~"I'd best take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 11.0
  SAY #40920 /* ~Kesai nods. "Mmm-hmm, I certainly do. Would you like to see? Here..." She opens her mouth slightly, running her violet tongue over her bottom teeth; her canines are just long enough to be considered fangs.~ */
  IF ~~ THEN REPLY #40921 /* ~"I don't think I'd mind the biting..."~ */ GOTO 13
  IF ~~ THEN REPLY #40922 /* ~"Bites from those would *not* go over well with me..."~ */ GOTO 16
  IF ~~ THEN REPLY #40923 /* ~"I see. I had some questions, Kesai..."~ */ GOTO 26
  IF ~~ THEN REPLY #40924 /* ~"I'd best take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 11.1 12.0
  SAY #40925 /* ~Kesai laughs. "I doubt I'd get through that thick hide of yours, anyway. Do you have much sensation left in your skin?"~ */
  IF ~~ THEN REPLY #40926 /* ~"No, sadly; not really. The scars are very thick."~ */ GOTO 14
  IF ~~ THEN REPLY #40927 /* ~"I don't really want to talk about it."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40928 /* ~"Oh, that's a shame. You *do* have a lot scars..." Kesai looks closely at your face. "Even your lips, the lids of your eyes... tell me: are you scarred everywhere? You know... *everywhere?*"~ */
  IF ~~ THEN REPLY #40929 /* ~"No, not really. Parts of me have somehow managed to stay out of harm's way."~ */ GOTO 15
  IF ~~ THEN REPLY #40930 /* ~"I don't really want to talk about it."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40931 /* ~"That's good, then!" Kesai laughs cheerfully, then puts on a mock serious look, placing her hands on her hips. "You never *did* tell me about your dreams, you know. Come on, let's have them!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40932 /* ~"I don't have many dreams, really. For a long time, I had none at all."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40933 /* ~"I... don't have dreams, actually."~ */ GOTO 21
  IF ~~ THEN REPLY #40934 /* ~"I'd rather not talk about it."~ */ GOTO 5
  IF ~~ THEN REPLY #40935 /* ~"I'd like to tell you, but I've too little time."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 10.3 11.2 12.1
  SAY #40936 /* ~"Oh, see? That's why it's so important to talk about such things, especially with one's lover. A couple's first time together could be much improved if they discussed the act, beforehand... besides, it's such fun to talk about, hmmm?" Kesai smiles widely at you, her eyes glinting like two red jewels.~ */
  IF ~~ THEN REPLY #40937 /* ~"Yes, I'd say it is."~ */ GOTO 17
  IF ~~ THEN REPLY #40938 /* ~"No, I think it's a more private matter, not to be taken so lightly."~ */ GOTO 17
  IF ~~ THEN REPLY #40939 /* ~"I'd really rather not discuss this."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #40940 /* ~Kesai nods, looking lost in thought for a moment. "Say... you never *did* tell me about your dreams, you know. Come on, let's have them!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40941 /* ~"I don't have many dreams, really. For a long time, I had none at all."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40942 /* ~"I... don't have dreams, actually."~ */ GOTO 21
  IF ~~ THEN REPLY #40943 /* ~"I'd rather not talk about it."~ */ GOTO 5
  IF ~~ THEN REPLY #40944 /* ~"I'd like to tell you, but I've too little time."~ */ GOTO 5
END

IF ~~ THEN BEGIN 18 // from: 7.6 8.5 9.4
  SAY #40945 /* ~Kesai pouts for a moment, then shrugs. "If you're uncomfortable speaking about it, that's all right. I will say, though, that you shouldn't have any such reservations with a lover. These things are important to discuss, especially before the act, you know? It'll be best for the both of you."~ */
  IF ~~ THEN REPLY #40946 /* ~"I'll keep that in mind."~ */ GOTO 19
  IF ~~ THEN REPLY #40947 /* ~"I think you'd best mind you own business."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #40948 /* ~She simply smiles in response. "Say... you never *did* tell me about your dreams, you know. Come on, let's have them!"~ */
  IF ~  Global("AR3017_Visited","GLOBAL",1)
~ THEN REPLY #40949 /* ~"I don't have many dreams, really. For a long time, I had none at all."~ */ GOTO 23
  IF ~  Global("AR3017_Visited","GLOBAL",0)
~ THEN REPLY #40950 /* ~"I... don't have dreams, actually."~ */ GOTO 21
  IF ~~ THEN REPLY #40951 /* ~"I'd rather not talk about it."~ */ GOTO 5
  IF ~~ THEN REPLY #40952 /* ~"I'd like to tell you, but I've too little time."~ */ GOTO 5
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #40953 /* ~Kesai smirks, rolling her fiery, red eyes. "*You* approached *me,* you know. If such things rankle you, you're certainly free to leave me and speak with one of the other women, instead."~ */
  IF ~~ THEN REPLY #40954 /* ~"No, not yet - I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #40955 /* ~"I'll do that, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 4.3 6.1 15.1 17.1 19.1
  SAY #40956 /* ~Kesai arches her eyebrows in surprise. "Truly? How sad! Even fiends and devas dream, you know. Are you *certain* you don't?"~ */
  IF ~~ THEN REPLY #40957 /* ~"Quite certain. No dreams, at all."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #40958 /* ~"Hmm. Too peculiar! I'm at a loss as to what to say..."~ */
  IF ~~ THEN REPLY #40959 /* ~"Well, I did have some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #40960 /* ~"That's all right. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 4.2 6.0 15.0 17.0 19.0
  SAY #40961 /* ~"None at all, really? Too peculiar! Even fiends and devas dream, you know. So what are these few dreams about, hmm?" Kesai leans towards you, eager for a response.~ */
  IF ~~ THEN REPLY #40962 /* ~"They're more nightmares than dreams. Visions of a black-barbed maze... a night hag, named Ravel..."~ */ GOTO 24
  IF ~~ THEN REPLY #40963 /* ~"I'd rather not discuss them, actually."~ */ GOTO 5
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #40964 /* ~Kesai remains silent for some time. "Oh? Oh... nightmares. I see... that's a pity, it really is..."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #40965 /* ~"Are you all right? You seem suddenly distraught..."~ */ GOTO 25
  IF ~~ THEN REPLY #40966 /* ~"Yes, perhaps. I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #40967 /* ~"That's all right. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #40968 /* ~"I'm fine, just fine. Thank you, though." Kesai smiles at you.~ */
  IF ~~ THEN REPLY #40969 /* ~"In that case, I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #40970 /* ~"I'll take my leave, then. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.3 2.2 5.0 10.4 11.3 12.2 20.0 22.0 24.1 25.0 27.2 28.2 29.1 30.1 31.0 32.1 33.2 34.0 36.1 37.0 38.1 39.0 40.0 42.1 66.2 67.2 68.3 69.0
  SAY #40971 /* ~Kesai blinks her crimson eyes at you, awaiting your question.~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40972 /* ~"Kesai, I talked to Kimasxi. She told me she's your half-sister, and that Ravel's your mother."~ */ DO ~SetGlobal("Know_Kesai_Ravel","AR0605",3)
~ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40973 /* ~"Are you Ravel's daughter, by any chance?"~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,13,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40974 /* ~"What are you?"~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,12,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #40975 /* ~"If you don't mind my asking, what are you?"~ */ GOTO 27
  IF ~  CheckStatLT(Protagonist,13,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40976 /* ~"What are you?"~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #40977 /* ~"If you don't mind my asking, what are you?"~ */ GOTO 28
  IF ~~ THEN REPLY #40978 /* ~"What are you doing here?"~ */ GOTO 29
  IF ~~ THEN REPLY #40979 /* ~"Can you tell me about this place?"~ */ GOTO 32
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40980 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 69
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67844 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Rumor_4","AR0605",1)
~ JOURNAL #66744 /* ~One of the prostitutes suggested that I ask Dolora about Ecco, the silent prostitute. She said that Dolora sometimes spoke to an old lover of Ecco's, one who knew her before she stopped speaking.~ */ GOTO 69
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40981 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ JOURNAL #66727 /* ~One of the prostitutes suggested that I ask Nenny if she knows anything about who took Vivian's personal scent. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 33
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40982 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ JOURNAL #66728 /* ~One of the prostitutes suggested that I ask Nenny if she's seen Marissa's Crimson Veil anywhere. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 36
  IF ~  GlobalLT("Kesai","GLOBAL",3)
Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40983 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ GOTO 38
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40984 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 40
  IF ~~ THEN REPLY #40985 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.2 26.3
  SAY #40986 /* ~Kesai shakes her head. "What, can't you tell?" She draws herself up, thrusting her ample bosom towards you. "A woman!" She raises an eyebrow. "I can see my answer doesn't please you... I'm plane-touched, actually. That's all you need to know."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40987 /* ~"Kesai, I talked to Kimasxi. She told me she's your half-sister, and that Ravel's your mother."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40988 /* ~"Are you Ravel's daughter?"~ */ GOTO 41
  IF ~~ THEN REPLY #40989 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #40990 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.4 26.5
  SAY #40991 /* ~Kesai shakes her head. "What, can't you tell?" She draws herself up, thrusting her ample bosom towards you. "A woman!" She raises an eyebrow. "I can see my answer doesn't please you... I'm plane-touched, actually, like your friend here." Kesai indicates Annah. "That's all you need to know."~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",2)
~ THEN REPLY #40992 /* ~"Kesai, I talked to Kimasxi. She told me she's your half-sister, and that Ravel's your mother."~ */ GOTO 45
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #40993 /* ~"Are you Ravel's daughter?"~ */ GOTO 41
  IF ~~ THEN REPLY #40994 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #40995 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.6
  SAY #40996 /* ~"Entertaining your questions, it seems." She winks at you. "Really, though, I'm a student of Mistress Grace's. All the prostitutes in the Brothel are."~ */
  IF ~~ THEN REPLY #40997 /* ~"A student?"~ */ GOTO 30
  IF ~~ THEN REPLY #40998 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #40999 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #41000 /* ~"That's right. The Brothel is actually a school for women who are thinking of becoming Sensates. Mistress Grace teaches us the ways of language so that we can better identify with ourselves and those around us. It lets us experience the planes more fully, you know?"~ */
  IF ~~ THEN REPLY #41001 /* ~"Tell me about the Sensates."~ */ GOTO 31
  IF ~~ THEN REPLY #41002 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41003 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0
  SAY #41004 /* ~"The Society of Sensation believes that the multiverse can only be understood by experiencing it... the more you experience, the closer you are to understanding the dark of the multiverse. Intriguing, huh? I think I was born to be one - I just want to *know* things."~ */
  IF ~~ THEN REPLY #41005 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41006 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 26.7
  SAY #41007 /* ~"Certainly: the Brothel of Slating Intellectual Lusts is actually a school for women who are thinking of becoming Sensates. Mistress Grace teaches us the ways of language so that we can better identify with ourselves and those around us. It lets us experience the planes more fully, you know?"~ */
  IF ~~ THEN REPLY #41008 /* ~"Tell me about the Sensates."~ */ GOTO 31
  IF ~~ THEN REPLY #41009 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41010 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.10
  SAY #41011 /* ~"No, I don't." Kesai frowns. "Most of the women will say she's prissy, but she's always been nice enough to me... complimenting me on my eyes... and she smells so good! I hope she finds her own scent again, soon. Try asking Nenny about it; she's everywhere at once and might have seen something."~ */
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #41012 /* ~"You do have very lovely eyes, you know."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Kesai_Eyes_Flirt","GLOBAL",0)
CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #41013 /* ~"You do have very lovely eyes, you know."~ */ DO ~SetGlobal("Kesai_Eyes_Flirt","GLOBAL",1)
~ EXTERN ~DANNAH~ 206
  IF ~~ THEN REPLY #41014 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41015 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #41016 /* ~"Why, thank you! You can see them glowing in the dark, you know... bizarre, no?" She pauses to look at you. "You've some nice eyes, too... so dark, and mysterious! So full of character."~ */
  IF ~~ THEN REPLY #41017 /* ~"Thanks, Kesai. I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41018 /* ~"Thanks. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #41019 /* ~Kesai-Serris shrugs and looks back to you.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 26.11
  SAY #41020 /* ~"Hmm. No, I haven't seen it since the last time she wore it out... but Nenny might have seen something, so try asking her. I'll admit it's been nice... Marissa won't leave her chamber without the veil, and so we've all been spared her foul tongue... leaving us only Kimasxi to deal with." Kesai smirks. "That Kimasxi's the worst of the two, though."~ */
  IF ~~ THEN REPLY #41021 /* ~"How so?"~ */ GOTO 37
  IF ~~ THEN REPLY #41022 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41023 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #41024 /* ~"Marissa's haughty and mean, but Kimasxi... she's a bitter, spiteful monster of a woman, with a venomous tongue and the demeanor of a balor. I can't see *why* anyone would like to speak with her - I sincerely doubt her appearance makes up for that flaying, poisonous mouth of hers - but she receives patrons nonetheless."~ */
  IF ~~ THEN REPLY #41025 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41026 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 26.12
  SAY #41027 /* ~"No. Nothing."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #41028 /* ~"Are you sure? You seem suddenly upset..."~ */ GOTO 39
  IF ~~ THEN REPLY #41029 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41030 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #41031 /* ~She narrows her red eyes at you. "Of course I'm sure! Don't ask me of her again."~ */
  IF ~~ THEN REPLY #41032 /* ~"Very well. I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41033 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 26.13
  SAY #41034 /* ~"The tenth?" Kesai purses her lips, tapping her foot as she thinks. "No... there's only nine of us. There's always nine prostitutes, unless Mistress Grace has made some recent changes I don't know about."~ */
  IF ~~ THEN REPLY #41035 /* ~"I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41036 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.1 2.0 26.1 27.1 28.1 66.0 67.0
  SAY #41037 /* ~Kesai suddenly bares her teeth, her eyes narrowing to slits of blazing crimson. "What?! Where'd you hear such a thing?"~ */
  IF ~~ THEN REPLY #41038 /* ~"Ecco told me."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~I asked Kesai-Serris if she was Ravel's daughter and she became quite upset... she doesn't want to believe it. If what I've been told of her is indeed true, I'll just have to find a way to prove it to her.~ */ GOTO 42
  IF ~~ THEN REPLY #41039 /* ~"Just a rumor, that's all."~ */ DO ~SetGlobal("Kesai_Quest","GLOBAL",1)
SetGlobal("Kesai_Ask","AR0605",1)
~ JOURNAL #39519 /* ~I asked Kesai-Serris if she was Ravel's daughter and she became quite upset... she doesn't want to believe it. If what I've been told of her is indeed true, I'll just have to find a way to prove it to her.~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1
  SAY #41040 /* ~"Ridiculous! I think I'd *know* if that wicked hag was my own mother! Now stop bothering me about it."~ */
  IF ~~ THEN REPLY #41041 /* ~"Who is your mother, then?"~ */ GOTO 43
  IF ~~ THEN REPLY #41042 /* ~"Very well. I had another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41043 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #41044 /* ~"I don't know, all right? My father raised me; I never knew her. But do I *look* like a night hag, to you?!"~ */
  IF ~~ THEN REPLY #41045 /* ~"Well... there is the skin... and the eyes... and maybe the teeth, too..."~ */ GOTO 44
  IF ~~ THEN REPLY #41046 /* ~"No, no - of course not."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #41047 /* ~Kesai-Serris glares at you, her eyes blazing. "Perhaps we'll speak *later,* but I'm no longer in the mood. Farewell."~ */
  IF ~~ THEN REPLY #41048 /* ~"Farewell."~ */ DO ~SetGlobal("Kesai","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 26.0 27.0 28.0
  SAY #41049 /* ~Kesai snarls, her eyes blazing with malice. "That... that... hells, how I loathe that woman! Why would you even *believe* that sort of tripe?"~ */
  IF ~~ THEN REPLY #41050 /* ~"She says that you deny it, and in fact may not know it, but that it's true. She said you could ask your father... that he would tell you."~ */ DO ~SetGlobal("Kesai","GLOBAL",3)
SetGlobal("Kesai_Quest","GLOBAL",2)
~ JOURNAL #39518 /* ~Kesai-Serris finally realized that she was Ravel's daughter. She somehow spoke to her half-fiendish father, as Kimasxi suggested, and learned the truth.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #41051 /* ~Kesai stares at you silently for a time. "Give me a moment." She turns from you, and begins to mutter softly... the air seems to shimmer around her slightly, and fills with a coppery smell, like warm blood...~ */
  IF ~~ THEN REPLY #41052 /* ~Wait patiently.~ */ GOTO 51
  IF ~~ THEN REPLY #41053 /* ~Strain your ears, try to overhear what she's saying.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.1
  SAY #41054 /* ~You lean towards Kesai, attempting to hear what she's muttering.

"Haughazanenel, Banished Prince of Ithag, Marquis of the Bloody Shadow, my father, hear me, for I call upon you..."~ */
  IF ~~ THEN REPLY #41055 /* ~Keep listening.~ */ GOTO 48
  IF ~~ THEN REPLY #41056 /* ~Stop listening in.~ */ GOTO 51
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #41057 /* ~"Yes, beloved father, it is I, Kesai-Serris. I would bid you answer me one question, a question I've asked you time and again..."~ */
  IF ~~ THEN REPLY #41058 /* ~Keep listening.~ */ GOTO 49
  IF ~~ THEN REPLY #41059 /* ~Stop listening in.~ */ GOTO 51
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41060 /* ~"Yes, beloved father. I cannot bear to have another ask me and not know myself. You *must* tell me... I have asked for nothing save this. Tell me, I beg of you..."~ */
  IF ~~ THEN REPLY #41061 /* ~Keep listening.~ */ GOTO 50
  IF ~~ THEN REPLY #41062 /* ~Stop listening in.~ */ GOTO 51
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #41063 /* ~"Y-yes... yes, beloved father, I understand. I thank you... farewell..."~ */
  IF ~~ THEN REPLY #41064 /* ~"Well? What did he have to say?"~ */ GOTO 51
  IF ~~ THEN REPLY #41065 /* ~Lean back, pretend you heard nothing.~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 46.0 47.1 48.1 49.1 50.0 50.1
  SAY #41066 /* ~Kesai remains turned away from you for a moment before finally coming to face you. "I did not want to believe that wicked hag may have been my mother. I have lived long, I do not appear to age, and have... disturbing dreams, sometimes." She shudders. "But still... I do not wish to be the inheritor of the evil she caused, nor draw the Lady's gaze as my mother did. Such evil things she did!"~ */
  IF ~~ THEN REPLY #41067 /* ~"Tell me what you know of her, will you?"~ */ GOTO 52
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41068 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41069 /* ~"I wouldn't worry about it, Kesai; you're nothing like Ravel. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #41070 /* ~"I heard she would pose impossible riddles to people, riddles she could answer but no one else could. She would devour the person if they answered incorrectly, or leave them dangling in her horrifying gardens as examples to all. Those few who somehow escaped she tormented in their dreams, riding them like steeds, breaking their wills and hurling their souls into the colorless oblivion of the Gray Waste..."~ */
  IF ~~ THEN REPLY #41071 /* ~"Go on..."~ */ GOTO 53
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41072 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41073 /* ~"That's all right... you don't need to tell me any more. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41074 /* ~"Her magic was said to be beyond anything most had ever seen; it was imagination woven from nightmare and given substance. Stone and solid shapes bent to her will like soft clay; the laws of the planes would bend beneath her feet and from nothing she could weave illusion... and from illusion, weave realities that could horrify and kill and confound."~ */
  IF ~~ THEN REPLY #41075 /* ~"Go on..."~ */ GOTO 54
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41076 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41077 /* ~"That's all right... you don't need to tell me any more. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #41078 /* ~"She was a mistress of all the Dark Arts, mistress and master of them all. She hounded a Guvner that dared quote Sigil law to her with shadows that devoured him; all but his tongue, his fingers, and the flesh of his face. She turned Mercykillers inside out, and shattered buildings of those who displeased her. Terrible, terrible powers were at her command."~ */
  IF ~~ THEN REPLY #41079 /* ~"Go on..."~ */ GOTO 55
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41080 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41081 /* ~"That's all right... you don't need to tell me any more. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #41082 /* ~"She changed her shape like water, and would use it to destroy some for amusement, and to steal knowledge from others. She was a monster, like all that has been spawned from the Gray Waste."~ */
  IF ~~ THEN REPLY #41083 /* ~"Go on..."~ */ GOTO 56
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41084 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41085 /* ~"That's all right... you don't need to tell me any more. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #41086 /* ~"In the end, she threatened to open the Cage and let the fury of the planes come rolling in, like a wave. Fortunately, she did not succeed. She existed solely to cause malice..."~ */
  IF ~~ THEN REPLY #41087 /* ~"Go on..."~ */ GOTO 57
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41088 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41089 /* ~"That's all right... you don't need to tell me any more. Farewell, Kesai."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41090 /* ~"I do not know if she is dead... but I know, now, that she was my mother." Kesai's shoulders slump, and her head hangs down. "Oh, that I had tears, so that I could weep with sorrow!"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #41091 /* ~Try and comfort her.~ */ GOTO 59
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #41092 /* ~Try and comfort her.~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #41093 /* ~Try and comfort her.~ */ GOTO 61
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41094 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41095 /* ~"I wouldn't worry about it, Kesai; you're nothing like Ravel. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 51.1 52.1 53.1 54.1 55.1 56.1 57.3 59.0 60.0 61.0 68.0
  SAY #41096 /* ~She looks alarmed. "Pardon?"~ */
  IF ~~ THEN REPLY #41097 /* ~"The portal key to Ravel's maze is a piece of her, and you are of her blood. It is close enough."~ */ GOTO 62
  IF ~~ THEN REPLY #41098 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0
  SAY #41099 /* ~"Just... just leave me be. I'll be fine. I just need some time to think about it, that's all."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41100 /* ~"All right, but... I need you to give me a piece of yourself."~ */ GOTO 58
  IF ~~ THEN REPLY #41101 /* ~"I wouldn't worry about it, Kesai; you're nothing like Ravel. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 57.1
  SAY #41102 /* ~"Thanks... thanks for your efforts... but I'll be fine. I just need some time to think about it, that's all."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41103 /* ~"I hate to ask this now... but I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41104 /* ~"I wouldn't worry about it, Kesai; you're nothing like Ravel. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.2
  SAY #41105 /* ~She suddenly falls into your arms, shuddering as if she were wracked with sobs. For a time Kesai simply stands there, clinging to you... but then she pushes away. "Thank you, but... I'll be fine. I just need some time to think about it, that's all."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #41106 /* ~"I hate to ask this now... but I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~~ THEN REPLY #41107 /* ~"I wouldn't worry about it, Kesai; you're nothing like Ravel. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 58.0
  SAY #41108 /* ~Kesai gasps. "You intend to seek her out?" Her surprise quickly changes to an expression of wariness. "What... what would you need of me?"~ */
  IF ~~ THEN REPLY #41109 /* ~"Your blood, most likely. Only a drop or two, I'm sure."~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #41110 /* ~She nods. "But... do you have some way to carry it? A piece of cloth, like a handkerchief or something, you know?"~ */
  IF ~  PartyHasItem("Hanky")
~ THEN REPLY #41111 /* ~"Yes... here..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~I got a few drops of Kesai-Serris' blood on a handkerchief. Seeing as how she's a child of Ravel, that should satisfy the requirements for the portal key to Ravel's maze: a 'piece of Ravel.'~ */ GOTO 64
  IF ~  !PartyHasItem("Hanky")
~ THEN REPLY #41112 /* ~"No, I don't."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",2)
~ GOTO 65
END

IF ~~ THEN BEGIN 64 // from: 63.0 68.1
  SAY #41113 /* ~Kesai takes the handkerchief and gingerly pricks the tip of her finger on one of her fangs. After letting several drops of blood soak into the cloth, she returns it to you. "You're placing yourself in grave danger, you know. Even if the stories of my mother are greatly exaggerated, she's horribly powerful and completely evil. Good luck."~ */
  IF ~~ THEN REPLY #41114 /* ~"Yes, so I've heard. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1
  SAY #41115 /* ~Kesai sighs, looking around. "I'm sure there's one in the Brothel, somewhere. Bring it here when you find it, all right? I'll give you the blood, then."~ */
  IF ~~ THEN REPLY #41116 /* ~"I'll return when I have a handkerchief, then. Farewell."~ */ JOURNAL #50721 /* ~It turns out that a few drops of Kesai's blood will suffice as the portal key to Ravel's maze... I only need bring her a handkerchief so that I can collect it, now.~ */ EXIT
END

IF ~  Global("Kesai","GLOBAL",1)
~ THEN BEGIN 66 // from:
  SAY #41117 /* ~Kesai-Serris smiles warmly as you draw near her, pushing a wavy lock of hair away from her bright, crimson eyes. "Well, greetings once again... something I can do for you, hmmm?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41118 /* ~"Kesai? Are you Ravel's daughter?"~ */ GOTO 41
  IF ~~ THEN REPLY #41119 /* ~"It depends... what sort of things do you do?"~ */ GOTO 4
  IF ~~ THEN REPLY #41120 /* ~"I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #41121 /* ~"Nothing, thanks. Farewell."~ */ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",2)
~ THEN BEGIN 67 // from:
  SAY #41122 /* ~Kesai-Serris smiles warmly as you draw near her, pushing a wavy lock of hair away from her bright, crimson eyes. "Don't worry; I don't stay upset long. Something I can do for you, hmmm?"~ */
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
~ THEN REPLY #41123 /* ~"Kesai? Are you Ravel's daughter?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 41
  IF ~~ THEN REPLY #41124 /* ~"It depends... what sort of things do you do?"~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #41125 /* ~"I had some questions..."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #41126 /* ~"Nothing, thanks. Farewell."~ */ DO ~SetGlobal("Kesai","GLOBAL",1)
~ GOTO 3
END

IF ~  Global("Kesai","GLOBAL",3)
~ THEN BEGIN 68 // from:
  SAY #41127 /* ~Kesai-Serris smiles warmly as you draw near her, pushing a wavy lock of hair away from her bright, crimson eyes. "Well, greetings once again... something I can do for you, hmmm?"~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",1)
~ THEN REPLY #52907 /* ~"I need you to give me a piece of yourself, Kesai."~ */ GOTO 58
  IF ~  Global("Know_Ravel_Key","GLOBAL",2)
PartyHasItem("Hanky")
~ THEN REPLY #41128 /* ~"Yes... I have that handkerchief..."~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",3)
DestroyPartyItem("Hanky",FALSE)
GiveItemCreate("Bhanky",Protagonist,1,0,0)
AddexperienceParty(40000)
~ JOURNAL #39517 /* ~I got a few drops of Kesai-Serris' blood on a handkerchief. Seeing as how she's a child of Ravel, that should satisfy the requirements for the portal key to Ravel's maze: a 'piece of Ravel.'~ */ GOTO 64
  IF ~~ THEN REPLY #41129 /* ~"It depends... what sort of things do you do?"~ */ GOTO 4
  IF ~~ THEN REPLY #41130 /* ~"I had some questions..."~ */ GOTO 26
  IF ~~ THEN REPLY #41131 /* ~"Nothing, thanks. Farewell."~ */ GOTO 3
END

IF ~~ THEN BEGIN 69 // from: 26.8 26.9
  SAY #41132 /* ~"Yes, that's Ecco. She's very sweet, but so quiet. I understand that she said something, once, which caused some great tragedy... and because of that, she'll never speak again." Kesai shrugs, smiling. "An interesting enough story, but I don't know if it's true. Try asking Dolora... I've seen her talking to an ex-lover of Ecco, back from a time when Ecco was speaking."~ */
  IF ~~ THEN REPLY #41133 /* ~"I have another question..."~ */ GOTO 26
  IF ~~ THEN REPLY #41134 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
