// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAGRIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAGRIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #54182 /* ~You see a huge creature; it stands over fifteen feet in height. Its massive torso sprouts four arms... two that end in pincers, and two with clawed hands. The head is dog-like with sharp fangs and violet eyes. It gazes at you steadily.~ */
  IF ~~ THEN REPLY #57165 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57166 /* ~Ignore it.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57167 /* ~The creature's gaze never wavers as it continues to stare at you. Finally you feel a tugging at your mind and a voice speaks in your head. "Greetings to you as well, human. I am Agril-Shanak. Why are you here?"~ */
  IF ~~ THEN REPLY #57168 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57169 /* ~"Never mind. I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.2 5.2 6.2 7.0 8.1 9.2 10.1 11.1 12.0 13.1 14.1 23.0
  SAY #57170 /* ~"Questions... this amuses me. You may ask."~ */
  IF ~~ THEN REPLY #57171 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #57172 /* ~"What are you doing here?"~ */ GOTO 8
  IF ~~ THEN REPLY #57173 /* ~"What can you tell me about Curst?"~ */ GOTO 12
  IF ~~ THEN REPLY #57174 /* ~"What can you tell me about Dona Quisho?"~ */ GOTO 13
  IF ~~ THEN REPLY #57175 /* ~"Dona Quisho sent me to free you. What's in it for me if I do?"~ */ GOTO 15
  IF ~~ THEN REPLY #57176 /* ~"Dona Quisho sent me to free you. How do I do that?"~ */ GOTO 27
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57177 /* ~"As I stated, I am Agril-Shanak. What more do you need to know?"~ */
  IF ~~ THEN REPLY #57178 /* ~"What are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #57179 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57180 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57181 /* ~"Some call me a fiend... some a friend. I am Agril-Shanak. I am tanar'ri. I have achieved my status through hard work, treachery, blood, and fear. I am a creature of nightmare." He falls silent.~ */
  IF ~~ THEN REPLY #57182 /* ~"Who calls you 'fiend'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57183 /* ~"Who calls you 'friend'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57184 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57185 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 6.0
  SAY #57186 /* ~"Those who desire power often see me as a means to an end. It is they who call me friend."~ */
  IF ~~ THEN REPLY #57187 /* ~"Who calls you 'fiend'?"~ */ GOTO 6
  IF ~~ THEN REPLY #57188 /* ~"That's a vague answer..."~ */ GOTO 7
  IF ~~ THEN REPLY #57189 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57190 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #57191 /* ~"The ignorant who cannot see beyond fear and prejudice. It is their shortsightedness that causes them to label me such."~ */
  IF ~~ THEN REPLY #57192 /* ~"Who calls you 'friend'?"~ */ GOTO 5
  IF ~~ THEN REPLY #57193 /* ~"That's a vague answer..."~ */ GOTO 7
  IF ~~ THEN REPLY #57194 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57195 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.1
  SAY #57196 /* ~"Ah, but it is an answer nonetheless." He leans toward you. "It is the only answer I will give you..."~ */
  IF ~~ THEN REPLY #57197 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57198 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.1
  SAY #57199 /* ~"Awaiting my freedom. Perhaps you have come to grant it? You have the scroll..." He points a clawed finger at the parchment Dona Quisho gave you.~ */
  IF ~~ THEN REPLY #57200 /* ~"How did you come to be trapped here?"~ */ GOTO 9
  IF ~~ THEN REPLY #57201 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57202 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #57203 /* ~"I do not know..." There is a long pause before he continues. "I was summoned and I answered the call. A greater force then intercepted me and I came here. I have been trapped since."~ */
  IF ~~ THEN REPLY #57204 /* ~"Who summoned you?"~ */ GOTO 10
  IF ~~ THEN REPLY #57205 /* ~"Who intercepted you?"~ */ GOTO 11
  IF ~~ THEN REPLY #57206 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57207 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #57208 /* ~"You know the answer, you hold the scroll in your hand. It was Dona Quisho."~ */
  IF ~~ THEN REPLY #57209 /* ~"Who intercepted you?"~ */ GOTO 11
  IF ~~ THEN REPLY #57210 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57211 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 14.0
  SAY #57212 /* ~"I do not know... My captor has not chosen to reveal his or her presence."~ */
  IF ~~ THEN REPLY #57213 /* ~"Who summoned you?"~ */ GOTO 10
  IF ~~ THEN REPLY #57214 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57215 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.2
  SAY #57216 /* ~You hear laughing within your head. "I am not a native here... I cannot speak with any authority on the subject of Curst. To me, it is a prison - nothing more."~ */
  IF ~~ THEN REPLY #57217 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57218 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.3
  SAY #57219 /* ~"I know nothing of her other than the fact that she is my summoner... This you already know, you hold the scroll..." He points a clawed finger at the parchment Dona Quisho gave you.~ */
  IF ~~ THEN REPLY #57220 /* ~"Why did she summon you?"~ */ GOTO 14
  IF ~~ THEN REPLY #57221 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57222 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #57223 /* ~"I do not know. I was intercepted before I arrived. We never spoke..." He falls silent.~ */
  IF ~~ THEN REPLY #57224 /* ~"Who intercepted you?"~ */ GOTO 11
  IF ~~ THEN REPLY #57225 /* ~"I see. I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57226 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.4
  SAY #57227 /* ~"My gratitude will know no bounds. I will lay the planes themselves at your feet... free me!"~ */
  IF ~~ THEN REPLY #57228 /* ~"I need something more concrete than words... if you can't deliver, I'll just be leaving."~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57229 /* ~"Very well..." You feel his eyes boring into you as he thinks. "I will grant you a magical weapon, a weapon of great power, a weapon to bring your foes to their knees... I will grant you Heartgrinder!"~ */
  IF ~~ THEN REPLY #57230 /* ~"Heartgrinder?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #57231 /* ~"Yes... A weapon dear to me, but one I would sacrifice for my freedom. What say you? Will you free me for Heartgrinder?"~ */
  IF ~~ THEN REPLY #57232 /* ~"Yes, tell me how."~ */ GOTO 18
  IF ~~ THEN REPLY #57233 /* ~"No, I don't think so."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57234 /* ~"I'll think about it. Farewell."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 24.0
  SAY #57235 /* ~He points a clawed finger at the edge of the pentagram. "Simply break the diagram by erasing a small portion..." He looks at you, his eyes boring into your skull.~ */
  IF ~~ THEN REPLY #57236 /* ~Break the pentagram.~ */ GOTO 19
  IF ~~ THEN REPLY #57237 /* ~"No, I don't think so."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"I'll think about it, farewell."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #57239 /* ~You kneel, touch the diagram, and a surge of energy washes up your arm. With a quick stroke you erase a part of it. Just as quickly the energy fades and you hear a cry of triumph within your mind. "Free at last!"~ */
  IF ~~ THEN REPLY #57240 /* ~"I'll take Heartgrinder now."~ */ DO ~GiveItemCreate("Grinder",Protagonist,0,0,0)
