// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERKIL3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERKIL3~

IF ~  GlobalGT("Murder","GLOBAL",12)
~ THEN BEGIN 0 // from:
  SAY #10504 /* ~The grizzled Mercykiller turns toward you slowly, studies your face, and suddenly his hands blur into motion. They come up wielding a particularly nasty-looking weapon. "Boys! We got a murderer in our midst!" He attacks you.~ */
  IF ~~ THEN REPLY #10505 /* ~Attack him.~ */ DO ~Help()
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #10506 /* ~Flee.~ */ DO ~Help()
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #10507 /* ~You see a grizzled, burly man in spiked armor. He eyes you coolly and slowly, up and down, evaluating you. He pauses for a time on your face, almost as if it jogs his memory somehow. He sighs, then, and says, "Can I help you with something, friend?"~ */
  IF ~~ THEN REPLY #10508 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #10509 /* ~"Did you recognize me?"~ */ GOTO 4
  IF ~~ THEN REPLY #10510 /* ~"Who are your friends here?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10511 /* ~"I'm looking for a journal. Have you seen one?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10512 /* ~"I'm looking for a Collector who goes by the name of Pharod. Would you happen to know where I can find him?"~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10514 /* ~"What can you tell me about Vhailor?"~ */ GOTO 13
  IF ~~ THEN REPLY #10515 /* ~"Tell me about this place, if you would."~ */ GOTO 7
  IF ~~ THEN REPLY #10516 /* ~"No, not right now. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #10513 /* ~"You want something from me?"~ */
  IF ~~ THEN REPLY #10517 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #10518 /* ~"Did you recognize me?"~ */ GOTO 4
  IF ~~ THEN REPLY #10519 /* ~"Who are your friends here?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10520 /* ~"I'm looking for a journal. Have you seen one?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10521 /* ~"Do you know a Collector who goes by the name of Pharod? I'm looking for him."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10522 /* ~"What can you tell me about Vhailor?"~ */ GOTO 13
  IF ~~ THEN REPLY #10523 /* ~"Tell me about this place, if you would."~ */ GOTO 7
  IF ~~ THEN REPLY #10524 /* ~"No, not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 8.0
  SAY #10525 /* ~"Me? I'm Tarner."~ */
  IF ~~ THEN REPLY #10526 /* ~"What's with the outfit?"~ */ GOTO 9
  IF ~~ THEN REPLY #10527 /* ~"Who are your friends?"~ */ GOTO 5
  IF ~~ THEN REPLY #10528 /* ~"Answer some other questions for me, will you?"~ */ GOTO 8
  IF ~~ THEN REPLY #10529 /* ~"Thanks. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 8.1
  SAY #10530 /* ~"I thought I did, but those pictures are centuries out of date and the suspect'd be dead by now. 'Course, these are the planes, and stranger things've happened. Still, if you're the feller I'm thinking of, it looks like you've served your sentence by means of pain."~ */
  IF ~~ THEN REPLY #10531 /* ~"What can you tell me about this person you're talking about?"~ */ GOTO 10
  IF ~~ THEN REPLY #10532 /* ~"Ha. Who knows? Answer some other questions for me, will you?"~ */ GOTO 8
  IF ~~ THEN REPLY #10533 /* ~"More than you could know. More than *I* know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 3.1 8.2
  SAY #10534 /* ~"They're Caleb and Ilsidon. Caleb's the new meat - a new recruit. Ilsidon's the muscle. I'm the brains."~ */
  IF ~~ THEN REPLY #10535 /* ~"What are you doing here?"~ */ GOTO 11
  IF ~~ THEN REPLY #10536 /* ~"A recruit? Is that why you're all dressed the same?"~ */ GOTO 9
  IF ~~ THEN REPLY #10537 /* ~"Got it. Answer some questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #10538 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 8.3
  SAY #10539 /* ~"I see far too much on the mean streets of Sigil, friend. 'Less this journal was something spectacular, chances are good I ain't seen it."~ */
  IF ~~ THEN REPLY #10540 /* ~"Very well, then. Do you have answers to other questions?"~ */ GOTO 8
  IF ~~ THEN REPLY #10541 /* ~"I suppose it'd be hard to remember. Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.6 8.6
  SAY #10542 /* ~"This? It's the Smoldering Corpse. Chant is this place is full of portals and such, but then, that's true of most anywhere in Sigil. Good, cheap drinks, and if you don't mind the company of bubbers and fiends, it ain't a bad place to be. You want to know more about the place, talk to the bartender or something."~ */
  IF ~~ THEN REPLY #10543 /* ~"I understand. I'd like to know something else."~ */ GOTO 8
  IF ~~ THEN REPLY #10544 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.1 5.2 6.0 7.0 9.0 10.0 11.1 12.0 13.0
  SAY #10545 /* ~"What'd you want to know?"~ */
  IF ~~ THEN REPLY #10546 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #10547 /* ~"Did you recognize me?"~ */ GOTO 4
  IF ~~ THEN REPLY #10548 /* ~"Who are your friends here?"~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10549 /* ~"I'm looking for a journal. Have you seen one?"~ */ GOTO 6
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10550 /* ~"Have you ever heard of a Collector by the name of Pharod? I'm looking for him."~ */ GOTO 12
  IF ~  GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #10551 /* ~"What can you tell me about Vhailor?"~ */ GOTO 13
  IF ~~ THEN REPLY #10552 /* ~"Tell me about this place, if you would."~ */ GOTO 7
  IF ~~ THEN REPLY #10553 /* ~"Nothing for now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.0 5.1 11.0
  SAY #10554 /* ~"It's a uniform of a kind. We're the Red Death... Mercykillers. We're the justice folks. Someone commits a crime, we bring 'em to justice. We right wrongs, too. You want to know more, go talk to one of the recruiters."~ */
  IF ~~ THEN REPLY #10555 /* ~"Fair enough. Answer some questions for me, will you?"~ */ GOTO 8
  IF ~~ THEN REPLY #10556 /* ~"Good day, then."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.0
  SAY #10557 /* ~"'Twas a particularly brutal criminal, from what I understand. This was, of course, centuries ago. Immense strength, they said, and enough anger to tear the head from a bariaur. Not a sod to be messin' with. Word is, he got himself surrounded by a Red Death patrol, escaped through a portal, and hasn't been seen since." He frowns, studying you. "They have pictures of him. Take away some of the scars and you might be related to him. Probably not him, though."~ */
  IF ~~ THEN REPLY #10558 /* ~"Sounds like a nasty fellow. I had some questions about something else."~ */ GOTO 8
  IF ~~ THEN REPLY #10559 /* ~"Sounds nasty. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.0
  SAY #10560 /* ~"Waiting for a criminal. This'll be eager Caleb's first arrest - if the berk we're waiting for ever shows up."~ */
  IF ~~ THEN REPLY #10561 /* ~"What, are you some kind of police force? Is that what your armor is... a uniform?"~ */ GOTO 9
  IF ~~ THEN REPLY #10562 /* ~"I see. Answer some other questions for me."~ */ GOTO 8
  IF ~~ THEN REPLY #10563 /* ~"Good luck. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 1.4 2.4 8.4
  SAY #10564 /* ~"You're looking for him, eh? From the tone of your voice, I'm betting it won't be for a quick drink down at the local tavern, either. See, I know Pharod of old. He's a slippery one, he is, and it'll be a time before we can pin something on him. Problem is, only a fanatic like Vhailor'd scrag the guy without even a shred of proof. That's all a long way of saying I don't know where the sod is, but you ought to know he's a suspect, and it won't do you any good to be seen with him."~ */
  IF ~~ THEN REPLY #10565 /* ~"Thanks for the advice. Can you answer something else for me?"~ */ GOTO 8
  IF ~~ THEN REPLY #10566 /* ~"Thanks for the dark, friend. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.5 2.5 8.5
  SAY #10567 /* ~"Vhailor? A fanatic is what he was. Never backed down from nothin' if he thought he was in the right, even if he thought it'd cost him his life. So devoted to the concept of justice, true justice, that I'm betting he'd kill Death itself to get to an informant who could lead him to a criminal. No regard for boundaries. He was an inspiration to all of us."~ */
  IF ~~ THEN REPLY #10568 /* ~"That's devotion, all right. Answer another question for me, will you?"~ */ GOTO 8
  IF ~~ THEN REPLY #10569 /* ~"I'd wager he was. Farewell."~ */ EXIT
END
