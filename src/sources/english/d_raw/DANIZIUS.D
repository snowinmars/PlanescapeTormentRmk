// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANIZIUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DANIZIUS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 0 // from:
  SAY #59314 /* ~The githyanki glares bitterly at you, and says nothing. When you try to speak to him, he spits on the ground and turns from you.~ */
  IF ~~ THEN REPLY #59317 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
!NearbyDialog("Ddakkon")
~ THEN BEGIN 1 // from:
  SAY #59321 /* ~You see a sallow-skinned githyanki, thin of face and mean of eye, stalking deliberately. You can practically smell his rage. As you approach he looks up at you. "What do you want?" he snarls.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59323 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59327 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #59328 /* ~"What can you tell me of Curst?"~ */ GOTO 3
  IF ~~ THEN REPLY #59329 /* ~"Have you heard anything of a deva here?"~ */ GOTO 4
  IF ~~ THEN REPLY #59331 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 3.2 18.1 25.1
  SAY #59334 /* ~"I am An'izius, and you shall address me as Your Honor. I am one of the town leaders, and I have earned that honor." He looks closely at you. "You do not belong here. What do you want?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59335 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59338 /* ~"I seek a deva."~ */ GOTO 4
  IF ~~ THEN REPLY #59339 /* ~"I'm looking for something I lost."~ */ GOTO 5
  IF ~~ THEN REPLY #59341 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 18.2 25.2
  SAY #59345 /* ~He scoffs. "Ask someone who has time. I have matters of state on my mind."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59346 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59350 /* ~"Matters of state?"~ */ GOTO 6
  IF ~~ THEN REPLY #59352 /* ~"Who are you, anyway?"~ */ GOTO 2
  IF ~~ THEN REPLY #59354 /* ~"I seek a deva."~ */ GOTO 4
  IF ~~ THEN REPLY #59356 /* ~"I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.1 3.3 18.3 25.3
  SAY #59401 /* ~His eyes narrow. "A deva? What would you do with a deva, and why are you seeking one in Curst?"~ */
  IF ~~ THEN REPLY #59410 /* ~"I believe it has the secret of my mortality."~ */ GOTO 7
  IF ~~ THEN REPLY #59411 /* ~"I had heard one was here. Do you know anything of it?"~ */ GOTO 8
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59413 /* ~"Forget it. A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59415 /* ~"Forget it. I've got to go. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #59417 /* ~"What might that be? Perhaps as a town leader, I can help you."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59418 /* ~"As a town leader, you might be needing *me.* A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59419 /* ~"I have lost my mortality. I need to find it."~ */ GOTO 7
  IF ~~ THEN REPLY #59420 /* ~"Nothing of import. I can find it myself."~ */ GOTO 9
  IF ~~ THEN REPLY #59421 /* ~"Nothing of import. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 8.0
  SAY #59422 /* ~He eyes you carefully, seeming to weigh you in his mind, and judges you: "Nothing to which you might contribute. Now step aside. I must consider."~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59423 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59424 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.1
  SAY #59427 /* ~He looks at you as if you've gone over the edge of insanity. "You're badly in need of help. Good day." He turns stiffly away from you.~ */
  IF ~~ THEN REPLY #59431 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #59434 /* ~"Not that I can think of." He continues to eye you. "If you'll excuse me, I have matters of state to attend to."~ */
  IF ~~ THEN REPLY #59436 /* ~"Matters of state?"~ */ GOTO 6
  IF ~~ THEN REPLY #59438 /* ~"Understood. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #59441 /* ~"Then why did you interrupt my thought? I should have you clapped in irons! Go!" He turns away from you.~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59444 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59448 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #59451 /* ~"Excellent. You should be able to find what you're looking for while you're locked away beneath Curst. Guards!" Guards materialize around you, and you are struck a sharp blow to the back of your head. Everything goes black...~ */
  IF ~~ THEN REPLY #59454 /* ~"Curses..."~ */ DO ~FadeToColor([20.0],0)
SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 4.2 5.0 6.0 9.0 18.0 25.0
  SAY #59460 /* ~His intensity doubles. "What have you heard?"~ */
  IF ~~ THEN REPLY #59462 /* ~"Simply that you were having difficulties with a political enemy."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #59464 /* ~His eyes widen for just a fraction of a second, and narrow again. "I see. And are you going to help me?"~ */
  IF ~~ THEN REPLY #59468 /* ~"It depends on what you need from me."~ */ GOTO 14
  IF ~~ THEN REPLY #59471 /* ~"Yes."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59473 /* ~"No."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.2 14.1
  SAY #59485 /* ~"Then you are no use to me. Begone!" He dismisses you with a flick of his wrist and ignores you.~ */
  IF ~~ THEN REPLY #59486 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #59490 /* ~"It is of a delicate nature. A rival requires education. You won't need to kill her, if this makes you squeamish."~ */
  IF ~~ THEN REPLY #59493 /* ~"I'll do it, then."~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59496 /* ~"Forget it."~ */ DO ~SetGlobal("C_Off","GLOBAL",1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0 19.0
  SAY #59499 /* ~"This is what you must do: The woman, Siabha... she has been selling her influence to the highest bidder, undercutting my position with the Burgher of this town. I wish you to humiliate her. All you need do is tell the Captain of the Guards that she has attempted to hire you to attack me, and you shall be well rewarded. You can find her - if you desire - near the Administration building."~ */
  IF ~~ THEN REPLY #59502 /* ~"I'll be back."~ */ JOURNAL #59505 /* ~An'izius, a githyanki official of the town Curst, wishes me to humiliate a political enemy of his by lying to the captain of the guard. Her name is Siabha, and she can be found near the Administration Building in Inner Curst.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("Ddakkon")
