// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSSKULL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSSKULL~

IF ~  Global("SSkull_Talk","AR0508",0)
~ THEN BEGIN 0 // from:
  SAY #31579 /* ~The skull exhales languorously and speaks in a sultry voice, "Why do you disturb my rest? There has been so much happening of late, and while I welcome the sensation, I must confess to desiring the sense of quiet."~ */
  IF ~~ THEN REPLY #31581 /* ~"Tell me about yourself."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 1
  IF ~~ THEN REPLY #31582 /* ~"What are you doing here?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 2
  IF ~~ THEN REPLY #31583 /* ~"What can you tell me about Lothar?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31584 /* ~"What about all these other skulls on the shelf?"~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #31585 /* ~"Get back to it then. Farewell."~ */ DO ~SetGlobal("SSkull_Talk","AR0508",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.3 3.1 6.0 10.2 12.0 17.0
  SAY #31586 /* ~"I am... I was... Ocean-before-the-Storm, a Sensate. Now, alas, I am merely decoration."~ */
  IF ~  Global("Know_Sensates","GLOBAL",0)
~ THEN REPLY #31587 /* ~"A Sensate? What's that?"~ */ DO ~SetGlobal("Know_Sensates","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Sensates","GLOBAL",1)
~ THEN REPLY #31588 /* ~"That must be rough... not too much sensation here, eh?"~ */ GOTO 9
  IF ~~ THEN REPLY #31589 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #31590 /* ~"What brought you here?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31591 /* ~"What do you know about these other skulls?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31592 /* ~"What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31593 /* ~"I see. I'll leave you to it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.3 3.2 6.1 7.1 8.0 17.1
  SAY #31594 /* ~"Why, I sit on the shelf and gather dust until one of Lothar's rat minions takes it into his head that I need brushing. I answer questions for Lothar, and... that is the extent of this miserable existence."~ */
  IF ~  Global("Know_Ravel","GLOBAL",0)
~ THEN REPLY #31595 /* ~"No, I meant, 'How did you get here?'"~ */ GOTO 10
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #31596 /* ~"No, I meant, 'How did you get here?'"~ */ GOTO 11
  IF ~~ THEN REPLY #31597 /* ~"What sort of questions?"~ */ GOTO 14
  IF ~~ THEN REPLY #31598 /* ~"Tell me about yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #31599 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31600 /* ~"What about all these other skulls on the shelf?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31601 /* ~"What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31602 /* ~"Then I won't disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.4 6.2 7.2 8.1 10.3 12.1 17.2
  SAY #31603 /* ~"Nothing that he's not willing to tell you himself. Since I don't trust these other skulls not to inform on me should I say something out of line, I simply won't say anything. Before you ask, yes, I'm that scared of him."~ */
  IF ~~ THEN REPLY #31604 /* ~"What can he possibly do to you?"~ */ GOTO 13
  IF ~~ THEN REPLY #31605 /* ~"Tell me about yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #31606 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31607 /* ~"What about all these other skulls on the shelf?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31608 /* ~"What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31609 /* ~"Get back to it then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.4 2.5 3.3 7.3 8.2 10.4 17.3
  SAY #31610 /* ~"Oh, they're nothing to relieve the tedium. You have Goatscomb the wererat, Grimscalp the anarchist, Stern the old wizardly assassin. I don't know what Stern does, but he's basically evil."~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 0
END

IF ~~ THEN BEGIN 5 // from:
  SAY #31611 /* ~"Pragmatist? Is that why stabbing something in the back so often seems to be the answer you present to problems?"~ */
  IF ~~ THEN EXTERN ~DEVSKULL~ 1
END

