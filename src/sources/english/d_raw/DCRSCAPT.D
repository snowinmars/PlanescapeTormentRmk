// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSCAPT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSCAPT~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #60328 /* ~You see a harried-looking man in impressive armor. He's directing several other guards in the defense of the town. "I got no time to talk!" he snarls. "If ye need to make yerself useful, get rid of that accursed deva or wipe out some of these gehreleths! Don't waste my time!" He turns back to his men.~ */
  IF ~~ THEN REPLY #60329 /* ~"What's going on?"~ */ GOTO 1
  IF ~~ THEN REPLY #60330 /* ~"All right. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #60331 /* ~"What's going on? Where'd you come from? That sod-pikin' deva burst outta the ground and dragged us into Carceri, that's what's goin' on! And now we gotta contend with the gehreleths who've decided we'd make a tasty snack. We're in the middle of a crisis, berk, so get out of my way!" He shoves rudely past you and refuses to answer any more of your questions.~ */
  IF ~~ THEN REPLY #60332 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Current_Area","GLOBAL",800)
~ THEN BEGIN 2 // from: 0.1
  SAY #60333 /* ~"Berk, you're getting in my way... clean up some of the deva's mess if you want to do something for this city! But STOP BOTHERING ME!"~ */
  IF ~~ THEN REPLY #60334 /* ~"All right, all right..."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 3 // from:
  SAY #60335 /* ~You see a crisp, militarily-efficient man, dressed in the outfit of a Curst guard - but he seems even more authoritative. He turns a contemptuous eye to you. "What do you want?"~ */
  IF ~~ THEN REPLY #60336 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #60337 /* ~"I'd like to see the person in charge."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60338 /* ~"A woman named Lady Roberta is involved in plans to kill her husband, Carl. I think he's one of the Burgher's assistants."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60340 /* ~"I wanted to turn myself in for the murder of Carl Parfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60341 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 9
  IF ~~ THEN REPLY #60342 /* ~"I want you to arrest me."~ */ GOTO 10
  IF ~~ THEN REPLY #60343 /* ~"I'm looking for a deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60344 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Current_Area","GLOBAL",800)
