// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISAI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISAI~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2974 /* ~This is a life-sized, granite statue of a gentlemen standing with his arms at his sides, eyes closed. It is of excellent craftsmanship, exquisitely detailed and incredibly lifelike... so much so, in fact, that you find yourself wondering if it's really a statue at all.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28953 /* ~"Greetings...?"~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #28954 /* ~"Greetings...?"~ */ GOTO 2
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28955 /* ~"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #28956 /* ~"Greetings... are you Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28957 /* ~Touch the statue.~ */ GOTO 3
  IF ~~ THEN REPLY #28958 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 31.0
  SAY #28897 /* ~The statue makes no response.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28959 /* ~"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28960 /* ~Touch the statue.~ */ GOTO 3
  IF ~~ THEN REPLY #28961 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #28898 /* ~The statue makes no response.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 285
END

IF ~~ THEN BEGIN 3 // from: 0.4 1.1 31.3
  SAY #28899 /* ~You touch the statue and find that, while the clothes that adorn it are of gray cloth rather than rock, the 'skin' is as cool and hard as granite.~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #28982 /* ~"Hmm. Why would someone clothe a statue?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,14,INT)
NearbyDialog("DMorte")
~ THEN REPLY #28983 /* ~"Hmm. Why would someone clothe a statue?"~ */ EXTERN ~DMORTE~ 287
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28984 /* ~"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28985 /* ~Strike the statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28986 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28900 /* ~The statue remains as impassive as ever to your query.~ */
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #28987 /* ~"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #28988 /* ~Strike the statue.~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 23
  IF ~~ THEN REPLY #28989 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.2 0.3 1.0 3.2 4.0 31.1 31.2
  SAY #28901 /* ~The 'statue' moves... barely, almost imperceptibly, but it definitely nodded.~ */
  IF ~~ THEN REPLY #28990 /* ~"Good. I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #28991 /* ~"I thought so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 24.0 32.0
  SAY #28902 /* ~The 'statue' remains as silent as ever.~ */
  IF ~~ THEN REPLY #28992 /* ~"Hello? My questions?"~ */ GOTO 7
  IF ~~ THEN REPLY #28993 /* ~"Hmm. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #28903 /* ~There is still no response.~ */
  IF ~~ THEN REPLY #28994 /* ~Wait for a response.~ */ GOTO 57
  IF ~~ THEN REPLY #28998 /* ~Give up and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 58.0 58.1
  SAY #28904 /* ~The statue's eyes open; he gazes at you with cold, gray eyes. He speaks ponderously, with a voice like two boulders grinding together. "Your patience... is noted. Qui-Sai would... speak... with you, now."~ */
  IF ~~ THEN REPLY #28999 /* ~"I have questions about you..."~ */ GOTO 11
  IF ~~ THEN REPLY #29000 /* ~"I have questions about this place."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29001 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 29
  IF ~~ THEN REPLY #29002 /* ~"I'll take you up on that later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 58.2
  SAY #28905 /* ~The statue's eyes open; he gazes at you with cold, gray eyes. He speaks ponderously, with a voice like two boulders grinding together. "Your patience... is noted. Qui-Sai would... speak... with you, now."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 289
END

