// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKELLERA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKELLERA~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #6342 /* ~"You will find that I am not defenseless, scarred one. Come no closer."~ */
  IF ~~ THEN REPLY #6343 /* ~Done.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #6344 /* ~"Clearly, you do not belong here. Leave now, intruder, or the guards shall take harsher measures than a simple escort."~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #6345 /* ~"I just had a quick question."~ */ GOTO 2
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6346 /* ~"I just had a quick question."~ */ GOTO 3
  IF ~~ THEN REPLY #6347 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #6348 /* ~"Leave. Now. Before this becomes a mistake we will all regret."~ */
  IF ~~ THEN REPLY #6349 /* ~"Just answer a question!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6350 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #6351 /* ~You see a githzerai female with a scarred face. She might be beautiful by githzerai standards. "I cannot aid you in this. Leave before I have to call the guards. I surrender this gratitude only because of your companion." She bows to Dak'kon and says, "Honored one, forgive me."~ */
  IF ~~ THEN REPLY #6352 /* ~"That's all well and good, but I need you to answer me some questions."~ */ GOTO 5
  IF ~~ THEN REPLY #6353 /* ~"Very well." Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 5.0
  SAY #6354 /* ~"You leave me no choice." She pauses, and then shouts, "GUARDS! TO ME!"~ */
  IF ~~ THEN REPLY #6355 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 7.0
  SAY #6357 /* ~She turns to Dak'kon again. "My apologies." She turns back to you. "Allow me to make myself clear. Leave. Now. Or I shall be forced to call the guards to 'escort' you from this place. Our project cannot be compromised."~ */
  IF ~~ THEN REPLY #6356 /* ~"I just want you to answer some questions for me!"~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #6358 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #6359 /* ~"You leave me no choice." She pauses, and then shouts, "GUARDS! TO ME!"~ */
  IF ~~ THEN REPLY #6360 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6361 /* ~She speaks to Dak'kon again. "Honored one... do not come here again. It is not my will to call the guards on you. Leave."~ */
  IF ~~ THEN REPLY #6362 /* ~"Look, just answer a question or two."~ */ GOTO 5
  IF ~~ THEN REPLY #6363 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6364 /* ~Her black eyes fall on Dak'kon. "Honored one... you leave me no choice. Forgive me before our ancestors." She turns and raises her voice. "Guards! Guards!"~ */
  IF ~~ THEN REPLY #6365 /* ~Done.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 9 // from:
  SAY #6366 /* ~You see a githzerai woman, bald, with scarred cheeks and a cat's grace in her walk. As she turns toward you, she spies Dak'kon. Her eyes widen. She addresses him, "You bring joy to my heart. My name is Kel'lera. May I aid you?"~ */
  IF ~~ THEN DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 4
END

IF ~~ THEN BEGIN 10 // from: 35.0
  SAY #6370 /* ~"Then ask, and I will tell you if I may. Your companion carries the burden of your secrecy in this matter as a part of his own honor, and where I know not if I can trust you, I know I trust him."~ */
  IF ~~ THEN REPLY #6371 /* ~"Tell me what this device does."~ */ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6372 /* ~"What are the weak spots on this device?"~ */ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6373 /* ~"Who has contracted for this device?"~ */ GOTO 16
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6374 /* ~"Who has contracted for this device?"~ */ GOTO 12
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6375 /* ~"What can you tell me about the murder?"~ */ GOTO 17
  IF ~~ THEN REPLY #6376 /* ~"What can you tell me of the engineers?"~ */ GOTO 18
  IF ~~ THEN REPLY #6377 /* ~Aside to Dak'kon: "Who is she, and why does she treat you with such respect?"~ */ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6378 /* ~"Nothing for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 21.0
  SAY #6379 /* ~"Our device spouts forth a certain type of magical fire that harms even those resistant to ordinary fire. We are working on applications that might even get around a creature's magical resistance."~ */
  IF ~~ THEN REPLY #6380 /* ~"What other applications might it have?"~ */ GOTO 15
  IF ~~ THEN REPLY #6381 /* ~"Very well. Answer me some other questions."~ */ GOTO 21
  IF ~~ THEN REPLY #6382 /* ~"That is all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.3 21.2 35.1
  SAY #6383 /* ~She glances at Fall-from-Grace, and her mouth curves in a graceful moue. "I apologize, honored one, but I cannot speak of this. I am both contractually and magically bound not to speak of this in the hearing of certain... 'manifestations', shall we say... of belief." She turns to the succubus. "My apologies, Lady Grace."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 9
