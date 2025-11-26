// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDAKKON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDAKKON~

IF ~~ THEN BEGIN 0 // from:
  SAY #2844 /* ~I'm Dak'kon. A githzerai. One of the party members. I don't have anything to say right now. You should check out my cool combat animations, though. Too bad there aren't any Chambara movie death animations for monsters I kill...
Dak'kon: "Watch my sword: koroshicharu!"
Hive Thug: "Gaaahh... munen nariiii..." *Sssssssss* <--- arterial blood spray *thud*
Dak'kon: "Fmm." *sching* <-- *karach* blade being sheathed
(Cherry blossoms fall from top of screen.)~ */
  IF ~~ THEN REPLY #2845 /* ~Later, Dak'kon. Can't wait until you're a part of the group.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0
  SAY #6855 /* ~Dak'kon nods.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7000 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7001 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7002 /* ~"Ask him who he is."~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7003 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7004 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7005 /* ~"Ask him what he's doing."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7006 /* ~"Ask him to tell us about the Lady of Pain."~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7007 /* ~"Ask him to tell us about Fell."~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7008 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6856 /* ~"It says that it is a dabus."~ */
  IF ~~ THEN REPLY #7009 /* ~"Can you ask it some more questions?"~ */ GOTO 1
  IF ~~ THEN REPLY #7010 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6857 /* ~"It says that it is attending to its duties."~ */
  IF ~~ THEN REPLY #7011 /* ~"Can you ask it some more questions?"~ */ GOTO 1
  IF ~~ THEN REPLY #7012 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6471 /* ~"My companion would like to speak with you concerning the workings of this device. May he speak for the two of us?"~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 35
END

IF ~~ THEN BEGIN 5 // from:
  SAY #6473 /* ~"She is of the People. Her markings tell of one who has walked the path from Limbo and has been made to not *know* our ancestral home. Her markings tell all githzerai to render her assistance, and tell the githzerai that she is still of the People. Her reverence for me is the reverence shown to all *zerth.*"~ */
  IF ~~ THEN REPLY #7999 /* ~"Very well. Kel'lera, I had some questions for you..."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 6 // from:
  SAY #5688 /* ~"I would be honored to meet another outcast, another exile. Perhaps the sharing of our shame will lessen its sting for both of us."~ */
  IF ~~ THEN REPLY #5689 /* ~"Good for you. I wasn't asking. I had more questions for this other sod here."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXTERN ~GFWEAPS~ 14
  IF ~~ THEN REPLY #5690 /* ~"We will speak to her soon enough, my friend. In the meantime, I had other questions for our friend here."~ */ EXTERN ~GFWEAPS~ 14
END

IF ~~ THEN BEGIN 7 // from:
  SAY #8694 /* ~Dak'kon speaks slowly, as if to calm the gith. "His words are not the Gospel of Anarchs. His vulgarity is not with intent."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #8994 /* ~"Oh, yes it is. Don't forget your place, Dak'kon. You are my slave and you *will* obey me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_4","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8995 /* ~"Oh, yes it is. I couldn't stand here and listen to you gith dogs bark at each other for another moment."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Githzerai_5","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Githzerai_4","GLOBALLaw",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 64
  IF ~~ THEN REPLY #8996 /* ~"If I gave offense, I apologize. Do you forgive me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Githzerai_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Githzerai_1","GLOBALGood",1)
~ EXTERN ~DGITH~ 9
  IF ~~ THEN REPLY #8997 /* ~"Never mind, Dak'kon. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #8695 /* ~"He speaks with an Anarch's truth and an Anarch's authority to my ears. My mind is not... permitted to be divided on this matter."~ */
  IF ~~ THEN REPLY #8998 /* ~Wait, see what the gith does.~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #8999 /* ~"We stand together, gith. I suggest you yield."~ */ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9000 /* ~"You make one step toward me, gith, and he attacks. You get through him, I swear I'll kill you. Now yield."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 66
  IF ~~ THEN REPLY #9001 /* ~"Enough of this. It's time for you to die, gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #8696 /* ~"Do not attack. I am not permitted to disobey."~ */
  IF ~~ THEN REPLY #9002 /* ~Wait, see what the gith does.~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9003 /* ~"We stand together, gith. I suggest you yield. This is the last time I will ask you."~ */ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9004 /* ~"You make one step toward me, gith, and he attacks. You get through him, I swear I'll kill you. Now yield."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DGITH~ 67
  IF ~~ THEN REPLY #9005 /* ~"Enough of this. It's time for you to die, gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #8697 /* ~Dak'kon speaks slowly, again. "T'cha's Choice is mine." His skin seems to take on an ashen shade as he speaks... it sounds like every word is slowly killing him. "The chains are my own. Anarch of a hundred years, there is no hourglass that can measure the tale. The matter is as twisted as Fri'hi's roots. Its resolution is one of impossibility and may never come." Dak'kon frowns. "Do not attack, or a kin-slayer I will become."~ */
  IF ~~ THEN REPLY #9006 /* ~Wait...~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9007 /* ~"Your choice, gith. Do you wish blood spilled here today?"~ */ EXTERN ~DGITH~ 68
  IF ~~ THEN REPLY #9008 /* ~"Enough of this. It's time for you to die, gith."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #8698 /* ~Dak'kon replies in the same tongue. The sentence structure is odd; you think Dak'kon said, "This one is numbered among the faithful."~ */
  IF ~~ THEN REPLY #9009 /* ~"What is he saying, Dak'kon?"~ */ EXTERN ~DGITH~ 56
  IF ~~ THEN REPLY #9010 /* ~"Dak'kon, never mind. Let's go."~ */ EXTERN ~DGITH~ 56
END

IF ~~ THEN BEGIN 12 // from:
  SAY #8699 /* ~Dak'kon makes the same reply as before; the tone has changed slightly, but the meaning seems to be intact. "This one is numbered among the faithful." Dak'kon falls silent, as if to give the words time to sink in. "The one beside me speaks. Will you hear him?"~ */
  IF ~~ THEN REPLY #9011 /* ~Listen.~ */ EXTERN ~DGITH~ 58
  IF ~~ THEN REPLY #9012 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #8700 /* ~Dak'kon's reply is a short one, but his speech is slowed, as if he has to drag the words from his throat. "T'cha's Choice has become mine."~ */
  IF ~~ THEN REPLY #9013 /* ~Listen.~ */ EXTERN ~DGITH~ 59
  IF ~~ THEN REPLY #9014 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #8701 /* ~Dak'kon speaks slowly, again. "The chains are my own." His skin seems to take on an ashen shade as he speaks... it sounds like every word is slowly killing him. "Anarch of a hundred years, there is no hourglass that can measure the tale. The matter is as twisted as Fri'hi's roots. Its resolution is one of impossibility and may never come." Dak'kon frowns, then his voice strengthens. "The one beside me speaks. Will you hear him?"~ */
  IF ~~ THEN REPLY #9015 /* ~Wait.~ */ EXTERN ~DGITH~ 60
  IF ~~ THEN REPLY #9016 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #8702 /* ~Dak'kon turns to you. "He will hear you."~ */
  IF ~~ THEN REPLY #9017 /* ~"If you could ask him if..."~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9018 /* ~"Dak'kon, never mind. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #8703 /* ~Dak'kon nods, but he does so slowly, as if it pains him. "You... are mistaken. This man has killed none of the People."~ */
  IF ~~ THEN REPLY #9019 /* ~"See? Now will you put that blade down?"~ */ EXTERN ~DGITH~ 72
END

IF ~~ THEN BEGIN 17 // from:
  SAY #8704 /* ~Dak'kon turns to the githzerai and speaks, this time at a slower, more measured pace than before. The githzerai's reply is a short one.~ */
  IF ~~ THEN REPLY #9021 /* ~"What did he say?"~ */ EXTERN ~DGITH~ 54
  IF ~~ THEN REPLY #9022 /* ~"Never mind, Dak'kon. Let's go."~ */ EXIT
END

IF ~  Global("Dakkon","GLOBAL",0)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #14980 /* ~The man before you is *old.* His dry, yellow skin has the scars of one who has traveled everywhere and never rested long in any one place. His pinched face is inhumanly angular, and his ears sweep out from his skull, tapering to points. He wears a loose-fitting orange tunic, and a strange, shimmering blade is strapped across his back. The blade looks to be a two-pronged glaive, made of some metal whose surface swirls like a film of oil on a pond.~ */
  IF ~~ THEN REPLY #15055 /* ~"Greetings."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #15056 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #14982 /* ~The man turns to you, his eyes like polished coal. He stares through you, and for a moment, you wonder if he might be blind. The weapon suddenly turns a dead, flat black, mirroring the man's eyes.~ */
  IF ~~ THEN REPLY #15058 /* ~"Are you all right?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #14984 /* ~He says nothing for a moment, merely searches your face with his eyes. "Hail... traveler." His voice is quiet and somber, like a wind whispering through the branches of a great tree. ~ [DAK001B] */
  IF ~~ THEN REPLY #15060 /* ~"Hail."~ */ GOTO 21
  IF ~~ THEN REPLY #15061 /* ~"Sorry to trouble you. Farewell."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #14985 /* ~The man meets your gaze, his eyes burrowing into yours. His weapon drains of its black color, resuming its shimmering you noticed before you spoke to him. "Your eyes have the weight of one who has traveled far to be in this place."~ [DAK001C] */
  IF ~~ THEN REPLY #15062 /* ~"You could say that."~ */ GOTO 24
  IF ~~ THEN REPLY #15063 /* ~"Sorry to trouble you. Farewell."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #14986 /* ~"Hold." The man's voice is quiet and somber, like a wind whispering through the branches of a great tree. For some reason, you find his voice comforting. As you turn, you see him searching your features with his eyes. "Your eyes have the weight of one who has traveled far to be in this place."~ */
  IF ~~ THEN REPLY #15064 /* ~"You could say that."~ */ GOTO 24
  IF ~~ THEN REPLY #15065 /* ~"I did not mean to disturb you. Farewell."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.1
  SAY #14987 /* ~"You have not disturbed me. My thoughts will keep." The man's gaze does not waver, and you find it difficult to turn away as long as you have his attention. "I am *known* as Dak'kon." The emphasis he places on the word *known* strikes you as odd... yet familiar at the same time. "You... are not *known* to me."~ */
  IF ~~ THEN REPLY #15066 /* ~"I do not know myself."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15067 /* ~"I did not mean to disturb you. Farewell."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 67
END

IF ~~ THEN BEGIN 24 // from: 21.0 22.0
  SAY #14989 /* ~The man's gaze does not waver from yours. "I am *known* as Dak'kon." The emphasis he places on the word *known* strikes you as odd... yet familiar at the same time. "You... are not *known* to me."~ */
  IF ~~ THEN REPLY #15068 /* ~"I do not know myself."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 25
  IF ~~ THEN REPLY #15069 /* ~"I am a visitor to this city."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #15070 /* ~"You are not known to me."~ */ DO ~SetGlobal("Dakkon","GLOBAL",1)
~ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #14990 /* ~"That is for the best. In *knowing* yourself, there would be little in the planes left worth *knowing.*" He falls silent for a moment, still studying you with his coal-black eyes. "I would *know* why you have come to this city."~ */
  IF ~~ THEN REPLY #15071 /* ~"I'm looking for answers... I have many questions."~ */ GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14991 /* ~Dak'kon is silent for a moment, still studying you with his coal-black eyes. "The planes number many infinities, yet you are here. I would *know* why you have come to this city."~ */
  IF ~~ THEN REPLY #15072 /* ~"I'm looking for answers... I have many questions."~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #14993 /* ~"We are beneath the same sky in this matter, then." Dak'kon is silent for a moment, still studying you with his coal-black eyes. "The planes number many infinities, yet you are here. I would *know* why you have come to this city."~ */
  IF ~~ THEN REPLY #15073 /* ~"I'm looking for answers... I have many questions."~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 25.0 26.0 27.0 29.1 30.1 31.1 32.1 33.1 34.1 35.1 36.2 37.1 38.7 39.3 40.2 41.1 42.0 43.2 44.2 45.2 46.2 47.2 48.2 49.2 50.2 51.1 52.1 53.1 54.1 55.1 56.1 57.0 58.3 59.2 60.1 61.2 62.3 63.2 64.0 65.0 66.0 73.0
  SAY #14995 /* ~"Speak your questions. I will hear you."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15074 /* ~"Your features are... unfamiliar to me. What are you?"~ */ GOTO 29
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15075 /* ~"Can you tell me of the githzerai people again?"~ */ GOTO 33
  IF ~~ THEN REPLY #15076 /* ~"Can you tell me about this city?"~ */ GOTO 35
  IF ~~ THEN REPLY #15077 /* ~"You seem to place a special emphasis on 'knowing.' What do you mean?"~ */ GOTO 52
  IF ~~ THEN REPLY #15078 /* ~"What is that blade you have?"~ */ GOTO 58
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15079 /* ~"Do you know of a man named Pharod? I am told he knows something about me."~ */ GOTO 65
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15080 /* ~"I've lost a journal. Do you know where it might be?"~ */ GOTO 66
  IF ~~ THEN REPLY #15081 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #14997 /* ~"A githzerai."~ */
  IF ~~ THEN REPLY #15082 /* ~"A githzerai?"~ */ GOTO 30
  IF ~~ THEN REPLY #15083 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15084 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 30 // from: 29.0 62.0
  SAY #14998 /* ~"A githzerai is one of the People."~ */
  IF ~~ THEN REPLY #15125 /* ~"One of the people?"~ */ GOTO 31
  IF ~~ THEN REPLY #15126 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15127 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #14999 /* ~"A githzerai."~ */
  IF ~~ THEN REPLY #15128 /* ~"Yes, but what are the githzerai, exactly?"~ */ GOTO 32
  IF ~~ THEN REPLY #15129 /* ~"Thanks for the explanation. It clears up a lot. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15130 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #15000 /* ~Dak'kon is silent for a moment, then speaks. "Our history does not need to be made *known* to you. We would bleed to death on time's blade before I recited a fraction of the histories of our People."~ */
  IF ~~ THEN REPLY #15131 /* ~"I don't need to know your histories... but I would know of your people as they are now."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 33
  IF ~~ THEN REPLY #15132 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15133 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 33 // from: 28.1 32.0 62.1
  SAY #15002 /* ~Dak'kon is silent for a moment. *"Know* this and accept it as an answer: We are the People who make our home upon the shifting plane of Limbo." With a deft motion, Dak'kon slips the blade from his back and holds it before him.~ */
  IF ~~ THEN REPLY #15134 /* ~Wait, see what happens.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 34
  IF ~~ THEN REPLY #15135 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15136 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #15004 /* ~"There, we mold the matter of Limbo with our minds. We forge cities with our thoughts." As you watch, a series of rippling waves of metal begin to roll forth from the center of the blade. The pitch and crest of the waves match the inflections in Dak'kon's voice. "In its chaos we dwell, with only our *knowing* to preserve us. We are the githzerai."~ */
  IF ~~ THEN REPLY #15137 /* ~"What is that blade you have... it moved, shifted in response to your voice."~ */ GOTO 58
  IF ~~ THEN REPLY #15138 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15139 /* ~"Very well. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 35 // from: 28.2
  SAY #15005 /* ~"It is *known* by the name 'Sigil.' Among the People, it is *known* as the city that does not *know* itself."~ */
  IF ~~ THEN REPLY #15140 /* ~"It doesn't know itself? What do you mean?"~ */ GOTO 36
  IF ~~ THEN REPLY #15141 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15142 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #15006 /* ~"The city exists, but it does not *know* itself. In not *knowing* itself, its existence is flawed." ~ */
  IF ~~ THEN REPLY #15143 /* ~"How is it flawed?"~ */ GOTO 38
  IF ~~ THEN REPLY #15144 /* ~"You speak as if the city is alive."~ */ GOTO 37
  IF ~~ THEN REPLY #15145 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15146 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 37 // from: 36.1 38.6
  SAY #15007 /* ~"It may not be aware and *know* itself in the sense that you or I might *know* ourselves, but it lives. It grows, changes, and touches the minds of all that live here."~ */
  IF ~~ THEN REPLY #15147 /* ~"Why did you say the city does not know itself?"~ */ GOTO 38
  IF ~~ THEN REPLY #15148 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15149 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 38 // from: 36.0 37.0 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.0
  SAY #15008 /* ~"The city exists in opposition to itself. It has set itself apart from the planes, yet it seeks to be everywhere at once. Its walls are doors, yet it keeps these doors locked. Such an existence tells of a thing that does not *know* itself. In not *knowing* itself, it is flawed."~ */
  IF ~~ THEN REPLY #15150 /* ~"When you say this city is everywhere at once, what do you mean?"~ */ GOTO 43
  IF ~~ THEN REPLY #15151 /* ~"Its walls are doors?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15152 /* ~Truth: "What if the city is *not* flawed? A thing does not need to be ordered and have a purpose to know itself. What if these contradictions are strengths that you cannot see?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15153 /* ~Truth: "What if the city is *not* flawed? A thing does not need to be ordered and have a purpose to know itself. What if these contradictions are strengths that you cannot see?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15154 /* ~Truth: "What if the city is *not* flawed, and you just do not know the reasons for its contradictions? There is order in everything. Perhaps there is an underlying pattern that you cannot perceive."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15155 /* ~Truth: "What if the city is *not* flawed, and you just do not know the reasons for its contradictions? There is order in everything. Perhaps there is an underlying pattern that you cannot perceive."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #15156 /* ~"You speak as if the city is alive."~ */ GOTO 37
  IF ~~ THEN REPLY #15157 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15158 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 39 // from: 38.2 38.3 38.4 38.5
  SAY #15010 /* ~"To your question, a question: What if the city is flawed, and you see its contradictions all around you?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #15159 /* ~Truth: "To *your* question, a question: You claim this city's existence is flawed. You have accepted this rather than explore the possibility that something greater may exist. That suggests you are flawed... and that you do not search for knowledge, but only for a convenient answer."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #15160 /* ~Truth: "To *your* question, a question: You claim this city's existence is flawed. You have accepted this rather than explore the possibility that something greater may exist. That suggests you are flawed... and that you do not search for knowledge, but only for a convenient answer."~ */ GOTO 40
  IF ~~ THEN REPLY #15161 /* ~"When you said the city was everywhere at once, what did you mean?"~ */ GOTO 43
  IF ~~ THEN REPLY #15162 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15163 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15012 /* ~Dak'kon falls silent. "There is no *knowing* the answer to the questions we have asked. Yet the city exists. That is all."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #15164 /* ~"Yet I would maintain that we *know* ourselves by the questions we ask and the ones we do not. If we cease asking questions and accept only what we can perceive..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 41
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #15165 /* ~"Yet I would maintain that we *know* ourselves by the questions we ask and the ones we do not. If we cease asking questions and accept only what we can perceive..."~ */ GOTO 41
  IF ~~ THEN REPLY #15166 /* ~"Never mind. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15167 /* ~"I didn't mean to disturb you. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #15014 /* ~"Then we will cease to *know* ourselves." Dak'kon's voice has changed slightly, become heavier. "Such words have been spoken before. I have heard them and *know* them."~ */
  IF ~~ THEN REPLY #15168 /* ~"Where have you heard them?"~ */ GOTO 42
  IF ~~ THEN REPLY #15169 /* ~"Never mind. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15170 /* ~"I didn't mean to disturb you. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15016 /* ~"The words are mine. Once, I *knew* them and *knew* their meaning. I had forgotten them until you spoke." Dak'kon's gaze travels through you, and his blade stops shimmering, bleeding of all color until it is translucent. There is a moment of silence, then Dak'kon looks up at you. "I would travel your path with you."~ */
  IF ~~ THEN REPLY #15171 /* ~"I'll consider it. I had some other questions, first..."~ */ GOTO 28
  IF ~~ THEN REPLY #15172 /* ~"I accept. An extra blade would be welcome."~ */ GOTO 72
  IF ~~ THEN REPLY #15173 /* ~"You are old. Of what use could you be to me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15175 /* ~"Not this day. Farewell."~ */ GOTO 68
END

