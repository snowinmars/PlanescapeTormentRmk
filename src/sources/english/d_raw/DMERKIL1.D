// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL1~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10418 /* ~This fresh-faced, burly youth gives you a moment's glance, and suddenly blurts out: "You! I've heard about you! Oh! You're under arrest! No, wait... you're in line for execution!" He hauls up his weapon and prepares to swing it at you.~ */
  IF ~~ THEN REPLY #10419 /* ~Attack him.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10420 /* ~Flee.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10421 /* ~You see a lad who barely looks a day over eighteen. His face seems to betray some tension. "Help you, cutter?"~ */
  IF ~~ THEN REPLY #10422 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10423 /* ~"I'm looking for a journal. Have you happened to see one recently?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10424 /* ~"I'm looking for a Collector who goes by the name of Pharod. Would you happen to know where I can find him?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10425 /* ~"What can you tell me about Vhailor?"~ */ GOTO 12
  IF ~~ THEN REPLY #10427 /* ~"Who are your friends here?"~ */ GOTO 5
  IF ~~ THEN REPLY #10428 /* ~"What can you tell me about this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #10429 /* ~"What are you doing?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10430 /* ~"No. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10431 /* ~"You again? What do you want?" He seems impatient and nervous.~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10432 /* ~"Has your killer shown up yet?"~ */ GOTO 8
  IF ~~ THEN REPLY #10433 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10434 /* ~"I'm looking for a journal. Have you happened to see one recently?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10435 /* ~"I'm looking for a Collector who goes by the name of Pharod. Would you happen to know where I can find him?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10436 /* ~"What can you tell me about Vhailor?"~ */ GOTO 12
  IF ~~ THEN REPLY #10437 /* ~"Who are your friends here?"~ */ GOTO 5
  IF ~~ THEN REPLY #10438 /* ~"What can you tell me about this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #10439 /* ~"What are you doing?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10440 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.1 10.1
  SAY #10441 /* ~"I'm Caleb. I'm a Mercykiller. I'm here with Tarner and Ilsidon to catch my first criminal."~ */
  IF ~~ THEN REPLY #10442 /* ~"What can you tell me about the Mercykillers?"~ */ GOTO 9
  IF ~~ THEN REPLY #10443 /* ~"I see. I'd like to ask another question."~ */ GOTO 10
  IF ~~ THEN REPLY #10444 /* ~"Good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.2 10.2
  SAY #10445 /* ~"A journal? No, sorry. I'm still new here, so I'm not all that connected yet. If I see one, I'll let you know." He looks around the bar.~ */
  IF ~~ THEN REPLY #10446 /* ~"What are you doing?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10447 /* ~"Thanks. You can answer some questions for me in the meantime."~ */ GOTO 10
  IF ~~ THEN REPLY #10448 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.4 2.5 10.5
  SAY #10449 /* ~"They're the people who're here to make sure I don't foul up this assignment. Tarner's the older one. Ilsidon's the one who's here to make sure I do the job right, and to give me support, if I need it." He swallows noisily. "I hope I won't."~ */
  IF ~~ THEN REPLY #10450 /* ~"You'll be fine, I'm sure. Answer a couple of questions for me, will you?"~ */ GOTO 10
  IF ~~ THEN REPLY #10451 /* ~"Best of luck to you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.6 10.6
  SAY #10452 /* ~"This place? It's the Smoldering Corpse. I think they named it after the guy near the entry. It's a place where criminals and low-lifes hang out. Still... there are some cutters here who know what they're talking about. Some of 'em are those fiends, though, and I don't like to deal with them. I feel like they're staring right at my soul."~ */
  IF ~~ THEN REPLY #10453 /* ~"I understand. Can you answer me some other questions?" ~ */ GOTO 10
  IF ~~ THEN REPLY #10454 /* ~"They are. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.7 4.0 10.7
  SAY #10455 /* ~"Well, seeing as I'm a new Mercykiller, I'm supposed to bring a criminal to justice to show I can handle the field work. I decided I wanted to catch a killer, so we asked around, and got told he was going to be here. Still haven't seen him, though. I'm a little nervous, to tell the truth. If you'll excuse me, I really ought to get looking at the faces here again." He cranes his neck and looks around the bar.~ */
  IF ~~ THEN REPLY #10456 /* ~"Just a few more questions, and then I'll let you go."~ */ GOTO 10
  IF ~~ THEN REPLY #10457 /* ~"Very well. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 10.0
  SAY #10458 /* ~"No. Not yet. But Tarner says that this is where the criminal's supposed to come, eventually. So now we play the waiting game."~ */
  IF ~~ THEN REPLY #10459 /* ~"Right. Answer some other questions for me."~ */ GOTO 10
  IF ~~ THEN REPLY #10460 /* ~"Good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0
  SAY #10461 /* ~"Well, they... sorry, *I* - I have to get used to saying that now! - believe that Justice is the most important thing in existence. I believe that without justice, there is no meaning, and without meaning, we might as well just go off and kill ourselves. I don't want to kill myself, so I decided justice is the meaning. If you want to know more, you ought to ask one of these other two or find one of our recruiters. They'll talk your ear off!"~ */
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10462 /* ~"What can you tell me about Vhailor?"~ */ GOTO 12
  IF ~~ THEN REPLY #10463 /* ~"I might go do that. Answer some questions for me first, will you?"~ */ GOTO 10
  IF ~~ THEN REPLY #10464 /* ~"Will do. Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.1 4.1 5.0 6.0 7.0 8.0 9.1 11.0 12.0
  SAY #10465 /* ~"What do you want to know?"~ */
  IF ~  Global("Know_Killer","GLOBAL",1)
~ THEN REPLY #10466 /* ~"Has your killer shown up yet?"~ */ GOTO 8
  IF ~~ THEN REPLY #10467 /* ~"Who are you?"~ */ GOTO 3
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10468 /* ~"I'm looking for a journal. Have you happened to see one recently?"~ */ GOTO 4
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10469 /* ~"I'm looking for a Collector who goes by the name of Pharod. Would you happen to know where I can find him?"~ */ GOTO 11
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10470 /* ~"What can you tell me about Vhailor?"~ */ GOTO 12
  IF ~~ THEN REPLY #10471 /* ~"Who are your friends here?"~ */ GOTO 5
  IF ~~ THEN REPLY #10472 /* ~"What can you tell me about this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #10473 /* ~"What are you doing?"~ */ DO ~SetGlobal("Know_Killer","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #10474 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.2 2.3 10.3
  SAY #10475 /* ~"Can't say I've heard of him. Is he a criminal? Maybe we'll pick him up later... my thanks for the tip-off, citizen."~ */
  IF ~~ THEN REPLY #10476 /* ~"I just need to find him, not get him killed. Can you answer some other questions for me?"~ */ GOTO 10
  IF ~~ THEN REPLY #10477 /* ~"My pleasure. Let me know before you kill him if you catch him. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.3 2.4 9.0 10.4
  SAY #10478 /* ~"Vhailor? I think he was one of those old-time Mercykillers. I want to be like him someday, if I can. I hear the blood was practically godlike!"~ */
  IF ~~ THEN REPLY #10479 /* ~"An inspiration to you, I'm sure. Can you answer more questions for me?"~ */ GOTO 10
  IF ~~ THEN REPLY #10480 /* ~"I see. My thanks."~ */ EXIT
END