END

IF ~~ THEN BEGIN 13 // from: 10.1 21.1
  SAY #6387 /* ~She glances uneasily at Dak'kon, who measures you for a moment with his eyes, and then turns back to nod reassurance at her. "Very well. The weakest spot is the firing mechanism at the rear of the device. Too much harm befalling that would be fatal for all of us. It would set off a chain reaction that would obliterate all those who are tied into the device. The saboteur would likely have time to flee; those of us attached to the device would not."~ */
  IF ~~ THEN REPLY #6388 /* ~"Attached? How do you mean?"~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 20
  IF ~~ THEN REPLY #6389 /* ~"Right. Answer some other questions for me."~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ GOTO 21
  IF ~~ THEN REPLY #6390 /* ~"My thanks." Leave.~ */ DO ~SetGlobal("Sabotage","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6391 /* ~Again, the supervisor turns uncomfortably toward Fall-from-Grace, and grits her teeth. "I may not speak of it."~ */
  IF ~~ THEN REPLY #6392 /* ~"Fine, then. Answer some questions for me."~ */ GOTO 21
  IF ~~ THEN REPLY #6393 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #6394 /* ~"Aside from its weapon values? It could be used as an excellent mining device. If tuned properly, it could harvest whole swathes of forest or fields of grain. It could harden a shell of Limbo's material for a time - we have even tried lesser applications of the technology there - or even be used as propulsion across the spheres of Carceri. Its uses are limited by one's imagination. It is not purely a weapon of destruction."~ */
  IF ~~ THEN REPLY #6395 /* ~"Interesting. Answer some other questions for me."~ */ GOTO 21
  IF ~~ THEN REPLY #6396 /* ~"Very well. Farewell." Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2 21.3
  SAY #6397 /* ~She glances around, sighs, and replies: "Though I did not take part in the negotiations, I believe that it was the baatezu who have procured our services. The token you wear will grant you some measure of diplomatic immunity to baatezu you may meet."~ */
  IF ~~ THEN REPLY #6398 /* ~"I'm sure that will be useful. Answer some other questions for me, if you would."~ */ GOTO 21
  IF ~~ THEN REPLY #6399 /* ~'Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.4 21.4
  SAY #6400 /* ~"I can tell you little. My smiths and I have been here, nearly non-stop, for no small while. I would suggest speaking with someone who would be in the foundry after dark. Two names spring to mind for me: Thildon, the labor supervisor, and the lad Saros, who seems to have a thieving eye about him."~ */
  IF ~~ THEN REPLY #6401 /* ~"Thildon and Saros, eh? Very well. Answer some other questions, if you would."~ */ GOTO 21
  IF ~~ THEN REPLY #6402 /* ~"Thildon and Saros, eh? I'll go check them out. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.5 21.5
  SAY #6403 /* ~She scowls, adding several creases to her scarred face. "Speak to one of my smiths if you would *know* of the engineers. No kind words for the engineers will you hear from me."~ */
  IF ~~ THEN REPLY #6404 /* ~"Why not?"~ */ GOTO 19
  IF ~~ THEN REPLY #6405 /* ~"All right. Then answer some other questions."~ */ GOTO 21
  IF ~~ THEN REPLY #6406 /* ~"Very well." Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #6407 /* ~"Why? Because they do not seem to share a love for this project as do their comrades. Because they are dreamers and do none of the action themselves. Because, ultimately, I do not trust that their intentions mean well for us, but instead benefit them and them alone."~ */
  IF ~~ THEN REPLY #6408 /* ~"I see. Then tell me the answer to something else."~ */ GOTO 21
  IF ~~ THEN REPLY #6409 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 13.0
  SAY #6410 /* ~"I mean that we have been bound to this machine by necessity of the magical rituals that will empower it. Should there be an error, or worse, deliberate sabotage, I and all these you see in the room would surely be incinerated. Worse yet, our spirits themselves would be destroyed, rent asunder, granted only the peace of cold, dark oblivion. Do you understand our secrecy?"~ */
  IF ~~ THEN REPLY #6411 /* ~"I suppose so. If you could answer some other questions for me..."~ */ GOTO 21
  IF ~~ THEN REPLY #6412 /* ~"I suppose. Farewell."~ */ EXIT