IF ~~ THEN BEGIN 10 // from: 11.3 12.2 13.3 14.2 15.0 16.2 17.1 19.0 27.2 28.1 29.0 30.0 35.0 37.10 38.0 41.1 49.1 50.2 51.1 53.1 55.0 56.0 59.0
  SAY #28906 /* ~Just when you think he hasn't heard you, he replies. "Ask."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65157 /* ~"I spoke to Eli about what you said earlier, and even he admitted that the battle must still be fought. To rely on theft is a mistake."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65158 /* ~"I spoke to Eli about what you said earlier, and he said no thief has mastered stealth to such a degree. And some foes can't be hidden from; your scent or very thoughts will give you away."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65159 /* ~"I spoke to Lady Thorncombe about what you said earlier. She said that mages are physically deficient, their spells merely crutches against this deficiency. When one's sorcery is spent, the core of combat still remains."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29003 /* ~"I have questions about you..."~ */ GOTO 11
  IF ~~ THEN REPLY #29004 /* ~"I have questions about this place."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29005 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 29
  IF ~~ THEN REPLY #29006 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 10.3 33.3
  SAY #28907 /* ~After a period of silence, he speaks: "Ask."~ */
  IF ~~ THEN REPLY #29007 /* ~"What is it that you were meditating upon when I first found you?"~ */ GOTO 51
  IF ~~ THEN REPLY #29008 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #29009 /* ~"What do you do here?"~ */ GOTO 13
  IF ~~ THEN REPLY #29010 /* ~"I have other questions, actually..."~ */ GOTO 10
  IF ~~ THEN REPLY #29011 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.2
  SAY #28908 /* ~"I am called... Qui-Sai."~ */
  IF ~~ THEN REPLY #29012 /* ~"What are you, exactly?"~ */ GOTO 27
  IF ~~ THEN REPLY #29013 /* ~"What do you do here?"~ */ GOTO 13
  IF ~~ THEN REPLY #29014 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29015 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2 12.1 27.1 28.0
  SAY #28909 /* ~"Qui-Sai... meditates. Qui-Sai... also trains... others, in the arts... of combat."~ */
  IF ~~ THEN REPLY #29016 /* ~"What is it that you meditate upon?"~ */ GOTO 51
  IF ~  GlobalLT("Qui_Sai","GLOBAL",5)
Global("CW_Qui_Question","GLOBAL",0)
~ THEN REPLY #29017 /* ~"Can you train me?"~ */ GOTO 14
  IF ~~ THEN REPLY #29018 /* ~"Who are you?"~ */ GOTO 12
  IF ~~ THEN REPLY #29019 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29020 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #28910 /* ~He looks you up and down, making a deep rumbling noise. Slowly, he holds up his hands and breaks off one of his fingernails with a sharp *crack.* "Qui-Sai would see you... break this stone." He hands you the shard of living rock.~ */
  IF ~  CheckStatGT(Protagonist,8,STR)
~ THEN REPLY #29021 /* ~Break the stone.~ */ GOTO 16
  IF ~  CheckStatLT(Protagonist,9,STR)
~ THEN REPLY #29022 /* ~Break the stone.~ */ JOURNAL #28756 /* ~Qui-Sai, the combat instructor in the Civic Festhall, refused to train me, saying I was too weak. Perhaps if I ever grow stronger I shall return.~ */ GOTO 15
  IF ~~ THEN REPLY #29023 /* ~"Never mind, actually. I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29024 /* ~"I have to leave, now; here is the stone. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #28911 /* ~Try as you might, you cannot snap the stone. "Qui-Sai finds you... unsuitable... too weak... for training in the arts of combat." He takes the stone from you and places it in his mouth, chewing it to dust with a harsh crackling sound.~ */
  IF ~~ THEN REPLY #29025 /* ~"I had some questions, then..."~ */ GOTO 10
  IF ~~ THEN REPLY #29026 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.0
  SAY #28912 /* ~With some effort, you snap the shard of rock in two. He takes the stones from you and places them in his mouth, chewing them to dust with a harsh crackling sound. "Qui-Sai finds you... physically suitable. Qui-Sai would now ask... why... do you seek training?"~ */
  IF ~~ THEN REPLY #29027 /* ~"To defend myself."~ */ GOTO 17
  IF ~~ THEN REPLY #29029 /* ~"To crush my enemies."~ */ GOTO 17
  IF ~~ THEN REPLY #29030 /* ~"Never mind. Let me ask you about something else..."~ */ GOTO 10
  IF ~~ THEN REPLY #29031 /* ~"I don't, right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #28913 /* ~"Qui-Sai finds... no need for... melee, then."~ */
  IF ~~ THEN REPLY #29032 /* ~"What do you mean?"~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #29033 /* ~"Forget it. Let me ask you something else..."~ */ GOTO 10
  IF ~~ THEN REPLY #29034 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #28914 /* ~"Qui-Sai means to say that... there are many ways... to do these things. One may... steal an opponent's weapon... leaving him... defenseless."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29036 /* ~"But the battle must still be fought. To rely on theft is a mistake."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,13,INT)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #29038 /* ~"You won't train me, then?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 20.2
  SAY #28915 /* ~"Qui-Sai sees... no need. You have failed to convince Qui-Sai... otherwise. Perhaps you should... speak to the thief tutor here. If you do not wish to train beneath him... he might provide a counterpoint to my argument."~ */
  IF ~~ THEN REPLY #29041 /* ~"Let me ask you about something else, then..."~ */ JOURNAL #56794 /* ~Qui-Sai refused to train me as a warrior, expounding upon the benefits of thieves over warriors. He suggested that I train as a thief with the Festhall's thief tutor or, if I did not want to become a rogue, talk to the thief tutor and find a counterpoint to Qui-Sai's rebuttal.~ */ GOTO 10
  IF ~~ THEN REPLY #29042 /* ~"In that case, farewell."~ */ JOURNAL #56794 /* ~Qui-Sai refused to train me as a warrior, expounding upon the benefits of thieves over warriors. He suggested that I train as a thief with the Festhall's thief tutor or, if I did not want to become a rogue, talk to the thief tutor and find a counterpoint to Qui-Sai's rebuttal.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 10.0 18.0 33.0
  SAY #28916 /* ~After a time, he nods. "One may... hide. If one cannot be seen... one cannot be attacked. One is... invulnerable."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29043 /* ~"But no thief has mastered stealth to such a degree. And some foes can't be hidden from; your scent or very thoughts will give you away."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  GlobalGT("CW_Eli_Ans","GLOBAL",1)
