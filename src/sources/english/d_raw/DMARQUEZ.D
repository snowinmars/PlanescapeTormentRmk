// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARQUEZ.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARQUEZ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49143 /* ~You see a burly blond man wearing the armor of a Harmonium officer. His face is rosy with drink, and behind his smile, his eyes are filled with bitterness. He launches into speech without preamble. "Here's the deal. Slavers have kidnapped Barse's daughter. It's your job to get her back. I'll tell you where to find them; you go kill them and report back to me, and I'll help you find the deva you're looking for. I'll even teach you weapons. Agreed?"~ */
  IF ~~ THEN REPLY #49144 /* ~"Agreed."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49145 /* ~"I have a few questions about this, first..."~ */ GOTO 2
  IF ~~ THEN REPLY #49146 /* ~"I have a few questions about something else..."~ */ GOTO 2
  IF ~~ THEN REPLY #49147 /* ~"No. I won't do it."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50464 /* ~"They're all dead already."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50465 /* ~"They're all dead already. She died too, though."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0 4.2 5.0 7.4 12.0 17.0
  SAY #49148 /* ~"Last I heard, the slavers were to the east in Inner Curst - they've got the nod from the city guard. Find 'em, make sure Barse's daughter is all right, and kill them. When you're done, come back here and I'll tell you the first part of the key you need to find the deva."~ */
  IF ~~ THEN REPLY #49149 /* ~"All right. Answer some questions about this for me."~ */ JOURNAL #49153 /* ~I have accepted a commission to go find the slavers behind the city barracks, make sure Tainted Barse's daughter is all right, and kill them. I'm to do this for Marquez; in return, he'll give me the first part of the key I need to get to where the imprisoned deva is.~ */ GOTO 7
  IF ~~ THEN REPLY #49150 /* ~"Fine. Farewell."~ */ JOURNAL #49153 /* ~I have accepted a commission to go find the slavers behind the city barracks, make sure Tainted Barse's daughter is all right, and kill them. I'm to do this for Marquez; in return, he'll give me the first part of the key I need to get to where the imprisoned deva is.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 12.1 12.2
  SAY #49157 /* ~"A few questions? No. There are only two possible answers. Are you for slavery, or against it?"~ */
  IF ~~ THEN REPLY #49158 /* ~"I'm against it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marquez_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #49159 /* ~"I'm for it."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marquez_1","GLOBALGood",-2)
~ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49160 /* ~"Then you'll help, right? Yes... or no."~ */
  IF ~~ THEN REPLY #49161 /* ~"I'll help."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49171 /* ~"I won't."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #49173 /* ~He looks at you with disgust in his eyes. "Does that mean you won't help... even with your own self-interest on the line?"~ */
  IF ~~ THEN REPLY #49174 /* ~"What do you mean?"~ */ GOTO 5
  IF ~~ THEN REPLY #49176 /* ~"That's right. I won't help."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~~ THEN REPLY #49177 /* ~"Oh, I'll help."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #49178 /* ~"What I mean is that everyone knows you're looking for the deva. Tainted Barse knows a way for you to find him. You'd be a fool to turn that down."~ */
  IF ~~ THEN REPLY #49179 /* ~"Fine, then. I'll help."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49181 /* ~"I'm still not helping."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 0.3 3.1 4.1 5.1 12.3 17.1
  SAY #49182 /* ~"Then you're a larger fool than I thought, and we have nothing to say to each other. Farewell." He turns back to his drink.~ */
  IF ~~ THEN REPLY #49183 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0 8.1 9.1 10.0 11.0 13.2 21.0
  SAY #49184 /* ~"What?"~ */
  IF ~~ THEN REPLY #49185 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #49186 /* ~"What are you doing here?"~ */ GOTO 9
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #49187 /* ~"What's your stake in this slavery thing, anyway?"~ */ GOTO 10
  IF ~~ THEN REPLY #49188 /* ~"What can you tell me about the key?"~ */ GOTO 11
  IF ~~ THEN REPLY #49189 /* ~"Where are these slavers again?"~ */ GOTO 1
  IF ~~ THEN REPLY #49190 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49191 /* ~"I'm Marquez, formerly a Measure Three of the Harmonium. Formerly, I said, because I quit not so long ago."~ */
  IF ~~ THEN REPLY #49192 /* ~"Why?"~ */ GOTO 10
  IF ~~ THEN REPLY #49194 /* ~"I had some more questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #49195 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1
  SAY #49196 /* ~"Drinking. What does it look like? I'm waiting for someone to come along and right the wrongs I've made. You seem like a good fellow for the job."~ */
  IF ~~ THEN REPLY #49197 /* ~"What wrongs?"~ */ GOTO 10
  IF ~~ THEN REPLY #49199 /* ~"I had some more questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #49200 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.0 9.0
  SAY #49201 /* ~"I found out that the Harmonium - a group I'd believed in from the start - was buying people, kidnapping them, taking them against their will and ruining their lives. It was sucking the life out of people for daring to be different, and I couldn't take it anymore. The slavers you'll be fighting are old comrades of mine." He spits on the floor. "Berks. Liars. You can't trust anyone anymore."~ */
  IF ~~ THEN REPLY #49203 /* ~"I had some more questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #49204 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3
  SAY #49205 /* ~"Five part key. Verbal. Held in our heads." He smiles toothily at you. "You won't get it out of me by torture, and I suspect you won't find the others easy either. We've locked away a secret, and you'll need all five parts to find out what it is."~ */
  IF ~~ THEN REPLY #49206 /* ~"I had some more questions for you..."~ */ GOTO 7
  IF ~~ THEN REPLY #49207 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 17 even though they appear after this state */