IF ~~ THEN BEGIN 6 // from:
  SAY #31612 /* ~Ocean-before-the-Storm turns her attention back to you. "You see? Basically evil."~ */
  IF ~~ THEN REPLY #31613 /* ~"Tell me about yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #31614 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #31615 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #31616 /* ~"Yes, I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.0
  SAY #31617 /* ~"A Sensate is a member of the Society of Sensation - one of the factions of Sigil, located in the Civic Festhall in the Clerk's Ward - which holds that the universe can be understood and manipulated only through the senses, and therefore we should accumulate as many varied experiences as possible. I believe I've reached the quota on sitting on a dusty shelf - my boredom threshold is low."~ */
  IF ~~ THEN REPLY #31618 /* ~"Can I do anything for you?"~ */ GOTO 8
  IF ~~ THEN REPLY #31619 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #31620 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31621 /* ~"What about all these other skulls on the shelf?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31622 /* ~"What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31623 /* ~"Sorry to hear that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31624 /* ~"No, but you're kind to ask. Once I threw myself off the shelf and shattered. Next thing I knew, I was back on the shelf and we were all glued here. When Lothar tires of me, he'll dispose of me."~ */
  IF ~~ THEN REPLY #31625 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #31626 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31627 /* ~"What about all these other skulls on the shelf?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31628 /* ~"What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31629 /* ~"Good luck, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #31630 /* ~The skull stares at you. "That's right. Rub it in." It pauses a little longer. "Go away."~ */
  IF ~~ THEN REPLY #31631 /* ~"Hey, now, I was just kidding..."~ */ GOTO 15
  IF ~~ THEN REPLY #31632 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.0
  SAY #31633 /* ~"It's a long story, and I'm not supposed to say anything to you about it until you've completed a task for Lothar."~ */
  IF ~~ THEN REPLY #31634 /* ~"What could he possibly do to you?"~ */ GOTO 13
  IF ~~ THEN REPLY #31635 /* ~"You can tell me."~ */ GOTO 13
  IF ~~ THEN REPLY #31636 /* ~"Tell me about yourself, then."~ */ GOTO 1
  IF ~~ THEN REPLY #31637 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31638 /* ~"All right, then. What can you tell me about all these other skulls on the shelf?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31639 /* ~"All right, then. What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31640 /* ~"Then I won't disturb you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1
  SAY #31641 /* ~"It's a long story that has to do with Ravel Puzzlewell, the night hag. Would you like to hear the whole story?"~ */
  IF ~~ THEN REPLY #31642 /* ~"Yes."~ */ GOTO 18
  IF ~~ THEN REPLY #31643 /* ~"Not particularly."~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 1.5 2.6 3.4 7.4 8.3 10.5 17.4
  SAY #31644 /* ~If skulls could shrug, this one would: "Nothing I haven't told you before."~ */
  IF ~~ THEN REPLY #31645 /* ~"Tell me about yourself, then."~ */ GOTO 1
  IF ~~ THEN REPLY #31646 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~~ THEN REPLY #31647 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.0 10.0 10.1
  SAY #31649 /* ~The skull stares at you, and you get the impression it's shivering. "There's a remarkable amount of pain one can feel without nerve endings. Not all pain is physical, and not all emotions mental. Those are sensations I do not care to duplicate." It pauses. "This interview is at an end. Farewell."~ */
  IF ~~ THEN REPLY #31650 /* ~"Answer a few more questions for me..."~ */ GOTO 15
  IF ~~ THEN REPLY #31660 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #31661 /* ~"Oh, all sorts of things... experiences I've had, the politics of the Sensates - sadly out of date by now! - impressions of people who pass through here, and words words words. The questions vary, which I appreciate more than you know. If you don't have anything else to ask me, then I believe I'll resume my quiet. Farewell."~ */
  IF ~~ THEN REPLY #31662 /* ~"No, wait, a few more questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #31663 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.0 13.0 14.0 16.0 21.1 22.0
  SAY #31664 /* ~The skull stares blankly and says nothing.~ */
  IF ~~ THEN REPLY #31665 /* ~"Very well then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #31666 /* ~"Then I shall return to my quiet. Farewell."~ */
  IF ~~ THEN REPLY #31667 /* ~"No, wait, answer some more questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #31668 /* ~"Farewell."~ */ EXIT
END

IF ~  Global("SSkull_Talk","AR0508",1)
~ THEN BEGIN 17 // from:
  SAY #31669 /* ~"Shall I get no rest from you?"~ */
  IF ~~ THEN REPLY #31670 /* ~"Tell me about yourself."~ */ GOTO 1
  IF ~~ THEN REPLY #31671 /* ~"What are you doing here?"~ */ GOTO 2
  IF ~~ THEN REPLY #31672 /* ~"What can you tell me about Lothar?"~ */ GOTO 3
  IF ~  Global("Skull_Convo","GLOBAL",0)