IF ~~ THEN BEGIN 43 // from: 38.0 38.1 39.2
  SAY #15018 /* ~"The city itself is built from doors. These doors lead everywhere."~ */
  IF ~~ THEN REPLY #15174 /* ~"Where are these doors?"~ */ GOTO 44
  IF ~~ THEN REPLY #15176 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15177 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15178 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15020 /* ~"They are everywhere..." Dak'kon falls silent for a moment. "It is said that every bounded space within this city is a door that leads elsewhere."~ */
  IF ~~ THEN REPLY #15179 /* ~"I don't understand."~ */ GOTO 45
  IF ~~ THEN REPLY #15180 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15181 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15182 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #15021 /* ~"Imagine the door to the Smoldering Corpse bar. Remove the door. The frame remains. The space within the frame is still a door."~ */
  IF ~~ THEN REPLY #15183 /* ~"But I walked through that door to get in here. It's just... an open space."~ */ GOTO 46
  IF ~~ THEN REPLY #15184 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15185 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15186 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #15022 /* ~"Many are the doors you never see. You may pass through them as if air and not *know* them for what they are. They are closed to your sight and touch."~ */
  IF ~~ THEN REPLY #15187 /* ~"And these invisible doors are *everywhere* in Sigil?"~ */ GOTO 47
  IF ~~ THEN REPLY #15188 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15189 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15190 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #15023 /* ~"It is said every bounded space in Sigil is a door. It is not *known* for certain. Doors move. Doors change. Doors disappear. All are locked."~ */
  IF ~~ THEN REPLY #15192 /* ~"Locked?"~ */ GOTO 48
  IF ~~ THEN REPLY #15191 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15193 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15194 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #15024 /* ~"The doors remain as air until you have the key that opens them. When you have the key, the doors will make themselves *known* to you."~ */
  IF ~~ THEN REPLY #15195 /* ~"How do you know what the key is?"~ */ GOTO 49
  IF ~~ THEN REPLY #15196 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15197 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15198 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #15025 /* ~"Every door has a different key. Some keys are *known,* others are not *known.*"~ */
  IF ~~ THEN REPLY #15199 /* ~"What are these keys?"~ */ GOTO 50
  IF ~~ THEN REPLY #15200 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15201 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15202 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15026 /* ~"There are as many keys as there are doors. The keys are not always things of metal. The keys can be the clashing of two swords, a drop of blood drawn from the tongue of a dying man, the memory of a past love, or an angry curse hurled at the sky. When the key and door match, the door reveals itself."~ */
  IF ~~ THEN REPLY #15204 /* ~"Sounds like finding all these keys and doors can be difficult."~ */ GOTO 51
  IF ~~ THEN REPLY #15208 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15215 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15218 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #15027 /* ~"Such a task has been attempted but never finished. As the city changes, the doors change. Nothing *known* remains *known* for long."~ */
  IF ~~ THEN REPLY #15220 /* ~"Why did you say the city is flawed again?"~ */ GOTO 38
  IF ~~ THEN REPLY #15222 /* ~"I see. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15224 /* ~"Thanks for the information. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 52 // from: 28.3
  SAY #15028 /* ~"All things, whether structure or flesh - their existence is defined by their *knowing* of themselves."~ */
  IF ~~ THEN REPLY #15226 /* ~"And if a man does not know himself?"~ */ GOTO 53
  IF ~~ THEN REPLY #15228 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15231 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #15030 /* ~"When a mind does not *know* itself, it is flawed. When a mind is flawed, the man is flawed. When a man is flawed, that which he touches is flawed." Dak'kon pauses. "It is said that what a flawed man sees, his hands make broken."~ */
  IF ~~ THEN REPLY #15234 /* ~"Do you know yourself?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #15236 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15237 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #15032 /* ~Dak'kon falls silent. His coal black eyes take on the same distance that you noticed when you first spoke. ~ */
  IF ~~ THEN REPLY #15238 /* ~"I ask again: Do you know yourself?"~ */ GOTO 55
  IF ~~ THEN REPLY #15240 /* ~"Never mind. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15241 /* ~"I didn't mean to disturb you. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #15034 /* ~When Dak'kon speaks again, his voice has changed; his words echo, like a great stone dropped into a chasm. It looks like he is forcing the words from his chest. "It is not my *will* that you *know* this."~ */
  IF ~~ THEN REPLY #15242 /* ~"Perhaps I was being too kind phrasing it as a question: Tell me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 56
  IF ~~ THEN REPLY #15243 /* ~"Never mind. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15244 /* ~"Sorry. Never mind. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #15036 /* ~The words come out of Dak'kon slowly, as if they are being carried one by one. "It... has come to pass that I do not *know* myself."~ */
  IF ~~ THEN REPLY #15245 /* ~"Why?"~ */ GOTO 57
  IF ~~ THEN REPLY #15246 /* ~"Never mind. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15247 /* ~"Sorry. Never mind. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #15038 /* ~Dak'kon's voice drops to a whisper, like sand. "I do not *know* why. I *know* it has happened, but I *know* not the how, nor the when... nor how to *know* myself once more."~ */
  IF ~~ THEN REPLY #15248 /* ~"Never mind. I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15249 /* ~"Sorry. Never mind. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 58 // from: 28.4 34.0
  SAY #15039 /* ~"It is a *karach* blade. It is an object that lets others *know* the rank of the wielder."~ */
  IF ~~ THEN REPLY #15250 /* ~*"Karach?* What does that mean?"~ */ GOTO 61
  IF ~~ THEN REPLY #15251 /* ~"It's made out of a strange metal... it's almost hypnotic the way it shifts back and forth."~ */ GOTO 61
  IF ~~ THEN REPLY #15252 /* ~"What rank does it signify?"~ */ GOTO 59
  IF ~~ THEN REPLY #15253 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15254 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 59 // from: 58.2 63.1
  SAY #15040 /* ~"The blade is a symbol carried by the *zerth.* A *zerth* is one who *knows* the words of Zerthimon. In *knowing* the words of Zerthimon, they *know* themselves."~ */
  IF ~~ THEN REPLY #15255 /* ~"Zerthimon?"~ */ GOTO 60
  IF ~~ THEN REPLY #15256 /* ~"What is that blade made of again?"~ */ GOTO 61
  IF ~~ THEN REPLY #15257 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15259 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #15041 /* ~"Zerthimon founded our race. He *knew* the githzerai before they *knew* themselves. He defined the People. He gave them one mind."~ */
  IF ~~ THEN REPLY #15258 /* ~"What is that blade made of again?"~ */ GOTO 61
  IF ~~ THEN REPLY #15260 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15261 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 61 // from: 58.0 58.1 59.1 60.0
  SAY #15042 /* ~Dak'kon falls silent for a moment, as if searching for the correct words. "In your tongue, the closest translation is 'chaos matter.' The People may shape it with their thoughts."~ */
  IF ~~ THEN REPLY #15262 /* ~"The people?"~ */ GOTO 62
  IF ~~ THEN REPLY #15263 /* ~"Shape it with their thoughts?"~ */ GOTO 63
  IF ~~ THEN REPLY #15264 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15265 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #15043 /* ~"The githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #15266 /* ~"What is a githzerai?"~ */ GOTO 30
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #15267 /* ~"What are the githzerai again?"~ */ GOTO 33
  IF ~~ THEN REPLY #15268 /* ~"And you say the githzerai can shape this *karach*... with their thoughts?"~ */ GOTO 63
  IF ~~ THEN REPLY #15269 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15270 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 63 // from: 61.1 62.2
  SAY #15044 /* ~*"Karach* is not shaped by heat, but by *knowing* oneself. It is a mirror that reflects the will of the wielder on its surface and in its edge. When one *knows* themselves, the blade is strong - harder and stronger than steel. When one does not *know* themselves, the blade is as water - formless and weak." ~ */
  IF ~~ THEN REPLY #15271 /* ~"Are you willing to sell it?"~ */ GOTO 64
  IF ~~ THEN REPLY #15272 /* ~"What rank does the blade signify?"~ */ GOTO 59
  IF ~~ THEN REPLY #15273 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15274 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #15045 /* ~"It would become as nothing in the hands of another. The blade *knows* my mind, and I *know* its heart. We die the same death."~ */
  IF ~~ THEN REPLY #15275 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15276 /* ~"I see. I must take my leave. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 65 // from: 28.5
  SAY #15046 /* ~"That one is not *known* to me."~ */
  IF ~~ THEN REPLY #15277 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15278 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 66 // from: 28.6
  SAY #15047 /* ~"The location of such a thing is not *known* to me."~ */
  IF ~~ THEN REPLY #15279 /* ~"I had some other questions..."~ */ GOTO 28
  IF ~~ THEN REPLY #15280 /* ~"There is nothing to be said. Farewell."~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 23.1 28.7 29.2 30.2 31.2 32.2 33.2 34.2 35.2 36.3 37.2 38.8 39.4 40.3 41.2 43.3 44.3 45.3 46.3 47.3 48.3 49.3 50.3 51.2 52.2 53.2 54.2 55.2 56.2 57.1 58.4 59.3 60.2 61.3 62.4 63.3 64.1 65.1 66.1
  SAY #15048 /* ~As you turn to leave, the man speaks sharply, the first time you have heard his tone change since the conversation began. "Hold." The man's voice levels out. "This city is not *known* to you. I would travel your path with you."~ */
  IF ~~ THEN REPLY #15281 /* ~"I accept. An extra blade would be welcome."~ */ GOTO 72
  IF ~~ THEN REPLY #15282 /* ~"You are old. Of what use could you be to me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #15283 /* ~"Not this day. Farewell."~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 42.3 67.2 70.1 71.1
  SAY #15049 /* ~"I would have you hear me." Before you can turn to leave, Dak'kon speaks again. You are finding it difficult to turn away as long as you hold his attention. "You are a stranger to this city. In not *knowing* it, the city is a danger to you. Two blades carry more weight than one, even when left in their scabbards." As he speaks, you notice his blade shifting to the same dead black as when he first saw you. ~ */
  IF ~~ THEN REPLY #15284 /* ~"Very well. An extra blade would be welcome, Dak'kon."~ */ GOTO 72
  IF ~~ THEN REPLY #15285 /* ~"You would have me hear you, yet you do not hear me. I do not want you with me. Remain as you were when I entered. Now farewell."~ */ GOTO 69
END

IF ~~ THEN BEGIN 69 // from: 68.1
  SAY #15050 /* ~"I will be here when you return. Make yourself *known* to me, and your path will be mine."~ */
  IF ~~ THEN REPLY #15286 /* ~"I will keep that in mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 42.2 67.1
  SAY #15051 /* ~Dak'kon's gaze changes. It looks as if he is looking past you, just as he did when you first spoke to him. "I am old, yet I have traveled far. The arts of war are *known* to me. The tides of this city are *known* to me."~ */
  IF ~~ THEN REPLY #15287 /* ~"Nevertheless..."~ */ GOTO 71
  IF ~~ THEN REPLY #15288 /* ~"Not this day. Farewell."~ */ GOTO 68
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #15052 /* ~"Where you stab in the dark, my blade strikes true. Doors locked to your hand are corridors to mine. In *knowing* these things through me, you will become strong. I would walk your path with you."~ */
  IF ~~ THEN REPLY #15289 /* ~"Very well, I accept."~ */ GOTO 72
  IF ~~ THEN REPLY #15290 /* ~"I don't think so. Farewell."~ */ GOTO 68
END

IF ~~ THEN BEGIN 72 // from: 42.1 67.0 68.0 71.0 73.1
  SAY #15053 /* ~"Your path is mine." Strangely enough, his voice seems distant, and it echoes, as if he was speaking from across a great distance.~ [DAK206] */
  IF ~  GlobalLT("Dakkon","GLOBAL",2)
~ THEN REPLY #15291 /* ~"Very well. Let's go."~ */ DO ~SetGlobal("Dakkon","GLOBAL",2)
AddexperienceParty(1000)
ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalGT("Dakkon","GLOBAL",1)
~ THEN REPLY #66762 /* ~"Very well. Let's go."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  Global("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 73 // from:
  SAY #15054 /* ~Dak'kon turns as you approach, his eyes like polished coal. He stares through you, and for a moment, you wonder if he might be blind. ~ */
  IF ~~ THEN REPLY #15292 /* ~"Greetings again, Dak'kon. I had some questions for you..."~ */ GOTO 28
  IF ~~ THEN REPLY #15293 /* ~"I would welcome your blade, Dak'kon."~ */ GOTO 72
  IF ~~ THEN REPLY #15294 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #16628 /* ~"One finds your request most intriguing. Trees, in the Hive? Like cities, in Limbo. They would stand as a testament to the will of the people not to bow to that which would surround and devour them; to take what has been thrust upon them or left behind and make good of it. I, too, will care for these trees."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16936 /* ~"Thanks. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16937 /* ~"Thanks. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16938 /* ~"Thanks. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16939 /* ~"Thanks. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16940 /* ~"Thanks. Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16941 /* ~"Thanks. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16942 /* ~"Thanks. I had some questions, Mourns..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16943 /* ~"Thanks, Dak'kon. Farewell, Mourns-for-Trees."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #16629 /* ~Dak'kon nods. "Of... course."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16944 /* ~"Good. Morte? What do you think?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16945 /* ~"Good. Annah? Could you?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16946 /* ~"Good. Ignus?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16947 /* ~"Good. Grace, would you consider it?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16948 /* ~"Good. Nordom, do you think you could help?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16949 /* ~"Good. Vhailor, could you help?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16950 /* ~"There you are, Mourns. I had some questions..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16951 /* ~"That should help some, Mourns-for-Trees. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #17626 /* ~"The spice may taste of whatever one would like. It is little more than a matter of concentration and willpower to bend its flavor to one's whim."~ */
  IF ~~ THEN REPLY #17725 /* ~Try some.~ */ DO ~TakePartyGold(5)
~ EXTERN ~D300MER6~ 20
  IF ~~ THEN REPLY #17726 /* ~"I don't think that I'd like that. Let me try something else."~ */ EXTERN ~D300MER6~ 6
  IF ~~ THEN REPLY #17727 /* ~"I've changed my mind. I had questions, though..."~ */ EXTERN ~D300MER6~ 2
  IF ~~ THEN REPLY #17728 /* ~"I don't think I want that, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 78.0 79.1 80.3 81.3 82.0 83.12 84.12 85.12 86.9 87.9 88.0 89.2 90.5 91.5 92.4 93.8 94.3 95.3 96.3 97.1 98.3 99.5 100.3 101.1 102.3 103.0 104.3 105.0 106.3 107.3 108.3 109.3 110.3 111.12 112.5 113.0
  SAY #22541 /* ~Dak'kon nods.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25004 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25005 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25006 /* ~"Ask him who he is."~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25007 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25008 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25009 /* ~"Ask him what this place is."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25010 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25011 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25012 /* ~"I feel like I know you, Fell."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25013 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25014 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25015 /* ~"I feel like I know you, Fell."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64400 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64401 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64402 /* ~"What lies beyond that curtain, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64403 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64404 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64405 /* ~"What are those frames in the back room, Fell?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25016 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25017 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25018 /* ~"He mentioned that he'd met me before... does he know how I died?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25019 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25020 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25021 /* ~"Ask him if he's heard of Ravel."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25022 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25023 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25024 /* ~"Ask him if he did the tattoos on this dismembered arm I found."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25025 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25026 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25027 /* ~"Can he tell me anything about these tattoos on my body?"~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25028 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25029 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25030 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25031 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #22542 /* ~"He is *known* as Fell."~ */
  IF ~~ THEN REPLY #25032 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25033 /* ~"I see. That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #22543 /* ~"He places pictures on flesh here. 'Tattoos.'"~ */
  IF ~~ THEN REPLY #25034 /* ~"Can I see what tattoos he has available?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25035 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25036 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #22544 /* ~"He has split his speech with a contradiction." Dak'kon pauses for a moment, his black eyes swimming across the symbols. "He says it is the first time you have come to him. He says this is not the first time you have come to him."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25037 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25038 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25039 /* ~"Does he know who I am?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25040 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25041 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #22545 /* ~"You are *known* to him. But he cannot tell you what you want to *know.*"~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25042 /* ~"Why not?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25043 /* ~"Why not?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25044 /* ~"Why not?"~ */ JOURNAL #24270 /* ~Fell said he knew me, but that he couldn't tell me my 'story.' But the strangest thing was the reason. He said he cannot because 'he cannot change the nature of a man.'~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25045 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25046 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #22546 /* ~"In place of an answer, he surrenders an apology for his silence." Dak'kon pauses for a moment, and when he speaks again, his words are like ice. "He says that he cannot change the *nature of a man.*" As Dak'kon repeats these words, you feel a terrible pressure in your head... that fades with the last word.~ */
  IF ~~ THEN REPLY #25047 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25048 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #22547 /* ~"She is real."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25049 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25050 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25051 /* ~"Does he know where she is?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25052 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25053 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25054 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25055 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25056 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25057 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25058 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25059 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25060 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25061 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25062 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #22548 /* ~"She has been imprisoned in one of the Lady's mazes."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25063 /* ~"Mazes?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25064 /* ~"Mazes?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25065 /* ~"Mazes?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25066 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25067 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25068 /* ~"Can he tell us anything about her?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25069 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25070 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25071 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25072 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25073 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25074 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25075 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25076 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #22549 /* ~"Ravel's will was not the Lady's will. The Lady punished her."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25077 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25078 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25079 /* ~"Why did Ravel get placed in a maze?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25080 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25081 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25082 /* ~"Does he know how to reach Ravel's maze?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25083 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25084 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25085 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25086 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25087 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25088 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25089 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25090 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #22550 /* ~"She tried to shatter Sigil's walls."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25091 /* ~"Does he know how to reach Ravel?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25092 /* ~"Does he know how to reach Ravel?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25093 /* ~"Does he know how to reach Ravel?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25094 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25095 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25096 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25097 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25098 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25099 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25100 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25101 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #22551 /* ~"The way to reach her is not *known* to him."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25102 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25103 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25104 /* ~"What else does he know about Ravel?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25105 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25106 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25107 /* ~"I had another question I wanted to ask him..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25108 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25109 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25110 /* ~"That is all I wished to know. Farewell."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25111 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25112 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #22552 /* ~"He warns us not to seek the night hag. He says that her heart is black and she will seek to hurt us."~ */
  IF ~~ THEN REPLY #25113 /* ~"I'll keep that in mind. I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25114 /* ~"I think our paths are destined to cross. Farewell."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #22553 /* ~Dak'kon studies the symbols, but he remains silent.~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25115 /* ~"Dak'kon? What is he saying?"~ */ GOTO 90
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25116 /* ~"Dak'kon?"~ */ GOTO 96
  IF ~~ THEN REPLY #25117 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25118 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #22554 /* ~"The arm is yours. The tattoos are his."~ */
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #25119 /* ~"Did he say anything more than that?"~ */ JOURNAL #25126 /* ~I asked Dak'kon to translate what Fell was saying about the tattooed arm I found, and he lied and said he did not know. For some reason, he didn't want to explain what the tattoo on the severed arm meant.~ */ GOTO 91
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #25120 /* ~"Did he say anything more than that?"~ */ GOTO 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25121 /* ~"What can he tell me about the tattoos?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25122 /* ~"What can he tell me about the tattoos?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25123 /* ~"What can he tell me about the tattoos?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25124 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25125 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #22555 /* ~Dak'kon is silent for a moment... and suddenly, instinctively, you know Dak'kon is *lying* to you. He continues on with dead-level tone. "The rest of the symbols are not *known* to me."~ */
  IF ~~ THEN REPLY #25127 /* ~"Why are you lying to me?"~ */ GOTO 93
  IF ~~ THEN REPLY #25128 /* ~"I think what he said IS *known* to you. Translate. Now."~ */ DO ~SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25129 /* ~"Uh... all right. What can he tell me about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25130 /* ~"Uh... all right. What can he tell me about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25131 /* ~"Uh... all right. What can he tell me about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25132 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25133 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1
  SAY #22556 /* ~Dak'kon is silent for a moment. "The rest of the symbols are not *known* to me."~ */
  IF ~~ THEN REPLY #25134 /* ~"Are you certain?"~ */ GOTO 95
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25135 /* ~"Uh... all right. What can he tell me about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25136 /* ~"Uh... all right. What can he tell me about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25137 /* ~"Uh... all right. What can he tell me about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25138 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25139 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.0
  SAY #22557 /* ~Dak'kon falls silent again; he does not turn to look at you - he seems to be staring at something leagues away. "The symbols... there is no good in *knowing* the answer to what you ask."~ */
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25140 /* ~"I'm losing patience. I need answers, and you better tell me all you know before I lose my temper."~ */ DO ~GiveExperience(Protagonist,250)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I convinced Dak'kon to tell me what the tattoo on my severed arm meant, though he was reluctant to do so. He said the tattoo spoke of "four that I had traveled with in the past."~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,13,CHR)
CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25141 /* ~"Since when has not knowing the truth of something ever really helped anyone, Dak'kon? The counselor who councils ignorance betrays his station."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I convinced Dak'kon to tell me what the tattoo on my severed arm meant, though he was reluctant to do so. He said the tattoo spoke of "four that I had traveled with in the past."~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25142 /* ~"Since when has not knowing the truth of something ever really helped anyone, Dak'kon? The counselor who councils ignorance betrays his station."~ */ DO ~GiveExperience(Protagonist,500)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I convinced Dak'kon to tell me what the tattoo on my severed arm meant, though he was reluctant to do so. He said the tattoo spoke of "four that I had traveled with in the past."~ */ GOTO 94
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #25143 /* ~"Since when has *not* knowing the truth of something ever really helped anyone, Dak'kon? The counselor who councils ignorance betrays his station."~ */ DO ~GiveExperience(Protagonist,750)
SetGlobal("Fell_Dakkon_Truth","GLOBAL",1)
~ JOURNAL #25150 /* ~I convinced Dak'kon to tell me what the tattoo on my severed arm meant, though he was reluctant to do so. He said the tattoo spoke of "four that I had traveled with in the past."~ */ GOTO 94
  IF ~  Global("Fell_Dakkon_Truth","GLOBAL",1)
~ THEN REPLY #25144 /* ~"Go on, Dak'kon. You spoke of them before."~ */ GOTO 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25145 /* ~"Never mind, then. What does Fell have to say about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25146 /* ~"Never mind, then. What does Fell have to say about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25147 /* ~"Never mind, then. What does Fell have to say about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25148 /* ~"Forget it, then. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25149 /* ~"Very well, then, keep your own counsel, Dak'kon. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.1 93.2 93.3
  SAY #22558 /* ~"There is truth in your words. That truth... should be *known* to me." Dak'kon is silent for a moment, then he turns to you, his eyes hardened. "The symbols speak of four you have traveled with in the past."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25151 /* ~"Go on... what four are these?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25152 /* ~"Go on... what four are these?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25153 /* ~"Go on... what four are these?"~ */ JOURNAL #24274 /* ~Fell translated the rune on my old arm for me... he said it spoke of four who once walked my path with me. The four were 'One unloved who loves one who does not love.' 'One who does not see what others see and sees what others do not.' 'One who is familiar and bound with duty.' 'One who is a slave and his chains are words.' He said they were all tormented as I am, and in my suffering, I draw others that suffer as well.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25154 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25155 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 95 // from: 92.0
  SAY #22559 /* ~Dak'kon turns to you, his eyes hardened. "Yes."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25156 /* ~"Never mind, then. What does Fell have to say about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25157 /* ~"Never mind, then. What does Fell have to say about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25158 /* ~"Never mind, then. What does Fell have to say about the tattoos on the arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25159 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25160 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 96 // from: 89.1 91.1 93.0 93.4
  SAY #22560 /* ~Dak'kon turns to you, his eyes hardened. "The symbols speak of four you have traveled with in the past."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25161 /* ~"Go on... what four are these?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25162 /* ~"Go on... what four are these?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25163 /* ~"Go on... what four are these?"~ */ JOURNAL #24274 /* ~Fell translated the rune on my old arm for me... he said it spoke of four who once walked my path with me. The four were 'One unloved who loves one who does not love.' 'One who does not see what others see and sees what others do not.' 'One who is familiar and bound with duty.' 'One who is a slave and his chains are words.' He said they were all tormented as I am, and in my suffering, I draw others that suffer as well.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25164 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25165 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #22561 /* ~Dak'kon isn't even looking at the symbols. "The tattoo speaks of four minds. One was a woman, who loved a man who *knew* her and *knew* not love. The other was a blind man, who saw things no mortal eye could see. Another was a familiar, a mage's pet, bought and bound. And the last was a slave."~ */
  IF ~~ THEN REPLY #25166 /* ~"Why did you not want to tell me this?"~ */ GOTO 98
  IF ~  False()