~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #57241 /* ~"Yes... I will abide by our bargain, human. The weapon is yours and freedom is mine. A fair trade..." He glares at you for a moment and then a rusty axe appears in his hand. He offers it to you. "It looks like nothing... but it is powerful."~ */
  IF ~~ THEN REPLY #57242 /* ~Take the axe.~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 28.0
  SAY #57243 /* ~"You have done me a great service and, out of gratitude, I will not slay you." He points a clawed finger at you. "Know this, however. If ever we meet again, you shall rue the day. Farewell."~ */
  IF ~~ THEN REPLY #57261 /* ~"Farewell."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
SinisterPoof("S113SMOK",[843.428],1)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 17.1 18.1 24.1 27.1
  SAY #57245 /* ~"You toy with me... if you will not grant me my freedom, then begone!"~ */
  IF ~~ THEN REPLY #57246 /* ~Leave.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 25 26 even though they appear after this state */
~  True()
~ THEN BEGIN 23 // from:
  SAY #57247 /* ~You see Agril-Shanak, the glabrezu. "You return to me, human. Why?"~ */
  IF ~~ THEN REPLY #57248 /* ~"I have some questions..."~ */ GOTO 2
  IF ~  GlobalGT("Free_Agril","GLOBAL",0)
~ THEN REPLY #57249 /* ~"I have considered freeing you."~ */ GOTO 24
  IF ~~ THEN REPLY #57250 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #57251 /* ~"And will you?" He gazes at you malevolently.~ */
  IF ~~ THEN REPLY #57252 /* ~"Yes, tell me how."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #57253 /* ~"No, I don't think so."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57254 /* ~"I'll think about it, farewell."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",900)
~ THEN BEGIN 25 // from:
  SAY #57255 /* ~You see a huge creature; it stands over fifteen feet in height. Its massive torso sprouts four arms... two that end in pincers, and two with clawed hands. The head is dog-like with sharp fangs and violet eyes. When if sees you, it rushes to the attack.~ */
  IF ~~ THEN REPLY #57256 /* ~Defend yourself.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57257 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
Global("Free_Agril","GLOBAL",3)
~ THEN BEGIN 26 // from:
  SAY #57258 /* ~You see Agril-Shanak, the glabrezu. "I warned you that if we met again you would rue the day..." He rushes to the attack.~ */
  IF ~~ THEN REPLY #57259 /* ~Defend yourself.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57260 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 2.5
  SAY #57235 /* ~He points a clawed finger at the edge of the pentagram. "Simply break the diagram by erasing a small portion..." He looks at you, his eyes boring into your skull.~ */
  IF ~~ THEN REPLY #57236 /* ~Break the pentagram.~ */ GOTO 28
  IF ~~ THEN REPLY #57237 /* ~"No, I don't think so."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",2)
~ GOTO 22
  IF ~~ THEN REPLY #57238 /* ~"I'll think about it, farewell."~ */ DO ~SetGlobal("Free_Agril","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #57239 /* ~You kneel, touch the diagram, and a surge of energy washes up your arm. With a quick stroke you erase a part of it. Just as quickly the energy fades and you hear a cry of triumph within your mind. "Free at last!"~ */
  IF ~~ THEN GOTO 21
END
