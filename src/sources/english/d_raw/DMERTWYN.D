// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERTWYN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERTWYN~

IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2960 /* ~It's clear there's something very *wrong* with this man... the way he lurches about, bumping into things, staring off blankly into space. As you approach him, you at last realize his plight... he's headless. The thing on his shoulders is merely a skillfully carved wooden prosthesis... a false head.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #2961 /* ~"Greetings...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42316 /* ~"Greetings...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42317 /* ~"This must be Mertwyn's body..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42318 /* ~Leave it be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 17.0 17.1
  SAY #42320 /* ~The headless body stops fumbling for a moment and pauses. Its hands begin to reach out, as if trying to feel exactly where you are.~ */
  IF ~~ THEN REPLY #42321 /* ~Let it touch you.~ */ GOTO 2
  IF ~~ THEN REPLY #42322 /* ~Grab its hand.~ */ GOTO 3
  IF ~~ THEN REPLY #42323 /* ~Step away from it.~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42324 /* ~After a moment, its finger brushes your forearm. It clutches your arm and follows it up to the shoulder, then your head. As it feels your face and head, its hands brush your neck, as if it were checking for something. Finally, it grabs your hand and shakes it vigorously in greeting. You notice that its skin is cold and slightly clammy.~ */
  IF ~~ THEN REPLY #42325 /* ~"Can you understand me?"~ */ GOTO 4
  IF ~~ THEN REPLY #42326 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #42327 /* ~The headless figure jumps suddenly, then holds your hand tightly, shaking it... the headless body seems friendly enough. It has a strong grip, but the skin is cold and slightly clammy.~ */
  IF ~~ THEN REPLY #42328 /* ~"Where's your head? Can you even understand me?"~ */ GOTO 4
  IF ~~ THEN REPLY #42329 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #42330 /* ~The figure makes a series of hand motions, then waits for a response. It seems like it's asking a question.~ */
  IF ~~ THEN REPLY #42331 /* ~"What? I don't understand..."~ */ GOTO 5
  IF ~~ THEN REPLY #42332 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42333 /* ~The headless body taps its foot for a moment, scratching at the chin of its prosthetic head. Suddenly, it raises a finger as if struck by an idea. It points at you, then at the eyes of its wooden head, then at you again. It then indicates its wooden head with both hands, shrugs, and points at you.~ */
  IF ~~ THEN REPLY #42334 /* ~"Uh, no... I haven't seen your head anywhere."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 1.2 5.0
  SAY #42335 /* ~The headless body shrugs, slumps a bit, and turns to amble off.~ */
  IF ~~ THEN REPLY #42336 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #42337 /* ~The body shuffles towards you, reaching out towards the steel box containing Mertwyn's head.~ */
  IF ~~ THEN REPLY #42338 /* ~Allow Mertwyn's body to take his head.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GivePartyGold(200)