~ THEN BEGIN 16 // from:
  SAY #59515 /* ~You see a sallow-skinned githyanki, thin of face and mean of eye, stalking deliberately. You can practically smell his rage. As you approach he looks up at you. "What do you want?" he snarls.~ */
  IF ~~ THEN REPLY #59516 /* ~"I had a few questions for you..."~ */ EXTERN ~DDAKKON~ 357
END

IF ~~ THEN BEGIN 17 // from:
  SAY #59519 /* ~The githyanki's eyes narrow. "I have cast aside the hatred I bore for your people. I have risen above the petty feud between our two races. For this they exiled me - but in my heart, I have bested them. Can you say the same?"~ */
  IF ~~ THEN REPLY #59526 /* ~"All right, you two... cut it out. I had some questions."~ */ GOTO 18
  IF ~~ THEN REPLY #59527 /* ~"Forget this. We're leaving."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #59530 /* ~"What are they?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59533 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59537 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #59540 /* ~"What can you tell me of Curst?"~ */ GOTO 3
  IF ~~ THEN REPLY #59542 /* ~"Have you heard anything of a deva here?"~ */ GOTO 4
  IF ~~ THEN REPLY #59544 /* ~"Nothing. Forget it."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */
~  Global("C_Off","GLOBAL",1)
~ THEN BEGIN 19 // from:
  SAY #59547 /* ~"What do you want, dog?"~ */
  IF ~~ THEN REPLY #59549 /* ~"I've changed my mind. I'll help. What do you need?"~ */ DO ~SetGlobal("C_Off","GLOBAL",3)
~ GOTO 15
  IF ~~ THEN REPLY #59553 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",9)
~ THEN BEGIN 20 // from:
  SAY #59558 /* ~"Well? What of your progress?"~ */
  IF ~  Global("C_Off","GLOBAL",4)
~ THEN REPLY #59560 /* ~"Your rival has offered to pay me a large sum to double-cross you."~ */ GOTO 21
  IF ~  Global("C_Off","GLOBAL",7)
~ THEN REPLY #59562 /* ~"I spoke with the guard captain, and he said he'd send a detachment to escort her to the prison."~ */ DO ~SetGlobal("C_Off","GLOBAL",9)
GivePartyGold(3000)
AddexperienceParty(100000)
~ JOURNAL #59578 /* ~An'izius paid me handsomely for turning Siabha over to the guards of Curst - more than enough to justify such a small lie.~ */ GOTO 22
  IF ~~ THEN REPLY #59568 /* ~"I'm working on it. I had some questions..."~ */ GOTO 23
  IF ~~ THEN REPLY #59574 /* ~"I'm working on it. I'll be back."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #59582 /* ~"What? I'll double it myself!"~ */
  IF ~~ THEN REPLY #59585 /* ~"You've got a deal."~ */ DO ~SetGlobal("C_Off","GLOBAL",5)
~ GOTO 23
  IF ~~ THEN REPLY #59588 /* ~"We'll see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #59590 /* ~"Then I owe you this." He hands you a heavy pouch of coins. "Now begone." ~ */
  IF ~~ THEN REPLY #59592 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2 21.0
  SAY #59595 /* ~"Then go! Go! Or I shall have you flayed!"~ */
  IF ~~ THEN REPLY #59599 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 even though they appear after this state */
~  GlobalGT("C_Off","GLOBAL",5)
~ THEN BEGIN 24 // from:
  SAY #59601 /* ~"We have nothing more to say to each other. Our work together has finished. No suspicions must be raised. Leave me."~ */
  IF ~~ THEN REPLY #59603 /* ~"Very well. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 26 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 25 // from:
  SAY #59605 /* ~"Why do you trouble me so?"~ */
  IF ~  Global("C_Off","GLOBAL",2)
~ THEN REPLY #59606 /* ~"A friend told me you were in need of help."~ */ GOTO 11
  IF ~~ THEN REPLY #59609 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #59610 /* ~"What can you tell me of Curst?"~ */ GOTO 3
  IF ~~ THEN REPLY #59611 /* ~"Have you heard anything of a deva here?"~ */ GOTO 4
  IF ~~ THEN REPLY #59612 /* ~"Nothing. Forget it."~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 26 // from:
  SAY #66922 /* ~The official looks utterly desperate. "Please, stranger! You must help me! Convince the judge that my alleged crimes are no crimes at all!"~ */
  IF ~~ THEN REPLY #66923 /* ~"I'll try..."~ */ EXIT
  IF ~~ THEN REPLY #66924 /* ~"We'll see about that..."~ */ EXIT
END
