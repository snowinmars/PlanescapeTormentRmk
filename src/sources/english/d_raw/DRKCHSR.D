// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRKCHSR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRKCHSR~

IF ~  Global("RChaser","AR0400",0)
!Dead("Adyzoel")
~ THEN BEGIN 0 // from:
  SAY #15496 /* ~This filthy, robed man is meandering about, looking around warily. You notice he never seems to stray far from a young nobleman nearby. He sees you looking at him, and begins to move off hurriedly.~ */
  IF ~~ THEN REPLY #15520 /* ~"Greetings..."~ */ DO ~SetGlobal("Rchaser","AR0400",1)
~ GOTO 1
  IF ~~ THEN REPLY #15521 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15497 /* ~He spins to face you, eyes wide with fear. You notice his face is covered with weeping sores; fat, black flies flit lazily about his head. "Don't hurt me, m'lord... I don't know nothin', I don't got nothin'!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15522 /* ~"Don't bother with the facade. I know what you are, fiend."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15523 /* ~"I've heard you're more than you appear to be."~ */ GOTO 20
  IF ~~ THEN REPLY #15524 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #15525 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #15498 /* ~He steps back a ways, stumbling, and sputters out: "But... but I told ya, m'lord... I don't know nothin'! I don't!"~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15526 /* ~"Don't bother with the facade. I know what you are, fiend."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15527 /* ~"I've heard you're more than you appear to be."~ */ GOTO 20
  IF ~~ THEN REPLY #15528 /* ~"We'll see about that. Will you speak?"~ */ GOTO 3
  IF ~~ THEN REPLY #15529 /* ~"Fine, then, go. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #15499 /* ~"Aye... I'll... I'll talk to ya, m'lord..." He wrings his hands together nervously, stopping only to ward off any flies that land on his facial sores.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15530 /* ~"Don't bother with the facade. I know what you are, fiend."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15531 /* ~"I've heard you're more than you appear to be."~ */ GOTO 20
  IF ~~ THEN REPLY #15532 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #15533 /* ~"What are you doing here?"~ */ GOTO 9
  IF ~~ THEN REPLY #15534 /* ~"Tell me about this area."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15535 /* ~"I'm looking for someone named Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15536 /* ~"I'm looking for a journal I lost. Seen one?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 5.0 6.1 7.0 8.1 9.2 10.1 11.2 12.2 13.1 14.1 15.0 16.2 20.2 21.0
  SAY #15500 /* ~He nods fearfully. "Anythin', m'lord... just ask..."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15537 /* ~"Don't bother with the facade. I know what you are, fiend."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15538 /* ~"I've heard you're more than you appear to be."~ */ GOTO 20
  IF ~~ THEN REPLY #15539 /* ~"Who are you?"~ */ GOTO 8
  IF ~~ THEN REPLY #15540 /* ~"What are you doing here?"~ */ GOTO 9
  IF ~~ THEN REPLY #15541 /* ~"Tell me about this area."~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15542 /* ~"I'm looking for someone named Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15543 /* ~"I'm looking for a journal I lost. Seen one?"~ */ GOTO 5
  IF ~~ THEN REPLY #15544 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.6 4.6
  SAY #15501 /* ~"Nothin' like that, m'lord, nothin'. I swear it!" He proffers his empty hands for inspection.~ */
  IF ~~ THEN REPLY #15545 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15546 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.5 4.5
  SAY #15502 /* ~He shakes his head. "Nay, don't know him, m'lord."~ */
  IF ~~ THEN REPLY #15547 /* ~"Are you sure? I understand he's a Collector."~ */ GOTO 7
  IF ~~ THEN REPLY #15548 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15549 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #15503 /* ~"Eh? Oh! I run on me own, m'lord, I do. No friends, no partners..."~ */
  IF ~~ THEN REPLY #15550 /* ~"I see. I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15551 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.2
  SAY #15504 /* ~"Me? Malric, m'lord. But, er... but I'm called Rake-Chaser."~ */
  IF ~~ THEN REPLY #15552 /* ~"Why's that?"~ */ GOTO 9
  IF ~~ THEN REPLY #15553 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15554 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.3 8.0
  SAY #15505 /* ~"Huh? Oh... I follow this blood about." He nods towards the young nobleman standing nearby, who spots him and frowns contemptuously before looking away again. "Clean up his messes, if ya know what I mean. The bodies."~ */
  IF ~~ THEN REPLY #15555 /* ~"Why do you do that?"~ */ GOTO 10
  IF ~~ THEN REPLY #15556 /* ~"Who is he?"~ */ GOTO 11
  IF ~~ THEN REPLY #15557 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15558 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.1
  SAY #15506 /* ~"I, eh, sell the deaders at the Mortuary, to the Dustmen. For jink, ya know. I sell what they got on 'em, too, if they died alone. Without friends."~ */
  IF ~~ THEN REPLY #15559 /* ~"Who is the noble?"~ */ GOTO 11
  IF ~~ THEN REPLY #15560 /* ~"I had other questions."~ */ GOTO 4
  IF ~~ THEN REPLY #15561 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #15507 /* ~"Who, him? I dunno, m'lord. Wandered in one day, started pickin' fights... 'duels,' he calls 'em. I don't speak to him, ya see... just drag off the deaders. Maybe you could go, eh, ask him..."~ */
  IF ~~ THEN REPLY #15562 /* ~"He's a good fighter, then?"~ */ GOTO 12
  IF ~~ THEN REPLY #15563 /* ~"Why do you drag the bodies off?"~ */ GOTO 10
  IF ~~ THEN REPLY #15564 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15565 /* ~"Perhaps I will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15566 /* ~He nods. "Oh, aye... I'm no great judge, ya see, but he seems right deadly, he does. I wouldn't fight him, if that's what ye're thinkin'..."~ */
  IF ~~ THEN REPLY #15567 /* ~"You think he's better than me?"~ */ GOTO 14
  IF ~~ THEN REPLY #15568 /* ~"How's he fight? With a sword? Magic?"~ */ GOTO 13
  IF ~~ THEN REPLY #15569 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15570 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1 14.0
  SAY #15509 /* ~"Eh... with a curved sword, m'lord, a sword. Right fancy thing it is, an' he's got some right fancy moves to go with it. He's fast, moves like he's dancin'." The man leaps into a poor imitation of a fencer's stance, sending off a cloud of annoyed flies. "Snick! Snack! Snicker-snak! An' like that, ye're dead!" He nods.~ */
  IF ~~ THEN REPLY #15571 /* ~"You think he's better than me?"~ */ GOTO 14
  IF ~~ THEN REPLY #15572 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15573 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #15510 /* ~He suddenly looks worried. "Eh, no! That's not what I was sayin, m'lord! I haven't seen ya fight, though. Mayhap you could, eh, try him. Find out. But he'll kill ya if ye're not good enough, ya know. If ya want, I can give the Dustman yer last wishes. In case ya, er... lose."~ */
  IF ~~ THEN REPLY #15574 /* ~"How's he fight? With a sword? Magic?"~ */ GOTO 13
  IF ~~ THEN REPLY #15575 /* ~"Don't worry yourself with that. I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15576 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.4 4.4
  SAY #15511 /* ~"The Hive, m'lord?" He scratches through his hood, shrugging. "It's what it is... bleak slums from one end to the other. Couldn't tell ya more than that, really."~ */
  IF ~~ THEN REPLY #15577 /* ~"I had other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15578 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",1)