END

IF ~  NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 21 // from: 11.1 13.1 14.0 15.0 16.0 17.0 18.1 19.0 20.0 36.1
  SAY #6413 /* ~"Ask, and I will tell you if I may. I trust your companion's discretion." ~ */
  IF ~~ THEN REPLY #6414 /* ~"Tell me what this device does."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 11
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6415 /* ~"What are the weak spots on this device?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 13
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6416 /* ~"Who has contracted for this device?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 12
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6417 /* ~"Who has contracted for this device?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 16
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6418 /* ~"What can you tell me about the murder?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 17
  IF ~~ THEN REPLY #6419 /* ~"What can you tell me of the engineers?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ GOTO 18
  IF ~~ THEN REPLY #6420 /* ~Aside to Dak'kon: "Who is she, and why does she treat you with such respect?"~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXTERN ~DDAKKON~ 5
  IF ~~ THEN REPLY #6421 /* ~"Nothing for now. Farewell."~ */ DO ~SetGlobal("Kellera_Met_Dakkon","AR0512",1)
~ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #6422 /* ~A scarred, bald githzerai woman spins toward you with incredible grace. Her eyes flash across your body, measuring you, and she says, "Your token gives you access rights. What else would you have of me?"~ */
  IF ~~ THEN REPLY #6423 /* ~"I just want the answers to some questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6424 /* ~"Don't take that tone with me or I'll have you whipped."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Kellera_1","GLOBALGood",-1)
~ GOTO 24
  IF ~~ THEN REPLY #6425 /* ~"Nothing for now. Farewell."~ */ EXIT
END

IF ~  !NearbyDialog("DDakkon")
NumTimesTalkedToGT(0)
~ THEN BEGIN 23 // from: 22.0 26.1 27.0 28.1 29.0 31.0 32.0 33.1 34.0 37.1
  SAY #6426 /* ~"Ask your questions, and be done. Know that I have much work that waits for my hand."~ */
  IF ~~ THEN REPLY #6427 /* ~"Tell me what this device does."~ */ GOTO 26
  IF ~  GlobalGT("Sabotage","GLOBAL",1)
GlobalLT("Sabotage","GLOBAL",5)
~ THEN REPLY #6428 /* ~"What are the weak spots on this device?"~ */ GOTO 28
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6429 /* ~"Who has contracted for this device?"~ */ GOTO 29
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6430 /* ~"Who has contracted for this device?"~ */ GOTO 30
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #6431 /* ~"What can you tell me about the murder?"~ */ GOTO 32
  IF ~~ THEN REPLY #6432 /* ~"What can you tell me of the engineers?"~ */ GOTO 33
  IF ~~ THEN REPLY #6433 /* ~"Nothing for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 28.0
  SAY #6434 /* ~Her narrow eyes become slits. "You dare threaten me, here? Get out now and allow me time to forget this insult, or I'll have the guards throw your bleeding carcass into the streets."~ */
  IF ~~ THEN REPLY #6435 /* ~"I'd rather die."~ */ GOTO 25
  IF ~~ THEN REPLY #6436 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #6437 /* ~"That can be arranged. GUARDS! Kill this intruder!"~ */
  IF ~~ THEN REPLY #6438 /* ~Prepare for a fight.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #6439 /* ~"Our device spouts forth a certain type of magical fire that harms even those resistant to ordinary fire. We are working on applications that might even get around a creature's magical resistance."~ */
  IF ~~ THEN REPLY #6440 /* ~"What other applications might it have?"~ */ GOTO 27
  IF ~~ THEN REPLY #6441 /* ~"Very well. Answer me some other questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6442 /* ~"That is all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #6443 /* ~"Aside from its weapon values? It could be used as an excellent mining device. If tuned properly, it could harvest whole swathes of forest or fields of grain. It could harden a shell of Limbo's material for a time - we have even tried lesser applications of the technology there - or even be used as propulsion across the spheres of Carceri. Its uses are limited by one's imagination. It is not purely a weapon of destruction."~ */
  IF ~~ THEN REPLY #6444 /* ~"Interesting. Answer some other questions for me."~ */ GOTO 23
  IF ~~ THEN REPLY #6445 /* ~"Very well. Farewell." Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.1
  SAY #6446 /* ~"I can see no reason that you should know this information, Godsman or no. I will not surrender it."~ */
  IF ~~ THEN REPLY #6447 /* ~"What if I made you tell me?"~ */ GOTO 24
  IF ~~ THEN REPLY #6448 /* ~"Very well. Then can you answer some other questions?"~ */ GOTO 23
  IF ~~ THEN REPLY #6449 /* ~"Fair enough. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.2
  SAY #6450 /* ~She glances around, sighs, and replies: "Though I did not take part in the negotiations, I believe that it was the baatezu who have procured our services. The token you wear will grant you some measure of diplomatic immunity to baatezu you may meet."~ */
  IF ~~ THEN REPLY #6451 /* ~"I'm sure that will be useful. Answer some other questions for me, if you would."~ */ GOTO 23
  IF ~~ THEN REPLY #6452 /* ~'Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.3
  SAY #6453 /* ~She glances at Fall-from-Grace, and her mouth curves in a graceful moue. "I apologize, honored one, but I cannot speak of this. I am both contractually and magically bound not to speak of this in the hearing of certain... 'manifestations,' shall we say... of belief." She turns to the succubus. "My apologies, Lady Grace."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 10