~ THEN REPLY #29044 /* ~"But no thief, even Eli, has mastered stealth to such a degree. And some foes can't be hidden from; your scent or very thoughts will give you away."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  CheckStatLT(Protagonist,15,INT)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #29045 /* ~"You won't train me, then?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 10.1 20.0 20.1 33.1
  SAY #28917 /* ~After short wait, he nods. "Mighty spells... can smite many foes... more quickly... than any blade."~ */
  IF ~  GlobalGT("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Mages are like a flask of flaming oil... powerful, but once spent, nothing. They are physically deficient, their spells merely crutches against this deficiency. When one's sorcery is spent, the core of combat still remains."~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",3)
SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  Global("Qui_Sai_Quest","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29048 /* ~"Mages are like a flask of flaming oil... powerful, but once spent, nothing. They are physically deficient, their spells merely crutches against this deficiency. When one's sorcery is spent, the core of combat still remains."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~  CheckStatLT(Protagonist,15,INT)
Global("CW_Thorn_Ans","GLOBAL",0)
~ THEN REPLY #29050 /* ~"You won't train me, then?"~ */ DO ~SetGlobal("Qui_Sai_Quest","GLOBAL",2)
~ GOTO 59
END

IF ~~ THEN BEGIN 22 // from: 10.2 21.0 21.1 33.2
  SAY #28918 /* ~He smiles slightly, making a deep rumbling sound in his throat. "Qui-Sai finds you... fit to teach. Meet Qui-Sai... in the training chamber."~ */
  IF ~~ THEN REPLY #29053 /* ~"I'll be there shortly."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai at last agreed to train me, and told me to meet him in the Festhall's warrior training chamber.~ */ EXIT
  IF ~~ THEN REPLY #29054 /* ~"I've things to see to, now. I'll go there later."~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",4)
~ JOURNAL #58926 /* ~Qui-Sai at last agreed to train me, and told me to meet him in the Festhall's warrior training chamber.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.3 4.1
  SAY #28919 /* ~As you make to strike the statue, its eyes flash open and it catches your fist in an iron-hard grip. Narrowing its cold, gray eyes, it speaks with a voice like two boulders grinding together: "Why... would you... strike Qui-Sai?"~ */
  IF ~~ THEN REPLY #29055 /* ~"Forgive me, I only meant to see if you were truly a statue."~ */ GOTO 24
  IF ~~ THEN REPLY #29056 /* ~"Serves you right for trying to fool me."~ */ GOTO 25
  IF ~~ THEN REPLY #29057 /* ~"Forget it happened. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 25.0
  SAY #28920 /* ~He nods slowly, frowning. "You are... forgiven. However... one feels you are lacking... patience."~ */
  IF ~~ THEN REPLY #29058 /* ~"Perhaps. I had some questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #29059 /* ~"Maybe so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #28921 /* ~"Qui-Sai meant... to fool no one. Qui-Sai... finds you... rash... and impertinent."~ */
  IF ~~ THEN REPLY #29060 /* ~"Forgive me, I only meant to see if you were truly a statue."~ */ GOTO 24
  IF ~~ THEN REPLY #29061 /* ~"Too bad. I had some questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Qui_1","GLOBALGood",-1)
~ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #28922 /* ~He shuts his eyes and becomes silent once more. ~ */
  IF ~~ THEN REPLY #29062 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0
  SAY #28923 /* ~"One is... of the race called... stone princes. Qui-Sai is... genasi-of-earth."~ */
  IF ~~ THEN REPLY #29063 /* ~"Genasi?"~ */ JOURNAL #65756 /* ~Qui-Sai, whom I met in the Civic Festhall, told me he is what is known as a 'genasi-of-earth'... the off-spring of an elemental creature of earth and a human.~ */ GOTO 28
  IF ~~ THEN REPLY #29064 /* ~"What do you do here?"~ */ GOTO 13
  IF ~~ THEN REPLY #29065 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29066 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #28924 /* ~He nods proudly. "Qui-Sai's father... an elemental creature of earth... a Dao. Qui-Sai's mother... a human woman... of noble heritage. Such is what it is to be... genasi-of-earth."~ */
  IF ~~ THEN REPLY #29067 /* ~"What do you do here?"~ */ GOTO 13
  IF ~~ THEN REPLY #29068 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29069 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 8.2 10.5 33.5
  SAY #28925 /* ~"Nothing."~ */
  IF ~~ THEN REPLY #29070 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29071 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 8.1 10.4 33.4
  SAY #28926 /* ~"This is... the Civic Festhall. Need you know more... find another... to ask."~ */
  IF ~~ THEN REPLY #29072 /* ~"Hmm. I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29073 /* ~"I'll go find someone else, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #28927 /* ~The statue still stands here, immobile and silent as usual.~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #29074 /* ~"Greetings..."~ */ GOTO 1
  IF ~  Global("CW_Sal_Hint","GLOBAL",1)
~ THEN REPLY #29075 /* ~"I met a mage named Salabesh who spoke of a stone man, here. Are you he?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Qui_Sai","GLOBAL",1)
~ THEN REPLY #29076 /* ~"Greetings... are you Qui-Sai?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #29077 /* ~Touch the statue.~ */ GOTO 3
  IF ~~ THEN REPLY #29078 /* ~Leave.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #28928 /* ~The 'statue' still stands here, immobile and silent as usual.~ */
  IF ~~ THEN REPLY #29079 /* ~"Greetings, again. I had questions..."~ */ GOTO 6
  IF ~~ THEN REPLY #29080 /* ~Leave.~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",3)
~ THEN BEGIN 33 // from:
  SAY #28929 /* ~"Qui-Sai greets you."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65160 /* ~"I spoke to Eli about what you said earlier, and even he admitted that the battle must still be fought. To rely on theft is a mistake."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",2)
~ GOTO 20
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalGT("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65161 /* ~"I spoke to Eli about what you said earlier, and he said no thief has mastered stealth to such a degree. And some foes can't be hidden from; your scent or very thoughts will give you away."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",3)
~ GOTO 21
  IF ~  Global("CW_Qui_Question","GLOBAL",3)
~ THEN REPLY #65162 /* ~"I spoke to Lady Thorncombe about what you said earlier. She said that mages are physically deficient, their spells merely crutches against this deficiency. When one's sorcery is spent, the core of combat still remains."~ */ DO ~SetGlobal("CW_Qui_Question","GLOBAL",4)
AddexperienceParty(10000)
~ GOTO 22
  IF ~~ THEN REPLY #29081 /* ~"I have questions about you..."~ */ GOTO 11
  IF ~~ THEN REPLY #29082 /* ~"I have questions about this place."~ */ GOTO 30
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29083 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 29
  IF ~~ THEN REPLY #29084 /* ~"Just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #28930 /* ~"Do not... speak. Go... to the training chamber."~ */
  IF ~~ THEN REPLY #29085 /* ~"I'll be there shortly."~ */ EXIT
  IF ~~ THEN REPLY #29086 /* ~"I've things to see to, now. I'll go there later."~ */ EXIT
END

IF ~  Global("Qui_Sai","GLOBAL",5)
~ THEN BEGIN 35 // from:
  SAY #28931 /* ~He regards you coolly with his eyes of granite. "You are here... to train under Qui-Sai?"~ */
  IF ~~ THEN REPLY #29087 /* ~"No, I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29088 /* ~"Yes, train me."~ */ GOTO 36
  IF ~~ THEN REPLY #65507 /* ~"Not now, no. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.1
  SAY #28932 /* ~"Are you... a warrior by trade?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29089 /* ~"Yes."~ */ GOTO 37
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29090 /* ~"Uh... no."~ */ GOTO 49
END

IF ~~ THEN BEGIN 37 // from: 36.0 40.0 41.0 42.2 43.2 44.2 45.2 46.2 48.1 50.0 50.1
  SAY #28933 /* ~"Qui-Sai is proficient... in all weapons, specializing in ... none... master of many. What would you learn... of Qui-Sai?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29091 /* ~"Teach me how to fight with my fists."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29092 /* ~"Teach me how to fight with my fists."~ */ GOTO 42
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29093 /* ~"Teach me how to fight with blades."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29094 /* ~"Teach me how to fight with blades."~ */ GOTO 43
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29095 /* ~"Teach me how to fight with clubs."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29096 /* ~"Teach me how to fight with clubs."~ */ GOTO 44
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29097 /* ~"Teach me how to fight with axes."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29098 /* ~"Teach me how to fight with axes."~ */ GOTO 45
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29099 /* ~"Teach me how to fight with hammers."~ */ GOTO 38
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29100 /* ~"Teach me how to fight with hammers."~ */ GOTO 46
  IF ~~ THEN REPLY #29101 /* ~"Actually, I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29102 /* ~"Nothing, right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.2 37.4 37.6 37.8 40.1
  SAY #28934 /* ~"You can learn... no more... at this time. Return to... Qui-Sai... when you become... more experienced."~ */
  IF ~~ THEN REPLY #29103 /* ~"I have some questions, then..."~ */ GOTO 10
  IF ~~ THEN REPLY #29104 /* ~"I'll do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 42.0 43.0 44.0 45.0 46.0 48.0
  SAY #28935 /* ~"Qui-Sai shall... teach you, then."~ */
  IF ~~ THEN REPLY #29105 /* ~Train with him.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #28936 /* ~"Qui-Sai is... pleased... with you as a... student. You learn... quickly."~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #29106 /* ~"Thanks. Is there more you can teach me?"~ */ GOTO 37
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #29107 /* ~"Thanks. Is there more you can teach me?"~ */ GOTO 38
  IF ~~ THEN REPLY #29108 /* ~"Thanks. Farewell, Qui-Sai."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.1 43.1 44.1 45.1 46.1
  SAY #28937 /* ~After evaluating what skill you have, Qui-Sai shakes his head. "Qui-Sai finds you... already proficient in this... form of combat. Qui-Sai can... teach you no more. If you wish... to learn more of this weapon... seek Korur, in the Lower Ward."~ */
  IF ~~ THEN REPLY #29109 /* ~"Is there anything else you could teach me?"~ */ GOTO 37
  IF ~~ THEN REPLY #29110 /* ~"I have some questions, then..."~ */ GOTO 10
  IF ~~ THEN REPLY #29111 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 37.1
  SAY #28938 /* ~"Qui-Sai shall teach you... the art of fighting with... one's fists. Is this... what you wish?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
~ THEN REPLY #29112 /* ~"Yes, teach me."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,FIST,2)
~ THEN REPLY #29113 /* ~"Yes, teach me."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29114 /* ~"No... what else can you teach me?"~ */ GOTO 37
  IF ~~ THEN REPLY #29115 /* ~"No, I don't wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 37.3
  SAY #28939 /* ~"Qui-Sai shall teach you... the art of fighting with... blades. Is this... what you wish?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
~ THEN REPLY #29116 /* ~"Yes, teach me."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
~ THEN REPLY #29117 /* ~"Yes, teach me."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29118 /* ~"No... what else can you teach me?"~ */ GOTO 37
  IF ~~ THEN REPLY #29119 /* ~"No, I don't wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.5
  SAY #28940 /* ~"Qui-Sai shall teach you... the art of fighting with... clubs. Is this... what you wish?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
~ THEN REPLY #29120 /* ~"Yes, teach me."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
~ THEN REPLY #29121 /* ~"Yes, teach me."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29122 /* ~"No... what else can you teach me?"~ */ GOTO 37
  IF ~~ THEN REPLY #29123 /* ~"No, I don't wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 37.7
  SAY #28941 /* ~"Qui-Sai shall teach you... the art of fighting with... axes. Is this... what you wish?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
~ THEN REPLY #29124 /* ~"Yes, teach me."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,AXE,2)
~ THEN REPLY #29125 /* ~"Yes, teach me."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29126 /* ~"No... what else can you teach me?"~ */ GOTO 37
  IF ~~ THEN REPLY #29127 /* ~"No, I don't wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 37.9
  SAY #28942 /* ~"Qui-Sai shall teach you... the art of fighting with... the mighty hammer. Is this... what you wish?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
~ THEN REPLY #29128 /* ~"Yes, teach me."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 39
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
~ THEN REPLY #29129 /* ~"Yes, teach me."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 41
  IF ~~ THEN REPLY #29131 /* ~"No... what else can you teach me?"~ */ GOTO 37
  IF ~~ THEN REPLY #29132 /* ~"No, I don't wish to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #28943 /* ~After evaluating what skill you have, Qui-Sai nods and makes a deep, rumbling sound. "Qui-Sai finds you... ready for... more instruction with... the mighty hammer."~ */
  IF ~~ THEN REPLY #29133 /* ~"Teach me, then."~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #28944 /* ~"Qui-Sai would have you know... this: once you begin to master... the hammer... you may master... no other weapons. Is this... what you wish?"~ */
  IF ~~ THEN REPLY #29134 /* ~"Yes, I wish to specialize in the hammer."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ JOURNAL #28818 /* ~Qui-Sai, the combat instructor in the Civic Festhall, taught me mastery of the Hammer. I am now specialized in this particular weapon.~ */ GOTO 39
  IF ~~ THEN REPLY #29135 /* ~"No. What else can you teach me?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 49 // from: 36.1
  SAY #28945 /* ~Qui-Sai's mouth slowly curls down into a deep frown. "Then Qui-Sai can... teach you nothing."~ */
  IF ~~ THEN REPLY #29136 /* ~"Could you make me a warrior?"~ */ GOTO 50
  IF ~~ THEN REPLY #29137 /* ~"I have some questions, then..."~ */ GOTO 10
  IF ~~ THEN REPLY #29138 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #28946 /* ~Qui-Sai's left eyebrow creeps oh-so-slowly up his forehead. "Would you... forsake your current trade, to walk the... path of the warrior?"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29139 /* ~"Yes. I no longer wish to study the Art. Make me a warrior."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~  Class(Protagonist,THIEF)
~ THEN REPLY #29140 /* ~"Yes. I no longer wish to be a thief. Make me a warrior."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
~ GOTO 37
  IF ~~ THEN REPLY #29141 /* ~"Actually, no. I have some questions, though..."~ */ GOTO 10
  IF ~~ THEN REPLY #29142 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 11.0 13.0
  SAY #28947 /* ~"Qui-Sai meditates upon... the Way of Stone."~ */
  IF ~~ THEN REPLY #29143 /* ~"The 'Way of Stone'?"~ */ GOTO 52
  IF ~~ THEN REPLY #29144 /* ~"I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29145 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #28948 /* ~Qui-Sai nods. "A... philosophy. A... method of combat. With it... Qui-Sai seeks to achieve... invulnerability."~ */
  IF ~~ THEN REPLY #29146 /* ~"Invulnerability? You'd be unbeatable in combat..."~ */ GOTO 53
  IF ~~ THEN REPLY #29147 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #28949 /* ~"Yes. Now... the Way is not yet... perfect. Qui-Sai will... make it so, one day. Qui-Sai... knows this."~ */
  IF ~  Global("Way_of_Stone","GLOBAL",0)
~ THEN REPLY #29148 /* ~"Can you tell me what you've discovered so far?"~ */ GOTO 54
  IF ~~ THEN REPLY #29149 /* ~"I see. I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29150 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #28950 /* ~Qui-Sai nods. "No one has asked... Qui-Sai to share his knowledge of... the Way. Qui-Sai shall... do this, now." He begins to speak at length, slowly and carefully...~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #29151 /* ~Listen and learn the Way of Stone.~ */ DO ~SetGlobal("Way_of_Stone","GLOBAL",1)
PermanentStatChange(Protagonist,ARMORCLASS,LOWER,1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28819 /* ~Qui-Sai, the combat instructor in the Civic Festhall, instructed me in the 'Way of Stone.' While much of its philosophy is of little use or even applies to me, being a creature of flesh, I can use some of its tenets to make myself more difficult to wound in combat.~ */ GOTO 55
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #29152 /* ~Listen, try to understand the Way of Stone.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #28820 /* ~Qui-Sai, the combat instructor in the Civic Festhall, tried to instruct me in the 'Way of Stone.' Its philosophy was simply too complex and alien for me to grasp, however.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #28951 /* ~After hours of listening and many, many questions, you come to understand what little of Qui-Sai's Way of Stone he can teach you. In combat, you will use it to resist and deflect your enemy's blows, improving your Armor Class.~ */
  IF ~~ THEN REPLY #29153 /* ~"Thanks, Qui-Sai. I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29154 /* ~"Thanks, Qui-Sai. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #28952 /* ~After hours of listening and many, many questions, you still cannot understand Qui-Sai's Way of Stone. The concepts are simply too complex and alien for you to wholly grasp.~ */
  IF ~~ THEN REPLY #29155 /* ~"Thanks anyway, Qui-Sai. I had other questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #29156 /* ~"Thanks anyway, Qui-Sai. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 7.0
  SAY #31247 /* ~There is still no response. You get the sense that Qui-Sai might be testing your patience.~ */
  IF ~~ THEN REPLY #28995 /* ~Keep on waiting.~ */ GOTO 58
  IF ~~ THEN REPLY #28996 /* ~Give up and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #31251 /* ~A few minutes pass, and Qui-Sai has still failed to respond.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31257 /* ~Wait quietly for a few more moments...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
!Global("Water","GLOBAL",3)
~ THEN REPLY #31258 /* ~Wait quietly for a few more moments...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
Global("Water","GLOBAL",3)
~ THEN REPLY #31259 /* ~Wait quietly for a few more moments...~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",3)
~ GOTO 9
  IF ~~ THEN REPLY #31260 /* ~Give up and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.2
  SAY #65163 /* ~"Qui-Sai sees... no need. You have failed to convince Qui-Sai... otherwise. Perhaps you should... speak to the mage tutor here. If you do not wish to train beneath her... she might provide a counterpoint to my argument."~ */
  IF ~~ THEN REPLY #65164 /* ~"Let me ask you about something else, then..."~ */ JOURNAL #58925 /* ~Qui-Sai refused to train me as a warrior, expounding upon the benefits of mages - as opposed to his previous argument, thieves - over warriors. He suggested that I train as a mage with the Festhall's mage tutor or, if I did not want to become a sorcerer, talk to the mage tutor and find a counterpoint to Qui-Sai's rebuttal.~ */ GOTO 10
  IF ~~ THEN REPLY #65165 /* ~"In that case, farewell."~ */ JOURNAL #58925 /* ~Qui-Sai refused to train me as a warrior, expounding upon the benefits of mages - as opposed to his previous argument, thieves - over warriors. He suggested that I train as a mage with the Festhall's mage tutor or, if I did not want to become a sorcerer, talk to the mage tutor and find a counterpoint to Qui-Sai's rebuttal.~ */ EXIT
END