!Dead("Adyzoel")
~ THEN BEGIN 16 // from:
  SAY #15512 /* ~The man seems startled at your approach, but a look of recognition soon creeps over his sore-ridden features. "Greetings, m'lord."~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15579 /* ~"Don't bother with the facade. I know what you are, fiend."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15580 /* ~"Greetings, 'Rake-Chaser.' I've heard you're more than you appear to be."~ */ GOTO 20
  IF ~~ THEN REPLY #15581 /* ~"Greetings, Rake-Chaser. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15582 /* ~"Greetings, and farewell."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",0)
Dead("Adyzoel")
~ THEN BEGIN 17 // from:
  SAY #15513 /* ~This filthy, robed man is meandering about, glancing around warily. He sees you looking at him, and begins to move off hurriedly.~ */
  IF ~~ THEN REPLY #15583 /* ~"Greetings..."~ */ GOTO 18
  IF ~~ THEN REPLY #15584 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.2
  SAY #15514 /* ~The man suddenly flees in a flurry of corpse-flies and dirty, brown robes!~ */
  IF ~~ THEN REPLY #15585 /* ~"Damn..."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  Global("RChaser","AR0400",1)
Dead("Adyzoel")
~ THEN BEGIN 19 // from:
  SAY #15515 /* ~The man sees your approach, and his sore-ridden face becomes wrought with worry. He begins to back away from you.~ */
  IF ~  Global("RC_ID","GLOBAL",2)
~ THEN REPLY #15586 /* ~"Don't bother with the facade. I know what you are, fiend."~ */ GOTO 23
  IF ~  Global("RC_ID","GLOBAL",1)
Global("RC_expln","AR0400",0)
~ THEN REPLY #15589 /* ~"I've heard you're more than you appear to be."~ */ GOTO 20
  IF ~~ THEN REPLY #15590 /* ~"I had some more questions..."~ */ GOTO 18
  IF ~~ THEN REPLY #15591 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.1 3.1 4.1 16.1 19.1
  SAY #15516 /* ~"Eh? What do ya mean, m'lord?" He seems genuinely confused.~ */
  IF ~~ THEN REPLY #15592 /* ~"Why don't you tell me, 'Rake-Chaser.'"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15593 /* ~"You know what I mean. Who are you, really?"~ */ DO ~SetGlobal("RC_expln","AR0400",1)
~ GOTO 21
  IF ~~ THEN REPLY #15594 /* ~"Forget it. I had some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #15595 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15517 /* ~"I... I don't know what ye're gettin' at, m'lord... I surely don't! Have ya mistaken me for someone else, mayhap?"~ */
  IF ~~ THEN REPLY #15596 /* ~"Fine. I had other questions, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #15597 /* ~Truth: "Talk, or I'll beat the answer out of you, wretch!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Rchasr_1","GLOBALGood",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15598 /* ~Bluff: "Talk, or I'll beat the answer out of you, wretch!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Rchasr_1","GLOBALLaw",-1)
SetGlobal("Adyzoel","AR0400",3)
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15599 /* ~"Farewell, then."~ */ EXIT
END

IF ~  Global("RChaser","AR0400",3)
~ THEN BEGIN 22 // from:
  SAY #15518 /* ~Horror creeps over the man's sore-ridden features as you approach him; the man yelps and begins to back away.~ */
  IF ~~ THEN REPLY #15600 /* ~"Wait, I had some questions..."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15601 /* ~Let him go.~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.0 2.0 3.0 4.0 16.0 19.0
  SAY #15519 /* ~He stares at you in what can only be mute horror.~ */
  IF ~~ THEN REPLY #15602 /* ~"Well?"~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("RChaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15603 /* ~"Don't be frightened, I'm not here to harm you."~ */ DO ~RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
SetGlobal("Rchaser","AR0400",3)
~ EXTERN ~DADYZOEL~ 37
  IF ~~ THEN REPLY #15604 /* ~"As I thought. Farewell."~ */ DO ~SetGlobal("RChaser","AR0400",3)
~ EXIT
END
