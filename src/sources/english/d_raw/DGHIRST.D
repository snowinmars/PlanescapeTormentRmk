// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIRST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIRST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #58302 /* ~You see a tall, slender creature with long arms and an elongated head. Several fangs protrude from its oversize mouth and its fingers end in long claws. It gazes at you steadily as you approach.~ */
  IF ~~ THEN REPLY #58304 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58305 /* ~Ignore the creature.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58308 /* ~The creature leans forward and sniffs you, then reaches out with a clawed hand and pinches you. It licks its lips. "Ye're a little tough, but may be tasty none the less."~ */
  IF ~~ THEN REPLY #58312 /* ~"I have some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #58313 /* ~"I must be going now, farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 6.0 7.0 8.2 9.1 10.1 11.0 12.0 13.1 14.0 16.1 17.0 18.0
  SAY #58314 /* ~It gives you a toothy grin. "Conversation before dining is fine. What do ye want to know?"~ */
  IF ~~ THEN REPLY #58315 /* ~"You're going to eat me?"~ */ GOTO 3
  IF ~~ THEN REPLY #58316 /* ~"Who are you?"~ */ GOTO 7
  IF ~~ THEN REPLY #58317 /* ~"What are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #58318 /* ~"What are you doing here?"~ */ GOTO 9
  IF ~~ THEN REPLY #58319 /* ~"What can you tell me about Carceri?"~ */ GOTO 12
  IF ~~ THEN REPLY #58320 /* ~"What can you tell me about these catacombs?"~ */ GOTO 18
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",0)
~ THEN REPLY #58321 /* ~"There's a bootlegger down here who wants you dead."~ */ GOTO 13
  IF ~~ THEN REPLY #58322 /* ~"I must be going now, farewell."~ */ GOTO 15
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58323 /* ~Its smile grows even larger. "Aye, as soon as ye finish with ye damn fool questions."~ */
  IF ~~ THEN REPLY #58324 /* ~"You can try, but you'll die from a bellyache as I gut you."~ */ GOTO 4
  IF ~~ THEN REPLY #58325 /* ~"I mean you no harm."~ */ GOTO 5
  IF ~~ THEN REPLY #58326 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 6.1
  SAY #58327 /* ~It shrugs and raises its arms in resignation. "I'll take that chance."~ */
  IF ~~ THEN REPLY #58328 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58329 /* ~Attack the creature.~ */ DO ~Enemy()
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #58330 /* ~It shrugs and raises its arms in resignation. "Pity, that. I intend to kill ye."~ */
  IF ~~ THEN REPLY #58331 /* ~"Why?"~ */ GOTO 6
  IF ~~ THEN REPLY #58332 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58333 /* ~It shrugs again. "No reason... ye just happen to be in the wrong place at the wrong time." It pauses. "Or the right place at the right time." It grins. "Depends on how ye look at it."~ */
  IF ~~ THEN REPLY #58334 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58335 /* ~"I'm hard to kill, but you can try if you want."~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #58336 /* ~It picks its nose and stares at you. "Ghrist..." It continues to stare at you and explore its nasal cavity.~ */
  IF ~~ THEN REPLY #58337 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58338 /* ~"I must be going now, farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58339 /* ~It lifts one arm and scratches the armpit lazily. "Gehreleth... Farastu."~ */
  IF ~~ THEN REPLY #58340 /* ~"What's a gehreleth?"~ */ GOTO 16
  IF ~~ THEN REPLY #58341 /* ~"What's a farastu?"~ */ GOTO 16
  IF ~~ THEN REPLY #58342 /* ~"I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58343 /* ~"I must be going now, farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58344 /* ~It yawns and a wave of fetid breath washes over you. "Lookin' for deva. Good eating. Suck the marrow from his bones."~ */
  IF ~~ THEN REPLY #58345 /* ~"You want to eat Trias?"~ */ GOTO 10
  IF ~~ THEN REPLY #58346 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58347 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58348 /* ~It gives you a bored look. "No, deva. I don't care about any Trias."~ */
  IF ~~ THEN REPLY #58349 /* ~"Trias is the name of the deva."~ */ GOTO 11
  IF ~~ THEN REPLY #58350 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58351 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58352 /* ~It shrugs and reaches around to scratch its backside. "Trias, shmias. Whatever ye call it, it's lunch meat to me."~ */
  IF ~~ THEN REPLY #58353 /* ~"I see. I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58354 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4
  SAY #58355 /* ~It opens its mouth and begins to pick something from between its teeth with a claw. It slurs its speech as it answers you. "Home. My home, not yer's. Ye're not welcome in Carceri."~ */
  IF ~~ THEN REPLY #58356 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58357 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #58358 /* ~It gazes at you blankly then nods. "I know... tried to eat him the other day. He got away. Tried to catch him, but he has his place trapped." It shrugs. "I'm patient. One day he'll make a mistake."~ */
  IF ~  GlobalGT("Snuff_Ghrist","GLOBAL",3)
~ THEN REPLY #58359 /* ~"He sent me to kill you."~ */ GOTO 14
  IF ~~ THEN REPLY #58360 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58361 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #58362 /* ~It blows its nose into its hand then flings the result aside. It wipes the hand dry as it answers you. "Oh... just one more reason to kill him then... and ye."~ */
  IF ~~ THEN REPLY #58363 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58364 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #58365 /* ~It gives you a broad grin. "Good. Tired of questions, time to eat." It leaps to the attack.~ */
  IF ~~ THEN REPLY #58366 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Myself,Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0 8.1
  SAY #58367 /* ~It belches and a noxious odor fills the air. It lazily points a finger at itself. "I am a gehreleth. My station is farastu." ~ */
  IF ~~ THEN REPLY #58368 /* ~"What other stations are there?"~ */ GOTO 17
  IF ~~ THEN REPLY #58369 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58370 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #58371 /* ~It examines its claws leisurely then shrugs. "No need for ye to know since I'm the last gehreleth ye'll ever see."~ */
  IF ~~ THEN REPLY #58372 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58373 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.5
  SAY #58374 /* ~It looks around for a moment then shrugs. "Nothing. Wandered in looking for deva."~ */
  IF ~~ THEN REPLY #58375 /* ~"I have some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58376 /* ~"Farewell."~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