~ THEN REPLY #31673 /* ~"What about all these other skulls on the shelf?"~ */ DO ~SetGlobal("Skull_Convo","GLOBAL",1)
~ GOTO 4
  IF ~  Global("Skull_Convo","GLOBAL",1)
~ THEN REPLY #31674 /* ~"What can you tell me about all these other skulls on the shelf?"~ */ GOTO 12
  IF ~~ THEN REPLY #31675 /* ~"I suppose you may. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.0
  SAY #31676 /* ~"Very well. I was working in the Civic Festhall - the headquarters of the Sensates - in the sensoriums. Ravel Puzzlewell, may the powers curse her black soul, had been coming there to find answers to riddles she had encountered. She was a masterful solver of puzzles - those that left our best minds baffled were but gauze to the force of her reason - yet she had found difficulties that required outside answers. I heard that she was there to unlock the secrets of Sigil itself."~ */
  IF ~~ THEN REPLY #31677 /* ~"Go on."~ */ GOTO 19
  IF ~~ THEN REPLY #31678 /* ~"I tire of this already. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #31679 /* ~"Horribly ugly, she was, taking no pains to use her magic to disguise her form - as I've heard she does, or rather DID, from time to time - and that fiendish exterior frightened off many a potential factioneer. Still, I had to ask her what she was about, and whether she could teach me what she knew." ~ */
  IF ~~ THEN REPLY #31680 /* ~"That sounds like it could have been a mistake."~ */ GOTO 20
  IF ~~ THEN REPLY #31681 /* ~"I think I get the picture. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31682 /* ~"It was. She offered me a bargain, for she dwelt and dealt in riddles. If she were to answer my question, I must agree to answer one of hers. If I missed the answer, my life was hers. I agreed. She told me she intended to unlock the puzzle of the Cage, to open it to all who wished to enter - powers, fiends, celestials, modrons, and slaadi, not to mention any inner-planar beings who chose to come along. The most important part to her was that all should know that the mystery that had baffled them for so long was unraveled by Ravel."~ */
  IF ~~ THEN REPLY #31683 /* ~"What happened next?"~ */ GOTO 21
  IF ~~ THEN REPLY #31684 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #31685 /* ~"She asked her question. I could not answer it, though she assured me the answer was plain as the nose on her face. My fellow Sensates found me screaming in the sensorium when they arrived the next morning. I begged them to kill me, and they complied. None even suggested that I relish the new experience, so horrible was it. And... here I am. Now I must rest."~ */
  IF ~  Global("Sensate_Skull_Memory","GLOBAL",0)
~ THEN REPLY #31686 /* ~"What was the question?"~ */ DO ~SetGlobal("Sensate_Skull_Memory","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #31348 /* ~Ocean-before-the-Storm, the Sensate skull in Lothar's library of skulls, told me a tale of Ravel Puzzlewell and the night hag's infamous scheme.~ */ GOTO 22
  IF ~~ THEN REPLY #31687 /* ~"Answer just a few more questions for me?"~ */ JOURNAL #31348 /* ~Ocean-before-the-Storm, the Sensate skull in Lothar's library of skulls, told me a tale of Ravel Puzzlewell and the night hag's infamous scheme.~ */ GOTO 15
  IF ~~ THEN REPLY #31688 /* ~"Very well. My thanks for the story. Farewell."~ */ JOURNAL #31348 /* ~Ocean-before-the-Storm, the Sensate skull in Lothar's library of skulls, told me a tale of Ravel Puzzlewell and the night hag's infamous scheme.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #31689 /* ~"It was: How does one change the nature of a man? I thought hard on her answer, and said, 'With love.' She said all people love themselves too much to be changed by something as simple as love. And then she... she... I must rest now."

In the back of your mind, you seem to see a hook-nosed figure with ebon skin asking you a similar question... but you cannot remember your answer.~ */
  IF ~~ THEN REPLY #31690 /* ~"Answer just a few more questions for me?"~ */ GOTO 15
  IF ~~ THEN REPLY #31691 /* ~"You have my sympathy. Farewell."~ */ EXIT
END