END

IF ~~ THEN BEGIN 31 // from:
  SAY #6457 /* ~Again, the supervisor turns uncomfortably toward Fall-from-Grace, and grits, "I cannot say!"~ */
  IF ~~ THEN REPLY #6458 /* ~"Fine, then. Answer some questions for me."~ */ GOTO 23
  IF ~~ THEN REPLY #6459 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.4
  SAY #6460 /* ~"I can tell you little. My smiths and I have been here, nearly non-stop, for no small while. I would suggest speaking with someone who would be in the foundry after dark. Two names spring to mind for me: Thildon, the labor supervisor, and the lad Saros, who seems to have a thieving eye about him."~ */
  IF ~~ THEN REPLY #6461 /* ~"Thildon and Saros, eh? Very well. Answer some other questions, if you would."~ */ GOTO 23
  IF ~~ THEN REPLY #6462 /* ~"Thildon and Saros, eh? I'll go check them out. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.5
  SAY #6463 /* ~She scowls, adding several creases to her scarred face. "Speak to one of my smiths if you would *know* of the engineers. No kind words for the engineers will you hear from me."~ */
  IF ~~ THEN REPLY #6464 /* ~"Why not?"~ */ GOTO 34
  IF ~~ THEN REPLY #6465 /* ~"All right. Then answer some other questions."~ */ GOTO 23
  IF ~~ THEN REPLY #6466 /* ~"Very well." Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #6467 /* ~"Why? Because they do not seem to share a love for this project as do their comrades. Because they are dreamers and do none of the action themselves. Because, ultimately, I do not trust that their intentions mean well for us, but instead benefit them and them alone."~ */
  IF ~~ THEN REPLY #6468 /* ~"I see. Then tell me the answer to something else."~ */ GOTO 23
  IF ~~ THEN REPLY #6469 /* ~"I understand. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #6470 /* ~She looks at you, and looks back at him quizzically. "Of course, esteemed one, if you speak for him, and accept responsibility for keeping what passes here secret." She turns her attention reluctantly to you. "You have questions for me?"~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #6455 /* ~"Yes."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6456 /* ~"Yes."~ */ DO ~SetGlobal("Dword","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #7998 /* ~"No. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #6472 /* ~Kel'lera bows.~ */
  IF ~~ THEN REPLY #6367 /* ~"What does that mean?"~ */ EXTERN ~DGRACE~ 7
  IF ~~ THEN REPLY #6368 /* ~"Very well. Then answer me some other questions, if you would."~ */ GOTO 21
  IF ~~ THEN REPLY #6369 /* ~"Very well. Then I'm done here. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #6384 /* ~Kel'lera bows.~ */
  IF ~~ THEN REPLY #6385 /* ~"What does that mean?"~ */ EXTERN ~DGRACE~ 8
  IF ~~ THEN REPLY #6386 /* ~"Very well. Then answer me some other questions, if you would."~ */ GOTO 23
  IF ~~ THEN REPLY #6454 /* ~"Very well. Then I'm done here. Farewell."~ */ EXIT
END
