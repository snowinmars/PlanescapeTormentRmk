// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALAIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DALAIS~

IF ~  Global("Know_Alais","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3067 /* ~The prime looks at you disgustedly. "What do YOU want?" The way he accents the pronoun is almost infuriating, and definitely insulting.~ */
  IF ~~ THEN REPLY #11435 /* ~"Relax. I just wanted to ask you some questions."~ */ GOTO 1
  IF ~~ THEN REPLY #11436 /* ~"From you? Nothing."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11437 /* ~"From your attitude, it appears to me that you need nothing further from me, and it would please me greatly if you would not trouble my presence with yours. Good day." He turns stiffly away from you.~ */
  IF ~~ THEN REPLY #11438 /* ~"Look, I apologize for what I said to you before. I just need some questions answered."~ */ GOTO 2
  IF ~~ THEN REPLY #11439 /* ~"Fine, then."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11440 /* ~"You have said what you have said, and I have taken it to heart. Yet never let it be said that I am entirely rigid. What would you ask of me?"~ */
  IF ~~ THEN REPLY #11441 /* ~"Who are you again?"~ */ GOTO 3
  IF ~~ THEN REPLY #11442 /* ~"Who are the patrons of this tavern?"~ */ GOTO 4
  IF ~~ THEN REPLY #11443 /* ~"What can you tell me about this place?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11444 /* ~"I'm looking for a journal. Have you seen one recently?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11445 /* ~"Have you heard of a Collector named Pharod?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11446 /* ~"I'd like to apologize to you."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11447 /* ~"I'd like to apologize to you."~ */ GOTO 11
  IF ~~ THEN REPLY #11448 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #11449 /* ~His eyes smolder. "You have insulted me enough, 'friend'. I will have no further discourse with you." He turns away entirely, flushing with stung pride, and no amount of cajoling on your part can induce him to turn back to you.~ */
  IF ~~ THEN REPLY #11450 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11451 /* ~Leave him alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #11452 /* ~"The only person I know here is Ebb there. I am new to this place, and I do not make it my business to meddle in the affairs of others. Did you have any further questions for me, or may I continue to enjoy my solitude?"~ */
  IF ~~ THEN REPLY #11454 /* ~"Well, actually, I had a few more questions for you first."~ */ GOTO 5
  IF ~~ THEN REPLY #11455 /* ~"You can go back to whatever you were doing."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 8.0 22.0
  SAY #11456 /* ~He sighs heavily, and eyes you with disdain. "Then be on with it, scarred one, ask and be done."~ */
  IF ~~ THEN REPLY #11458 /* ~"Who are you again?"~ */ GOTO 3
  IF ~~ THEN REPLY #11460 /* ~"Who are the patrons of this tavern?"~ */ GOTO 4
  IF ~~ THEN REPLY #11461 /* ~"What can you tell me about this place?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11462 /* ~"I'm looking for a journal. Have you seen one recently?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11464 /* ~"Have you heard of a Collector named Pharod?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11465 /* ~"I'd like to apologize to you."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11466 /* ~"I'd like to apologize to you."~ */ GOTO 11
  IF ~~ THEN REPLY #11467 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.2
  SAY #11469 /* ~"This is a tavern, one of the familiar sights of home. At least, it would be were it not for the fiendlings in the corner and the endless strangeness that parades before my eyes. I find that at least there is some humanity in this place, for which I am grateful."~ */
  IF ~~ THEN REPLY #11470 /* ~"Oh, that's right. You're clueless, aren't you?"~ */ GOTO 12
  IF ~~ THEN REPLY #11471 /* ~"You're a prime, aren't you?"~ */ GOTO 13
  IF ~~ THEN REPLY #11472 /* ~"I'd imagine. More questions, if I may."~ */ GOTO 5
  IF ~~ THEN REPLY #11473 /* ~"I'd imagine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 5.3
  SAY #11474 /* ~"A journal? Where would I have seen that? When I am new to this place, how would you expect me to remember a JOURNAL? Not only are you insulting and offensive, it appears you are stupid as well."~ */
  IF ~~ THEN REPLY #11475 /* ~"Let's just call it even on the insults now, shall we?"~ */ GOTO 14
  IF ~~ THEN REPLY #11476 /* ~"Are you trying to provoke me?"~ */ GOTO 15
  IF ~~ THEN REPLY #11477 /* ~"This is pointless. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #11478 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 5.4
  SAY #11524 /* ~"I have told you before that I am new here, for which you mocked me. Obviously, I know nothing of these 'Collectors'. Now will you leave me alone?"~ */
  IF ~~ THEN REPLY #11525 /* ~"Not yet. I still need answers from you."~ */ GOTO 5
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11526 /* ~"I'd like to apologize to you."~ */ GOTO 11
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11527 /* ~"I'd like to make amends, somehow."~ */ GOTO 9
  IF ~~ THEN REPLY #11528 /* ~"Certainly. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 5.5 8.2
  SAY #11529 /* ~He appears entirely shocked, as if the notion of apologies is alien to him. "You wish to... apologize?"~ */
  IF ~~ THEN REPLY #11530 /* ~"That's what I said."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
IncrementGlobal("Alais_Apology","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #11531 /* ~"No, come to think of it. I changed my mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 14.0
  SAY #11532 /* ~"Then... then... then I suppose, as a point of honor, I must accept your apology. Very well. In return, I offer my apology as well. Let us set the matter aside and speak no more of it."~ */
  IF ~~ THEN REPLY #11533 /* ~"Very well. Could you answer some more questions for me?"~ */ GOTO 16
  IF ~~ THEN REPLY #11534 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.6 5.6 8.1
  SAY #11535 /* ~"I may be a fool, but not such a fool I would take insult gladly from you and forgive it so easily. You may go impale yourself for all I care, sir. I can only hope that you'll earn yourself more scars and perhaps more honor. Good day, sir." He turns stiffly, and ignores you completely.~ */
  IF ~~ THEN REPLY #11536 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11537 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 13.1
  SAY #11538 /* ~"That is twice you have insulted me, sirrah, and I shall hear no more of it. Defend yourself!"~ */
  IF ~~ THEN REPLY #11539 /* ~"We can work this out..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11540 /* ~"If you mean that I am from the true world by that, then yes, I am a prime. I am a warrior of some small renown there. And, while I may not know all the loopholes of this new land, neither would I call myself 'clueless', as some of the local varlets around here have done."~ */
  IF ~~ THEN REPLY #11541 /* ~"No, all right. Let's just call off the insults, shall we?"~ */ GOTO 14
  IF ~~ THEN REPLY #11542 /* ~"Really? I would."~ */ GOTO 12
  IF ~~ THEN REPLY #11543 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0 13.0
  SAY #11545 /* ~"Call it even? Not until you apologize, villain." He looks like he's just spoiling for a fight. "Or shall I provoke you more?"~ */
  IF ~~ THEN REPLY #11546 /* ~"Very well, then. I apologize."~ */ GOTO 10
  IF ~~ THEN REPLY #11547 /* ~"Apologize? To you? Never."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.1 14.1
  SAY #11549 /* ~"You are a base knave, a weakling without honor, a piece of meat animated by no true spirit, an aging, scarred man without hope of redemption, doomed to wander through your life without any of the elements that make a man a man. I am finished with you, for I feel only pity for you. Good day, sir." He turns his back on you.~ */
  IF ~~ THEN REPLY #11550 /* ~Attack him.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11551 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from: 10.0 19.0 20.1 23.3 25.1 26.0 27.0 28.1
  SAY #11553 /* ~"What knowledge do you seek?"~ */
  IF ~~ THEN REPLY #11555 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11559 /* ~"Who are the patrons of this tavern?"~ */ GOTO 23
  IF ~~ THEN REPLY #11561 /* ~"What can you tell me about this place?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11562 /* ~"I'm looking for a journal. Have you seen one recently?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11583 /* ~"Have you heard of a Collector named Pharod?"~ */ GOTO 27
  IF ~~ THEN REPLY #11658 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #11565 /* ~You see a trim, muscular man, dressed in clothing that is comparatively drab and mundane compared to most of the outfits you've seen in this city. He carries himself with an air of supercilious arrogance. He also looks dramatically out of place here. "What do you want?" he asks.~ */
  IF ~~ THEN REPLY #11566 /* ~"Who are you?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11568 /* ~"Who are the patrons of this tavern?"~ */ GOTO 23
  IF ~~ THEN REPLY #11570 /* ~"What can you tell me about this place?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11573 /* ~"I'm looking for a journal. Have you seen one recently?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11574 /* ~"Have you heard of a Collector named Pharod?"~ */ GOTO 27
  IF ~~ THEN REPLY #11580 /* ~"Nothing. Forget it."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #11585 /* ~"I am Alais, warrior of renown! Surely you have heard of me?"~ */
  IF ~~ THEN REPLY #11588 /* ~Lie: "Yes."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaos_Alais_One","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #11590 /* ~Truth: "No."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Alais_One","GLOBALLaw",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11592 /* ~"At last! Not everyone here is entirely ignorant! I shall allow you buy me a drink, and then we can trade stories! I shall regale you with my latest adventures, including the tale of how I came to this most wondrous, dismaying city."~ */
  IF ~~ THEN REPLY #11594 /* ~"I can hardly wait. First, could you answer some questions for me?"~ */ GOTO 16
  IF ~~ THEN REPLY #11595 /* ~"Where are you from? How DID you get here?"~ */ GOTO 21
  IF ~~ THEN REPLY #11597 /* ~"Perhaps later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #11606 /* ~"Can it truly be? Can it truly be that none in this town have heard of me or my exploits? Alas... I shall have to prove myself all over again. And here I had thought my fame had spread across the world."~ */
  IF ~~ THEN REPLY #11608 /* ~"What world *are* you from?"~ */ GOTO 21
  IF ~~ THEN REPLY #11609 /* ~"I'm certain it has. Answer some questions for me, will you?"~ */ GOTO 16
  IF ~~ THEN REPLY #11612 /* ~"We all face disappointments. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 25.0
  SAY #11629 /* ~"I come from the city of Aliburn on the river Taime. Surely you have heard of its glories and wonders? No matter, no matter... this place is benighted and ignorant when it comes to the splendors of true cities. I am told that my land is what is called a 'prime' by the denizens of this city - though a prime of what, I don't know."~ */
  IF ~~ THEN REPLY #45189 /* ~"How did you get here?"~ */ GOTO 28
  IF ~~ THEN REPLY #45190 /* ~"Right. You're a long way from home. Good luck, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.2 28.0
  SAY #11637 /* ~He bristles, reddening, and his hand clutches convulsively around the hilt of his sword. "Clueless, is it? I take offense to your words, sirrah, and bid you farewell in the hopes that we should never cross paths again." He turns away from you, still flushed with pride and rage.~ */
  IF ~~ THEN REPLY #11638 /* ~"I just wanted to ask you some questions."~ */ GOTO 5
  IF ~~ THEN REPLY #11639 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 17.1
  SAY #11640 /* ~"I have met only the elderly Ebb Creakknees, who has been instructing me in the ways of the city and the 'plains.' My foe's spell must have catapulted us far across the world, for I know of no plains near our former location."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",0)
~ THEN REPLY #11641 /* ~"No, no... planes. As in planes of existence. They are planes of the imagination, of thought and belief. They are not physical prairies or grasslands, but other dimensions."~ */ DO ~AddexperienceParty(250)
SetGlobal("Alais_Ed","GLOBAL",1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",1)
~ THEN REPLY #11642 /* ~"No, no... planes. As in planes of existence. They are planes of the imagination, of thought and belief. They are not physical prairies or grasslands, but other dimensions."~ */ GOTO 24
  IF ~~ THEN REPLY #11643 /* ~"I get it. You're clueless."~ */ GOTO 22
  IF ~~ THEN REPLY #11644 /* ~"Um. Right. Listen, I had other questions."~ */ GOTO 16
  IF ~~ THEN REPLY #11645 /* ~"Right. You're a long way from home. Good luck, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #11646 /* ~A look of confusion passes across his face. "I... I understand. What the old man said is starting to make sense... excuse me. I must think this over. Farewell."~ */
  IF ~~ THEN REPLY #11647 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 17.2
  SAY #11648 /* ~"I do not know. When I arrived here, I realized I needed a place to regain my bearings. Imagine my shock at discovering that even a simple tavern in this part of the world is populated by the eccentrics and crazies. I have truly been transported to a madhouse!"~ */
  IF ~~ THEN REPLY #11649 /* ~"Where are you from?"~ */ GOTO 21
  IF ~~ THEN REPLY #11650 /* ~"It certainly seems that way sometimes. I'd like to ask a few more questions."~ */ GOTO 16
  IF ~~ THEN REPLY #11651 /* ~"Yes, you have. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.3 17.3
  SAY #11652 /* ~"I'm afraid that I have not been searching for such items. I am doing my best to reorient myself to this unfamiliar setting, and while I focus on small details in my attempt to do so, I must confess I have not been looking for journals of any sort."~ */
  IF ~~ THEN REPLY #11653 /* ~"All right, then. Answer some other questions for me."~ */ GOTO 16
  IF ~~ THEN REPLY #11654 /* ~"Very well. Thank you for your time."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.4 17.4
  SAY #11655 /* ~"Pharod? Collector? These are names and terms unfamiliar to me, but if I should hear them mentioned in any other context. I shall certainly remember your face. Indeed, I could not forget it."~ */
  IF ~~ THEN REPLY #11656 /* ~"Thank you. Answer more questions for me, will you?"~ */ GOTO 16
  IF ~~ THEN REPLY #11657 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.0
  SAY #2950 /* ~"I was chasing my old foe, the villainous life-shade Tir Tanelel..." He pauses, waiting for acknowledgment, and then continues. "He conjured his demonic magic and opened himself a doorway, and hurled himself through it. Before he could flee me entirely, I threw myself after him... and found myself here."~ */
  IF ~~ THEN REPLY #45193 /* ~"I get it. You're one of the Clueless."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",3)
~ GOTO 22
  IF ~~ THEN REPLY #45195 /* ~"That sounds like quite an adventure. I had other questions for you."~ */ GOTO 16
  IF ~~ THEN REPLY #45196 /* ~"Good luck getting around. You'll need it. Farewell."~ */ EXIT
END
