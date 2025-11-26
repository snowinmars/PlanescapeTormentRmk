// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAILCII.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAILCII~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githzerai_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2919 /* ~This capable githzerai warrior has been watching you closely as you approach. As you draw near, he suddenly draws his sword and attacks!~ */
  IF ~~ THEN REPLY #45139 /* ~Fight.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45140 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #45141 /* ~The man has a yellow cast to his skin and gaunt features. Tattoos and scars cover his body, and he wears a long blade across his chest. His eyes are like two small black stones. He bows to you as you approach. "Greetings, sword-ringer. I *know* of your timely information. Ask what you will of me."~ */
  IF ~~ THEN REPLY #45142 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #45143 /* ~"Can you join my party?"~ */ GOTO 2
  IF ~~ THEN REPLY #45144 /* ~"Where did you get your scars?"~ */ GOTO 4
  IF ~~ THEN REPLY #45145 /* ~"Where did you get your tattoos?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45148 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45149 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.1 9.0 21.1 22.1
  SAY #45150 /* ~"I cannot. I have a duty to my people."~ */
  IF ~~ THEN REPLY #45151 /* ~"What is that duty?"~ */ GOTO 47
  IF ~~ THEN REPLY #45152 /* ~"Then I'd like to ask you some more questions."~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1 6.1 7.0 8.0 12.0 13.1 14.0 14.1 15.2 16.1 17.1 18.3 19.0 19.1 20.0 23.0 24.0 26.0 40.2 47.0
  SAY #45153 /* ~"Ask your questions, but be not like Ach'ali drowning - make them direct and to the point."~ */
  IF ~~ THEN REPLY #45154 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #45155 /* ~"Can you join my party?"~ */ GOTO 2
  IF ~~ THEN REPLY #45156 /* ~"Where did you get your scars?"~ */ GOTO 4
  IF ~~ THEN REPLY #45157 /* ~"Where did you get your tattoos?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45158 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45159 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45160 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45161 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 3.2 9.1 21.2 22.2 25.1
  SAY #45162 /* ~He raises his arms and holds them to his face, then his chest, in a reverent gesture. "The scars that bedeck my face come from encounters in the halls of Ilsensine. My rrakma band was nearly devoured by cowardly *illithids.* The scar upon my upper torso comes from the weak-driven blade of a githyanki kin-stealer." He nods at your scars. "Speak the history of your scars."~ */
  IF ~~ THEN REPLY #45163 /* ~"I do not recall how I earned most of them."~ */ GOTO 11
  IF ~~ THEN REPLY #45164 /* ~"They have come from so many battles that the tale would be too long in the telling."~ */ GOTO 19
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45165 /* ~"They're just scars. I had some other questions..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45166 /* ~"They're just scars. I had some other questions..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 5 // from: 1.3 3.3 9.2 21.3 22.3 25.2
  SAY #45167 /* ~"They speak of the history of my kin and grant me their strength and minds. One etched by Arja'rok of the Isle of Seal, tells of my kin, Ji'li'kai, who buried his enemies in the walls of Shra'kt'lor. Another, here, was inscribed by Fell, the dabus-who-walks, and tells of the battle of Ro'jhi and myself as we fought seven slaadi in the Planes of Limbo before the eighth silenced Ro'jhi's mind." He nods at your tattoos. "Speak the history of your tattoos."~ */
  IF ~~ THEN REPLY #45168 /* ~"They speak of what I hope to accomplish."~ */ GOTO 13
  IF ~~ THEN REPLY #45169 /* ~"They speak of the obstacles I have overcome, and the tales of my past lest I forget them."~ */ GOTO 14
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45170 /* ~"They're just tattoos. Tell me of Fell."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 15
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45171 /* ~"They're just tattoos. Tell me of Fell."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45172 /* ~"They're just tattoos. I had some other questions..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45173 /* ~"They're just tattoos. I had some other questions..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
END

IF ~~ THEN BEGIN 6 // from: 1.4 1.5 3.4 3.5 9.3 9.4 18.0 18.1 21.4 21.5 22.4 22.5 25.3 25.4
  SAY #45174 /* ~His eyes narrow, and he spits on the ground. "They are a pack of lying, thieving, treacherous dogs and not to be trusted in any manner. Should you encounter one, remember the lessons of Selqant's heart and Vilquar's eye - and remember that the githyanki are trebly worse."~ */
  IF ~~ THEN REPLY #45175 /* ~"What are those lessons?"~ */ GOTO 8
  IF ~~ THEN REPLY #45176 /* ~"Thanks. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45177 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 3.6 9.5 18.2 21.6 22.6 25.5
  SAY #45178 /* ~He bows slightly. "If I had not this obligation to my people, it would be my pleasure. But, like a guest at Toryg's table, my platter is full. I cannot. Perhaps there is another you might try..."~ */
  IF ~~ THEN REPLY #45179 /* ~"Thanks anyway. I had a few more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45180 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #45181 /* ~"Selqant and Vilquar were noted for their cruelty and their treachery - and they were of the githzerai people. Their excesses pale when compared to the githyanki, the stoniest-hearted breed of vermin ever to sail the Silver Sea."~ */
  IF ~~ THEN REPLY #45182 /* ~"I had some more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45183 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.4 11.0
  SAY #45184 /* ~He pauses for a moment, and you have the feeling he disapproves of that answer. "Ach'ali drowning, ask your questions, then."~ */
  IF ~~ THEN REPLY #45185 /* ~"Can you join my party?"~ */ GOTO 2
  IF ~~ THEN REPLY #45186 /* ~"Where did you get your scars?"~ */ GOTO 4
  IF ~~ THEN REPLY #45187 /* ~"Where did you get your tattoos?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45188 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45191 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45192 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45194 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Hail_Mad","GLOBAL",4)