~ THEN REPLY #25167 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25168 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #22562 /* ~"The four are bound with a symbol that is *known* to me."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25169 /* ~"What symbol?"~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25170 /* ~"What symbol?"~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25171 /* ~"What symbol?"~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25172 /* ~"Very well. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~  False()
~ THEN REPLY #25173 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #22563 /* ~"The symbol is torment. He says that you have always worn it, for the flesh *knows* that it suffers, even when the mind does not."~ */
  IF ~~ THEN REPLY #25174 /* ~"Enough about the symbol. Tell me everything you know about those four that are on the tattoo."~ */ GOTO 100
  IF ~~ THEN REPLY #25175 /* ~"I see. Can you tell me anything more about the four on the tattoo?"~ */ GOTO 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25176 /* ~"Does Fell say anything about the other tattoos on the arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25177 /* ~"Does Fell say anything about the other tattoos on the arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25178 /* ~"Does Fell say anything about the other tattoos on the arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25179 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25180 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1
  SAY #22564 /* ~Dak'kon is silent again. "I will not speak of it here. Ask when what we speak of will only be for the ears of those that walk with you." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25181 /* ~"Very well. Does Fell say anything about the other tattoos on the arm?"~ */ EXTERN ~DFELL~ 62
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25182 /* ~"Very well. Does Fell say anything about the other tattoos on the arm?"~ */ EXTERN ~DFELL~ 77
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25183 /* ~"Very well. Does Fell say anything about the other tattoos on the arm?"~ */ EXTERN ~DFELL~ 63
  IF ~~ THEN REPLY #25184 /* ~"All right... but first, I had another question I wanted to ask Fell..."~ */ GOTO 77
  IF ~~ THEN REPLY #25185 /* ~"Very well, Dak'kon. We'll leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #22565 /* ~"He says that the arm wears forgotten tattoos. He has remembered them now. They are yours if you want them."~ */
  IF ~~ THEN REPLY #25186 /* ~"Okay... I'd like to see all the tattoos he has available."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25187 /* ~"I had another question I wanted to ask him..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #25188 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #22566 /* ~"He says the tattoos are not his."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #24893 /* ~"Can he tell me anything about them?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #24894 /* ~"Can he tell me anything about them?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #24895 /* ~"Can he tell me anything about them?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25189 /* ~"I see. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25190 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #22567 /* ~"The symbols upon your back are directions left to yourself. The mark upon your shoulder is the mark of torment. He says the mark lies upon you because the flesh *knows* that it suffers, even when the mind does not."~ */
  IF ~~ THEN REPLY #25191 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25192 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #22568 /* ~"Shadows."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25193 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25194 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25195 /* ~"Shadows?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25196 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25197 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from:
  SAY #22569 /* ~"He says many shadows came for you. Their reason for taking your life is not *known* to him."~ */
  IF ~~ THEN REPLY #25198 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25199 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #22570 /* ~"This is his gallery. He says that he *knows* you as his canvas. He shows respect to your strength with his admiration." Dak'kon is silent for a moment. "Then he insults you by giving you his pity."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25200 /* ~"His pity?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25201 /* ~"His pity?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25202 /* ~"His pity?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25203 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25204 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #22571 /* ~"He pities you for the scars torment has left upon you. He says you have endured. In enduring, you have grown strong."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25205 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25206 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25207 /* ~"What does he mean?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25208 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25209 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #22572 /* ~"He says his admiration is *known* through your enduring of loss. He says loss hangs upon you like chains, yet you stand and walk."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25210 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25211 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25212 /* ~"Ask him to go on."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25213 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25214 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #22573 /* ~"He says loss covers this life and all the ones that have come before. He says you molt like a serpent, leaving these lives behind you as you walk all of lives' paths."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25215 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25216 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25217 /* ~"Does he say anything else?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25218 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25219 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #22574 /* ~"He would have you *know* this warning: Each of your lives casts a shadow on existence. Your path will take you to a place where the shadows do not *know* themselves, and the walls are made of regrets."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25220 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25221 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25222 /* ~"I... see. Does he say anything else?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25223 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25224 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #22575 /* ~"He says do not sign anything."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25225 /* ~"Very well."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25226 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25227 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25228 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25229 /* ~"Very well."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25230 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25231 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25232 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25233 /* ~"Very well."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25234 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25235 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25236 /* ~"Very well. I mean... uh... I'll try not to sign anything more than I already have."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25237 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25238 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #22576 /* ~"He asks if you *know* yourself to be complete."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25239 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25240 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25241 /* ~Truth: "I... don't. In fact, ever since I woke up in the Mortuary, I feel like something's... missing. Something inside."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25242 /* ~"That is none of your concern."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25243 /* ~Lie: "I feel complete, yes. Why?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25244 /* ~"I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25245 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #22577 /* ~"He pays respect to your strength. He tells you to keep faith, then you shall *know* yourself again."~ */
  IF ~~ THEN REPLY #25246 /* ~"I'll try. I had another question I wanted to ask him..."~ */ GOTO 77
  IF ~~ THEN REPLY #25247 /* ~"That is all I wished to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 114 // from:
  SAY #32703 /* ~Dak'kon does not even seem to register the young woman's presence; he simply stares straight ahead.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 33
END

IF ~~ THEN BEGIN 115 // from:
  SAY #32704 /* ~There is still no response from Dak'kon - it is as if the woman doesn't even exist to him.~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 35
END

IF ~~ THEN BEGIN 116 // from:
  SAY #32705 /* ~Dak'kon speaks suddenly in a deep baritone, as if lecturing a small child. "When Zerthimon came upon the Plain of Shale and the githzerai crossed the path of man, he said that there was much to be admired in their ways, but that they had a hard road to travel to dispel their own ignorance..."~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #32706 /* ~Dak'kon continues his 'joke:' "As with many humans, Zerthimon said, they speak of great things, yet they act little, and therein is the danger in their patterns. Humanity is the nightmare made flesh, the danger of a people without true history and the ability to learn from what has transpired."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 36
END

IF ~  GlobalGT("Dakkon","GLOBAL",1)
!InParty("Dakkon")
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 118 // from:
  SAY #33972 /* ~Dak'kon turns as you approach, his eyes like polished coal. "It was *known* to me you would return. Is it your will that our two paths become one?"~ [DAK207] */
  IF ~~ THEN REPLY #33973 /* ~"Yes. I need your aid, Dak'kon."~ */ DO ~ChangeAIScript("pcdakkon",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 119
  IF ~~ THEN REPLY #33974 /* ~"Not at the moment, Dak'kon, no."~ */ GOTO 120
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #33975 /* ~"Your path is mine."~ [DAK206] */
  IF ~~ THEN REPLY #33976 /* ~"Let's go, then."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 118.1
  SAY #33977 /* ~"Then our paths shall be divided."~ */
  IF ~~ THEN REPLY #33978 /* ~"Farewell, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #33979 /* ~"What is your will?"~ [DAK205] */
  IF ~~ THEN REPLY #33980 /* ~"Nothing at the moment. I was just checking to see if you were still with me."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #39583 /* ~Dak'kon nods solemnly. "I shall impart the tale of 'Ach'ali Drowning.'"

Dak'kon tells the story of Ach'ali, a foolish githzerai of myth who had become lost in the chaos of limbo. Normally, a single githzerai may use their focus and mental discipline to form the chaos around them into a small, habitable environment. Ach'ali, however, asked so many useless and unfocused questions in her quest to return home that her isle of matter dissolved around her, and she drowned.~ */
  IF ~~ THEN EXTERN ~DYVES~ 61
END

IF ~~ THEN BEGIN 123 // from:
  SAY #39584 /* ~Dak'kon looks attentive, and perhaps a little surprised.~ */
  IF ~~ THEN REPLY #39761 /* ~"Go on, Yves..."~ */ DO ~SetGlobal("Yves_Story_10","GLOBAL",1)
AddexperienceParty(500)
~ EXTERN ~DYVES~ 62
  IF ~~ THEN REPLY #39762 /* ~"Wait, Yves... I had a question..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39763 /* ~"I'll hear the rest another time, Yves. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from:
  SAY #42437 /* ~Dak'kon glances at you, and says, "She cannot understand your speech. She says she is dying." ~ */
  IF ~~ THEN REPLY #42438 /* ~"What's she dying of?"~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ GOTO 125
  IF ~~ THEN REPLY #42439 /* ~"Then maybe you had better just kill her. Make it painful, though."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42440 /* ~"Is there anything we can do for her?"~ */ GOTO 127
  IF ~~ THEN REPLY #42441 /* ~"Great. We have to go."~ */ GOTO 128
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #42442 /* ~"Her name is An'azi. She says she used to work in a meat-curing house here until a half-month ago when the illness became too much for her to bear. She was abandoned, evicted from her home, and left for dead. Speech pains her and her illness has crippled much of her mind. She says there is nothing she can give you of value."~ */
  IF ~~ THEN REPLY #42443 /* ~"And?"~ */ GOTO 127
  IF ~~ THEN REPLY #42444 /* ~"Let's leave her alone, then. She may recover."~ */ GOTO 127
END

IF ~~ THEN BEGIN 126 // from: 124.1 127.0 132.0
  SAY #42445 /* ~Dak'kon's eyes go flat, but he bows to you. He turns back to the old woman, shows her the Unbroken Circle of Zerthimon, and speaks a few clipped syllables to her. She shoots you a look full of loathing, but turns back to Dak'kon. He draws his blade; she stands before him, gazing into his eyes. He draws his blade back...~ */
  IF ~~ THEN REPLY #42446 /* ~"Stop, Dak'kon. We'll leave her alone. Let's go."~ */ GOTO 128
  IF ~~ THEN REPLY #42447 /* ~"Stab her instead, Dak'kon. I said to make it hurt."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ JOURNAL #67287 /* ~I made Dak'kon kill a sick githzerai woman painfully. I think she appreciated the gesture, if not the sentiment.~ */ GOTO 129
  IF ~~ THEN REPLY #42448 /* ~Let him strike her down.~ */ JOURNAL #67287 /* ~I made Dak'kon kill a sick githzerai woman painfully. I think she appreciated the gesture, if not the sentiment.~ */ GOTO 131
END

IF ~~ THEN BEGIN 127 // from: 124.2 125.0 125.1
  SAY #42449 /* ~"*Know* that she will not recover. I can put her out of her misery. That is all. As a *zerth* of the People, it is my responsibility to provide an alternative."~ */
  IF ~~ THEN REPLY #42450 /* ~"Do it, then. But make it painful."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42451 /* ~"Then be merciful, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42452 /* ~"Do not do it. We have other tasks."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 128 // from: 124.3 126.0 127.2 132.2
  SAY #42453 /* ~Dak'kon looks at you flatly, and then turns to bow to the githzerai woman as you leave.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 129 // from: 126.1
  SAY #42454 /* ~Dak'kon does not look at you, but he thrusts his *karach* blade into her body. She gasps, slightly, and watery blood spills from her lips. Her eyes glaze over, and the strength runs from her legs. She slides backward off the sword, and lies in a crumpled heap on the ground.~ */
  IF ~~ THEN REPLY #42455 /* ~"Let's get out of here."~ */ DO ~AddexperienceParty(4000)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 130 // from: 127.1 132.1
  SAY #42456 /* ~Dak'kon draws his blade, and waits for the woman to prepare herself. She touches the Unbroken Circle of Zerthimon he wears for a moment, and her face is stoic. His blade is a blur, and when he has completed the stroke, she lies bleeding on the hard stone of Sigil's streets.~ */
  IF ~~ THEN REPLY #42457 /* ~"Well struck, Dak'kon. Let's go."~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ JOURNAL #67288 /* ~I allowed Dak'kon to aid a woman of his people, a sick githzerai who had breathed too deeply of the poisonous vapors of the Lower Ward. He struck her down, yet she seemed grateful.~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from: 126.2
  SAY #42458 /* ~She touches the Unbroken Circle of Zerthimon he wears for a moment, and her face is stoic. His blade is a blur, and when he has completed the stroke, she lies bleeding on the hard stone of Sigil's streets.~ */
  IF ~~ THEN REPLY #42459 /* ~"Let's go, Dak'kon."~ */ DO ~AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill("Anazi")
~ EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #42460 /* ~"Her name is An'azi. Her sickness is fatal. It causes her pain. The resistance of the People to the evil airs that clot this Ward is weaker than that of you humans. I am a *zerth.* It is my responsibility to provide an alternative. She has begged me to do so, since the People will not approach her."~ */
  IF ~~ THEN REPLY #42461 /* ~"Do it, then. But make it painful."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 126
  IF ~~ THEN REPLY #42462 /* ~"Then be merciful, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 130
  IF ~~ THEN REPLY #42463 /* ~"Do not do it. We have other tasks."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 128
END

IF ~~ THEN BEGIN 133 // from:
  SAY #43544 /* ~Before you reach her, Dak'kon breaks in. "I would have you hear me."~ */
  IF ~~ THEN REPLY #43545 /* ~"What is it, Dak'kon?"~ */ GOTO 134
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"No. Be silent."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43546 /* ~"No. Be silent."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #43547 /* ~"It is my will that we not speak to this woman."~ */
  IF ~~ THEN REPLY #43548 /* ~"Why not?"~ */ GOTO 136
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43549 /* ~"I hear you. We will speak to her anyway."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43550 /* ~"I hear you. We will speak to her anyway."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Then do not speak to her."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 30
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43552 /* ~"Then do not speak to her."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43553 /* ~"Very well, then. We will not."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43553 /* ~"Very well, then. We will not."~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.5 134.6 136.2 136.3
  SAY #43554 /* ~"You have my gratitude."~ */
  IF ~~ THEN REPLY #43555 /* ~"Think nothing of it."~ */ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.0
  SAY #43556 /* ~"She is a *zerth.* Our wills are crossed blades. We have no common ground."~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Your wish has been noted. We will speak to her anyway."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43558 /* ~"Then do not speak to her."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 29
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",0)
~ THEN REPLY #43559 /* ~"Very well, then. We will not."~ */ DO ~SetGlobal("Dakkon_Kiina_Morale","AR0500",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ GOTO 135
  IF ~  Global("Dakkon_Kiina_Morale","AR0500",1)
~ THEN REPLY #43559 /* ~"Very well, then. We will not."~ */ GOTO 135
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43551 /* ~"Then do not speak to her."~ */ EXTERN ~DKIINA~ 30
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #43557 /* ~"Your wish has been noted. We will speak to her anyway."~ */ EXTERN ~DKIINA~ 30
END

IF ~~ THEN BEGIN 137 // from:
  SAY #43560 /* ~"It..." Dak'kon's voice falters. "It is not my *will* that I do this."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #43561 /* ~"Dak'kon, that was an order and you are my slave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43562 /* ~"Do it, Dak'kon."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kiina_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-5)
~ EXTERN ~DKIINA~ 33
  IF ~~ THEN REPLY #43563 /* ~"Very well. But remember that she walks a fine line."~ */ EXTERN ~DKIINA~ 34
END

IF ~~ THEN BEGIN 138 // from:
  SAY #43564 /* ~Dak'kon's blade slashes her, and she falls bleeding to the ground. The blood boils on the edge of his blade, then steams away, leaving black stains upon its surface.~ */
  IF ~~ THEN REPLY #43565 /* ~"Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #43566 /* ~Dak'kon sighs. "Anarch of a hundred years, there is no hourglass that could measure the tale. The matter is as twisted as Fri'hi's roots and the resolution is near impossibility; it may never come. Judge me not too harshly."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 140 // from:
  SAY #43567 /* ~Dak'kon shifts nervously. "I cannot force him to tell anything. I earnestly desire that he should, yet... his life is his own to lead."~ */
  IF ~~ THEN REPLY #43568 /* ~"A group of githyanki are planning a raid on the fortress Vristigor within the sevenday. They are on their way there even now."~ */ DO ~SetGlobal("Vristigor","GLOBAL",2)
~ EXTERN ~DKIINA~ 37
  IF ~~ THEN REPLY #43569 /* ~"I will not tell."~ */ EXTERN ~DKIINA~ 40
END

IF ~~ THEN BEGIN 141 // from:
  SAY #43570 /* ~"It is not Zerthimon's words that lack conviction. It is their echoes that have been distorted."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 44
END

IF ~~ THEN BEGIN 142 // from:
  SAY #43571 /* ~"Your words speak not the mind of Zerthimon. They are shaped of angles and hate, as if molded from Gith's mind itself."~ */
  IF ~~ THEN EXTERN ~DKIINA~ 45
END

IF ~~ THEN BEGIN 143 // from:
  SAY #43572 /* ~As if sensing your intent, Dak'kon speaks to you without breaking the gaze he holds with Kii'na. "Hold fast, and do not stand in the way of our blades."~ */
  IF ~~ THEN REPLY #43573 /* ~"Dak'kon, I order you to stop this."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43574 /* ~"Let it go, Dak'kon."~ */ EXTERN ~DKIINA~ 48
  IF ~~ THEN REPLY #43575 /* ~Attack the *zerth* anyway.~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DKIINA~ 46
  IF ~~ THEN REPLY #43576 /* ~Let them fight.~ */ EXTERN ~DKIINA~ 47
END

IF ~~ THEN BEGIN 144 // from:
  SAY #43577 /* ~"Your mind is cast in Gith's mold, Kii'na."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #43578 /* ~"Let's go, Dak'kon."~ */ EXTERN ~DMORTE~ 466
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #43579 /* ~"Let's go, Dak'kon."~ */ EXTERN ~DKIINA~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY #43580 /* ~"Will you hear this human when he speaks?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 49
END

IF ~~ THEN BEGIN 146 // from:
  SAY #43581 /* ~"He travels with me, Kii'na, disciple of Zerthimon. He comes to you to hear the words of Zerthimon which you as a *zerth* must impart. Will you hear him?"~ */
  IF ~~ THEN EXTERN ~DKIINA~ 50
END

IF ~~ THEN BEGIN 147 // from:
  SAY #43582 /* ~"Will you close your mind to his words? *Know* your words before you speak your mind, Kii'na, *zerth* of Zerthimon." ~ */
  IF ~~ THEN EXTERN ~DKIINA~ 51
END

IF ~~ THEN BEGIN 148 // from:
  SAY #43583 /* ~"That is sufficient." Dak'kon turns to you, and speaks in your language. "She will teach you."~ */
  IF ~~ THEN DO ~SetGlobal("Kiina_Speak","GLOBAL",1)
~ EXTERN ~DKIINA~ 52
END

IF ~~ THEN BEGIN 149 // from:
  SAY #44651 /* ~"I would caution you against speaking to this githyanki."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44652 /* ~"What's a githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ JOURNAL #39453 /* ~Dak'kon has explained to me the difference between githyanki and githzerai. The two were once of one race, enslaved under the rule of the cruel mind flayers - or illithids, as he calls them - but when they broke free from the cruel yoke of their captors, the two camps chose to follow different leaders. There has been bad blood between them ever since.~ */ GOTO 150
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44653 /* ~"Why?"~ */ GOTO 151
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #44654 /* ~"Githyanki and githzerai were once of common stock. We were slaves and food for the *illithids* - mind flayers - who devoured our lives in order to succor their own. One of our ancestors, the warrior-queen Gith, led us to victory against the *illithids* and we escaped. We have waged unending war on the mind flayers ever since. However, there was disagreement over the future of our People. Upon the Blasted Plains, our leader, Zerthimon, made the Pronouncement of Two Skies, and steel was bared. One race became two. It is a rift that cannot be crossed peacefully."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #44655 /* ~"We're going to speak to him anyway."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #44656 /* ~"We're going to speak to him anyway."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 153
  IF ~~ THEN REPLY #44657 /* ~"We'll let it go, then. Let's go."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 151 // from: 149.1
  SAY #44658 /* ~"*Know* they are the sworn enemies of the People. If we share words, we shall bare steel."~ */
  IF ~~ THEN REPLY #44659 /* ~"We're going to speak to him anyway."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ GOTO 152
  IF ~~ THEN REPLY #44660 /* ~"We'll let it go, then. Let's go."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 48
END

IF ~~ THEN BEGIN 152 // from: 150.0 151.0
  SAY #44661 /* ~Dak'kon nods.~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 47
END

IF ~~ THEN BEGIN 153 // from: 150.1
  SAY #44662 /* ~Dak'kon nods.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 474
END

IF ~~ THEN BEGIN 154 // from:
  SAY #44663 /* ~Dak'kon also draws his blade. "Yi'minn. Your blood shall corrode the flagstones of the street."~ */
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44664 /* ~Stand between them: "Stop!" ~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44665 /* ~Stand between them: "Stop!" ~ */ GOTO 155
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44666 /* ~Attack the githyanki.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44667 /* ~Attack the githyanki.~ */ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #44668 /* ~Let them fight.~ */ DO ~SetGlobal("Shrakatlor","GLOBAL",1)
~ EXTERN ~DYI'MINN~ 49
  IF ~  Global("Shrakatlor","GLOBAL",1)
~ THEN REPLY #44669 /* ~Let them fight.~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 155 // from: 154.0 154.1
  SAY #44670 /* ~Dak'kon speaks to you, though he never takes his eyes off his opponent. "Hold fast and do not stand between our blades."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #44671 /* ~"Do not order me, Dak'kon, or I shall order you to kill yourself."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DYI'MINN~ 50
  IF ~~ THEN REPLY #44672 /* ~"Let it go, Dak'kon."~ */ GOTO 156
  IF ~~ THEN REPLY #44673 /* ~"Go ahead, then."~ */ EXTERN ~DYI'MINN~ 49
END

IF ~~ THEN BEGIN 156 // from: 155.1
  SAY #44674 /* ~Dak'kon speaks to the githyanki: "Yi'minn, this is not a place of battle."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 54
END

IF ~~ THEN BEGIN 157 // from:
  SAY #44675 /* ~"I *know* githyanki treachery. I shall be his shadow in this matter."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 57
END

IF ~~ THEN BEGIN 158 // from:
  SAY #44676 /* ~"Shadows cannot be killed unless their caster falls. Thus, I travel without fear."~ */
  IF ~~ THEN EXTERN ~DYI'MINN~ 58
END

IF ~~ THEN BEGIN 159 // from:
  SAY #44692 /* ~Dak'kon's blade appears in his hand. "You shall visit your ancestors this day, githyanki."~ */
  IF ~~ THEN REPLY #44693 /* ~"Stop this!"~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 9
  IF ~~ THEN REPLY #44694 /* ~Let them fight.~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ EXTERN ~DGITHSOL~ 10
END

IF ~~ THEN BEGIN 160 // from:
  SAY #45362 /* ~"This one is numbered among the faithful." He bows. "It is my will that you *know* this human travels with me. Will you hear him?"~ */
  IF ~  GlobalLT("Vristigor","GLOBAL",2)