~ JOURNAL #56738 /* ~I reunited Mertwyn's head with his body; the two seemed quite happy to see one another again.~ */ GOTO 8
  IF ~~ THEN REPLY #42339 /* ~Keep the head away from the body.~ */ EXTERN ~DMHEAD~ 13
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #42340 /* ~"Ah, much better; I thank you, good sir! I imagine my body here was getting a bit restless without me." The body hugs the steel box tightly. "Yes, I missed you too..." The body tucks the case under its arm and bows to you. "And as for you, good sir... you certainly deserve *some* sort of reward for your trouble. Let's see what I've got, now..." The body fumbles about in its pockets, and, finding nothing there, in its tunic. Finally, it presents you with several handfuls of copper coins.~ */
  IF ~~ THEN REPLY #42341 /* ~"Thanks, Mertwyn. I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #42342 /* ~"My thanks. Farewell, Mertwyn."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.0 12.1 13.0 14.2 15.1 16.0 18.0
  SAY #42343 /* ~"Certainly; ask whatever you'd like!"~ */
  IF ~~ THEN REPLY #42344 /* ~"How'd you end up... the way you are?"~ */ GOTO 10
  IF ~~ THEN REPLY #42345 /* ~"What are you doing here?"~ */ GOTO 12
  IF ~~ THEN REPLY #42346 /* ~"Can you tell me about this place?"~ */ GOTO 14
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #42347 /* ~"What do you know about Ravel Puzzlewell?"~ */ GOTO 16
  IF ~~ THEN REPLY #42348 /* ~"Never mind, Mertwyn. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42349 /* ~"I'm not sure, really... the body set me down in one of the lecture halls, and the next thing I knew, someone had absconded with me! The next thing I remember was being picked up by you..."~ */
  IF ~~ THEN REPLY #42350 /* ~"But what I meant was, how'd you lose your *head?*"~ */ GOTO 11
  IF ~~ THEN REPLY #42351 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #42352 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #42353 /* ~The body stiffens visibly. "Oh, we don't like to talk about it. Quite horrible, really... what's past is past; no need to dredge it up. Though I will say I'm in the box because my head's not quite as presentable as my body, if you get my meaning."~ */
  IF ~~ THEN REPLY #42354 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #42355 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #42356 /* ~"I mostly amble around the Festhall. You know: lumber here, lumber there. I'm not a Sensate, mind you, but I just like to watch all the different sorts of people milling about."~ */
  IF ~~ THEN REPLY #42357 /* ~"A Sensate?"~ */ GOTO 13
  IF ~~ THEN REPLY #42358 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #42359 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.1 15.0
  SAY #42360 /* ~The body gently rocks the steel box, 'nodding' the head inside. "Yes... you know, the Society of Sensation. They race around trying to experience everything, figuring they'll eventually tumble onto some great dark of the multiverse should they keep it up long enough." The body shrugs.~ */
  IF ~~ THEN REPLY #42361 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #42362 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2
  SAY #42363 /* ~Mertwyn sounds confused. "Doesn't everyone know about the Civic Festhall? Hmmm... well, it's the faction quarters of the Sensates, and perhaps more importantly, it holds their sensoriums."~ */
  IF ~~ THEN REPLY #42364 /* ~"Tell me about these sensoriums..."~ */ GOTO 15
  IF ~~ THEN REPLY #42365 /* ~"Sensates?"~ */ GOTO 13
  IF ~~ THEN REPLY #42366 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #42367 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42368 /* ~"The doorman here can explain them better than I, sir... but they're chambers that house many enchanted stones, which in turn hold various experiences and sensations which have been recorded into them. The public sensoriums are open to everyone, though there is a slight fee for their use. The private sensoriums are only open to members of the Society of Sensation - Sensates."~ */
  IF ~~ THEN REPLY #42369 /* ~"Sensates?"~ */ GOTO 13
  IF ~~ THEN REPLY #42370 /* ~"I had another question..."~ */ GOTO 9
  IF ~~ THEN REPLY #42371 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.3
  SAY #42372 /* ~"Ravel? Can't say I recall the woman..."~ */
  IF ~~ THEN REPLY #42373 /* ~"I had another question, then..."~ */ GOTO 9
  IF ~~ THEN REPLY #42374 /* ~"In that case, farewell."~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN BEGIN 17 // from:
  SAY #42375 /* ~The beheaded man is still lurching about, bumping into walls, pillars and the like. His false wooden head rocks precariously on his shoulders as he shambles to and fro.~ */
  IF ~  !PartyHasItem("Mertwyn")
~ THEN REPLY #42376 /* ~"Greetings...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
Global("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42377 /* ~"Greetings...?"~ */ DO ~SetGlobal("Mertwyn","GLOBAL",1)
~ GOTO 1
  IF ~  PartyHasItem("Mertwyn")
GlobalGT("Mertwyn_Head","GLOBAL",0)
~ THEN REPLY #42378 /* ~"This must be Mertwyn's body..."~ */ EXTERN ~DMHEAD~ 12
  IF ~~ THEN REPLY #42379 /* ~Leave it be.~ */ EXIT
END

IF ~  Global("Mertwyn","GLOBAL",2)
~ THEN BEGIN 18 // from:
  SAY #42381 /* ~Mertwyn's body is standing here, leisurely tapping his fingers on the steel box that holds his head. It tilts the box towards you as you approach. "Hello again, good sir!"~ */
  IF ~~ THEN REPLY #42382 /* ~"Greetings. I had some questions, Mertwyn..."~ */ GOTO 9
  IF ~~ THEN REPLY #42383 /* ~"I was just passing by, Mertwyn. Farewell."~ */ EXIT
END
