// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFWRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~GFWRK~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5503 /* ~The yard worker turns and flees from you.~ */
  IF ~~ THEN REPLY #5504 /* ~Done.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5505 /* ~This person studiously ignores you as the guards escort you toward the exit.~ */
  IF ~~ THEN REPLY #5506 /* ~Done.~ */ EXIT
END

IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #5507 /* ~"I heard that they found a smith's awl near the body. But then, I guess you could find one of those just about anywhere here. My money's on Thildon as the culprit - never was a meaner man in the Foundry."~ */
  IF ~~ THEN REPLY #5508 /* ~"Thanks for your help. But I need some questions answered."~ */ GOTO 3
  IF ~~ THEN REPLY #5509 /* ~"Right. That's all I needed to know."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 4.2 5.1 8.0 11.0 16.0 17.0 18.0
  SAY #5510 /* ~"Ask away."~ */
  IF ~~ THEN REPLY #5511 /* ~"Who are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #5512 /* ~"What are you doing?"~ */ GOTO 5
  IF ~~ THEN REPLY #5513 /* ~"Who's your boss?"~ */ GOTO 6
  IF ~~ THEN REPLY #5514 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #5515 /* ~"Why? You with the Takers? I already paid my taxes."~ */
  IF ~~ THEN REPLY #5516 /* ~"The Takers? Who?"~ */ GOTO 7
  IF ~~ THEN REPLY #5517 /* ~"No, I was just curious. You know. Being friendly."~ */ GOTO 8
  IF ~~ THEN REPLY #5518 /* ~"Forget it. I wanted to know something else anyway."~ */ GOTO 3
  IF ~~ THEN REPLY #5519 /* ~"Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #5520 /* ~"Making my daily wage. Working to improve myself. Keeping this place clean. Making sure the material gets to the smiths when they need it. Making sure the finished product gets wherever it's supposed to go... in short, my job."~ */
  IF ~~ THEN REPLY #5521 /* ~"So your job is basically clean-up and grunt work?"~ */ GOTO 9
  IF ~~ THEN REPLY #5522 /* ~"I see. Another question for you."~ */ GOTO 3
  IF ~~ THEN REPLY #5523 /* ~"I see. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #5524 /* ~"Why? You work for him?"~ */
  IF ~~ THEN REPLY #5525 /* ~"Um... yes."~ */ GOTO 10
  IF ~~ THEN REPLY #5526 /* ~"Are you kidding?"~ */ GOTO 11
END

IF ~~ THEN BEGIN 7 // from: 4.0
  SAY #5527 /* ~"You know... the taxmen of the city? What are you, clueless? I have to get back to work." ~ */
  IF ~~ THEN REPLY #5528 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #5529 /* ~"Don't really have time to be friendly, especially with the yard boss lookin' over the shoulder. We're busy these days. How about if I just tell you I can be friendly when this project's done?"~ */
  IF ~~ THEN REPLY #5530 /* ~"All right. Maybe you can answer another question."~ */ GOTO 3
  IF ~~ THEN REPLY #5531 /* ~"Sure. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #5532 /* ~"If you want to look at it like that. Since I'm learning this Godsman screed, I figure it's a test of stubborns. I look at my whole life as a test of stubborns."~ */
  IF ~~ THEN REPLY #5533 /* ~"Why not look at it as a test of smarts and just walk away?"~ */ GOTO 12
  IF ~~ THEN REPLY #5534 /* ~"Does that really help?"~ */ GOTO 13
  IF ~~ THEN REPLY #5535 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #5536 /* ~"Then he's the salt of the earth. A real gentleman. Can't say enough good things about him, only I got to get back to work." The worker turns away and ignores further entreaties.~ */
  IF ~~ THEN REPLY #5537 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.1
  SAY #5538 /* ~"One of the most rotten bastards it's ever been my misfortune to run across... and I grew up in the Hive amidst some real winners. Hope he gets killed soon... painfully and horribly. But then, most of us yard workers do."~ */
  IF ~~ THEN REPLY #5539 /* ~"I see. Answer me some other questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5540 /* ~"Got it. So long."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0
  SAY #5541 /* ~"Walk away to what? Who's going to hire me? System's made sure I'm not fit for other kinds of labor except menial because I was born into the Hive. Hells, I'm happy to've made it this far. 'Less you can get me a better job than this, I'm happy where I am. Better than starvin' to death."~ */
  IF ~~ THEN REPLY #5542 /* ~"Oh, please, you can do anything if you put your mind to it."~ */ GOTO 14
  IF ~~ THEN REPLY #5543 /* ~"That's convincing. But don't you think you could do it better?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 9.1
  SAY #5544 /* ~"Surprisingly, yes. Gives me hope that I'm going to end up better, either in this life or the next. I may be ignoring the obvious, but let me tell you that once you've eaten gutter swill like me, you get to appreciate the small kindnesses life throws your way. It ain't all primroses for the lower classes, berk." The worker turns away. "I got to get back to work."~ */
  IF ~~ THEN REPLY #5545 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #5546 /* ~"What, and end up looking like a scarred zombie like you? No, thanks. I don't know what you've done, but I'm happy how I am, thanks. Slow progression through life is more suited to my beliefs. Now if you'll excuse me, I gotta get back to work." The worker turns and ignores you.~ */
  IF ~~ THEN REPLY #5547 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #5548 /* ~"Tell you what... you live your life and I'll live mine. Right? I have to get back to work." The worker turns away and ignores you.~ */
  IF ~~ THEN REPLY #5549 /* ~Leave.~ */ EXIT
END

IF ~  GlobalGT("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 16 // from:
  SAY #5550 /* ~"I tell you, with all the excitement happening around here these days, I hardly know what's happening. It's like I never left the Hive... how can I help you?"~ */
  IF ~~ THEN REPLY #5551 /* ~"You can answer me some questions."~ */ GOTO 3
  IF ~~ THEN REPLY #5552 /* ~"You can't. Forget it."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #5553 /* ~You see a drab Hiver hauling crates around. You can't even tell this poor sod's sex. "What do you want from me?"~ */
  IF ~~ THEN REPLY #5554 /* ~"Just a couple of answers."~ */ GOTO 3
  IF ~~ THEN REPLY #5555 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #5556 /* ~"What do you want?"~ */
  IF ~~ THEN REPLY #5557 /* ~"Just some answers."~ */ GOTO 3
  IF ~~ THEN REPLY #5558 /* ~"Nothing."~ */ EXIT
END