~ THEN REPLY #45363 /* ~"I simply had a few questions..."~ */ EXTERN ~DHAILCII~ 28
  IF ~  Global("Vristigor","GLOBAL",2)
~ THEN REPLY #45364 /* ~"I simply had a few questions..."~ */ EXTERN ~DHAILCII~ 44
END

IF ~~ THEN BEGIN 161 // from:
  SAY #45365 /* ~"Your question flies true. It is my will that you *know* we walk the same path. Will you hear him?"~ */
  IF ~~ THEN EXTERN ~DHAILCII~ 29
END

IF ~~ THEN BEGIN 162 // from:
  SAY #45366 /* ~"It is a sign of honor to ask about one's scars - it shows respect for your history."~ */
  IF ~~ THEN REPLY #45367 /* ~"I do not recall how I earned most of them."~ */ EXTERN ~DHAILCII~ 33
  IF ~~ THEN REPLY #45368 /* ~"They have come from so many battles that the tale would be too long in the telling."~ */ EXTERN ~DHAILCII~ 36
  IF ~~ THEN REPLY #45369 /* ~"They're just scars. I had some other questions..."~ */ EXTERN ~DHAILCII~ 34
END

IF ~~ THEN BEGIN 163 // from:
  SAY #45730 /* ~Dak'kon's lips grow ever thinner, but he makes no response.~ */
  IF ~~ THEN REPLY #45731 /* ~"Leave it off, Morte. I need to ask some questions here."~ */ EXTERN ~DGILTSP~ 4
  IF ~~ THEN REPLY #45733 /* ~"Let's just leave, shall we?"~ */ EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #50168 /* ~"It says that it is a dabus."~ */
  IF ~~ THEN REPLY #50169 /* ~"Can you ask it some more questions?"~ */ GOTO 165
  IF ~~ THEN REPLY #50211 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 165 // from: 164.0 166.0
  SAY #50170 /* ~Dak'kon nods.~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50171 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50172 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50173 /* ~"Ask him who he is."~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50182 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50196 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50201 /* ~"Ask him what he's doing."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50206 /* ~"Ask him to tell us about the Lady of Pain."~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50207 /* ~"Ask him to tell us about Fell."~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50210 /* ~"Never mind. Let's just leave."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #50189 /* ~"It says that it is attending to its duties."~ */
  IF ~~ THEN REPLY #50190 /* ~"Can you ask it some more questions?"~ */ GOTO 165
  IF ~~ THEN REPLY #50191 /* ~"That's all I wanted to know. Farewell."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 167 // from:
  SAY #50706 /* ~Dak'kon is silent, then his words come out like a blade. "It is not my *will* to be this woman's slave."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #50707 /* ~"You don't have much of a choice in the matter, do you, slave? Will you buy him, Vrischika?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50708 /* ~"That's too bad, Dak'kon. Will you buy him, Vrischika?"~ */ EXTERN ~DVRISCH~ 47
  IF ~~ THEN REPLY #50709 /* ~"Then you won't be. I had another question, Vrischika..."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50710 /* ~"All right... let's just go, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 168 // from:
  SAY #50711 /* ~"Never did I think..." His coal-black eyes examine your face for a moment, then drop to the floor as he shakes his head. "It is a cruel path my hasty words have led me down. My path... Dak'kon's path..." He turns away from you in silence.~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 56
END

IF ~~ THEN BEGIN 169 // from:
  SAY #52538 /* ~"Only if what lies on the other path carries greater pain."~ */
  IF ~~ THEN REPLY #52539 /* ~"Ravel... this is very important; do you have any idea why I asked you to do it?"~ */ EXTERN ~DRAVEL~ 109
END