~ THEN BEGIN 4 // from: 5.0 7.0 11.0 12.0 13.0 14.0
  SAY #60345 /* ~"What?"~ */
  IF ~~ THEN REPLY #60346 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #60347 /* ~"I'd like to see the person in charge."~ */ GOTO 6
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60348 /* ~"A woman named Lady Roberta is involved in plans to kill her husband, Carl. I think he's one of the Burgher's assistants."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60349 /* ~"I wanted to turn myself in for the murder of Carl Parfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60350 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 9
  IF ~~ THEN REPLY #60351 /* ~"I want you to arrest me."~ */ GOTO 10
  IF ~~ THEN REPLY #60352 /* ~"I'm looking for a deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60353 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #60354 /* ~"It's Curst. What do you need to know? That it's a town rife with betrayal, run by a madman, full of more intrigue than Carceri's got gehreleths, where you can trust a stranger as much as you'd trust your own family? That it's a town of deceits and vengeance dreamed of? Look around, berk, and figure the place out for yourself."~ */
  IF ~~ THEN REPLY #60355 /* ~"All right. Then answer some other questions for me..."~ */ GOTO 4
  IF ~~ THEN REPLY #60356 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 4.1
  SAY #60357 /* ~"The person in charge? Whatever for?"~ */
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #60358 /* ~"A woman named Lady Roberta is involved in plans to kill her husband, Carl. I think he's one of the Burgher's assistants."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #60359 /* ~"I wanted to turn myself in for the murder of Carl Parfidor."~ */ GOTO 8
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
~ THEN REPLY #60360 /* ~"One of the officials of this town has asked me to murder another one of them. I thought I had better warn you."~ */ GOTO 9
  IF ~~ THEN REPLY #60361 /* ~"I want you to arrest me."~ */ GOTO 10
  IF ~~ THEN REPLY #60362 /* ~"I'm looking for a deva."~ */ GOTO 11
  IF ~~ THEN REPLY #60363 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2 4.2 6.0
  SAY #60364 /* ~"She is, is she? We'll take care of that, my friend. You have the thanks of the citizens of Curst."~ */
  IF ~~ THEN REPLY #60365 /* ~"Great. I had a few questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #60366 /* ~"Great. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 6.1
  SAY #60367 /* ~"Really. Do tell. Come to think of it, tell it to the cell you're going to be in. Are you going to cooperate?"~ */
  IF ~~ THEN REPLY #60368 /* ~"I'll come quietly."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #60369 /* ~"Are you kidding? No way."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.4 6.2
  SAY #60370 /* ~His eyes sharpen behind his helm. "Give me the name. Who's planning what?"~ */
  IF ~~ THEN REPLY #60371 /* ~"Siabha is planning to murder An'izius."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~I informed the captain of the Curst guards that Siabha was trying to murder An'izius. He was delighted to hear it, and vowed to arrest her. I hope I've done the right thing...~ */ GOTO 12
  IF ~~ THEN REPLY #60372 /* ~"An'izius asked me to frame Siabha, who asked me to do the same to An'izius. They're both corrupt."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60373 /* ~"An'izius is trying to murder Siabha."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~I informed the captain of the Curst guards that An'izius was trying to murder Siabha. He was delighted to hear it, and vowed to arrest the githyanki. I hope I've done the right thing...~ */ GOTO 14
  IF ~~ THEN REPLY #60374 /* ~"Forget I said anything."~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 3.5 4.5 6.3
  SAY #60375 /* ~"For what crime? Go on. Get out of here. I'm a busy man." He surveys the surrounding area, pointedly ignoring you.~ */
  IF ~~ THEN REPLY #60376 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.6 4.6 6.4
  SAY #60377 /* ~He tilts his head toward you. "Now why would you possibly be looking for a deva here? As far as I know, there hasn't been a deva in Curst for a long, long time. He'd have gone to ground from all the treachery and evil in the air." He laughs.~ */
  IF ~~ THEN REPLY #60378 /* ~"All right, then. Answer a few more questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #60379 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 15.0
  SAY #60380 /* ~His eyes narrow into slits. "I've been wanting her in my cells for some time now. I have a special punishment for her. I'll send a detachment. My thanks, stranger."~ */
  IF ~~ THEN REPLY #60381 /* ~"Think nothing of it. I have more questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #60382 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.1 15.1
  SAY #60383 /* ~"Both of them, eh? Good. This should solidify my control in this city. They'll be gone before you know it. My thanks, stranger."~ */
  IF ~~ THEN REPLY #60384 /* ~"Think nothing of it. I have more questions..."~ */ JOURNAL #60386 /* ~I informed the captain of the Curst guards that both Siabha and An'izius were trying to implicate each other in fabricated crimes. He was delighted to hear it. I hope I've done the right thing...~ */ GOTO 4
  IF ~~ THEN REPLY #60385 /* ~"Sure. Farewell."~ */ JOURNAL #60386 /* ~I informed the captain of the Curst guards that both Siabha and An'izius were trying to implicate each other in fabricated crimes. He was delighted to hear it. I hope I've done the right thing...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.2 15.2
  SAY #60390 /* ~"That githyanki bastard finally slipped up, eh? He'll be a happy addition to our prisoners. I'll send a detachment for him. You've got my thanks, stranger."~ */
  IF ~~ THEN REPLY #60391 /* ~"Think nothing of it. I have more questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #60392 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.3
  SAY #60394 /* ~He glares at you. "I won't forget it. You'll either give me the information, or I'll wring it from your scarred neck."~ */
  IF ~~ THEN REPLY #60395 /* ~"Siabha is planning to murder An'izius."~ */ DO ~SetGlobal("C_Off","GLOBAL",7)
~ JOURNAL #68276 /* ~I informed the captain of the Curst guards that Siabha was trying to murder An'izius. He was delighted to hear it, and vowed to arrest her. I hope I've done the right thing...~ */ GOTO 12
  IF ~~ THEN REPLY #60396 /* ~"An'izius asked me to frame Siabha, who asked me to do the same to An'izius. They're both corrupt."~ */ DO ~SetGlobal("C_Off","GLOBAL",8)
AddexperienceParty(200000)
~ GOTO 13
  IF ~~ THEN REPLY #60397 /* ~"An'izius is trying to murder Siabha."~ */ DO ~SetGlobal("C_Off","GLOBAL",6)
~ JOURNAL #68277 /* ~I informed the captain of the Curst guards that An'izius was trying to murder Siabha. He was delighted to hear it, and vowed to arrest the githyanki. I hope I've done the right thing...~ */ GOTO 14
  IF ~~ THEN REPLY #60398 /* ~"You'll have to force it from me."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END