~  Global("Slavers","GLOBAL",1)
NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #49208 /* ~"You're back." He swallows his drink. "Barse sent you. Good. Here's the deal. Slavers have kidnapped his daughter. It's your job to get them back. I'll tell you where to find them; you go kill them and report back to me. I'll help you find the deva, and hells, maybe even teach you weapons. Agreed?"~ */
  IF ~~ THEN REPLY #49209 /* ~"Agreed."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49210 /* ~"I have a few questions about this, first..."~ */ GOTO 2
  IF ~~ THEN REPLY #49211 /* ~"I have a few questions about something else..."~ */ GOTO 2
  IF ~~ THEN REPLY #49212 /* ~"No. I won't do it."~ */ DO ~SetGlobal("Slavers","GLOBAL",6)
~ GOTO 6
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50468 /* ~"They're all dead already."~ */ DO ~AddexperienceParty(131250)
SetGlobal("Slavers","GLOBAL",5)
SetGlobal("Curst_Key","GLOBAL",2)
~ GOTO 14
  IF ~  Global("Skatch_Dead_KAPUTZ","GLOBAL",1)
Global("Jasilya_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50469 /* ~"They're all dead already. She died too, though."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
END

IF WEIGHT #4 /* Triggers after states #: 16 17 even though they appear after this state */
~  GlobalGT("Slavers","GLOBAL",0)
GlobalLT("Curst_Key","GLOBAL",2)
~ THEN BEGIN 13 // from:
  SAY #49214 /* ~Marquez looks up from the table as you approach. "You here about Barse's daughter Jasilya?"~ */
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #49215 /* ~"She's free. She should be back here shortly."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",5)
AddexperienceParty(65000)
~ GOTO 14
  IF ~  Global("Skatch_DEAD_KAPUTZ","GLOBAL",1)
Global("Jasilya_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #49216 /* ~"She died as I tried to rescue her."~ */ DO ~SetGlobal("Curst_Key","GLOBAL",2)
SetGlobal("Slavers","GLOBAL",7)
AddexperienceParty(65000)
~ GOTO 15
  IF ~~ THEN REPLY #49217 /* ~"No. I had some questions, though..."~ */ GOTO 7
  IF ~~ THEN REPLY #50466 /* ~"Teach me something about weapons."~ */ GOTO 21
  IF ~~ THEN REPLY #67822 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.4 12.4 13.0
  SAY #49219 /* ~He claps you on the shoulder. "Good work. You want the first part of the key that will get you under Curst? Here it is: 'Such place eternal justice had prepared for those rebellious...' Go talk to Kitla over there. She's got the second part of the key. Or I can teach you weapons."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Teach me, then."~ */ JOURNAL #66862 /* ~I was given the first part of the Key that would unlock a passage to take me to the deva. The words were, "Such place eternal justice had prepared for those rebellious...". I am now to go talk to someone named Kitla in the Traitor's Gate tavern.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Teach me, then."~ */ JOURNAL #66862 /* ~I was given the first part of the Key that would unlock a passage to take me to the deva. The words were, "Such place eternal justice had prepared for those rebellious...". I am now to go talk to someone named Kitla in the Traitor's Gate tavern.~ */ GOTO 20
  IF ~~ THEN REPLY #67824 /* ~"Thanks. Farewell."~ */ JOURNAL #66862 /* ~I was given the first part of the Key that would unlock a passage to take me to the deva. The words were, "Such place eternal justice had prepared for those rebellious...". I am now to go talk to someone named Kitla in the Traitor's Gate tavern.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.5 12.5 13.1
  SAY #49222 /* ~"That's a true pity. I'm sure it was unavoidable." His eyes are unreadable as they stare at you. "This is the first part of the key: 'Such place eternal justice had prepared for those rebellious...' Go talk to Kitla over there. She's got the second part of the key. Or I can teach you weapons."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Teach me, then."~ */ JOURNAL #66862 /* ~I was given the first part of the Key that would unlock a passage to take me to the deva. The words were, "Such place eternal justice had prepared for those rebellious...". I am now to go talk to someone named Kitla in the Traitor's Gate tavern.~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Teach me, then."~ */ JOURNAL #66862 /* ~I was given the first part of the Key that would unlock a passage to take me to the deva. The words were, "Such place eternal justice had prepared for those rebellious...". I am now to go talk to someone named Kitla in the Traitor's Gate tavern.~ */ GOTO 20
  IF ~~ THEN REPLY #67826 /* ~"Thanks. Farewell."~ */ JOURNAL #66862 /* ~I was given the first part of the Key that would unlock a passage to take me to the deva. The words were, "Such place eternal justice had prepared for those rebellious...". I am now to go talk to someone named Kitla in the Traitor's Gate tavern.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  GlobalGT("Curst_Key","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #49224 /* ~"You don't need to talk to me anymore. We've said all we need to say. I told you to talk to Kitla; she'll steer you from here. Let me drink in peace, unless you want some weapons training..."~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Teach me, then."~ */ GOTO 22
  IF ~  !Class(Protagonist,FIGHTER)
~ THEN REPLY #29133 /* ~"Teach me, then."~ */ GOTO 20
  IF ~~ THEN REPLY #67821 /* ~"All right. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Slavers","GLOBAL",6)
~ THEN BEGIN 17 // from:
  SAY #49230 /* ~"You change your mind about helping Barse, or do you have some idiotic questions for me?"~ */
  IF ~~ THEN REPLY #49228 /* ~"I changed my mind. I'll help."~ */ DO ~SetGlobal("Slavers","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #49229 /* ~"I haven't changed my mind."~ */ GOTO 6
END

IF WEIGHT #5 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 18 // from:
  SAY #49231 /* ~You see a burly blond man wearing the armor of a Harmonium officer. His face is rosy with drink, and behind his smile, his eyes are filled with bitterness. He launches into speech without preamble. "Barse sent you? No? Then stop wasting my time." He turns back to his whiskey, and steadfastly ignores you.~ */
  IF ~~ THEN REPLY #49232 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #6 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 19 // from:
  SAY #49233 /* ~"Barse send you over? No? Then stop wasting my time." He turns away from you, steadfastly ignoring you.~ */
  IF ~~ THEN REPLY #49234 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 14.1 15.1 16.1
  SAY #66962 /* ~"You're not one who just dallies with weapons; I can see that by your scars. Still, you don't seem like you live by the fighting arts right now. You want to give up what you are now?"~ */
  IF ~~ THEN REPLY #66978 /* ~"Yes."~ */ DO ~SetNamelessClass(FIGHTER)
~ GOTO 22
  IF ~~ THEN REPLY #66979 /* ~"No."~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #66963 /* ~"You ain't ready for me to teach you. Finish up with Jasilya and Barse, and maybe then I'll teach you something."~ */
  IF ~~ THEN REPLY #66980 /* ~"Fine. I had a few more questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #66981 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.0 20.0
  SAY #66964 /* ~"You carry yourself like you already know your way around a weapon, so we'll just cut right to the chase. What do you want?"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #66982 /* ~"Can you tell me if I am ready for more instruction?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66983 /* ~"Can you tell me if I'm ready for more instruction?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #66984 /* ~"I'm fairly proficient in all weapons. Is there anything more you can teach me?"~ */ JOURNAL #66986 /* ~Marquez told me that if I want to learn any more about weapons, I should seek out Korur, in Sigil's Lower Ward. I hope I can get back there to take advantage of it.~ */ GOTO 24
  IF ~~ THEN REPLY #66985 /* ~"Nothing right now. I'll come back later."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #66965 /* ~"Then why are you even bothering me? Go on. I've got some important drinking to do."~ */
  IF ~~ THEN REPLY #66987 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 34.2
  SAY #66966 /* ~He evaluates your skill, and whistles with surprise. "Brother, you've got skills beyond belief. I can think of only person who can teach you more: a fellow by the name of Korur, in Sigil's Lower Ward. Go find him, if you can."~ */
  IF ~~ THEN REPLY #66988 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 22.0 33.1 34.0 35.0
  SAY #66967 /* ~"You're not ready to learn any more. Come back sometime when you are."~ */
  IF ~~ THEN REPLY #66989 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.1 27.6 28.6 29.6 30.6 31.6 33.0 34.1 35.1
  SAY #66968 /* ~"I can teach you whatever you want to know... to a point. What weapons did you want to learn about?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66990 /* ~"Teach me to fight with my fists."~ */ GOTO 27
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66991 /* ~"Teach me how to use daggers."~ */ GOTO 28
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66992 /* ~"Teach me how to use clubs."~ */ GOTO 29
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66993 /* ~"Teach me how to use axes."~ */ GOTO 30
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #66994 /* ~"Teach me how to use hammers."~ */ GOTO 31
  IF ~~ THEN REPLY #66995 /* ~"I'm not up to training today. I'll come back later." ~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #66969 /* ~"You want fisticuffs? Bloody and up close?"~ */
  IF ~  ProficiencyLT(Protagonist,FIST,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66996 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66997 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66998 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #66999 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,FIST,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67000 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,FIST,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,FIST,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67001 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67030 /* ~"No... what other weapons can you train me in?"~ */ GOTO 26
  IF ~~ THEN REPLY #67031 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #66970 /* ~"Daggers, eh? A thug's weapon, but also good for that... personal touch. You want to learn?"~ */
  IF ~  ProficiencyLT(Protagonist,DAGGER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67002 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67003 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67004 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67005 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,DAGGER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67006 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,DAGGER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,DAGGER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67007 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67029 /* ~"No... what other weapons can you train me in?"~ */ GOTO 26
  IF ~~ THEN REPLY #67032 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #66971 /* ~"You want to give an old-fashioned clubbing, eh?"~ */
  IF ~  ProficiencyLT(Protagonist,CLUB,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67008 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67009 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67010 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67011 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,CLUB,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67012 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,CLUB,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,CLUB,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67013 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67028 /* ~"No... what other weapons can you train me in?"~ */ GOTO 26
  IF ~~ THEN REPLY #67033 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #66972 /* ~He whistles. "You're looking to cause some pain, eh? You want to learn axes?"~ */
  IF ~  ProficiencyLT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67014 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67015 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67016 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 33
  IF ~  ProficiencyGT(Protagonist,AXE,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67017 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,AXE,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67018 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,AXE,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,AXE,3)
!Global("Specialist","GLOBAL",1)
~ THEN REPLY #67019 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67027 /* ~"No... what other weapons can you train me in?"~ */ GOTO 26
  IF ~~ THEN REPLY #67034 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 26.4
  SAY #66973 /* ~"A gentleman's weapon - if that gentleman's got thews of iron. You want to learn hammers?"~ */
  IF ~  ProficiencyLT(Protagonist,HAMMER,3)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67020 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,2)
!Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67021 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 35
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67022 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",1)
!Global("Specialist","GLOBAL",4)
~ THEN REPLY #67023 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~  ProficiencyLT(Protagonist,HAMMER,4)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67024 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~IncrementProficiency(Protagonist,HAMMER,1)
IncrementExtraProficiency(Protagonist,-1)
~ GOTO 32
  IF ~  ProficiencyGT(Protagonist,HAMMER,3)
Global("Specialist","GLOBAL",4)
~ THEN REPLY #67025 /* ~"Yes, I'd like to learn to use this weapon."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 34
  IF ~~ THEN REPLY #67026 /* ~"No... what other weapons can you train me in?"~ */ GOTO 26
  IF ~~ THEN REPLY #67035 /* ~"No, I don't think I want to train today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.0 27.2 27.4 28.0 28.2 28.4 29.0 29.2 29.4 30.0 30.4 31.0 31.2 31.4
  SAY #66974 /* ~"All right, then! Let's get started!"~ */
  IF ~~ THEN REPLY #67037 /* ~"Whenever you're ready..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 30.2 32.0
  SAY #66975 /* ~You spar. After some time, he wipes sweat from his brow. "You're damn good. You want anything else?"~ */
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67038 /* ~"Thank you. I'd like to learn other weapons, if you would teach me."~ */ GOTO 26
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67039 /* ~"Thank you. I'd like to learn other weapons, if you would teach me."~ */ GOTO 25
  IF ~~ THEN REPLY #67040 /* ~"Thank you. That's all I want to know today."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.3 27.5 28.3 28.5 29.3 29.5 30.3 30.5 31.3 31.5
  SAY #66976 /* ~He studies your ability, and says, "You've learned as much about that fighting style as I could possibly teach you. You want to learn more about it, find your way to Sigil and talk to Korur, in the Lower Ward. He's a master in just about everything."~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67041 /* ~"Can you teach me a different weapon?"~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67042 /* ~"Can you teach me a different weapon?"~ */ GOTO 26
  IF ~  ExtraProficiencyGT(Protagonist,0)
Proficiency(Protagonist,FIST,4)
Proficiency(Protagonist,DAGGER,4)
Proficiency(Protagonist,HAMMER,4)
Proficiency(Protagonist,AXE,4)
Proficiency(Protagonist,CLUB,4)
~ THEN REPLY #67043 /* ~"Can you teach me a different weapon?"~ */ GOTO 24
  IF ~~ THEN REPLY #67044 /* ~"All right, then. Thanks. Farewell." ~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.1 28.1 29.1 30.1 31.1
  SAY #66977 /* ~He studies your ability, and says, "That's as much as you can learn about that. If you haven't devoted your career to studying weapons - if you haven't specialized in the path of the warrior - you're going to hit a wall when you study weaponry. You need to *specialize.*"~ */
  IF ~  ExtraProficiency(Protagonist,0)
~ THEN REPLY #67045 /* ~"Can you teach me a different weapon?"~ */ JOURNAL #68288 /* ~I was told I couldn't learn more about weapons unless I specialize in the path of the warrior. A more rigorous devotion to the fighting arts, never forsaking them for thievery or magecraft, should grant me the specialization my tutor speaks of.~ */ GOTO 25
  IF ~  ExtraProficiencyGT(Protagonist,0)
~ THEN REPLY #67046 /* ~"Can you teach me a different weapon?"~ */ JOURNAL #68288 /* ~I was told I couldn't learn more about weapons unless I specialize in the path of the warrior. A more rigorous devotion to the fighting arts, never forsaking them for thievery or magecraft, should grant me the specialization my tutor speaks of.~ */ GOTO 26
  IF ~~ THEN REPLY #67047 /* ~"All right, then. Thanks. Farewell." ~ */ JOURNAL #68288 /* ~I was told I couldn't learn more about weapons unless I specialize in the path of the warrior. A more rigorous devotion to the fighting arts, never forsaking them for thievery or magecraft, should grant me the specialization my tutor speaks of.~ */ EXIT
END