IF ~~ THEN BEGIN 170 // from:
  SAY #52540 /* ~Dak'kon is silent, but his blade *shifts* at Ravel's words... the blade darkens, the edge sharpening until the *karach* itself seems to carry a horrible malevolence about it. ~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52541 /* ~"Watch your words, Ravel..."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ EXTERN ~DRAVEL~ 33
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52542 /* ~"Watch your words, Ravel..."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ EXTERN ~DRAVEL~ 34
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52543 /* ~"Watch your words, Ravel..."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52544 /* ~"Watch your words, Ravel..."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52545 /* ~"Watch your words, Ravel..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52546 /* ~"Watch your words, Ravel..."~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 171 // from:
  SAY #52547 /* ~Dak'kon's blade bleeds into a vicious dead black, mirroring his eyes... and to your surprise, the *karach* edge silently splits into jagged fangs.~ */
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #52548 /* ~"Ravel... leave him be. *I* will answer your questions, not them."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ EXTERN ~DRAVEL~ 63
  IF ~  !NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #52549 /* ~"Ravel... leave him be. *I* will answer your questions, not them."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52550 /* ~"Ravel... leave him be. *I* will answer your questions, not them."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52551 /* ~"Ravel... leave him be. *I* will answer your questions, not them."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52552 /* ~"Ravel... leave him be. *I* will answer your questions, not them."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52553 /* ~"Ravel... leave him be. *I* will answer your questions, not them."~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 172 // from:
  SAY #53990 /* ~"Your path is mine."~ */
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53991 /* ~"Morte? You ready?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53992 /* ~"Morte? You ready?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #53993 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53994 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53995 /* ~"All right then... let's see what's on the other side of this portal."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #53997 /* ~Dak'kon looks broken - he looks like every part of him wants to rebel, but he nods. "Your path is mine..." His features seem to collapse into themselves. "I follow you only so I might die."~ */
  IF ~  NearbyDialog("DMorte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53999 /* ~"That's all I ask... you may get your wish soon enough. Morte?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  NearbyDialog("DMorte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54000 /* ~"That's all I ask... you may get your wish soon enough. Morte?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54001 /* ~"You may get your wish soon enough. All right then, let's see what's on the other side of this portal..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54002 /* ~"You may get your wish soon enough. All right then, let's see what's on the other side of this portal..."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("Dmorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54003 /* ~"You may get your wish soon enough. All right then, let's see what's on the other side of this portal..."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #54004 /* ~It's so subtle, you almost miss it - Dak'kon's blade flickers, the edge dulling. As you glance at him, his hands drop to his sides, as if he is preparing for battle.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 540
END

IF ~~ THEN BEGIN 175 // from:
  SAY #54007 /* ~"*Know* that I have walked your path many times." Dak'kon speaks slowly, as if measuring each word; his blade has become a misty gray, as if Dak'kon's mind has drifted. "A portion of your path is *known* to me. Five walked the path to the Fortress. Each died their own death."~ */
  IF ~~ THEN REPLY #54008 /* ~"But... who were they? How did they die?"~ */ GOTO 176
END

IF ~~ THEN BEGIN 176 // from: 175.0
  SAY #54009 /* ~"I died the death of faith. The skull died the death of courage. The woman died the death of grief. The blind archer died the final and most merciful death, the death of the body. You... you died the death of memory." ~ */
  IF ~~ THEN REPLY #54010 /* ~"But... who were these people?"~ */ EXTERN ~DMORTE~ 566
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54011 /* ~"He was one who *knew* his targets without seeing them. Many shadows fell beneath his rain of arrows."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 567
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54012 /* ~"There was darkness there, and every shadow was Shra'kt'lor." Dak'kon's voice is a whisper, and his dead black eyes seem to be staring at something just beyond you. "They are tormented creatures. The wounds in your spirit are *known* to them. They will attack you through them."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 568
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54013 /* ~"The shadows *suffer.* They *know* of torment. They *know* how to torture you with that which has wounded your heart. When you face them, *know* that you face that which has killed you once."~ */
  IF ~~ THEN REPLY #54014 /* ~"Dak'kon... Morte, you, and I survived. What happened to the archer and Deionarra?"~ */ GOTO 180
END

IF ~~ THEN BEGIN 180 // from: 179.0
  SAY #54015 /* ~"The archer died the death of the body. The woman died the death of the spirit. I could not save the woman because it was not your WILL that she be saved. Her grave was dry of tears. No one *knew* to mourn her passing."~ */
  IF ~~ THEN REPLY #54016 /* ~"But... why did I not want her saved?"~ */ GOTO 181
END

IF ~~ THEN BEGIN 181 // from: 180.0
  SAY #54018 /* ~"Your will was *known* only to you."~ */
  IF ~  InParty("Morte")
~ THEN REPLY #54019 /* ~"All right; look, you two: I need to know all you can tell me about this Fortress..."~ */ EXTERN ~DMORTE~ 569
  IF ~  !InParty("Morte")
~ THEN REPLY #54020 /* ~"All right; look, you two: I need to know all you can tell me about this Fortress..."~ */ EXTERN ~DMORTE~ 570
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54021 /* ~"Nothing lives there. The walls are darkness."~ */
  IF ~~ THEN REPLY #54022 /* ~"All right - before I step through this portal - is there ANYTHING ELSE you feel like sharing that you think might HELP me?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",2)
~ EXTERN ~DMORTE~ 553
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54084 /* ~Dak'kon, staring into the distance, speaks quietly: "It is like cupping water in one's hands."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 519
END

IF ~~ THEN BEGIN 184 // from:
  SAY #54085 /* ~Dak'kon speaks quietly to you: "The Pillar of Skulls is a pillar of living heads, composed of those who lied *knowing* their deception would lead to another's death. It can answer a number of questions as it knows a great deal, but it expects a great deal of payment for its services. One should not ask it such questions."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 185 // from:
  SAY #54773 /* ~"The chains do not hold him. Belief chains him."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Deva, I had questions for you..."~ */ EXTERN ~DTRIAS~ 8
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #54774 /* ~"Deva, I had questions for you..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 186 // from:
  SAY #57128 /* ~"He is a true traitor to the githzerai. He has cursed our people." Dak'kon draws his blade. "That is reason enough for him to die."~ */
  IF ~~ THEN REPLY #57129 /* ~"Put the blade away, Dak'kon."~ */ EXTERN ~DBURGHER~ 2
  IF ~~ THEN REPLY #57130 /* ~"Then kill him."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 3
END

IF ~~ THEN BEGIN 187 // from:
  SAY #57131 /* ~"You cannot trust this one. Let him perish here, under the cart."~ */
  IF ~~ THEN REPLY #57132 /* ~"No, Dak'kon, we're pulling him out."~ */ EXTERN ~DBURGHER~ 5
  IF ~~ THEN REPLY #57133 /* ~"All right. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from:
  SAY #57134 /* ~"He is a true traitor to the githzerai. He has cursed our people." Dak'kon draws his blade. "That is reason enough for him to die."~ */
  IF ~~ THEN REPLY #57135 /* ~"Put the blade away, Dak'kon."~ */ EXTERN ~DBURGHER~ 13
  IF ~~ THEN REPLY #57136 /* ~"Then kill him."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_1","GLOBALGood",-1)
~ EXTERN ~DBURGHER~ 14
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57137 /* ~"You cannot trust this one. Let him perish here, under the cart."~ */
  IF ~~ THEN REPLY #57138 /* ~"No, Dak'kon, we're pulling him out."~ */ EXTERN ~DBURGHER~ 16
  IF ~~ THEN REPLY #57139 /* ~"All right. Let's go."~ */ EXTERN ~DBURGHER~ 17
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",14)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 190 // from:
  SAY #59167 /* ~Dak'kon turns to you, his eyes like polished coal. His blade is shimmering, the metal swimming like oil film on a pond. When Dak'kon speaks, his voice is level and strong... there is none of the scratchiness you heard before. "What is your will?"~ [DAK205] */
  IF ~~ THEN REPLY #59168 /* ~"There are things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59169 /* ~"Nothing at the moment, Dak'kon. Let's move on."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
GlobalLT("BD_DAKKON_MORALE","GLOBAL",15)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 191 // from:
  SAY #59170 /* ~Dak'kon turns to you, his eyes like polished coal; his blade mirrors his eyes for a moment as you address him, then he nods. "What is your will?"~ [DAK205] */
  IF ~~ THEN REPLY #59171 /* ~"There are things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59172 /* ~"Nothing at the moment, Dak'kon. Let's move on."~ */ EXIT
END

IF ~  GlobalGT("Dakkon","GLOBAL",0)
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
!GlobalGT("Fortress_Dakkon","GLOBAL",2)
~ THEN BEGIN 192 // from:
  SAY #59173 /* ~Dak'kon turns slowly, his eyes like two dead, black stones. His face is ashen, and his blade is the color of dried blood. When he speaks, he sounds *old*... and broken. "What is your will?"~ [DAK205] */
  IF ~~ THEN REPLY #59174 /* ~"There are things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59175 /* ~"Nothing at the moment, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.0 191.0 192.0 194.1 195.1 196.1 197.2 198.2 199.2 200.1 201.2 202.1 203.7 204.3 205.2 206.1 207.2 208.0 209.1 210.1 211.1 212.1 213.1 214.1 215.1 216.3 217.5 218.1 219.1 220.1 221.1 222.2 223.1 224.2 225.1 226.1 227.1 228.1 230.1 231.4 232.5 233.1 234.1 235.0 236.3 237.3 238.3 239.3 240.3 241.3 242.3 243.3 244.2 245.2 246.2 247.2 248.2 250.1 251.4 252.3 253.2 254.3 255.4 256.2 258.1 259.1 260.1 261.1 262.1 268.2 269.0 270.6 271.3 272.3 273.4 274.3 275.3 278.3 279.3 281.2 282.3 285.2 287.0 289.0 290.1 291.2 292.1 293.0 294.14 295.0 296.0 298.0 318.7 319.2 320.1 322.0 323.2 324.1 328.2 329.5 330.3 331.3 332.5 333.6 334.7 335.7 337.6 338.3 339.4 340.3 341.3 343.1 351.1 352.1 353.1 356.1 363.0
  SAY #59176 /* ~"I will hear you."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59177 /* ~"Your features are... unfamiliar to me. What are you?"~ */ GOTO 194
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59178 /* ~"I had some questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59179 /* ~"I wanted to ask you about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~  !Range([ENEMY],64)
~ THEN REPLY #59180 /* ~"Can I talk to you about your teachings?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~  Range([ENEMY],64)
~ THEN REPLY #68257 /* ~"Can I talk to you about your teachings?"~ */ GOTO 366
  IF ~  GlobalGT("Ravel_Dakkon","GLOBAL",0)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59181 /* ~"Dak'kon... Ravel called you a slave. What did she mean?"~ */ GOTO 352
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #59182 /* ~"Dak'kon, what is 'Shra'kt'lor'?"~ */ GOTO 260
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59183 /* ~"Dak'kon, tell me again of how I saved you at Shra'kt'lor."~ */ GOTO 223
  IF ~  GlobalGT("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #59184 /* ~"You said *I* gave you the Circle of Zerthimon, Dak'kon?"~ */ GOTO 226
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59185 /* ~"Tell me about that other 'me'... the incarnation you knew. What was he like?"~ */ GOTO 210
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59186 /* ~"How did you come to be in my debt, Dak'kon?"~ */ GOTO 217
  IF ~~ THEN REPLY #59187 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #59188 /* ~"A githzerai."~ */
  IF ~~ THEN REPLY #59189 /* ~"A githzerai?"~ */ GOTO 195
  IF ~~ THEN REPLY #59190 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59191 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 195 // from: 194.0 255.0
  SAY #59192 /* ~"A githzerai is one of the People."~ */
  IF ~~ THEN REPLY #59193 /* ~"One of the people?"~ */ GOTO 196
  IF ~~ THEN REPLY #59194 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59195 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #59196 /* ~"A githzerai."~ */
  IF ~~ THEN REPLY #59197 /* ~"Yes, but what are the githzerai, exactly?"~ */ GOTO 197
  IF ~~ THEN REPLY #59198 /* ~"All... right then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59199 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #59200 /* ~Dak'kon is silent for a moment, then speaks. "Our history does not need to be made *known* to you. We would bleed to death on time's blade before I recited a fraction of the histories of our People."~ */
  IF ~~ THEN REPLY #59201 /* ~"I don't need to know your histories... but I would know of your people as they are now."~ */ DO ~SetGlobal("Dakkon_Githzerai","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 198
  IF ~~ THEN REPLY #59202 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59203 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59204 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 198 // from: 197.0 231.0 255.1
  SAY #59205 /* ~Dak'kon is silent for a moment. "*Know* this and accept it as an answer: We are the People who make our home upon the shifting plane of Limbo." With a deft motion, Dak'kon slips the blade from his back and holds it before him.~ */
  IF ~~ THEN REPLY #59206 /* ~Wait, see what happens.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
~ GOTO 199
  IF ~~ THEN REPLY #59207 /* ~"Never mind. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59208 /* ~"Actually, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59209 /* ~"All right, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #59210 /* ~"There, we mold the matter of Limbo with our minds. We forge cities with our thoughts." As you watch, a series of rippling waves of metal begins to roll forth from the center of the blade. The pitch and crest of the waves match the inflections in Dak'kon's voice. "In its chaos we dwell, with only our *knowing* to preserve us. We are the githzerai."~ */
  IF ~~ THEN REPLY #59211 /* ~"What is that blade you have... it moved, shifted in response to your voice."~ */ GOTO 251
  IF ~~ THEN REPLY #59212 /* ~"Never mind. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59213 /* ~"Understood. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59214 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from: 232.0
  SAY #59215 /* ~"It is *known* by the name 'Sigil.' Among the People, it is *known* as the city that does not *know* itself."~ */
  IF ~~ THEN REPLY #59216 /* ~"It doesn't know itself? What do you mean?"~ */ GOTO 201
  IF ~~ THEN REPLY #59217 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59218 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #59219 /* ~"The city exists, but it does not *know* itself. In not *knowing* itself, its existence is flawed." ~ */
  IF ~~ THEN REPLY #59220 /* ~"How is it flawed?"~ */ GOTO 203
  IF ~~ THEN REPLY #59221 /* ~"You speak as if the city is alive."~ */ GOTO 202
  IF ~~ THEN REPLY #59222 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59223 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 202 // from: 201.1 203.6
  SAY #59224 /* ~"It may not be aware and *know* itself in the sense that you or I might *know* ourselves, but it lives. It grows, changes, and touches the minds of all that live within it."~ */
  IF ~~ THEN REPLY #59225 /* ~"Why did you say the city does not know itself?"~ */ GOTO 203
  IF ~~ THEN REPLY #59226 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59227 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 203 // from: 201.0 202.0 236.1 237.1 238.1 239.1 240.1 241.1 242.1 243.1 244.0
  SAY #59228 /* ~"The city exists in opposition to itself. It has set itself apart from the planes, yet it seeks to be everywhere at once. Its walls are doors, yet it keeps these doors locked. Such an existence tells of a thing that does not *know* itself. In not *knowing* itself, it is flawed."~ */
  IF ~~ THEN REPLY #59229 /* ~"When you say this city is everywhere at once, what do you mean?"~ */ GOTO 236
  IF ~~ THEN REPLY #59230 /* ~"Its walls are doors?"~ */ GOTO 236
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59231 /* ~Truth: "What if the city is *not* flawed? A thing does not need to be ordered and have a purpose to know itself. What if these contradictions are strengths that you cannot see?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59232 /* ~Truth: "What if the city is *not* flawed? A thing does not need to be ordered and have a purpose to know itself. What if these contradictions are strengths that you cannot see?" ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Dakkon_1","GLOBALLaw",-1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59233 /* ~Truth: "What if the city is *not* flawed, and you just do not know the reasons for its contradictions? There is order in everything. Perhaps there is an underlying pattern that you cannot perceive."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59234 /* ~Truth: "What if the city is *not* flawed, and you just do not know the reasons for its contradictions? There is order in everything. Perhaps there is an underlying pattern that you cannot perceive."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_1","GLOBALLaw",1)
~ GOTO 204
  IF ~~ THEN REPLY #59235 /* ~"You speak as if the city is alive."~ */ GOTO 202
  IF ~~ THEN REPLY #59236 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59237 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 204 // from: 203.2 203.3 203.4 203.5
  SAY #59238 /* ~"To your question, a question: What if the city is flawed, and you see its contradictions all around you?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #59239 /* ~Truth: "To *your* question, a question: You claim this city's existence is flawed. You have accepted this rather than explore the possibility that something greater may exist. That suggests you are flawed... and that you do not search for knowledge, but only for a convenient answer."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #59240 /* ~Truth: "To *your* question, a question: You claim this city's existence is flawed. You have accepted this rather than explore the possibility that something greater may exist. That suggests you are flawed... and that you do not search for knowledge, but only for a convenient answer."~ */ GOTO 205
  IF ~~ THEN REPLY #59241 /* ~"When you said the city was everywhere at once, what did you mean?"~ */ GOTO 236
  IF ~~ THEN REPLY #59242 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59243 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 205 // from: 204.0 204.1
  SAY #59244 /* ~Dak'kon falls silent. "There is no *knowing* the answer to the questions we have asked. Yet the city exists. That is all."~ */
  IF ~  Global("Dakkon_Word","GLOBAL",0)
~ THEN REPLY #59245 /* ~"Yet I would maintain that we *know* ourselves by the questions we ask and the ones we do not. If we cease asking questions and accept only what we can perceive..."~ */ DO ~SetGlobal("Dakkon_Word","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 206
  IF ~  Global("Dakkon_Word","GLOBAL",1)
~ THEN REPLY #59246 /* ~"Yet I would maintain that we *know* ourselves by the questions we ask and the ones we do not. If we cease asking questions and accept only what we can perceive..."~ */ GOTO 206
  IF ~~ THEN REPLY #59247 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59248 /* ~"Never mind, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 205.0 205.1
  SAY #59249 /* ~"Then we will cease to *know* ourselves." Dak'kon's voice has changed slightly, become heavier. "Such words have been spoken before. I have heard them and *know* them."~ */
  IF ~~ THEN REPLY #59250 /* ~"Where have you heard them?"~ */ GOTO 207
  IF ~~ THEN REPLY #59251 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59252 /* ~"Never mind. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 206.0
  SAY #59253 /* ~"The words are mine. Once, I *knew* them and *knew* their meaning. I had forgotten them until you spoke." Dak'kon's gaze travels through you, and his blade stops shimmering, bleeding of all color until it is translucent. ~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59254 /* ~"Dak'kon, how is it I know your words?"~ */ GOTO 208
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59255 /* ~"Dak'kon, did I hear those words from you when I traveled with you?"~ */ GOTO 209
  IF ~~ THEN REPLY #59256 /* ~"I... see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59257 /* ~"Never mind. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.0
  SAY #59258 /* ~"I spoke the words, but they do not belong to me. Others may *know* them, for the *knowing* of it lies within all things. Humans call it *wisdom.*"~ */
  IF ~~ THEN REPLY #59259 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59260 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 207.1
  SAY #59261 /* ~"Many were the times we discussed the meaning of such words. Once, when the weight of years was not so heavy as it is now. Much have I forgotten walking this path."~ */
  IF ~~ THEN REPLY #59262 /* ~"Dak'kon, what was I... that other me... like?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 210
  IF ~~ THEN REPLY #59263 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59264 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 193.9 209.0
  SAY #59265 /* ~Dak'kon's gaze travels through you, and he falls silent.~ */
  IF ~~ THEN REPLY #59266 /* ~"Dak'kon?"~ */ JOURNAL #59269 /* ~Dak'kon said he knew one of my previous incarnations... and he didn't have many pleasant things to say about him. He called him capable, but self-centered and treacherous in his actions. I'm beginning to wonder how much damage my other selves have done across the planes.~ */ GOTO 211
  IF ~~ THEN REPLY #59267 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59268 /* ~"Maybe it's best not to speak of it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59270 /* ~"*Know* that he was different. *Know* that the differences were not marked on the skin, nor in the Way of the weapon, nor in the attire that cloaked him. *Know* that he was different in the way of thought and the means he acted upon his thoughts. His WILL became substance. *Know* that he saw others and did NOT see them. He *knew* only how they could serve him. His heart was treacherous, and it was cold, and never did its coldness burn him."~ */
  IF ~~ THEN REPLY #59271 /* ~"Did it ever touch you, Dak'kon? Did he betray you?"~ */ GOTO 212
  IF ~~ THEN REPLY #59272 /* ~"I... see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59273 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0
  SAY #59274 /* ~Dak'kon's blade begins bleeding into a dull, flat black, and you watch as edges, like teeth, begin sprouting from the edge of the blade. His face clenches, and he speaks through his teeth. "It is not my *will* you *know* of this."~ */
  IF ~~ THEN REPLY #59275 /* ~"*Tell* me, Dak'kon. Did he ever *betray* you?"~ */ GOTO 213
  IF ~~ THEN REPLY #59276 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59277 /* ~"We will speak no more of it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 212.0
  SAY #59278 /* ~"*Know* there were MANY treacheries. Any treachery upon me was by my hand. No other."~ */
  IF ~~ THEN REPLY #59279 /* ~"*Tell* me, Dak'kon. What was the treachery?"~ */ GOTO 214
  IF ~~ THEN REPLY #59280 /* ~"Never mind. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59281 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #59282 /* ~"I surrendered my WORD to him. I surrendered my SELF."~ */
  IF ~~ THEN REPLY #59283 /* ~"What are you talking about?"~ */ JOURNAL #59286 /* ~Dak'kon told me the nature of his slavery... when I saved his life, he promised to serve me until I died. But he wasn't aware that I was immortal; in so doing, he promised the remainder of his life to mine.~ */ GOTO 215
  IF ~~ THEN REPLY #59284 /* ~"Never mind. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59285 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 214.0 278.0 356.0
  SAY #59287 /* ~"The People do not allow themselves to be enslaved to another in deed or chains. If we find ourselves in such a cage, we ACT to free ourselves, even if it means we must endure another cage for a time. You performed a great service for me. In so doing, you enslaved me. I acted to free myself. *Know* that I surrendered my word and my self to *act* in your name until your death."~ */
  IF ~~ THEN REPLY #59288 /* ~"But... I can't die."~ */ GOTO 216
  IF ~~ THEN REPLY #59289 /* ~"I... see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59290 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59291 /* ~"That was not *known* to this one. I surrendered my *word* to him. I surrendered my *self.* *Know* that there is now nothing left that I may surrender except my life. *Know* now that I follow you only so I might die."~ */
  IF ~~ THEN REPLY #59292 /* ~"What was the service I gave you that... chained you?"~ */ GOTO 217
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59293 /* ~"Dak'kon, it doesn't have to be that way... I can release you. I no longer wish you to be a slave - consider the debt paid."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59294 /* ~"Dak'kon, it doesn't have to be that way... I can release you. I no longer wish you to be a slave - consider the debt paid."~ */ GOTO 233
  IF ~~ THEN REPLY #59295 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59296 /* ~"So this other me exacted a promise from you to serve him until he died, and you didn't know he was *immortal?* Excellent; let's move on... slave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59297 /* ~"So this other me exacted a promise from you to serve him until he died, and you didn't know he was *immortal?* Excellent; let's move on... slave."~ */ EXIT
  IF ~~ THEN REPLY #59298 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 193.10 216.0
  SAY #59299 /* ~"You saved this one's life. In exchange, your life became mine."~ */
  IF ~~ THEN REPLY #59300 /* ~"How did I save your life?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
~ GOTO 218
  IF ~  Global("Good_Dakkon_1","GLOBAL",0)
~ THEN REPLY #59301 /* ~"Dak'kon, it doesn't have to be that way... I can release you. I no longer wish you to be a slave - consider the debt paid."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_1","GLOBALGood",3)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ GOTO 233
  IF ~  Global("Good_Dakkon_1","GLOBAL",1)
~ THEN REPLY #59302 /* ~"Dak'kon, it doesn't have to be that way... I can release you. I no longer wish you to be a slave - consider the debt paid."~ */ GOTO 233
  IF ~  Global("Evil_Dakkon_3","GLOBAL",0)
~ THEN REPLY #59303 /* ~"So this other me exacted a promise from you to serve him until he died, and you didn't know he was *immortal?* Excellent; let's move on... slave."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_3","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ EXIT
  IF ~  Global("Evil_Dakkon_3","GLOBAL",1)
~ THEN REPLY #59304 /* ~"So this other me exacted a promise from you to serve him until he died, and you didn't know he was *immortal?* Excellent; let's move on... slave."~ */ EXIT
  IF ~~ THEN REPLY #59305 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59306 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0 262.0 331.0
  SAY #59307 /* ~"Upon the rolling Plane of Limbo, the People shape cities from the chaos with their thoughts. *Know* that there is no place for a divided mind." Dak'kon raises the blade from his shoulder and holds it before him. As he stares at it, it *sharpens* until it is almost as thin as a piece of paper.~ */
  IF ~~ THEN REPLY #59308 /* ~"Go on..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 219
  IF ~~ THEN REPLY #59309 /* ~"I think I've heard enough. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59310 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #59311 /* ~"A divided mind is an unfocused mind. A divided mind fractures walls and weakens stone." As Dak'kon speaks, the edges of the blade corrode slightly, the metal misting and melting along the edges. "Many divided minds may *destroy* a city."~ */
  IF ~~ THEN REPLY #59312 /* ~"I understand. Go on..."~ */ GOTO 220
  IF ~~ THEN REPLY #59313 /* ~"I've heard enough. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59315 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #59316 /* ~"Long have I *known* the words of Zerthimon. Through my voice, many have come to *know* the words of Zerthimon. The *zerth* protect the community from all threats, whether to the body or the mind. They are the guiding stones in the chaos. So it came to pass that I spoke the words of Zerthimon without *knowing* the words of Zerthimon. It came to pass that I no longer *knew* myself."~ */
  IF ~~ THEN REPLY #59318 /* ~"So... you doubted the words?"~ */ GOTO 221
  IF ~~ THEN REPLY #59319 /* ~"I've heard enough. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59320 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59322 /* ~"No." Dak'kon's voice is edged, and his blade *sharpens* in response. "I *knew* the words. Yet it came into my heart that perhaps others did not *know* the words as Zerthimon *knew* them. And so division formed. As my mind became as two, as my mind became divided, those that looked to me as a guiding stone became divided. Many scores of githzerai, many hundreds of scores of githzerai... doubted. Shra'kt'lor died that day."~ */
  IF ~~ THEN REPLY #59324 /* ~"So... those that followed you came to doubt the words as well, and the city was weakened."~ */ GOTO 222
  IF ~~ THEN REPLY #59325 /* ~"I've heard enough. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59326 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #59330 /* ~"The enemies of Zerthimon came. *Know* that their hatred of his words and the People lent their blades strength. *Know* that they sensed the weakened city, and they brought war with them. Many githzerai drowned in the chaos and beneath the blades of our enemies." Small beads of metal appear on the surface of the blade, as if it is blistering. "*Know* this happened long ago."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59332 /* ~"What happened to you?"~ */ GOTO 268
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59337 /* ~"What happened to you?"~ */ GOTO 223
  IF ~~ THEN REPLY #59342 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59344 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 193.7 222.1
  SAY #59347 /* ~"As I fell from the walls of Shra'kt'lor, *know* that my self was broken. My blade was mist, my mind divided. I was adrift upon Limbo's seas, and I wished to drown. I died for days, my mind awash in division, when death finally came to me. It wore your skin, and it had your voice."~ */
  IF ~~ THEN REPLY #59348 /* ~"Me?"~ */ GOTO 224
  IF ~~ THEN REPLY #59349 /* ~"I've heard enough. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59351 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59353 /* ~"You asked that I hear you."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 344
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59355 /* ~"What did I say?"~ */ GOTO 227
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59357 /* ~"Never mind. There are other things I would *know*..."~ */ GOTO 193
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59359 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 344.1 345.1 346.1 347.1 348.1 349.2 350.0
  SAY #59360 /* ~Dak'kon is silent. "I heard your words. The chaos in my mind became still. I *knew* myself again."~ */
  IF ~~ THEN REPLY #59361 /* ~"So you got the Circle from me?"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~It turns out *I* was the one who gave the Unbroken Circle of Zerthimon to Dak'kon. ~ */ GOTO 226
  IF ~~ THEN REPLY #59362 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59363 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 193.8 225.0 227.0
  SAY #59364 /* ~"Yes. In *knowing* its words, I *knew* myself."~ */
  IF ~  GlobalGT("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59365 /* ~"But *did* it save your life, Dak'kon? Or did it divide you further once you studied the Circle?"~ */ GOTO 228
  IF ~~ THEN REPLY #59366 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59367 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 224.1
  SAY #59368 /* ~"Dak'kon, *zerth* of Shra'kt'lor-Drowning, last wielder of the *karach* blade, *know* that I have come to you with the words of Zerthimon, carved not in chaos, but in stone, carved by the will in an Unbroken Circle. *Know* that they are true, and *know* that your divided mind need be divided no longer. All you must do is take the stone and you shall *know* yourself again."~ */
  IF ~~ THEN REPLY #59369 /* ~"So you got the Circle from *me?*"~ */ DO ~SetGlobal("Dakkon_Circle","GLOBAL",1)
~ JOURNAL #59372 /* ~It turns out *I* was the one who gave the Unbroken Circle of Zerthimon to Dak'kon. ~ */ GOTO 226
  IF ~~ THEN REPLY #59370 /* ~"I... see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59371 /* ~"That is all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 226.0
  SAY #59373 /* ~Dak'kon is silent for a moment, but his blade writhes, as if in pain. He is slow to speak again, and when he does, his voice is somber. "It divided me."~ */
  IF ~~ THEN REPLY #59374 /* ~"Then *did* I save your life, Dak'kon? Or did I only add to the pain you already felt? Those words... those words of Zerthimon's - they only seem to divide you more. I see it when you pour over the teachings."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 229
  IF ~~ THEN REPLY #59375 /* ~"That's what I thought. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59376 /* ~"We'll speak no more of this. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #59377 /* ~Dak'kon is silent.~ */
  IF ~~ THEN REPLY #59378 /* ~"I say that I NEVER saved you, Dak'kon... I only raised you from near-death so that you might die again. If you had died at Shra'kt'lor, then you would have known peace."~ */ GOTO 230
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #59379 /* ~"Your words carry the weight of truth. The death I would have died at Shra'kt'lor - that would have been the last death. Every day I have lived since is a new death."~ */
  IF ~~ THEN REPLY #59380 /* ~"You need serve me no more, Dak'kon. I never saved your life; I only killed you twice. You owe me nothing."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Dakkon_2","GLOBALGood",3)
~ GOTO 233
  IF ~~ THEN REPLY #59381 /* ~"Such is the way of things. There is other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59382 /* ~"We will speak of this later. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 193.1 197.1 198.1 199.1 245.1 246.1 247.1 248.1 250.0 251.3 252.2 253.1 254.2 255.3 256.1 270.5 271.2 272.2 273.3 274.2 275.2 278.2 279.2 281.1 282.2 285.1 343.0
  SAY #59383 /* ~Dak'kon waits.~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59384 /* ~"Can you tell me of the githzerai people again?"~ */ GOTO 198
  IF ~~ THEN REPLY #59385 /* ~"You seem to place a special emphasis on 'knowing.' Why?"~ */ GOTO 245
  IF ~~ THEN REPLY #59386 /* ~"What is that blade you have?"~ */ GOTO 251
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59387 /* ~"I had some questions about githzerai language..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59388 /* ~"I had some other questions instead..."~ */ GOTO 193
  IF ~~ THEN REPLY #59389 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 193.2 236.2 237.2 238.2 239.2 240.2 241.2 242.2 243.2 244.1 258.0 259.0 328.1
  SAY #59390 /* ~Dak'kon waits.~ */
  IF ~~ THEN REPLY #59391 /* ~"What can you tell me about the city of Sigil?"~ */ GOTO 200
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #59392 /* ~"Do you know of a man named Pharod?"~ */ GOTO 258
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #59393 /* ~"I've lost a journal. Do you know where it might be?"~ */ GOTO 259
  IF ~  GlobalGT("Fell_Dakkon_Truth","GLOBAL",0)
~ THEN REPLY #59394 /* ~"When Fell was describing the tattoo on my arm, you said you knew the symbols."~ */ GOTO 328
  IF ~  GlobalGT("Dakkon_Old_Companions","GLOBAL",0)
~ THEN REPLY #59395 /* ~"You said that I once traveled with four others. Who were these others?"~ */ GOTO 329
  IF ~~ THEN REPLY #59396 /* ~"I had some other questions instead..."~ */ GOTO 193
  IF ~~ THEN REPLY #59397 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 233 // from: 216.1 216.2 217.1 217.2 230.0
  SAY #59398 /* ~"No..." Dak'kon's forehead creases in pain, and his eyes stare through you. "It is not your word that carries the weight, and your word will not free me. The word that chains me is mine. The torment is mine. I *know* in my heart that the chains remain. Words will not free them."~ */
  IF ~~ THEN REPLY #59399 /* ~"Is there any way you can be freed?"~ */ GOTO 234
  IF ~~ THEN REPLY #59400 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59403 /* ~"We'll speak of this another time - this matter is not closed. Let's move on."~ */ JOURNAL #59404 /* ~Dak'kon says the only way he can be freed from slavery is for me to die a final death. I'm not sure how I would even bring such a thing about.~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #59406 /* ~"You must die a final death. Yet your path is not death's path. There is *no* resolution to this matter."~ */
  IF ~~ THEN REPLY #59409 /* ~Vow: "I swear I will find one, Dak'kon. I will find one that sets you free."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Dakkon_2","GLOBALLaw",3)
~ JOURNAL #59416 /* ~I swore to Dak'kon I would find a way to free him from his servitude. Rather than bolster his spirit, the vow seemed to crush him more.~ */ GOTO 235
  IF ~~ THEN REPLY #59412 /* ~"I... see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59414 /* ~"We'll speak of this another time - this matter is not closed. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #59425 /* ~Dak'kon's voice becomes ragged, as if he has suddenly become sick. "*Know* you have added other words to my words." His expression is pained, and his gaze meets yours. "Now you have chained us both."~ */
  IF ~~ THEN REPLY #59426 /* ~"I... see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59428 /* ~"We'll speak of this another time - this matter is not closed. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 203.0 203.1 204.2
  SAY #59430 /* ~"The city itself is built from doors. These doors lead everywhere."~ */
  IF ~~ THEN REPLY #59432 /* ~"Where are these doors?"~ */ GOTO 237
  IF ~~ THEN REPLY #59433 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59435 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59437 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59439 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #59442 /* ~"They are everywhere within the city..." Dak'kon falls silent for a moment. "It is said that every bounded space within the City-known-as-Sigil is a door that leads elsewhere."~ */
  IF ~~ THEN REPLY #59445 /* ~"I don't understand."~ */ GOTO 238
  IF ~~ THEN REPLY #59447 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59450 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59452 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59455 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from: 237.0
  SAY #59456 /* ~"Imagine the door to a home. Remove the door. The frame remains. The space within the frame is still a door."~ */
  IF ~~ THEN REPLY #59457 /* ~"But it's just... an open space."~ */ GOTO 239
  IF ~~ THEN REPLY #59459 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59463 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59465 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #59466 /* ~"Many are the doors you never see. You may pass through them as if air and not *know* them for what they are. They are closed to your sight and touch."~ */
  IF ~~ THEN REPLY #59467 /* ~"And these invisible doors are *everywhere* in Sigil?"~ */ GOTO 240
  IF ~~ THEN REPLY #59469 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59470 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59472 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59474 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #59475 /* ~"It is said every bounded space in the City-known-as-Sigil is a door. It is not *known* for certain. Doors move. Doors change. Doors disappear. All are locked."~ */
  IF ~~ THEN REPLY #59476 /* ~"Locked?"~ */ GOTO 241
  IF ~~ THEN REPLY #59477 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59478 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59479 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59480 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #59481 /* ~"The doors remain as air until you have the key that opens them. When you have the key, the doors will make themselves *known* to you."~ */
  IF ~~ THEN REPLY #59482 /* ~"How do you know what the key is?"~ */ GOTO 242
  IF ~~ THEN REPLY #59483 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59484 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59487 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59488 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 242 // from: 241.0
  SAY #59489 /* ~"Every door has a different key. Some keys are *known,* others are not *known.*"~ */
  IF ~~ THEN REPLY #59491 /* ~"What are these keys?"~ */ GOTO 243
  IF ~~ THEN REPLY #59492 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59494 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59495 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59497 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 243 // from: 242.0
  SAY #59498 /* ~"There are as many keys as there are doors. The keys are not always things of metal. The keys can be the clashing of two swords, a drop of blood drawn from the tongue of a dying man, the memory of a past love, or an angry curse hurled at the sky. When the key and door match, the door reveals itself."~ */
  IF ~~ THEN REPLY #59500 /* ~"Sounds like finding all these keys and doors can be difficult."~ */ GOTO 244
  IF ~~ THEN REPLY #59501 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59503 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59504 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59506 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 244 // from: 243.0
  SAY #59507 /* ~"Such a task has been attempted but never finished. As the city changes, the doors change. Nothing *known* remains *known* for long."~ */
  IF ~~ THEN REPLY #59508 /* ~"Why did you say the city is flawed again?"~ */ GOTO 203
  IF ~~ THEN REPLY #59509 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59510 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59511 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 245 // from: 231.1
  SAY #59512 /* ~"All things, whether structure or flesh - their existence is defined by their *knowing* of themselves."~ */
  IF ~~ THEN REPLY #59513 /* ~"And if a man does not know himself?"~ */ GOTO 246
  IF ~~ THEN REPLY #59514 /* ~"I see. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59517 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59518 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 246 // from: 245.0
  SAY #59520 /* ~"When a mind does not *know* itself, it is flawed. When a mind is flawed, the man is flawed. When a man is flawed, that which he touches is flawed." Dak'kon pauses. "It is said that what a flawed man sees, his hands make broken."~ */
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
~ THEN REPLY #59521 /* ~"Do you know yourself?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 247
  IF ~~ THEN REPLY #59522 /* ~"I see. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59523 /* ~"There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59524 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 247 // from: 246.0
  SAY #59525 /* ~Dak'kon falls silent. His coal black eyes take on the same distance that you noticed when you first met him. ~ */
  IF ~~ THEN REPLY #59528 /* ~"I ask again: Do you know yourself?"~ */ GOTO 248
  IF ~~ THEN REPLY #59529 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59531 /* ~"Never mind. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59532 /* ~"We'll speak of this some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 248 // from: 247.0
  SAY #59534 /* ~When Dak'kon speaks again, his voice has changed; his words echo, like a great stone dropped into a chasm. It looks like he is forcing the words from his chest. "It is not my *will* that you *know* this."~ */
  IF ~~ THEN REPLY #59535 /* ~"Perhaps I was being too kind phrasing it as a question: Tell me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Dakkon_2","GLOBALGood",-1)
~ GOTO 249
  IF ~~ THEN REPLY #59536 /* ~"All right. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59538 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59539 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #59541 /* ~The words come out of Dak'kon slowly, as if they are being carried one by one. "It... has come to pass that I do not *know* myself."~ */
  IF ~~ THEN REPLY #59543 /* ~"Why?"~ */ GOTO 250
END

IF ~~ THEN BEGIN 250 // from: 249.0
  SAY #59545 /* ~Dak'kon's voice drops to a whisper, like sand. "I do not *know* why. I *know* it has happened, but I *know* not the how, nor the when... nor how to *know* myself once more."~ */
  IF ~~ THEN REPLY #59546 /* ~"I see... I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59548 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59550 /* ~"We will speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 199.0 231.2
  SAY #59551 /* ~"It is a *karach* blade. It is an object that lets others *know* the rank of the wielder."~ */
  IF ~~ THEN REPLY #59552 /* ~"*Karach?* What does that mean?"~ */ GOTO 254
  IF ~~ THEN REPLY #59554 /* ~"It's made out of a strange metal... it's almost hypnotic the way it shifts back and forth."~ */ GOTO 254
  IF ~~ THEN REPLY #59555 /* ~"What rank does it signify?"~ */ GOTO 252
  IF ~~ THEN REPLY #59556 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59557 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59559 /* ~"Let's speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 251.2 256.0
  SAY #59561 /* ~"The blade is a symbol carried by the *zerth.* A *zerth* is one who *knows* the words of Zerthimon. In *knowing* the words of Zerthimon, they *know* themselves."~ */
  IF ~~ THEN REPLY #59563 /* ~"Zerthimon?"~ */ GOTO 253
  IF ~~ THEN REPLY #59564 /* ~"What is that blade made of again?"~ */ GOTO 254
  IF ~~ THEN REPLY #59565 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59566 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59567 /* ~"Let's speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #59569 /* ~"Zerthimon founded our race. He *knew* the githzerai before they *knew* themselves. He defined the People. He gave them one mind."~ */
  IF ~~ THEN REPLY #59570 /* ~"What is that blade made of again?"~ */ GOTO 254
  IF ~~ THEN REPLY #59571 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59572 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59573 /* ~"Let's speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 251.0 251.1 252.1 253.0
  SAY #59575 /* ~Dak'kon falls silent for a moment, as if searching for the correct words. "In your tongue, the closest translation is 'chaos matter.' The People may shape it with their thoughts."~ */
  IF ~~ THEN REPLY #59576 /* ~"'The People'?"~ */ GOTO 255
  IF ~~ THEN REPLY #59577 /* ~"Shape it with their thoughts?"~ */ GOTO 256
  IF ~~ THEN REPLY #59579 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59580 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59581 /* ~"Let's speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 254.0
  SAY #59583 /* ~"The githzerai."~ */
  IF ~  Global("Dakkon_Githzerai","GLOBAL",0)
~ THEN REPLY #59584 /* ~"What is a githzerai?"~ */ GOTO 195
  IF ~  Global("Dakkon_Githzerai","GLOBAL",1)
~ THEN REPLY #59586 /* ~"What are the githzerai again?"~ */ GOTO 198
  IF ~~ THEN REPLY #59587 /* ~"And you say the githzerai can shape this *karach*... with their thoughts?"~ */ GOTO 256
  IF ~~ THEN REPLY #59589 /* ~"I had some other questions about your people..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59591 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59593 /* ~"That's all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 254.1 255.2
  SAY #59594 /* ~"*Karach* is not shaped by heat, but by *knowing* oneself. It is a mirror that reflects the will of the wielder on its surface and in its edge. When one *knows* oneself, the blade is strong - harder and stronger than steel. When one does not *know* oneself, the blade is as water - formless and weak."~ */
  IF ~~ THEN REPLY #59596 /* ~"What rank does the blade signify?"~ */ GOTO 252
  IF ~~ THEN REPLY #59597 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59598 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59600 /* ~"That's all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 318.2
  SAY #59602 /* ~"My *knowing* of the Art as humans *know* it is limited." Dak'kon's blade slides from his grip and he moves it in front of him in a circular motion. "But I *know* enough. I will teach you its ways."~ */
  IF ~~ THEN REPLY #59604 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 258 // from: 232.1
  SAY #59607 /* ~"That one is not *known* to me."~ */
  IF ~~ THEN REPLY #59608 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59613 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59614 /* ~"That's all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 232.2
  SAY #59615 /* ~"The location of such a thing is not *known* to me."~ */
  IF ~~ THEN REPLY #59616 /* ~"I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #59617 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59618 /* ~"That's all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 193.6
  SAY #59619 /* ~Dak'kon's forehead creases, as if he was struck a blow. "It is not my *will* that we speak of that place."~ */
  IF ~~ THEN REPLY #59620 /* ~"Dak'kon, *tell* me. What is Shra'kt'lor?"~ */ GOTO 261
  IF ~~ THEN REPLY #59621 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59622 /* ~"We'll speak no more of this, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #59623 /* ~Dak'kon is silent for a moment. "*Know* it is the place where I died my first death."~ */
  IF ~~ THEN REPLY #59624 /* ~"What is this place?"~ */ GOTO 262
  IF ~~ THEN REPLY #59625 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59626 /* ~"We'll speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 261.0
  SAY #59627 /* ~"It is one of the great homes of the People. It has suffered many wounds in its life. One of its scars is by my hand."~ */
  IF ~~ THEN REPLY #59628 /* ~"What do you mean?"~ */ GOTO 218
  IF ~~ THEN REPLY #59629 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59630 /* ~"We'll speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from:
  SAY #59631 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 264 // from:
  SAY #59632 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 265 // from:
  SAY #59633 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 266 // from:
  SAY #59634 /* ~TEMP~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 267 // from: 268.0
  SAY #59636 /* ~As you speak the words, you feel a strange crawling sensation eat its way through the back of your skull, and your vision blurs... you take a deep breath and steady yourself. For some strange reason, you feel nauseous, as if the landscape had just started spinning around you.~ */
  IF ~~ THEN REPLY #59638 /* ~"How... did you survive, Dak'kon?"~ */ GOTO 269
END

IF ~~ THEN BEGIN 268 // from: 222.0
  SAY #59640 /* ~"As I fell from the walls of Shra'kt'lor, *know* that my self was broken. My blade was mist, my mind divided. I was adrift upon Limbo's seas, and I wished to drown. I died for days, my mind awash in division."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59642 /* ~"How did you survive?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #59654 /* ~When Dak'kon told me of Shra'kt'lor, I felt dizzy for a moment. For some reason, I think I *know* something of that place... but I don't know what. ~ */ GOTO 267
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #59647 /* ~"How did you survive?"~ */ GOTO 269
  IF ~~ THEN REPLY #59650 /* ~"I think I've heard enough. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59652 /* ~"Let's speak of this another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 267.0 268.1
  SAY #59656 /* ~"I suffered. As I neared death, I came to *know* myself. I survived. That is all."~ */
  IF ~~ THEN REPLY #59658 /* ~"I see. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59660 /* ~"We'll speak no more of it, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 270 // from: 231.3 271.1 272.1 273.2 274.1 275.1 278.1 279.1 281.0 282.1 285.0
  SAY #59664 /* ~Dak'kon waits. ~ */
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #59666 /* ~"Can you teach me the ways in which your people speak?"~ */ GOTO 342
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",1)
~ THEN REPLY #59667 /* ~"What is 'T'cha's Choice'?"~ */ GOTO 271
  IF ~  Global("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ THEN REPLY #59668 /* ~"What is 'T'cha's Choice,' again?"~ */ GOTO 273
  IF ~  GlobalGT("Dictionary_Githzerai_Katznii","GLOBAL",0)
~ THEN REPLY #59669 /* ~"What is 'K'atzn'ii-at-the-Gate'?"~ */ GOTO 279
  IF ~  GlobalGT("Dictionary_Githzerai_Achali","GLOBAL",0)
~ THEN REPLY #59672 /* ~"What is 'Ach'ali Drowning'?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Achali","GLOBAL",2)
~ GOTO 282
  IF ~~ THEN REPLY #59675 /* ~"Actually, I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59676 /* ~"Never mind. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59677 /* ~"We'll discuss language some other time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.1
  SAY #59678 /* ~Dak'kon's forehead creases, and his eyes narrow. "I would *know* how you came to *know* that expression."~ */
  IF ~~ THEN REPLY #59679 /* ~"You spoke it when we met with that githzerai. I would *know* what you meant by it."~ */ GOTO 272
  IF ~~ THEN REPLY #59680 /* ~"Forget it. I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59681 /* ~"It is no matter. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59682 /* ~"Never mind. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59683 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 271.0
  SAY #59684 /* ~"It is an expression that *knows* many meanings."~ */
  IF ~~ THEN REPLY #59685 /* ~"Then tell me one of them."~ */ DO ~SetGlobal("Dictionary_Githzerai_Tcha","GLOBAL",2)
~ GOTO 273
  IF ~~ THEN REPLY #59686 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59687 /* ~"It is no matter. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59688 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59689 /* ~"Let's speak of it another time. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.2 272.0
  SAY #59690 /* ~"T'cha's Choice' speaks of one who has no choice in their actions."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59691 /* ~"So when I asked you to speak to the githzerai, you had no choice but to do it? Why?"~ */ GOTO 274
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #59692 /* ~"So when I asked you to speak to the githzerai, you had no choice but to do it? Because you're my slave?"~ */ GOTO 275
  IF ~~ THEN REPLY #59693 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59694 /* ~"It is no matter. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59695 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59696 /* ~"That's all I wished to know. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0
  SAY #59697 /* ~Dak'kon's blade ripples, and you watch as the edges become grayed and dulled. His face clenches, and he speaks through his teeth. "It is not my *will* to speak of this."~ */
  IF ~~ THEN REPLY #59698 /* ~"I want to hear you speak of it... in fact, you said a number of things in that conversation which interested me."~ */ GOTO 275
  IF ~~ THEN REPLY #59699 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59700 /* ~"It is no matter, then. I had other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59701 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59702 /* ~"Then we'll speak no more of it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 273.1 274.0
  SAY #59703 /* ~"*Know* that your will is my *will.* When you speak, *know* I must hear you. *Know* that your words may stay my blade or guide it to the throat of another."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #59704 /* ~"What? But why?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 276
  IF ~~ THEN REPLY #59708 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59709 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59713 /* ~"We'll speak no more of this. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59714 /* ~"I don't wish to hear any more. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 276 // from: 275.0
  SAY #59716 /* ~Dak'kon seems to look through you, as if meeting your gaze is unbearable. "Your path is my path. I am chained to you."~ */
  IF ~~ THEN REPLY #59718 /* ~"You're my slave?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from: 276.0
  SAY #59720 /* ~At the word 'slave,' Dak'kon's face collapses in pain, as if he was struck... it is as if the word was a dagger, stabbing at the core of his suffering. ~ */
  IF ~~ THEN REPLY #59721 /* ~"But... why, Dak'kon?"~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #59723 /* ~"*Know* it is... a long tale, and *know* that nothing is gained in the telling."~ */
  IF ~~ THEN REPLY #59725 /* ~"I would hear it."~ */ JOURNAL #59286 /* ~Dak'kon told me the nature of his slavery... when I saved his life, he promised to serve me until I died. But he wasn't aware that I was immortal; in so doing, he promised the remainder of his life to mine.~ */ GOTO 215
  IF ~~ THEN REPLY #59727 /* ~"No matter, then. I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59728 /* ~"Very well, then. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59731 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59732 /* ~"Then we'll speak no more of it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 270.3
  SAY #59755 /* ~"*Know* this: when 'K'atzn'ii-at-the Gate' is spoken, the speaker is telling you that in the asking, you will answer your questions and that of the person you are speaking to."~ */
  IF ~~ THEN REPLY #59756 /* ~"What does it mean? Who is 'K'atzn'ii'?"~ */ DO ~SetGlobal("Dictionary_Githzerai_Katznii","GLOBAL",2)
~ GOTO 280
  IF ~~ THEN REPLY #59758 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59759 /* ~"I see. I had some other questions about the githzerai..."~ */ GOTO 231
  IF ~~ THEN REPLY #59760 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59763 /* ~"Understood. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.0
  SAY #59912 /* ~"K'atzn'ii was of the People. It is said she was one of the People who did not *know* herself. Instead of seeking the *knowing* of herself, however, she chose to test the People instead. She would travel to the gates of cities of the People and put to them questions to test their will. The answers the People gave allowed her to *know* the nature of the People that lived beyond its walls."~ */
  IF ~~ THEN GOTO 281
END

IF ~~ THEN BEGIN 281 // from: 280.0
  SAY #59914 /* ~"What was not *known* to K'atzn'ii was that the questions she asked allowed the People to *know* her as well. They saw her heart, and *knew* that it would not help her to dwell among them. So she remained always at the gate. It is a lesson that teaches that our wills may be *known* by our questions."~ */
  IF ~~ THEN REPLY #59915 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59916 /* ~"I see. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59917 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59918 /* ~"Understood. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 270.4
  SAY #59919 /* ~"*Know* this: when 'Ach'ali-Drowning' is spoken, the speaker is telling you the answer to your question would serve no purpose. *Know* that it carries the unspoken intent that the question be shaped so that it is more specific."~ */
  IF ~~ THEN REPLY #59920 /* ~"Who was Ach'ali?"~ */ GOTO 283
  IF ~~ THEN REPLY #59921 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59922 /* ~"I see. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59923 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59924 /* ~"Understood. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 283 // from: 282.0
  SAY #59925 /* ~"Upon our home plane of Limbo, we must shape the plane with our minds or the chaos of the plane will devour us. Ach'ali was one of the People who did not *know* herself. Time came upon her when she lost herself in the chaos matter of the Plane. She *knew* not how to return to her community. So she shaped a small island with her thoughts and waited."~ */
  IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #59926 /* ~"She waited. In waiting, she met a traveler swimming through Limbo's sea. Ach'ali is said to have called out to the traveler to ask the way home. Only one question need she have asked: '*Know* you the way to my home?' Yet she asked: 'What *know* you of the plane?'"~ */
  IF ~~ THEN GOTO 285
END

IF ~~ THEN BEGIN 285 // from: 284.0
  SAY #59927 /* ~"The traveler *knew* much, and much of what was said was new to Ach'ali. Her questions grew, feeding upon the answers, until she *knew* not where she was and *knew* not that she must maintain focus. The small island she had shaped dissolved into the chaos matter, and she drowned. It is a lesson that tells of the harm in asking without purpose."~ */
  IF ~~ THEN REPLY #59928 /* ~"I had some other language questions..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 270
  IF ~~ THEN REPLY #59929 /* ~"I see. I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #59930 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59931 /* ~"Understood. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 286 // from: 318.1
  SAY #59932 /* ~Dak'kon's blade slides from his shoulder into his hand like water, and its edges take on a dangerous sheen. "We shall show steel without anger. You shall *know* the way of weapons again."~ */
  IF ~~ THEN REPLY #59933 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(FIGHTER)
SetAnimState("Dakkon",ANIM_MIMESTANCETOSTAND)
~ GOTO 287
END

IF ~~ THEN BEGIN 287 // from: 286.0
  SAY #59934 /* ~At the end of your sparring session, you find yourself slipping into the mantle of the warrior easily. Dak'kon slides his blade from his grip and rests it on his shoulder. "You learn quickly. When war comes, it will find you ready."~ */
  IF ~~ THEN REPLY #59935 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59936 /* ~"All right. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 318.3
  SAY #59937 /* ~Dak'kon's blade slides from his grip and he moves it in front of him in a circular motion. "We shall recite the teachings. You shall *know* the ways of the Art again."~ */
  IF ~~ THEN REPLY #59938 /* ~"Very well..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 289
END

IF ~~ THEN BEGIN 289 // from: 257.0 288.0
  SAY #59939 /* ~At the end of your teaching session, you find yourself slipping into the mantle of the mage easily. Dak'kon nods. "You learn quickly. You are now ready to summon your will against your foes."~ */
  IF ~~ THEN REPLY #59940 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59941 /* ~"All right. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 318.4
  SAY #59942 /* ~"*Know* that the way of the People is not the same as the Art you have come to *know.* It is not the energy that gives strength. It is *knowing* the self that gives strength. The teachings of Zerthimon speak of such things."~ */
  IF ~~ THEN REPLY #59943 /* ~"Would you teach me the Way of Zerthimon, Dak'kon?"~ */ GOTO 291
  IF ~~ THEN REPLY #59944 /* ~"I had other things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59945 /* ~"I see. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #59946 /* ~"Do you *know* what you have asked?" The texture of Dak'kon's blade flows, until it becomes as stone. "To walk the path of Zerthimon you must *know* of the People. The *knowing* of such things by one not of the People is a difficult matter. There are those not of the People who have heard the Way of Zerthimon, but they do not *know* the Way."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #59947 /* ~"Dak'kon, I want to *know* of the People and *know* Zerthimon's teachings. I believe there is wisdom to be learned in such things."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon agreed to teach me the Way of Zerthimon. He unlocked the Unbroken Circle of Zerthimon for me, and he told me to study it and *know* the history of his People.~ */ GOTO 293
  IF ~~ THEN REPLY #59948 /* ~"If you will teach me, I will learn."~ */ GOTO 292
  IF ~~ THEN REPLY #59949 /* ~"I had other things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59950 /* ~"Never mind, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.1
  SAY #59951 /* ~"I *know* how humans come to know the 'Art.' They learn the Art in pieces in scrolls and spells and books. Such division is *not* the Way of Zerthimon. You cannot learn parts and ignore the whole." Dak'kon looks at you silently; his blade has resumed its shimmering surface. "*Know* that it is a path that requires focus. If your mind is divided, if you do not *know* the meaning of the Way, your will is lost."~ */
  IF ~~ THEN REPLY #59952 /* ~"I still wish to learn."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",1)
~ JOURNAL #59744 /* ~Dak'kon agreed to teach me the Way of Zerthimon. He unlocked the Unbroken Circle of Zerthimon for me, and he told me to study it and *know* the history of his People.~ */ GOTO 293
  IF ~~ THEN REPLY #59953 /* ~"I had other things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59954 /* ~"Never mind, then. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 291.0 292.0
  SAY #59955 /* ~"*Know* that I have heard your words, and I shall test them. To learn, you must *know* the People. To *know* the People, you must *know* the Unbroken Circle of Zerthimon." Dak'kon holds up the stone disk in his possession and his spider-like fingers hook into its sides. There is a *click,* and the plates of the Circle slide into a new configuration. He reverses the motion, sealing the stone. "*Know* the First Circle of Zerthimon is open to you. Study it, then I will hear your words."~ */
  IF ~~ THEN REPLY #59956 /* ~"I will read the First Circle, then. In the meantime, I had other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59957 /* ~"Very well. I will examine it, then speak with you again."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 318.6
  SAY #59958 /* ~"What did you come to *know?*"~ */
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59959 /* ~"Strength lies in knowing oneself. I learned that once someone does not *know* themselves, they are lost. They become a tool for others."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",3)
GiveExperience(Protagonist,300)
~ JOURNAL #59743 /* ~I came to understand the First Circle of Zerthimon by bringing my own wisdom to the text; in exchange, Dak'kon opened the next Circle of Zerthimon to me. I think he intends to teach the Unbroken Circle to me in stages, unlocking each Circle as I come to understand the previous one.~ */ GOTO 296
  IF ~  Global("Dakkon_Teach","GLOBAL",2)
~ THEN REPLY #59960 /* ~"I learned that your people were once slaves to the *illithids.* It seems they committed many crimes against your people."~ */ JOURNAL #59742 /* ~Apparently, I don't understand what the First Circle in the Unbroken Circle of Zerthimon meant, or so Dak'kon tells me. I think the meaning in the words lies beyond what is inscribed on the stone... I may have to bring some of my own wisdom to Zerthimon's teachings before I understand the Way of Zerthimon. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,11,WIS)
Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59961 /* ~"I learned that not *knowing* something can be a tool, just like flesh and steel, if upon encountering it, you attempt to *know* its nature and how it came to be."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",5)
GiveExperience(Protagonist,600)
GiveItemCreate("Circle02",Protagonist,1,0,0)
~ GOTO 297
  IF ~  Global("Dakkon_Teach","GLOBAL",4)
~ THEN REPLY #59962 /* ~"I learned that while tending the fields of the *illithids,* Zerthimon learned of the nature of steel and how it could be used to defeat the *illithids.*"~ */ JOURNAL #67782 /* ~Apparently, I don't understand what the next Circle in the Unbroken Circle of Zerthimon meant, or so Dak'kon tells me. I think the meaning in the words lies beyond what is inscribed on the stone... I may have to bring some of my own wisdom to Zerthimon's teachings before I understand the Way of Zerthimon. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59963 /* ~"Endure. In enduring, grow strong."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",7)
GiveExperience(Protagonist,900)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 299
  IF ~  Global("Dakkon_Teach","GLOBAL",6)
~ THEN REPLY #59964 /* ~"I learned that sometimes a leader must suffer in order to protect his goals."~ */ JOURNAL #67782 /* ~Apparently, I don't understand what the next Circle in the Unbroken Circle of Zerthimon meant, or so Dak'kon tells me. I think the meaning in the words lies beyond what is inscribed on the stone... I may have to bring some of my own wisdom to Zerthimon's teachings before I understand the Way of Zerthimon. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59965 /* ~"When one chooses to see only what is before them, they see only a part of the whole. They are blind. And just as Vilquar was blinded by his promised reward, so were the *illithids* blinded to the true Rising. For when they heard Vilquar's words, they turned their sight outwards again, didn't they? And the Rising was free to strike?"~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",9)
GiveExperience(Protagonist,1500)
~ GOTO 303
  IF ~  Global("Dakkon_Teach","GLOBAL",8)
~ THEN REPLY #59966 /* ~"When one chooses to see without knowing, they betray themselves."~ */ JOURNAL #67782 /* ~Apparently, I don't understand what the next Circle in the Unbroken Circle of Zerthimon meant, or so Dak'kon tells me. I think the meaning in the words lies beyond what is inscribed on the stone... I may have to bring some of my own wisdom to Zerthimon's teachings before I understand the Way of Zerthimon. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59967 /* ~"There is great strength in numbers, but there is great power in one, for the strength of the will of one may gather numbers to it. There is strength not only in *knowing* the self, but *knowing* how to bring it forth in others."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",11)
GiveExperience(Protagonist,3000)
GiveItemCreate("Circle05",Protagonist,1,0,0)
~ GOTO 307
  IF ~  Global("Dakkon_Teach","GLOBAL",10)
~ THEN REPLY #59968 /* ~"Zerthimon learned to join with an even more powerful figure, Gith. Together, the People grew stronger."~ */ JOURNAL #67782 /* ~Apparently, I don't understand what the next Circle in the Unbroken Circle of Zerthimon meant, or so Dak'kon tells me. I think the meaning in the words lies beyond what is inscribed on the stone... I may have to bring some of my own wisdom to Zerthimon's teachings before I understand the Way of Zerthimon. ~ */ GOTO 295
  IF ~  CheckStatGT(Protagonist,17,WIS)
Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59969 /* ~"I know that Zerthimon's devotion to the People was such that he was willing to protect them from themselves. He knew the *illithids* had come not to *know* themselves in their obsession with control and domination. So he chose to stop Gith before she carried the People to their deaths. There must be balance in all things, or else the self will not hold."~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",13)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle06",Protagonist,1,0,0)
GiveItemCreate("Circle06",Protagonist,1,0,0)
~ GOTO 308
  IF ~  Global("Dakkon_Teach","GLOBAL",12)
~ THEN REPLY #59970 /* ~"Zerthimon learned that even in freedom, one must continue fighting for freedom, even within one's own race."~ */ JOURNAL #67782 /* ~Apparently, I don't understand what the next Circle in the Unbroken Circle of Zerthimon meant, or so Dak'kon tells me. I think the meaning in the words lies beyond what is inscribed on the stone... I may have to bring some of my own wisdom to Zerthimon's teachings before I understand the Way of Zerthimon. ~ */ GOTO 295
  IF ~  Global("Dakkon_Teach","GLOBAL",15)
~ THEN REPLY #59971 /* ~"There was a Seventh Circle within the Stone of Zerthimon. It spoke of the building of the rebellion against the *illithids.*"~ */ GOTO 319
  IF ~  Global("Dakkon_Teach","GLOBAL",18)
~ THEN REPLY #59972 /* ~"There was an Eighth Circle within the Stone of Zerthimon. It spoke of division of the mind, and the importance of focus."~ */ GOTO 323
  IF ~~ THEN REPLY #59973 /* ~"Never mind. I had other things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #59974 /* ~"I am still thinking over what I have read; we will speak later. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 294.1 294.3 294.5 294.7 294.9 294.11
  SAY #59975 /* ~Dak'kon's forehead creases into a frown. "Then you have come to *know* nothing. You are one who hears the words and does not *know* them."~ */
  IF ~~ THEN REPLY #59976 /* ~"Very well... I will study the text again. In the meantime, I had other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59977 /* ~"Never mind then, Dak'kon."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 294.0
  SAY #59978 /* ~"You have come to *know* the First Circle of Zerthimon. You not only see the words of Zerthimon, you have come to *know* them." Dak'kon holds up the Circle and hooks his fingers around the edges. There is a *click,* and the plates of the Circle slide into a new configuration. He reverses the motion, sealing the stone. "*Know* the Second Circle of Zerthimon is open to you. Study it, then I will hear your words."~ */
  IF ~~ THEN REPLY #59979 /* ~"I will read the Second Circle, then. In the meantime, I had other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59980 /* ~"Very well. I will read it, then speak with you again."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 294.2
  SAY #59981 /* ~"You have seen the words and you have seen beyond them. You have come to *know* the Second Circle of Zerthimon." He takes the Circle and with a deft motion, he twists one of the links so one of the plates slides forth - but strangely enough, the stone still appears intact. He hands the plate to you. "Meditate upon this teaching, and the *knowing* of it shall give you strength. When you have absorbed it, you shall *know* more."~ */
  IF ~~ THEN REPLY #59982 /* ~"Very well... I will study this Circle. Yet I would still know more of Zerthimon's teachings."~ */ GOTO 298
END

IF ~~ THEN BEGIN 298 // from: 297.0 302.0 306.0 307.0
  SAY #59983 /* ~Dak'kon's fingers feel around the edges of the stone circle, and he twists it clockwise, the links *clicking* until they have settled into a new configuration. He then reverses the motion, resetting the stone. "The next Circle of Zerthimon is open to you. Study it, then I will hear your words."~ */
  IF ~~ THEN REPLY #59984 /* ~"I will read the next Circle, then. In the meantime, I had other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #59985 /* ~"Very well. I will read it, then speak with you again."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 294.4
  SAY #59986 /* ~The words you speak seem to strike Dak'kon strangely... as you speak them, his forehead creases, then resettles into its normal passive expression. ~ */
  IF ~~ THEN DO ~GiveItemCreate("Circle03",Protagonist,1,0,0)
~ GOTO 300
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #59987 /* ~"Your will has brought you the *knowing* of the Third Circle of Zerthimon. With this *knowing,* I impart this to you." He takes the Circle and with a deft motion, he twists one of the links so one of the plates slides forth. He hands the plate to you. "Meditate upon its teachings, and the *knowing* of it shall give you strength."~ */
  IF ~~ THEN REPLY #59988 /* ~"Very well... I will study this Circle. Is there more you can teach me?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 301
END

IF ~~ THEN BEGIN 301 // from: 300.0
  SAY #59989 /* ~As you ask the words, you suddenly notice that Dak'kon isn't looking at you. He is holding the Unbroken Circle in his hands, studying it. His blade has taken on the same texture as the Unbroken Circle... and Dak'kon suddenly seems *older* somehow.~ */
  IF ~~ THEN REPLY #59990 /* ~"Dak'kon?"~ */ GOTO 302
END

IF ~~ THEN BEGIN 302 // from: 301.0
  SAY #59991 /* ~Dak'kon's black eyes rise from the Circle and look at you. "*Know* that I did not believe you would come to *know* the teachings of the Circle. It is... a difficult path you will walk in learning the Way of Zerthimon. Is your mind focused on this matter?"~ */
  IF ~~ THEN REPLY #59992 /* ~"Yes. I wish to learn more."~ */ GOTO 298
END

IF ~~ THEN BEGIN 303 // from: 294.6
  SAY #59993 /* ~"*Know* that you speak truly. Vilquar's Eye blinded both Vilquar and the *illithids.* The tentacled ones thought the Rising to be no more. When the Rising occurred, the ground drank deep of *illithid* blood. So was victory born from treachery."~ */
  IF ~~ THEN REPLY #59994 /* ~"It is a curious lesson. Why would it be part of the teachings of Zerthimon?"~ */ GOTO 304
END

IF ~~ THEN BEGIN 304 // from: 303.0
  SAY #59995 /* ~Dak'kon's blade bleeds into a dead, night-black, and his voice deepens - for a moment, you think he's angry, but you're not so sure. "There is much about the Way of Zerthimon and his path that is difficult to *know.*"~ */
  IF ~~ THEN REPLY #59996 /* ~"Do *you* know why Vilquar's Eye is part of the Way of Zerthimon?"~ */ GOTO 305
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #59997 /* ~"It is part of the telling of how our People came to *know* freedom. It lets us *know* that there are those, even among the People, who are not of the People. And that even in the greatest treachery, a greater *knowing* may be achieved."~ */
  IF ~~ THEN REPLY #59998 /* ~"Very well."~ */ DO ~GiveItemCreate("Circle04",Protagonist,1,0,0)
~ GOTO 306
END

IF ~~ THEN BEGIN 306 // from: 305.0
  SAY #59999 /* ~"You have come to *know* the Fourth Circle of Zerthimon." He takes the Circle and with a deft motion, he twists one of the links so one of the plates slides forth. He hands the plate to you. "Meditate upon its teachings, and the *knowing* of it shall give you strength."~ */
  IF ~~ THEN REPLY #60000 /* ~"I would know more of the Way of Zerthimon."~ */ GOTO 298
END

IF ~~ THEN BEGIN 307 // from: 294.8
  SAY #60001 /* ~"You have come to *know* the Fifth Circle of Zerthimon. With this *knowing,* I impart this to you." He takes the Circle and with a deft motion, he twists one of the links so one of the plates slides forth. He hands the plate to you. "Meditate upon its teachings, and the *knowing* of it shall give you strength."~ */
  IF ~~ THEN REPLY #60002 /* ~"I would know more of the Way of Zerthimon."~ */ GOTO 298
END

IF ~~ THEN BEGIN 308 // from: 294.10
  SAY #60003 /* ~"You have seen the words and *know* them." Dak'kon's voice slows, and his hands grip the edges of the Unbroken Circle. He twists it clockwise, and there is a *click* as two plates slides forth. Dak'kon stares at the two plates in his hand - he makes no move to hand them to you.~ */
  IF ~~ THEN REPLY #60004 /* ~"Dak'kon... is that second plate for you?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 309
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #60005 /* ~Dak'kon falls silent. His blade has ceased shimmering, the film freezing upon its surface. He is staring at the second plate, paralyzed.~ */
  IF ~~ THEN REPLY #60006 /* ~"Do *you* know the Sixth Circle?"~ */ GOTO 310
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #60007 /* ~Dak'kon looks up, but his coal-black eyes do not meet your gaze. "*Know* there is nothing more I may teach you. You *know* the Way as the People *know* it, and it shall give you the direction by which you may *know* yourself."~ */
  IF ~~ THEN REPLY #60008 /* ~"That's *not* what I asked. Do you *know* the Sixth Circle or not?"~ */ GOTO 311
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #60009 /* ~Dak'kon is silent for a moment, then speaks, his voice slow and careful. "It has come to pass that I do not *know* the Sixth Circle of Zerthimon. Once, I *knew* it, but I *know* now I only saw the words." Dak'kon's eyes stare through you. "That is all. It is my path that I no longer *know* the Way of Zerthimon."~ */
  IF ~  GlobalGT("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60010 /* ~"Was it because of what happened at Shra'kt'lor?"~ */ GOTO 317
  IF ~  Global("Shrakatlor","GLOBAL",0)
~ THEN REPLY #60011 /* ~"Dak'kon... there is one other thing I would *know.* Why is Vilquar's Eye in the Circle of Zerthimon? It seems strange. It tells of how the People benefited from a treachery from their own. It seems..."~ */ GOTO 312
END

IF ~~ THEN BEGIN 312 // from: 311.1 317.0
  SAY #60012 /* ~Dak'kon's eyes flash. "I have told you it is part of the telling of how the People came to *know* freedom. Do you not listen?" His voice flattens, as if he is reciting a passage from memory. "It tells the People that even in the greatest treachery, a greater *knowing* may be achieved."~ */
  IF ~~ THEN REPLY #60013 /* ~"It doesn't sound to me like you believe that. I think there's another reason Vilquar's Eye is in the Circle of Zerthimon. It is set there because of the Sixth Circle and the Pronouncement of Two Skies. It's there to justify Zerthimon's treachery to the People upon the Blasted Plains."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 313
END

IF ~~ THEN BEGIN 313 // from: 312.0
  SAY #60014 /* ~Dak'kon is silent, and his blade bleeds into a dead-black, teeth rippling along the edge. ~ */
  IF ~~ THEN REPLY #60015 /* ~"He divided the People upon the Blasted Plains, Dak'kon. He divided your race, when they were on the path of victory. I would *like* to believe that it was because he wished to save the People from themselves - but I don't think *you* believe that."~ */ GOTO 314
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #60016 /* ~Dak'kon is silent for a moment, then he speaks, slowly. "I... do not *know* the Sixth Circle as it is *known* to others. I fear that the Third Circle, the Fourth Circle and the Sixth Circle are more closely linked than many *know.* It is in that *knowing* that I have lost myself." ~ */
  IF ~~ THEN REPLY #60017 /* ~"In the Third Circle, Zerthimon submerged his will to deceive the *illithids,* then in the Fourth Circle, it speaks of the benefits of *treachery.* Then in the Sixth Circle, Zerthimon divides his people before they exterminate the *illithids.* Do you think Zerthimon's words may not have been his own?"~ */ GOTO 315
END

IF ~~ THEN BEGIN 315 // from: 314.0
  SAY #60018 /* ~"*Know* my words, and *know* the wound that lies upon my heart: I fear that when Zerthimon was upon the Pillars of Silence, he did not submerge his will. I fear his will was taken from him by the *illithids.* And when he spoke upon the Blasted Plains, it was their words he spoke. I fear that what he did was not for the People's sake, but for our former masters."~ */
  IF ~~ THEN REPLY #60019 /* ~"It's possible, but *know* it doesn't necessarily mean that h..."~ */ DO ~SetGlobal("BD_DAKKON_FAITH","GLOBAL",1)
~ JOURNAL #60020 /* ~In learning the Sixth Circle of Zerthimon, I found that Dak'kon doesn't believe in the Sixth Circle himself. Ironically enough, I think he lost the *knowing* of himself *because* he read the Unbroken Circle of Zerthimon. ~ */ GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #60021 /* ~"Then *know* this and speak of it NO MORE." Dak'kon voice is like a knife. "*Know* that I shall never *know* the TRUTH. There is NO resolution to this matter, for I shall NEVER *know* Zerthimon's heart upon the Blasted Plains." His coal black eyes glare at the stone circle in his hand. "And so I do not *know* myself because of the Unbroken Circle of Zerthimon."~ */
  IF ~~ THEN REPLY #60022 /* ~"Very well, Dak'kon. We'll discuss this no more... let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 311.0
  SAY #60023 /* ~"I do not *know.* The People became divided, and the People suffered. Upon reading the Unbroken Circle, I *know* now that I took the *knowing* of the Fifth Circle and used the Power of One to bring about the Sixth Circle in Shra'kt'lor. In so doing, I divided the People. There was much suffering. I carry Shra'kt'lor with me always."~ */
  IF ~~ THEN REPLY #60024 /* ~"Dak'kon... there is one other thing I would *know.* Why is Vilquar's Eye in the Circle of Zerthimon? It seems strange. It tells of how the People benefited from a treachery from their own. It seems - "~ */ GOTO 312
END

IF ~~ THEN BEGIN 318 // from: 193.3 351.0
  SAY #60025 /* ~Dak'kon waits.~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #60026 /* ~"Can you teach me anything of weapon craft, Dak'kon?"~ */ GOTO 351
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #60027 /* ~"I wish to give up my current profession and resume the study of weapon craft, Dak'kon. Can you train me?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Dakkon",ANIM_MIMESTANCE)
~ GOTO 286
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60028 /* ~"I wish to give up my current profession and resume the study of the Art, Dak'kon. Can you train me?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 257
  IF ~  !Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60029 /* ~"I wish to give up my current profession and resume the study of the Art, Dak'kon. Can you train me?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESPELL1)
~ GOTO 288
  IF ~  Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60030 /* ~"Can you teach me anything of the Art, Dak'kon?"~ */ GOTO 290
  IF ~  !Class(Protagonist,MAGE)
Global("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #68062 /* ~"Can you teach me anything of the Art, Dak'kon?"~ */ GOTO 363
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Dakkon_Teach","GLOBAL",0)
~ THEN REPLY #60031 /* ~"I have read the Unbroken Circle of Zerthimon. I want to speak to you more about the Way of Zerthimon."~ */ GOTO 294
  IF ~~ THEN REPLY #60032 /* ~"Actually, I had some other questions instead..."~ */ GOTO 193
  IF ~~ THEN REPLY #60033 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 319 // from: 294.12
  SAY #60034 /* ~Dak'kon falls silent. "What does this Seventh Circle speak of?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60035 /* ~"It speaks of time as an ally, not as an enemy. It says that patience can sharpen even the smallest of efforts into a weapon that can strike the heart of an empire. Your victories may be small, but over time, a greater victory may be achieved."~ */ GOTO 320
  IF ~~ THEN REPLY #60036 /* ~"I don't know... it speaks of time and labor, but I haven't found meaning in it. When I come to know its wisdom, I shall share it with you."~ */ EXIT
  IF ~~ THEN REPLY #60037 /* ~"I will not speak of it now. I had other things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #60038 /* ~"I will share it with you another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #60039 /* ~Dak'kon is silent for a moment. "Will you make this Circle *known* to me?"~ */
  IF ~~ THEN REPLY #60040 /* ~Take the Unbroken Circle of Zerthimon and unlock the Seventh Circle.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",16)
GiveExperience(Protagonist,5000)
GiveItemCreate("Circle07",Protagonist,1,0,0)
GiveItemCreate("Circle07",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 321
  IF ~~ THEN REPLY #60041 /* ~"I will, but not now. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60042 /* ~"Not at the moment... I shall share it with you another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.0
  SAY #60043 /* ~As you take the circle and twist the links, *two* plates slide from the interior and into your hands. You have no idea where they came from, but the Unbroken Circle still seems intact - the Seventh Circle remains. Dak'kon watches you silently.~ */
  IF ~~ THEN REPLY #60044 /* ~"There are two plates here... perhaps we should both study them, you and I?"~ */ GOTO 322
END

IF ~~ THEN BEGIN 322 // from: 321.0
  SAY #60045 /* ~Dak'kon is silent for a moment. "There is much you have come to *know* of the Circle, and your *knowing* carries a greater weight than mine." Dak'kon matches your gaze. "*Know* that your path is mine, and it shall come to pass that as you *knew* the Way of Zerthimon from me, I shall *know* the Way of Zerthimon from you."~ */
  IF ~~ THEN REPLY #60046 /* ~"We'll study the plates later. There were other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60047 /* ~"Very well, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 294.13
  SAY #60048 /* ~Dak'kon falls silent. When he speaks again... his tone is quiet, almost reverent. "What does this Eighth Circle speak of?"~ */
  IF ~  CheckStatGT(Protagonist,18,WIS)
~ THEN REPLY #60049 /* ~"It speaks of focus and discipline... about how not *knowing* oneself can physically divide the man. It also speaks of the weaknesses that division causes. It seems to me that it tells one to not only *know* themselves and take strength from that, but that your focus can reveal weaknesses in your enemy."~ */ GOTO 324
  IF ~~ THEN REPLY #60050 /* ~"I don't know... it speaks of focus and division, but I haven't found meaning in it. When I come to know its wisdom, I shall share it with you."~ */ EXIT
  IF ~~ THEN REPLY #60051 /* ~"I will not speak of it now. I had other things I would *know,* Dak'kon..."~ */ GOTO 193
  IF ~~ THEN REPLY #60052 /* ~"I will share it with you another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0
  SAY #60053 /* ~Dak'kon is silent for a moment. "Will you make this Circle *known* to me?"~ */
  IF ~~ THEN REPLY #60054 /* ~Take the Unbroken Circle of Zerthimon and unlock the Eighth Circle.~ */ DO ~SetGlobal("Dakkon_Teach","GLOBAL",19)
GiveExperience(Protagonist,10000)
GiveExperience("Dakkon",10000)
GiveItemCreate("Circle08",Protagonist,1,0,0)
GiveItemCreate("Circle08",Protagonist,1,0,0)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 325
  IF ~~ THEN REPLY #60055 /* ~"I will, but not now. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60056 /* ~"Not at the moment... I shall share it with you another time. For now, let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 324.0
  SAY #60057 /* ~As you take the circle and twist the links, two more plates slide from the interior and into your hands. As with the Seventh Circle, you have no idea where they came from, but the Unbroken Circle still seems intact - the Eighth Circle remains. Dak'kon watches you silently.~ */
  IF ~~ THEN REPLY #60058 /* ~"There are two plates here... we should both study them, you and I. I think when you *know* the Eighth Circle, perhaps then you will *know* Zerthimon's heart when he made the Pronouncement of Two Skies. His words were not those of the *illithids,* but of the People."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 326
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #60059 /* ~Dak'kon stares at the plates, his eyes flickering over the geometries upon them, then looks up and matches your gaze. His blade bends, shifts, until the shimmering you notice before has become a silver glow. He seems *stronger* somehow.~ */
  IF ~~ THEN DO ~IncrementGlobal("Githzerai","GLOBAL",3)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,2)
PermanentStatChange("Dakkon",CON,RAISE,2)
SetAnimState("Dakkon",ANIM_MIMEATTACK1)
~ GOTO 327
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #60060 /* ~"*Know* that when death comes for you, *know* that I shall meet its blade with mine. *Know* that when all dies around you, *know* I shall live for your sake."~ */
  IF ~~ THEN REPLY #60061 /* ~"When we die, Dak'kon, it shall be the same death. It shall be the Pronouncement of Two Deaths As One."~ */ JOURNAL #60062 /* ~I think my discovery of the Eighth Circle brought Dak'kon to a greater understanding of himself and removed the *doubt* that had afflicted him. I literally watched him shed the coat of years when I told him of the Eighth Circle. In hearing my words, Dak'kon made the Pronouncement of Two Deaths As One, where he swore that when death came for me, he would meet its blade with his.~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 232.3
  SAY #60063 /* ~"The symbols speak of four you have traveled with in the past."~ */
  IF ~~ THEN REPLY #60064 /* ~"What four are these?"~ */ DO ~SetGlobal("Dakkon_Old_Companions","GLOBAL",1)
~ JOURNAL #60068 /* ~Dak'kon told me of four that used to walk my path: a woman, who loved a man who knew her and knew not love, a blind archer, a familiar, and a slave.~ */ GOTO 329
  IF ~~ THEN REPLY #60065 /* ~"Actually, I had some other questions about our travels..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 232
  IF ~~ THEN REPLY #60066 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60067 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 232.4 328.0
  SAY #60069 /* ~"The tattoo speaks of four minds. One was a woman, who loved a man who *knew* her and *knew* not love. The other was a blind man, who saw things no mortal eye could see. Another was a familiar, a mage's pet, bought and bound. And the last was a slave."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
CheckStatLT(Protagonist,15,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60070 /* ~"And which one of them was you, Dak'kon? Were you the slave?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  CheckStatGT(Protagonist,14,WIS)
Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60071 /* ~"And which one of them was you, Dak'kon? Were you the slave?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 330
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60072 /* ~"And you were the slave, Dak'kon?"~ */ GOTO 330
  IF ~~ THEN REPLY #60073 /* ~"What can you tell me of the four?"~ */ GOTO 332
  IF ~~ THEN REPLY #60074 /* ~"Why did you not want to tell me this?"~ */ GOTO 338
  IF ~~ THEN REPLY #60075 /* ~"Very well. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60076 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 329.0 329.1 329.2 333.3 334.1 335.1 337.0
  SAY #60077 /* ~Dak'kon is silent for a moment, and the surface of his blade swims, as if in turmoil. "*Know* that this one owed you a service. In owing this to you, it became as slavery."~ */
  IF ~~ THEN REPLY #60078 /* ~"How did this come to be?"~ */ GOTO 331
  IF ~~ THEN REPLY #60079 /* ~"What can you tell me of the four that traveled with me in the past?"~ */ GOTO 333
  IF ~~ THEN REPLY #60080 /* ~"Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~~ THEN REPLY #60081 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60082 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #60083 /* ~"*Know* the tale is long. The matter is between me and the other that was once you. *Know* that if you hear it, *know* it shall be a long tale."~ */
  IF ~~ THEN REPLY #60084 /* ~"I would hear it."~ */ GOTO 218
  IF ~~ THEN REPLY #60085 /* ~"What can you tell me of the four that traveled with me in the past?"~ */ GOTO 333
  IF ~~ THEN REPLY #60086 /* ~"I will hear the tale later, then. Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~~ THEN REPLY #60087 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60088 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 329.3 334.2 335.2 337.1 338.1 339.0 339.2 340.1 340.2
  SAY #60089 /* ~"The woman was young. She worshipped time, for in her blood, she *knew* of things to come. The archer was a blind man, and he could see things that no other one could see. The path of his arrows always led to the heart of an enemy. The familiar and the slave I *know* little of."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60090 /* ~"See things to come? The woman's name wasn't Deionarra, was it?"~ */ JOURNAL #60097 /* ~I just learned that Deionarra traveled with me in the past... Dak'kon said she had the power to "see" coming events before they happened.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60091 /* ~"See things to come? The woman's name wasn't Deionarra, was it?"~ */ JOURNAL #60097 /* ~I just learned that Deionarra traveled with me in the past... Dak'kon said she had the power to "see" coming events before they happened.~ */ GOTO 334
  IF ~~ THEN REPLY #60092 /* ~"Tell me more about the archer."~ */ GOTO 335
  IF ~~ THEN REPLY #60093 /* ~"Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~~ THEN REPLY #60094 /* ~"Do you know why I was traveling with these four?"~ */ GOTO 340
  IF ~~ THEN REPLY #60095 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60096 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.1 331.1 334.3 335.3 337.2 338.2 339.1 339.3 341.1 341.2
  SAY #60098 /* ~"The woman was young. She worshipped time, for in her blood, she *knew* of things to come. The archer was a blind man, and he could see things that no other one could see. The path of his arrows always led to the heart of an enemy. The familiar I *know* little of."~ */
  IF ~  GlobalGT("Prophecy","GLOBAL",0)
~ THEN REPLY #60099 /* ~"See things to come? The woman's name wasn't Deionarra, was it?"~ */ JOURNAL #60107 /* ~I just learned that Deionarra traveled with me in the past... along with Dak'kon. Dak'kon said she had the power to "see" coming events before they happened.~ */ GOTO 334
  IF ~  Global("Prophecy","GLOBAL",0)
GlobalGT("Deionarra_Sight","GLOBAL",0)
~ THEN REPLY #60100 /* ~"See things to come? The woman's name wasn't Deionarra, was it?"~ */ JOURNAL #60107 /* ~I just learned that Deionarra traveled with me in the past... along with Dak'kon. Dak'kon said she had the power to "see" coming events before they happened.~ */ GOTO 334
  IF ~~ THEN REPLY #60101 /* ~"Tell me more about the archer."~ */ GOTO 335
  IF ~~ THEN REPLY #60102 /* ~"How did you come to be my slave?"~ */ GOTO 330
  IF ~~ THEN REPLY #60103 /* ~"Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~~ THEN REPLY #60104 /* ~"Do you know why we were traveling together?"~ */ GOTO 341
  IF ~~ THEN REPLY #60105 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60106 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 332.0 332.1 333.0 333.1
  SAY #60108 /* ~"*Know* that Deionarra was the name she carried."~ */
  IF ~~ THEN REPLY #60109 /* ~"What do you know of the archer?"~ */ GOTO 335
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60110 /* ~"How did you come to be my slave?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60111 /* ~"Tell me of the others."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60112 /* ~"Tell me of the others."~ */ GOTO 333
  IF ~~ THEN REPLY #60113 /* ~"Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60114 /* ~"Do you know why I was traveling with these four?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60115 /* ~"Do you know why we were traveling together?"~ */ GOTO 341
  IF ~~ THEN REPLY #60116 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60117 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 332.2 333.2 334.0
  SAY #60118 /* ~"I *know* little of him. I *know* he was a soldier. I *know* that alcohol had taken a portion of his life. In blindness, he had come to *know* a different sight. In *knowing* this, he had become strong. Yet he did not *know* his own strength."~ */
  IF ~  Global("Xachariah_Name","GLOBAL",0)
~ THEN REPLY #60119 /* ~"Do you know what his name was?"~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 336
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60120 /* ~"How did you come to be my slave?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60121 /* ~"Tell me of the others."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60122 /* ~"Tell me of the others."~ */ GOTO 333
  IF ~~ THEN REPLY #60123 /* ~"Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60124 /* ~"Do you know why I was traveling with these four?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60125 /* ~"Do you know why we were traveling together?"~ */ GOTO 341
  IF ~~ THEN REPLY #60126 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60127 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.0
  SAY #60128 /* ~Before Dak'kon can respond, you suddenly *know* the answer. There is a crawling sensation in the back of your skull, and you feel the name surfacing, as if from beneath a great muddy ocean.~ */
  IF ~~ THEN REPLY #60129 /* ~Echo: "His name was *Xachariah*... he was blind, but in blindness, he had gained a second sight that allowed him to see things hidden to others. He was an archer, and where his arrows flew, they found the hearts of their targets."~ */ DO ~SetGlobal("Xachariah_Name","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ JOURNAL #60130 /* ~In speaking to Dak'kon, I recalled the name of the blind archer that once traveled with me. His name was Xachariah; he possessed a second sight that allowed his arrows to find the hearts of their targets.~ */ GOTO 337
END

IF ~~ THEN BEGIN 337 // from: 336.0
  SAY #60131 /* ~"*Know* that Xachariah was the name he carried. And *know* that his name pierced the heart of many enemies."~ */
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60132 /* ~"How did you come to be my slave?"~ */ GOTO 330
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60133 /* ~"Tell me about the others."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60134 /* ~"Tell me about the others."~ */ GOTO 333
  IF ~~ THEN REPLY #60135 /* ~"Why did you not want to tell me about the four on the tattoo?"~ */ GOTO 338
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60136 /* ~"Do you know why I was traveling with these four?"~ */ GOTO 340
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60137 /* ~"Do you know why we were traveling together?"~ */ GOTO 341
  IF ~~ THEN REPLY #60138 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60139 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 329.4 330.2 331.2 332.3 333.4 334.4 335.4 337.3
  SAY #60140 /* ~"The four are bound with a symbol that is *known* to me."~ */
  IF ~~ THEN REPLY #60141 /* ~"What symbol?"~ */ GOTO 339
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60142 /* ~"I'm not interested in the symbol right now; tell me everything you know about those four that are on the tattoo."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60143 /* ~"I'm not interested in the symbol right now; tell me everything you know about those four that are on the tattoo."~ */ GOTO 333
  IF ~~ THEN REPLY #60144 /* ~"We'll speak of this later. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60145 /* ~"Never mind, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 338.0 340.0 341.0
  SAY #60146 /* ~"The symbol is torment. Fell said that you have always worn it, for the flesh *knows* that it suffers, even when the mind does not."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60147 /* ~"Enough about the symbol. Tell me everything you know about those four that are on the tattoo."~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60148 /* ~"Enough about the symbol. Tell me everything you know about those four that are on the tattoo."~ */ GOTO 333
  IF ~  Global("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60149 /* ~"I see. Can you tell me anything more about the four on the tattoo?"~ */ GOTO 332
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #60150 /* ~"I see. Can you tell me anything more about the four on the tattoo?"~ */ GOTO 333
  IF ~~ THEN REPLY #60151 /* ~"Very well. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60152 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 332.4 334.5 335.5 337.4
  SAY #60153 /* ~"The tattoo speaks nothing of their path, only the symbol that bound them. *Know* that the path may have been *known* to only you."~ */
  IF ~~ THEN REPLY #60154 /* ~"Tell me about the symbol."~ */ GOTO 339
  IF ~~ THEN REPLY #60155 /* ~"Enough about the symbol. Tell me everything you know about those four that are on the tattoo."~ */ GOTO 332
  IF ~~ THEN REPLY #60156 /* ~"I see. Can you tell me anything more about the four on the tattoo?"~ */ GOTO 332
  IF ~~ THEN REPLY #60157 /* ~"Very well. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60158 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 341 // from: 333.5 334.6 335.6 337.5
  SAY #60159 /* ~"*Know* that the path was *known* to only you, and it was your will that we not *know* it. *Know* that those that walked your path *knew* only the symbol that bound them."~ */
  IF ~~ THEN REPLY #60160 /* ~"Very well... tell me about the symbol."~ */ GOTO 339
  IF ~~ THEN REPLY #60161 /* ~"Enough about the symbol. Tell me everything you know about the others on the tattoo."~ */ GOTO 333
  IF ~~ THEN REPLY #60162 /* ~"I see. Can you tell me anything more about the four on the tattoo?"~ */ GOTO 333
  IF ~~ THEN REPLY #60163 /* ~"Very well. For now, there are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60164 /* ~"That is all I wished to know, Dak'kon. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 342 // from: 270.0
  SAY #60165 /* ~"*Know* that the speech of the People has its foundation in history. All things are as story to us; metaphor is a tool, and an inspiration to the strength. *Know* when we speak of Toryg's table, we remember that Toryg was noted for his hospitality and good will. When we speak of Selqant's heart, we recall the lecherous and cruel nature of Selqant."~ */
  IF ~~ THEN REPLY #60166 /* ~"I understand. Will you teach me?"~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Know_Githzerai_Speak","GLOBAL",1)
GiveExperience(Protagonist,600)
~ JOURNAL #60167 /* ~Dak'kon has taught me much of the githzerai language. It seems to be based on metaphors and stories... I don't know all the specifics, but if I ever hear a new term, I can ask Dak'kon to tell me of its meaning.~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 342.0
  SAY #60168 /* ~Dak'kon teaches you some of the common forms of speech: A wise man is said to have "wrote the book of the Anarchs," while to accuse another of treason is to remember "Vilquar's Eye." It is said of generous people that their "cupboards are bare." Common greetings include "Hail, sword-ringer," and "Zerchai's kin bow to you" - to which one should respond, "And the traveler is pleased." Dak'kon is a skilled teacher; after his instruction, you feel capable of exchanging proper greetings with other githzerai.~ */
  IF ~~ THEN REPLY #60169 /* ~"I had some other questions about the githzerai..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 231
  IF ~~ THEN REPLY #60170 /* ~"Thanks, Dak'kon. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60171 /* ~"I've heard enough for now. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 224.0
  SAY #60172 /* ~As Dak'kon says the words, your vision bleeds outwards, and a crawling sensation begin to worm its way up through the back of your skull... you feel nauseous for a moment, and your vision is suddenly as chaos, smeared, twisted, and you are someplace else, someplace in the *past*...~ */
  IF ~~ THEN REPLY #60173 /* ~Surrender to the memory...~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetAnimState("Dakkon",ANIM_MIMESTAND)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 345
  IF ~~ THEN REPLY #60174 /* ~Shake off the memory...~ */ GOTO 225
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #60175 /* ~Everything around you is in turmoil - your vision is hazy, swirling, dizzying, all at ONCE... there is mist, pockets of fire, islands of mud, stone, and ice-covered rocks swimming through the Plane like fish, impacting and dissolving, droplets of water arcing through the howling air, and lashing your skin like teeth - you choke back your nausea, and you steady yourself; this is the Plane of *Limbo,* all is chaos, nothing is stable... you focus on the dying man that lies before you. It is why you have come to this place.~ */
  IF ~~ THEN REPLY #60176 /* ~Echo: Examine the *zerth,* see if he still lives.~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 346
  IF ~~ THEN REPLY #60177 /* ~Shake off the memory...~ */ GOTO 225
END

IF ~~ THEN BEGIN 346 // from: 345.0
  SAY #60178 /* ~The 'man' is a githzerai, his body embedded in an earthen pocket that swirls around him - unconsciously, he has formed a grave from the elements, and though bits of fire and water lick at his face, he does not respond. His hands are ashen, his coal-black eyes focusing on nothing - his emaciated frame speaks of starvation, but you know it is the least of his wounds. It is faith that dealt him the mortal blow.~ */
  IF ~~ THEN REPLY #60179 /* ~Echo: Look for the blade he carries.~ */ GOTO 347
  IF ~~ THEN REPLY #60180 /* ~Shake off the memory...~ */ GOTO 225
END

IF ~~ THEN BEGIN 347 // from: 346.0
  SAY #60181 /* ~In his limp left hand is a twisted mass of metal, its surface having melted around his hand like a gauntlet. As you watch, it steams and hisses, like a diseased snake. The githzerai does not seem to be aware of it... but it is that weapon that has brought you here.~ */
  IF ~~ THEN REPLY #60182 /* ~Echo: "Dak'kon, *zerth* of Shra'kt'lor-Drowning, last wielder of the *karach* blade, know that I have come to you with the words of Zerthimon, carved not in chaos, but in stone, carved by the will in an Unbroken Circle."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 348
  IF ~~ THEN REPLY #60183 /* ~Shake off the memory...~ */ GOTO 225
END

IF ~~ THEN BEGIN 348 // from: 347.0
  SAY #60184 /* ~At the word 'Zerthimon,' Dak'kon's eyes roll in their sockets, and they attempt to focus upon you. With effort, he cracks his mouth to speak, but only a dry hiss emerges. You bring forth the stone from your pack and hold it before him so he can see.~ */
  IF ~~ THEN REPLY #60185 /* ~Echo: "Know that the words of Zerthimon inscribed upon this stone are true, and know that your divided mind need be divided no longer. All you must do is take the stone and you shall *know* yourself again."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 349
  IF ~~ THEN REPLY #60186 /* ~Shake off the memory...~ */ GOTO 225
END

IF ~~ THEN BEGIN 349 // from: 348.0
  SAY #60187 /* ~Dak'kon's eyes flicker over the Unbroken Circle of Zerthimon, and for a moment, you think he might be too close to death to recognize it. Then the right hand twitches, and he pulls it slowly from its earthen prison, the clumps of earth streaming off it become water in Limbo's chaotic winds. His skeletal hands clutch the stone, like a drowning man, and his eyes flash.~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",0)
~ THEN REPLY #60188 /* ~Echo: "Know that I have saved your life, Dak'kon, *zerth* of Shra'kt'lor."~ */ DO ~SetGlobal("Memory_Shraktlor","GLOBAL",1)
GiveExperience(Protagonist,6000)
SetAnimState("Dakkon",ANIM_MIMESTAND)
~ JOURNAL #60191 /* ~In speaking to Dak'kon, I remembered saving his life at Shra'kt'lor with the Unbroken Circle of Zerthimon... the strange thing is, I don't think I wanted to save him - I wanted to save the *karach* blade from being destroyed. But I don't know *why.*~ */ GOTO 350
  IF ~  GlobalGT("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #60189 /* ~Echo: "Know that I have saved your life, Dak'kon, *zerth* of Shra'kt'lor."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 350
  IF ~~ THEN REPLY #60190 /* ~Shake off the memory...~ */ GOTO 225
END

IF ~~ THEN BEGIN 350 // from: 349.0 349.1
  SAY #60192 /* ~Dak'kon's eyes turn from the stone and flicker over you, and he hisses again, too dry for a moment to muster the words. He blinks, slowly, then speaks, his voice barely above a whisper, but the words are what you wanted to hear. "My... life is yours... until yours is no more..."~ */
  IF ~~ THEN REPLY #60193 /* ~Close your eyes, return to the present.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 225
END

IF ~~ THEN BEGIN 351 // from: 318.0
  SAY #60194 /* ~Dak'kon shakes his head. "I can re-direct one towards the craft of war, but I cannot advance their skill. My weapons are not of steel, but of *will* and *knowing* of the self."~ */
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #60195 /* ~"Maybe you can help me with other training..."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 318
  IF ~~ THEN REPLY #60196 /* ~"Very well. If I ever need to resume the fighter profession, I'll ask you. I had some other questions..."~ */ GOTO 193
  IF ~~ THEN REPLY #60197 /* ~"Never mind, then. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 193.5
  SAY #60198 /* ~"The hag... she *knows* NOTHING..." Dak'kon's blade ripples, and you watch as the edges become grayed and dulled. His face clenches, and he speaks through his teeth. "It is not my *will* to speak of this."~ */
  IF ~~ THEN REPLY #60199 /* ~"I want to hear you speak of it... in fact, Ravel said a number of things in that conversation which interested me."~ */ GOTO 353
  IF ~~ THEN REPLY #60200 /* ~"Very well. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60201 /* ~"Then we'll speak no more of it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #60202 /* ~"*Know* that your will is my *will.* When you speak, *know* I must hear you. *Know* that your words may stay my blade or guide it to the throat of another."~ */
  IF ~~ THEN REPLY #60203 /* ~"What? But why?"~ */ DO ~SetGlobal("Dakkon_Slave","GLOBAL",1)
GiveExperience(Protagonist,3000)
~ GOTO 354
  IF ~~ THEN REPLY #60204 /* ~"We'll speak no more of this. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60205 /* ~"I don't wish to hear any more. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #60206 /* ~Dak'kon seems to look through you, as if meeting your gaze is unbearable. "Your path is my path. I am chained to you."~ */
  IF ~~ THEN REPLY #60207 /* ~"You're my slave?"~ */ DO ~SetAnimState("Dakkon",ANIM_MIMESTAND)
~ GOTO 355
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #60208 /* ~At the word 'slave,' Dak'kon's face collapses in pain, as if he was struck... it is as if the word was a dagger, stabbing at the core of his suffering.~ */
  IF ~~ THEN REPLY #60209 /* ~"But... why, Dak'kon?"~ */ GOTO 356
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #60210 /* ~"*Know* it is... a long tale, and *know* that nothing is gained in the telling."~ */
  IF ~~ THEN REPLY #60211 /* ~"I would hear it."~ */ JOURNAL #59286 /* ~Dak'kon told me the nature of his slavery... when I saved his life, he promised to serve me until I died. But he wasn't aware that I was immortal; in so doing, he promised the remainder of his life to mine.~ */ GOTO 215
  IF ~~ THEN REPLY #60212 /* ~"Never mind, then. There are other things I would *know*..."~ */ GOTO 193
  IF ~~ THEN REPLY #60213 /* ~"Then we'll speak no more of it. Let's move on."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from:
  SAY #60401 /* ~"We are to help a githyanki? What draws him here, away from the song of blood woven by his brothers?"~ */
  IF ~~ THEN EXTERN ~DANIZIUS~ 17
END

IF ~~ THEN BEGIN 358 // from:
  SAY #61670 /* ~"They are but specks upon Zerthimon's path."~ [DAK204] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Dakkon","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 359 // from:
  SAY #61671 /* ~"In the eyes of Zerthimon, I am nothing."~ [DAK203A] */
  IF ~~ THEN EXTERN ~BGRACE~ 15
END

IF ~~ THEN BEGIN 360 // from:
  SAY #61672 /* ~"A long road, must I still travel. This is but the beginning."~ [DAK203B] */
  IF ~~ THEN DO ~SetGlobal("Grace_Talked_Dakkon","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 361 // from:
  SAY #64995 /* ~"One moment. Observe the ground here." Peering down, you notice a number of dirty footprints that lead into the archway... and do not turn around. "Many have passed this way. The archway must form a portal."~ */
  IF ~~ THEN REPLY #64997 /* ~"A portal? How do we open it?"~ */ GOTO 362
  IF ~~ THEN REPLY #64998 /* ~"Maybe so. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from: 361.0
  SAY #64996 /* ~"I do not *know,* but judging from the number who have used this portal, the key cannot be a rare item. Perhaps one of the inhabitants of the square will *know* of the portal's use."~ */
  IF ~~ THEN REPLY #64999 /* ~"I'll ask around, then. Let's go."~ */ EXIT
END

IF ~~ THEN BEGIN 363 // from: 318.5
  SAY #68059 /* ~"*Know* that I am not a teacher in this, but *know* that I may serve as a guide. I do not *know* how humans come to be versed in the 'Art,' but when you learn the Art, return and ask again."~ */
  IF ~~ THEN REPLY #68060 /* ~"I'll ask again when I'm a mage, then. In the meantime, I had some other questions instead..."~ */ GOTO 193
  IF ~~ THEN REPLY #68061 /* ~"I'll see if I can find a mage teacher first, then. Let's move on."~ */ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",3)
~ THEN BEGIN 364 // from:
  SAY #68195 /* ~As your power touches him, Dak'kon takes a staggered breath, then looks up weakly. It looks like he's barely clinging to life. ~ */
  IF ~  Global("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68196 /* ~"Once, Dak'kon, you made the Pronouncement of Two Deaths as One. It is that time."~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
SetGlobal("BD_TWO_DEATHS","GLOBAL",1)
JoinPartyEx(TRUE)
~ GOTO 367
  IF ~  GlobalLT("Dakkon_Teach","GLOBAL",19)
Global("Absorb","GLOBAL",0)
~ THEN REPLY #68197 /* ~"Dak'kon, I need you now. Can you help me?"~ */ DO ~SetGlobal("Fortress_Dakkon","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 365
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68340 /* ~AWAKEN, DAK'KON OF SHRA'KT'LOR, LAST WIELDER OF THE *KARACH* BLADE.~ */ GOTO 368
END

IF ~~ THEN BEGIN 365 // from: 364.1 367.0
  SAY #68198 /* ~Dak'kon takes a breath, then steadies himself, his blade *sharpening* as you watch. "This blade is yours."~ [DAK025] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68199 /* ~"Very well."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68200 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68201 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68202 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68203 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68204 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68240 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68433 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68434 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68444 /* ~"Very well."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from: 193.4
  SAY #68255 /* ~Dak'kon shakes his head. "*Know* that enemies are near. Now is not the time."~ */
  IF ~~ THEN REPLY #68256 /* ~"Very well."~ */ EXIT
END

IF ~~ THEN BEGIN 367 // from: 364.0
  SAY #68270 /* ~As you speak the words, Dak'kon's eyes close - for a moment, you think he can't hold on to life any longer - then they open, and his eyes are no longer the dead black you remember. Instead, they carry the metal texture of his blade, and you know that Dak'kon has become something *else* - something far more powerful.~ */
  IF ~~ THEN DO ~GiveExperience("Dakkon",2000000)
SetGlobal("BD_DAKKON_MORALE","GLOBAL",20)
PermanentStatChange("Dakkon",STR,RAISE,1)
PermanentStatChange("Dakkon",DEX,RAISE,3)
PermanentStatChange("Dakkon",CON,RAISE,3)
FullHealEx("Dakkon")
~ GOTO 365
END

IF ~~ THEN BEGIN 368 // from: 364.2
  SAY #68341 /* ~As he hears your words, Dak'kon slowly nods. "Your voice... have you at last come to *know* yourself?"~ */
  IF ~~ THEN REPLY #68342 /* ~YES. IT WAS A... DIFFICULT THING, AND IT COST MANY LIFETIMES. MANY SUFFERED SO THAT I MIGHT KNOW MYSELF AGAIN.~ */ GOTO 369
END

IF ~~ THEN BEGIN 369 // from: 368.0
  SAY #68343 /* ~"The *knowing* of one's self is a difficult path."~ */
  IF ~~ THEN REPLY #68344 /* ~IN KNOWING IT, I KNOW WHERE I SHALL SOON BE BOUND. TIME AND FATE COME HERE EVEN AS WE SPEAK, AND I WILL NOT BE HERE MUCH LONGER. I WILL RETURN YOU TO SIGIL, DAK'KON, IF YOU WISH.~ */ GOTO 370
END

IF ~~ THEN BEGIN 370 // from: 369.0
  SAY #68345 /* ~Dak'kon falls silent for a moment; when he speaks again, his voice is sharp, as if severing a link. "*Know* that once I owed you a debt. *Know* that you saved my life, and *know* that I followed you to settle that debt."~ */
  IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371 // from: 370.0
  SAY #68346 /* ~"I have paid for your life with mine. The debt is settled."~ [DAK030] */
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68347 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68348 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68349 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68350 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68351 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68496 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68497 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68498 /* ~VERY WELL, DAK'KON. OUR TWO DEATHS WERE AS ONE. YOU WILL LEAVE THIS PLACE WITH YOUR FREEDOM.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Dakkon","GLOBAL",4)
~ THEN BEGIN 372 // from:
  SAY #68412 /* ~Dak'kon nods at you. "This blade is yours."~ [DAK025] */
  IF ~~ THEN REPLY #68413 /* ~"Very well, let's put it to use..."~ */ EXIT
END