~ THEN BEGIN 10 // from: 4.3 5.3 5.5 11.1
  SAY #45197 /* ~He bows to you with anger in his eyes, and says, "You do yourself no honor with your words. I do myself no honor by hearing your words. I will speak with you no longer." He closes his eyes for a moment, and then looks past you.~ */
  IF ~~ THEN REPLY #45198 /* ~"I just wanted to ask a few questions..."~ */ EXIT
  IF ~~ THEN REPLY #45199 /* ~"Farewell, then."~ */ EXIT
  IF ~~ THEN REPLY #45200 /* ~Hit him.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.0
  SAY #45201 /* ~His expression alters slightly - whether in confusion or contempt, you cannot tell. "How can scars not tell stories of how they came to be?"~ */
  IF ~  GlobalLT("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45202 /* ~"They're just scars. Everyone gets them."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 9
  IF ~  Global("Hail_Mad","GLOBAL",3)
~ THEN REPLY #45203 /* ~"They're just scars. Everyone gets them."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #45204 /* ~"I have lost the memory of their past and my past as well."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.2
  SAY #45205 /* ~He pauses for a moment, absorbing this, and then: "T'cha's Lament then. I mourn your loss of mind and history."~ */
  IF ~~ THEN REPLY #45206 /* ~"Thanks. I had a few more questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45207 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.0
  SAY #45208 /* ~He waits for a moment, then closes his eyes and bows again. "Your tattoos bring the future to the present and give it focus. There is an Anarch's wisdom in such tattoos. Your tales are noted."~ */
  IF ~~ THEN REPLY #45209 /* ~"Thanks. You spoke of Fell?"~ */ GOTO 15
  IF ~~ THEN REPLY #45210 /* ~"Thanks. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45211 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.1
  SAY #45212 /* ~He closes his eyes and bows. "Your tales are noted, sword-ringer."~ */
  IF ~~ THEN REPLY #45213 /* ~"As are yours. I had some other questions..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45214 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45215 /* ~"As are yours. Farewell."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45216 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.2 13.0
  SAY #45217 /* ~"The dabus-who-walks is a master of the craft. Some tattoos tell tales. Others tell of the spirit. The tattoos that Fell inscribes upon the skin lend strength of the body and strength of the mind based on the tale."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45218 /* ~"Where can I find Fell?"~ */ GOTO 16
  IF ~~ THEN REPLY #45219 /* ~"What kind of strength?"~ */ GOTO 17
  IF ~~ THEN REPLY #45220 /* ~"Thanks. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45221 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0 40.0
  SAY #45222 /* ~"You can find him in the Hive, in the northern part of the southeastern portion. The directions in this city are poorly given - they are like following the ravings of an Anarch who does not *know* himself."~ */
  IF ~~ THEN REPLY #45223 /* ~"What kind of strength can his tattoos give?"~ */ GOTO 17
  IF ~~ THEN REPLY #45224 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45225 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0 40.1
  SAY #45226 /* ~"The tattoo of Ro'jhi, he who spilled the life of seven slaadi, gives me strength in my limbs when I am faced by overwhelming odds. The strength lent would depend on the experience: tell Fell your tales, and the tattoos will grant their power when the tale is placed upon the flesh."~ */
  IF ~~ THEN REPLY #45227 /* ~"Where can I find him?"~ */ GOTO 16
  IF ~~ THEN REPLY #45228 /* ~"Thanks. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45229 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.0 3.0 21.0 22.0 25.0
  SAY #45230 /* ~He bows his head to you. "I am Hailcii'n, a soldier of the githzerai. I am here to gather supplies. I have discovered that this city is like Try'ig'or's Gem - oft-praised, but little of value is to be found in it."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45231 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45232 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45233 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45234 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45235 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.1
  SAY #45236 /* ~He bows his head to you. "Your prowess is noted, sword-ringer."~ */
  IF ~~ THEN REPLY #45237 /* ~"As is yours. I had some other questions..."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ GOTO 3
  IF ~~ THEN REPLY #45238 /* ~"I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45239 /* ~"As is yours. Farewell."~ */ DO ~IncrementGlobal("Hail_Mad","GLOBAL",-1)
~ EXIT
  IF ~~ THEN REPLY #45240 /* ~"Thanks. Farewell."~ */ EXIT
END

IF WEIGHT #3 ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalGT("Vristigor","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #45241 /* ~Hailcii'n bows to you. "Greetings, sword-ringer."~ */
  IF ~~ THEN REPLY #45242 /* ~"Greetings. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45247 /* ~"Hail and farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #45248 /* ~The man has a yellow cast to his skin and gaunt features. Tattoos and scars cover his body, and he wears a long blade across his chest. His eyes are like two small black stones. He bows to you as you approach. "Greetings, sword-ringer. I *know* of your aid to the people. Ask what you will of me."~ */
  IF ~~ THEN REPLY #45249 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #45250 /* ~"Can you join my party?"~ */ GOTO 2
  IF ~~ THEN REPLY #45251 /* ~"Where did you get your scars?"~ */ GOTO 4
  IF ~~ THEN REPLY #45252 /* ~"Where did you get your tattoos?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45253 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #45254 /* ~The man has a yellow cast to his skin and gaunt features. Tattoos and scars cover his body, and he wears a long blade across his chest. His eyes are like two small black stones. He bows to you as you approach. "Greetings, sword-ringer. I *know* of your aid to the people. Ask what you will of me."~ */
  IF ~~ THEN REPLY #45255 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #45256 /* ~"Can you join my party?"~ */ GOTO 2
  IF ~~ THEN REPLY #45257 /* ~"Where did you get your scars?"~ */ GOTO 4
  IF ~~ THEN REPLY #45258 /* ~"Where did you get your tattoos?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45259 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45260 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45261 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45262 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 45 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 23 // from:
  SAY #45263 /* ~Hailcii'n bows to you. "Greetings, sword-ringer."~ */
  IF ~~ THEN REPLY #45264 /* ~"Greetings. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45265 /* ~"Hail and farewell."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 45 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 24 // from:
  SAY #45266 /* ~Hailcii'n bows to you. "Greetings, sword-ringer."~ */
  IF ~~ THEN REPLY #45267 /* ~"Greetings. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45268 /* ~"Hail and farewell."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 25 // from:
  SAY #45269 /* ~The man has a yellow cast to his skin and gaunt features. Tattoos and scars cover his body, and he wears a long blade across his chest. His eyes are like two small black stones. He watches you as you approach, and he waits until you speak. "I do not *know* you... but I will speak to you."~ */
  IF ~~ THEN REPLY #45270 /* ~"Who are you?"~ */ GOTO 18
  IF ~~ THEN REPLY #45271 /* ~"Where did you get your scars?"~ */ GOTO 4
  IF ~~ THEN REPLY #45272 /* ~"Where did you get your tattoos?"~ */ GOTO 5
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45273 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 6
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45274 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 6
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45275 /* ~"Can you teach me to speak your language?"~ */ GOTO 7
  IF ~~ THEN REPLY #45276 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF WEIGHT #10 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #45277 /* ~Hailcii'n watches you calmly as you approach, and offers a laconic, "Greetings, traveler."~ */
  IF ~~ THEN REPLY #45278 /* ~"Greetings. I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45279 /* ~"Hail and farewell."~ */ EXIT
END

IF WEIGHT #11 /* Triggers after states #: 45 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 27 // from:
  SAY #45280 /* ~The man has a yellow cast to his skin and gaunt features. Tattoos and scars cover his body, and he wears a long blade across his chest. His eyes are like two small black stones. As you approach, he bows to Dak'kon. "All beholden, *zerth.*"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 160
END

IF ~~ THEN BEGIN 28 // from:
  SAY #45281 /* ~"His words are *known* to me, *zerth.* His actions are not. His shadow speaks of one who has seen combat and bested all that stood against him. Do my eyes fail to see beyond the still circle?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 161
END

IF ~~ THEN BEGIN 29 // from:
  SAY #45282 /* ~"I will hear him, *zerth.*" He turns to face you and awaits your questions. "Ask your questions. Direct them as you would direct your mind."~ */
  IF ~~ THEN REPLY #45283 /* ~"Who are you?"~ */ GOTO 31
  IF ~~ THEN REPLY #45284 /* ~"Where did you get your scars?"~ */ GOTO 32
  IF ~~ THEN REPLY #45285 /* ~"Where did you get your tattoos?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45286 /* ~"Can you teach me to speak your language?"~ */ GOTO 43
  IF ~~ THEN REPLY #45287 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 31.0 34.0 35.0 36.0 38.1 39.1 41.1 42.1 43.0 45.0 46.0 48.1 49.0
  SAY #45288 /* ~"Ask, then."~ */
  IF ~~ THEN REPLY #45289 /* ~"Who are you?"~ */ GOTO 31
  IF ~~ THEN REPLY #45290 /* ~"Where did you get your scars?"~ */ GOTO 32
  IF ~~ THEN REPLY #45291 /* ~"Where did you get your tattoos?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45292 /* ~"Can you teach me to speak your language?"~ */ GOTO 43
  IF ~~ THEN REPLY #45293 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 44.0
  SAY #45294 /* ~He bows his head to you. "I am Hailcii'n, a soldier of the githzerai. I am here to gather supplies. I have discovered that this city is like Try'ig'or's Gem - oft-praised, but little of value is to be found in it. The air is poor for one of the people, and those within it do not *know* themselves. They are empty shells."~ */
  IF ~~ THEN REPLY #45295 /* ~"I see. I had more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45296 /* ~"Indeed. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.1 30.1 44.1
  SAY #45297 /* ~He raises his arms and holds them to his face, then his chest, in a reverent gesture. "The scars that bedeck my face come from encounters in the halls of Ilsensine. My rrakma band was nearly devoured by cowardly *illithids.* The scar upon my upper torso comes from the weak-driven blade of a githyanki kin-stealer." He nods at your scars. "Speak the history of your scars."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 162
END

IF ~~ THEN BEGIN 33 // from:
  SAY #45298 /* ~His expression alters slightly - whether in confusion or contempt, you cannot tell. "How can scars not tell stories of how they came to be?"~ */
  IF ~~ THEN REPLY #45299 /* ~"They're just scars. Everyone gets them."~ */ GOTO 34
  IF ~~ THEN REPLY #45300 /* ~"I have lost the memory of their past and my past as well."~ */ GOTO 35
END

IF ~~ THEN BEGIN 34 // from: 33.0 37.2
  SAY #45301 /* ~He shoots Dak'kon an unreadable look. You get the impression you've failed some sort of test. "Is there more you would *know?*"~ */
  IF ~~ THEN REPLY #45302 /* ~"Yes."~ */ GOTO 30
  IF ~~ THEN REPLY #45309 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #45311 /* ~He pauses for a moment, absorbing this, and then: "T'cha's Lament then. I mourn your loss of mind and history."~ */
  IF ~~ THEN REPLY #45312 /* ~"Thanks. I had a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45314 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #45315 /* ~He bows his head to you. "Your prowess is noted, sword-ringer."~ */
  IF ~~ THEN REPLY #45317 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45318 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 29.2 30.2 44.2
  SAY #45319 /* ~"They speak of the history of my kin and grant me their strength and minds. One etched by Arja'rok of the Isle of Seal, tells of my kin, Ji'li'kai, who buried his enemies in the walls of Shra'kt'lor. Another, here, was inscribed by Fell, the dabus-who-walks, and tells of the battle of Ro'jhi and myself as we fought seven slaadi in the Planes of Limbo before the eighth silenced Ro'jhi's mind." He nods at your tattoos. "Speak the history of your tattoos."~ */
  IF ~~ THEN REPLY #45320 /* ~"They speak of what I hope to accomplish."~ */ GOTO 38
  IF ~~ THEN REPLY #45321 /* ~"They speak of the obstacles I have overcome, and the tales of my past lest I forget them."~ */ GOTO 39
  IF ~~ THEN REPLY #45322 /* ~"They're just tattoos. I had some other questions..."~ */ GOTO 34
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #45323 /* ~He waits for a moment, then closes his eyes and bows again. "Your tattoos bring the future to the present and give it focus. There is an Anarch's wisdom in such tattoos. Your tales are noted."~ */
  IF ~~ THEN REPLY #45324 /* ~"Thanks. You spoke of Fell?"~ */ GOTO 40
  IF ~~ THEN REPLY #45325 /* ~"Thanks. I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45326 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1
  SAY #45327 /* ~He closes his eyes and bows. "Your tales are noted, sword-ringer."~ */
  IF ~~ THEN REPLY #45328 /* ~"Thanks. You spoke of Fell?"~ */ GOTO 40
  IF ~~ THEN REPLY #45329 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45330 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 39.0
  SAY #45331 /* ~"The dabus-who-walks is a master of the craft. Some tattoos tell tales. Others tell of the spirit. The tattoos that Fell inscribes upon the skin lend strength of the body and strength of the mind based on the tale."~ */
  IF ~  Global("Fell","GLOBAL",0)
~ THEN REPLY #45332 /* ~"Where can I find Fell?"~ */ GOTO 16
  IF ~~ THEN REPLY #45333 /* ~"What kind of strength?"~ */ GOTO 17
  IF ~~ THEN REPLY #45334 /* ~"Thanks. I had some other questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #45335 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 42.0
  SAY #45336 /* ~"You can find him in the Hive, in the northern part of the southeastern portion. The directions in this city are poorly given - they are like following the ravings of an Anarch who does not *know* himself."~ */
  IF ~~ THEN REPLY #45337 /* ~"What kind of strength can his tattoos give?"~ */ GOTO 42
  IF ~~ THEN REPLY #45338 /* ~"I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45339 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #45340 /* ~"The tattoo of Ro'jhi, he who spilled the life of seven slaadi, gives me strength in my limbs when I am faced by overwhelming odds. The strength lent would depend on the experience: tell Fell your tales, and the tattoos will grant their power when the tale is placed upon the flesh."~ */
  IF ~~ THEN REPLY #45341 /* ~"Where can I find him?"~ */ GOTO 41
  IF ~~ THEN REPLY #45342 /* ~"Thanks. I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45343 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 29.5 30.5 44.5
  SAY #45344 /* ~He bows slightly. "You have with you an incomparable master of the tongue. Ask him, and perhaps he shall teach you."~ */
  IF ~~ THEN REPLY #45345 /* ~"Thanks anyway. I had a few more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45346 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #45347 /* ~"His words are *known* to me, *zerth,* as are his timely actions concerning our fortress. I will hear him."~ */
  IF ~~ THEN REPLY #45348 /* ~"Who are you?"~ */ GOTO 31
  IF ~~ THEN REPLY #45349 /* ~"Where did you get your scars?"~ */ GOTO 32
  IF ~~ THEN REPLY #45350 /* ~"Where did you get your tattoos?"~ */ GOTO 37
  IF ~  Global("Know_Githyanki","GLOBAL",0)
Global("Met_Githyanki","GLOBAL",1)
~ THEN REPLY #45146 /* ~"What is the difference between githzerai and githyanki?"~ */ DO ~SetGlobal("Know_Githyanki","GLOBAL",1)
~ GOTO 48
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #45147 /* ~"What is the difference between githzerai and githyanki?"~ */ GOTO 48
  IF ~  Global("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #45351 /* ~"Can you teach me to speak your language?"~ */ GOTO 43
  IF ~~ THEN REPLY #45352 /* ~"I require nothing. Thanks, and farewell."~ */ EXIT
END

IF WEIGHT #4 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
Global("Vristigor","GLOBAL",2)
~ THEN BEGIN 45 // from:
  SAY #45353 /* ~Hailcii'n bows as you approach. "I am honored in the return of your presence."~ */
  IF ~~ THEN REPLY #45354 /* ~"Thanks. I had a few questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45355 /* ~"Thanks, but I must be going. Farewell."~ */ EXIT
END

IF WEIGHT #12 ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
GlobalLT("Vristigor","GLOBAL",2)
~ THEN BEGIN 46 // from:
  SAY #45356 /* ~"You return, *zerth,* with your human. Is there more you would *know?*"~ */
  IF ~~ THEN REPLY #45357 /* ~"Yes."~ */ GOTO 30
  IF ~~ THEN REPLY #45358 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 2.0
  SAY #45359 /* ~"I am here to gather supplies and summon reinforcements. The githyanki grow bold these days. We prepare for bloody war."~ */
  IF ~~ THEN REPLY #45360 /* ~"Sounds exciting. I'd like to ask you some more questions."~ */ GOTO 3
  IF ~~ THEN REPLY #45361 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 29.3 29.4 30.3 30.4 44.3 44.4
  SAY #45174 /* ~His eyes narrow, and he spits on the ground. "They are a pack of lying, thieving, treacherous dogs and not to be trusted in any manner. Should you encounter one, remember the lessons of Selqant's heart and Vilquar's eye - and remember that the githyanki are trebly worse."~ */
  IF ~~ THEN REPLY #45175 /* ~"What are those lessons?"~ */ GOTO 49
  IF ~~ THEN REPLY #45176 /* ~"Thanks. I had some other questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45177 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #45181 /* ~"Selqant and Vilquar were noted for their cruelty and their treachery - and they were of the githzerai people. Their excesses pale when compared to the githyanki, the stoniest-hearted breed of vermin ever to sail the Silver Sea."~ */
  IF ~~ THEN REPLY #45182 /* ~"I had some more questions..."~ */ GOTO 30
  IF ~~ THEN REPLY #45183 /* ~"Thanks for your time. Farewell."~ */ EXIT
END
