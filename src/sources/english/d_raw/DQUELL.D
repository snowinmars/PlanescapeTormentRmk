// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUELL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUELL~

IF ~  Global("Quell","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #29455 /* ~This older man is chewing on something, muttering softly to himself... after a moment, there is a *CRACK* as he crunches down on the object in his mouth, then swallows it. His bushy, brassy white eyebrows furrow for a moment, rise, and then furrow again. "Hmmm..."~ */
  IF ~~ THEN REPLY #29456 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #29457 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #29458 /* ~Without so much as looking at you, the man reaches into his tunic, pulls out a puce-colored ball, regards it curiously for a moment, then pops it into his mouth.~ */
  IF ~~ THEN REPLY #29459 /* ~"I said, 'greetings...'"~ */ GOTO 2
  IF ~~ THEN REPLY #29460 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29461 /* ~The man frowns and waves you away, then nods to himself thoughtfully as he savors the flavor of whatever he's put into his mouth.~ */
  IF ~~ THEN REPLY #29462 /* ~"I've... got some questions..."~ */ DO ~SetGlobal("Quell","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #29463 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29464 /* ~The man smirks, bites his thumb at you, then abruptly pauses... his cheeks swell and, with a violent gag, he spits up a large black fly which begins to buzz around the chamber. "Minaurosian candies be *damned!*" he cries, shaking his fist at the insect. He whirls on you. "What?!"~ */
  IF ~~ THEN REPLY #29465 /* ~"I had questions about you..."~ */ GOTO 4
  IF ~~ THEN REPLY #29466 /* ~"I had questions about this place..."~ */ GOTO 4
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29467 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 4
  IF ~~ THEN REPLY #29468 /* ~"Nothing, farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 5.0
  SAY #29469 /* ~He pops a small red candy into his mouth. "Do you always traipse about molesting puissant mages with your ignorant prattle?! Babbling, blathering, chittering, CHATTERING!" The candy shoots from his mouth on 'chattering,' flying in a high arc to land on the floor with a wet *plip.* He stares at it sadly.~ */
  IF ~~ THEN REPLY #68083 /* ~"My question...?"~ */ GOTO 6
  IF ~~ THEN REPLY #29470 /* ~"I'm, uh, sorry about your candy."~ */ GOTO 6
  IF ~~ THEN REPLY #29471 /* ~Pick it up and eat it.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 5 // from: 3.3
  SAY #29473 /* ~He groans incredulously, slapping his forehead. "Nothing? *FAREWELL?*"~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 6 // from: 4.0 4.1
  SAY #29474 /* ~"It was so *tasty,* too..." he mewls. He suddenly looks up, snarling. "SORRY?! As you *should* be, you piking dung-beetle! Mages deserve respect, and bashers like you should know their proper place!" He begins to jump up and down. "Proper place! Proper place!"~ */
  IF ~~ THEN REPLY #29475 /* ~"Calm down, I only mean to ask you some questions..."~ */ GOTO 11
  IF ~~ THEN REPLY #29476 /* ~Snatch up the mage's candy and eat it.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Quell_1","GLOBALLaw",-1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.1
  SAY #29478 /* ~You snatch up the candy and pop it in your mouth; its taste is sweet and tangy. The mage's jaw drops. "My... my delectably scrumptious Bytopian Fruit candy!"~ */
  IF ~~ THEN REPLY #29479 /* ~"That was good. Can I have another?"~ */ GOTO 8
  IF ~~ THEN REPLY #29480 /* ~"Calm down, I only mean to ask you some questions..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #29483 /* ~"Another one?! *Another* one?! Of all the raw, blistering nerve! What makes you think you *deserve* another candy, you unmannerly, churlish dullard?!"~ */
  IF ~~ THEN REPLY #29484 /* ~"I don't *deserve* one, I *want* one. Now let's have it."~ */ GOTO 12
  IF ~~ THEN REPLY #29485 /* ~"Come on... just give me one."~ */ GOTO 9
  IF ~~ THEN REPLY #29486 /* ~"Forget it."~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 8.1 12.0
  SAY #29487 /* ~"I'll give you nothing! And you'll *like* it." He plops a candy in his mouth for emphasis. "Mmmmmm. *Soooo* good." He swirls it in his mouth, his eyes closed as if he were rapt with ecstasy. "*Soooooo* delicious."~ */
  IF ~~ THEN REPLY #29488 /* ~"I *want* one, and you'll *give* it to me. Now let's have it."~ */ GOTO 12
  IF ~~ THEN REPLY #29489 /* ~"Fine, then... forget it."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.2 9.1 12.1
  SAY #29490 /* ~"I shall! Forgotten! Forgotten it is, you scabrous, rot-brained clatter-trap! Now farewell."~ */
  IF ~~ THEN REPLY #29491 /* ~"But... I had some questions..."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 6.0 7.1 10.0 13.1
  SAY #29493 /* ~"I care *NOT,* you yeasty, beef-witted pig-nut!" His eyes bulge out he jabs his finger at you: "Now off with you! OFF! WITH! YOU! And do not return without being prepared to show the proper respect... come bearing tribute - a gift!" He suddenly draws close and whispers from the side of his mouth: "Candies or chocolate would be nice. But nothing common, mind you - bring something *exotic.* Now begone!"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29494 /* ~"Wait... I've got this imported chocolate. I could give it to you, as a gift..."~ */ GOTO 14
  IF ~~ THEN REPLY #68057 /* ~"Fine... I'll look around the Ward for something suitable, then."~ */ JOURNAL #68058 /* ~A rather eccentric mage by the name of Quell refuses to speak with me on the grounds that I haven't shown him the proper respect by giving him a gift. He suggested candies or chocolate, but that they could not be of the common sort... they must be 'exotic.' I told him that I'd find somewhere in the Clerk's Ward that sold such things.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.0 9.0
  SAY #29495 /* ~"How *dare* you so ungraciously *demand* candy of me, as if it were some divine right, granted to you by the greatest of powers! Shall I just *kneel* to this whim of yours, o Great One? Pass my treasured candies on to your stigmata'd sacredness? Why don't I anoint them with precious oils, have them blessed, first?" He stomps his foot with each word: "No! No! No! I think not!"~ */
  IF ~~ THEN REPLY #29496 /* ~"Come on... just give me one."~ */ GOTO 9
  IF ~~ THEN REPLY #29497 /* ~"Fine, then. Forget it."~ */ GOTO 10
END

IF ~  Global("Quell","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #29498 /* ~The mage's expression curdles as he spies your approach. "Unbelievable! You've chosen to curse me with your detestable presence once more, you ill-conceived, reeky sod?" He pauses his haranguing to eat a small peppermint. "I pray you've learned yourself some *manners!*"~ */
  IF ~  PartyHasItem("ChocoQ")
~ THEN REPLY #29499 /* ~"I've brought you some imported chocolate, as a gift."~ */ GOTO 14
  IF ~~ THEN REPLY #29500 /* ~"I had some questions, actually..."~ */ GOTO 11
  IF ~~ THEN REPLY #29501 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0
  SAY #29502 /* ~"Oh?" His demeanor changes in an instant. "Very kind of you, very gentlemanly! May I see?"~ */
  IF ~~ THEN REPLY #29503 /* ~Show him the chocolate quasit.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29504 /* ~"Actually, no."~ */ GOTO 15
  IF ~~ THEN REPLY #29505 /* ~"It'll have to wait. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #29506 /* ~He rears back, totally flabbergasted. "WHAT?!"~ */
  IF ~~ THEN REPLY #29507 /* ~"I was only jesting. Here it is..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29508 /* ~"I really don't think you deserve it. You've been so rude."~ */ GOTO 16
  IF ~~ THEN REPLY #29509 /* ~"I'll bring it by later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29510 /* ~"You... you *what?*" He begins hopping about. "Preposterous! Farcical! Ludicrous! *RUDE* would be polymorphing you into a bowl of Baatorian spice-beans, eating you, and then spreading you about Sigil in foul-smelling little puffs from my bum! *THAT* would be most rude, I assure you, and I have been *nothing* of the sort!"~ */
  IF ~~ THEN REPLY #29511 /* ~"In any case, you're not getting it until you've apologized."~ */ GOTO 17
  IF ~~ THEN REPLY #29512 /* ~"I was only jesting. Here it is..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29513 /* ~"Perhaps I'll bring it by later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #29514 /* ~He immediately becomes quiet, eyes narrowed suspiciously. "You would let me *see* this gift, first, at least?"~ */
  IF ~~ THEN REPLY #29515 /* ~Give him a just a peek at the chocolate quasit.~ */ GOTO 18
  IF ~~ THEN REPLY #29516 /* ~"I was really only jesting. Here, have it..."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29517 /* ~"Perhaps I'll bring it by later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #29518 /* ~The man's skullcap shoots into the air with a resounding *pop,* landing straight back on his head. "Oh... oh my. Is that... is that a...?" He licks his lips, reaching gingerly for the chocolate quasit.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #29519 /* ~"Oh, no. Apology. Now."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #29520 /* ~"Oh, no. Apology. Now."~ */ GOTO 20
  IF ~~ THEN REPLY #29521 /* ~Let him take it.~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29522 /* ~"Perhaps I'll bring it by later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #29523 /* ~He scrunches his face up, biting his lip as he shakes his fists silently. Finally, he stops, brushes off his clothes, and exhales slowly. "Very well, sir. I apologize." You notice he has one of his hands behind his back.~ */
  IF ~~ THEN REPLY #29524 /* ~"Hmm. All right, here: a chocolate quasit."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29525 /* ~"Perhaps I'll bring it by later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #29526 /* ~He scrunches his face up, biting his lip as he shakes his fists silently. Finally, he stops, brushes off his clothes, and exhales slowly. "Very well, sir. I apologize." You notice he has one of his hands behind his back.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 290
END

IF ~~ THEN BEGIN 21 // from:
  SAY #29527 /* ~"Silence, you gibbering... oh! I mean, why, I'm doing nothing of the sort!" The mage smiles innocently at you, presenting his hands for your inspection.~ */
  IF ~~ THEN REPLY #29528 /* ~"Hmm. All right, here: a chocolate quasit."~ */ DO ~TakePartyItemNum("ChocoQ",1)
SetGlobal("Quell","GLOBAL",2)
AddexperienceParty(8000)
~ GOTO 22
  IF ~~ THEN REPLY #29529 /* ~"Perhaps I'll bring it by later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0 16.1 17.1 18.2 19.0 21.0
  SAY #29530 /* ~He takes it from your hands. "Oh... quite rare, these are, and most delectable." He bites off a large piece and tucks what's left into his tunic.~ */
  IF ~~ THEN REPLY #29531 /* ~"I had some questions..."~ */ GOTO 23
  IF ~~ THEN REPLY #29532 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #29533 /* ~He frowns at you, licking the last of the chocolate off his fingers. "Who told you to bother me with inane questions?!" He stares at you accusingly. "Come now... what is it that you wish to bother me with, or begone!" He fishes a malt-ball from his sleeve and eats it.~ */
  IF ~~ THEN REPLY #29534 /* ~"Who are you?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29535 /* ~"I'd like to purchase some spells."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29537 /* ~"May I have some candy?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29539 /* ~"I'd like to buy some candy."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29540 /* ~"What can you tell me about this place?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29541 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 34
  IF ~~ THEN REPLY #29542 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 26.2 27.0 28.1 29.0 30.1 32.1 33.0 34.1 35.5 36.2 38.2 39.1 40.1 41.2 42.1 43.1 46.0 47.1 48.2 49.0 50.1 51.2 52.1 53.4 54.1 55.1 56.0 57.3
  SAY #29538 /* ~He rolls his eyes, indicating for you to continue with a wave of his hand.~ */
  IF ~~ THEN REPLY #29543 /* ~"Who are you?"~ */ GOTO 25
  IF ~  Global("Quell_Spells","AR0604",1)
~ THEN REPLY #29544 /* ~"I'd like to purchase some spells."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~  Global("Quell_Candy","AR0604",0)
~ THEN REPLY #29546 /* ~"May I have some candy?"~ */ GOTO 30
  IF ~  Global("Quell_Candy","AR0604",1)
~ THEN REPLY #29547 /* ~"I'd like to buy some candy."~ */ DO ~StartStore("Quell_C",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29548 /* ~"What can you tell me about this place?"~ */ GOTO 33
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #29549 /* ~"What do you know of Ravel Puzzlewell?"~ */ GOTO 34
  IF ~~ THEN REPLY #29550 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #29551 /* ~"I... am Quell." He holds up his hand imperiously, as if to stop you from introducing yourself. "...and don't bother to introduce yourself: you must be the most insolent, annoying pest this side of Sigil that I've heard so much about!"~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #29552 /* ~"A true *pleasure* to meet you, and thank the powers it couldn't have waited until you had curled up and died, thereby sparing me the pain of being forced to banter words with you! I would gladly trade my formidable sorcerous powers for but a minor enchantment that would pierce your thick skull and introduce at least the idea of 'manners!'"~ */
  IF ~~ THEN REPLY #29553 /* ~"Manners? What about that chocolate I brought you?"~ */ GOTO 27
  IF ~~ THEN REPLY #29554 /* ~"Formidable sorcerous powers? Could you teach me?"~ */ GOTO 48
  IF ~~ THEN REPLY #29555 /* ~"I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29556 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #29557 /* ~He opens his mouth to speak, finger raised, then stops. "Hmm. You have me there, sir." He shrugs and eats another candy.~ */
  IF ~~ THEN REPLY #29558 /* ~"As I thought. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29559 /* ~"That I do. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #29560 /* ~He looks perplexed. "Me? A hat? You befuddle me... I wear no hat!" He purses his lips and gives you a suspicious, sidelong glance through narrowed eyes.~ */
  IF ~~ THEN REPLY #29561 /* ~"If it's not a hat, what's that glowing thing on your head?"~ */ GOTO 29
  IF ~~ THEN REPLY #29562 /* ~"No, but I have other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29563 /* ~"All right... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #29564 /* ~"Absolute madness! I've nothing on my head... nothing, I say! And I'll speak no more on the matter, thank you."~ */
  IF ~~ THEN REPLY #29565 /* ~"Hmm. I have other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29566 /* ~"All right... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 23.2 24.2
  SAY #29567 /* ~"A candy?! And once more, for good measure: A *candy?!* What, pray tell, makes you think I'd *give* a candy to a shirtless, impertinent pumpion such as yourself, hmm?" He taps his foot, arms crossed, awaiting your answer.~ */
  IF ~~ THEN REPLY #29568 /* ~"Would you *sell* some, then?"~ */ DO ~SetGlobal("Quell_Candy","AR0604",1)
~ GOTO 31
  IF ~~ THEN REPLY #29569 /* ~"Nothing. I have another question..."~ */ GOTO 24
  IF ~~ THEN REPLY #29570 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #29571 /* ~"Now that... that I *might.* But I would warn you! I sell no ordinary candies, but chocolates... of *power!*" He draws this last word out, rubbing his hands together greedily...~ */
  IF ~~ THEN REPLY #29572 /* ~"Chocolates... of power?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #29573 /* ~He nods. "Indeed. They are not *cheap,* mind you, so should you find yourself short of jink, I suggest you drop the subject *immediately.* Would you like to see what I have to offer, hmmm?" He cocks his head, looking at you slyly.~ */
  IF ~~ THEN REPLY #29574 /* ~"Yes."~ */ DO ~StartStore("Quell_C",Protagonist)
~ JOURNAL #28833 /* ~I met a mage by the name of Quell, in the Private Sensorium of the Civic Festhall. He sells a variety of magical chocolates, all of which are imbued with various magics that take effect as soon as they are eaten.~ */ EXIT
  IF ~~ THEN REPLY #29575 /* ~"No, but I have some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29576 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 23.4 24.4
  SAY #29577 /* ~"You stand within the Civic Festhall, in the exclusive... so *very* exclusive until *you* shambled in... Private Sensorium. Speak to the man at the Festhall's foyer, Splinter, should you have any more fatuous questions about the place."~ */
  IF ~~ THEN REPLY #29578 /* ~"Let me ask about something else..."~ */ GOTO 24
  IF ~~ THEN REPLY #29579 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.5 24.5
  SAY #29580 /* ~At the mention of her name, he swallows the candy he's sucking on with a loud *gulp,* wincing in pain. "What to tell?! Why tell at all? Such things, such tales are best left in dusty books and in the attics of old men's minds! Evil, evil! Such a name, such a name... and such dark tales swarm about it, like flies on a corpse."~ */
  IF ~~ THEN REPLY #29581 /* ~"Just the same, I need you to tell me."~ */ GOTO 35
  IF ~~ THEN REPLY #29582 /* ~"Never mind; I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29583 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #29584 /* ~He rolls his eyes, plopping another candy into his mouth. "She's a night hag, my boy, who came to Sigil... all evil and cackles, she was, alive with her shadow-magic, ready to butt heads with the Lady of Pain. Barmy, barmy barmy old hag... only succeeding in getting herself mazed. She's likely dead, by now."~ */
  IF ~~ THEN REPLY #29585 /* ~"Shadow-magic?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29586 /* ~"How might I find her?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29587 /* ~"How might I find her?"~ */ GOTO 38
  IF ~~ THEN REPLY #29588 /* ~"Mazed?"~ */ GOTO 57
  IF ~~ THEN REPLY #29589 /* ~"The Lady of Pain?"~ */ GOTO 57
  IF ~~ THEN REPLY #29590 /* ~"I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29591 /* ~"That's all I wished to know, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0 38.1 57.0
  SAY #29592 /* ~"Yes, yes, yes..." He seems uneasy about speaking of her. "Ravel dabbled... no, not dabbled, but *excelled* in all schools of magic. She knew shadow magics, magics of illusion and shadow substance, shadows, residues of dead things."~ */
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29593 /* ~"How might I find her?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29594 /* ~"How might I find her?"~ */ GOTO 38
  IF ~~ THEN REPLY #29595 /* ~"I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29596 /* ~"That's all I wished to know, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.0 57.1
  SAY #29597 /* ~"How might you WHAT?!" His candy rolls right out of his mouth and onto the tiles. Before you can so much as look at it, he snatches it up and pops it back into his mouth, giving you a dirty look.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 35.2 36.1 37.0 57.2
  SAY #29598 /* ~"Why... why would you *ask* such a thing? Are you *MAD?* What could you possibly want with such an evil creature?"~ */
  IF ~~ THEN REPLY #29599 /* ~"She knows something about my past."~ */ GOTO 39
  IF ~~ THEN REPLY #29600 /* ~"Never mind that - what did you say about 'shadow magic'?"~ */ GOTO 36
  IF ~~ THEN REPLY #29601 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29602 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #29603 /* ~"Doubtful... she was mazed many centuries ago. Gone - penned in the dead-book, she is. And even if she were somewhy, *somehow* still clutching to life with her blackened, bloody talons, what could she *possibly* know about *you?* If she wasn't the spitting image of cackling evil, that is, and was even *willing* to help you..."~ */
  IF ~~ THEN REPLY #29604 /* ~"I'll just have to hope she's alive and will help me."~ */ GOTO 40
  IF ~~ THEN REPLY #29605 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29606 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #29607 /* ~"By Leshe's six teats and her swollen tummy, what a flickering candle of hope hurled into the howling winds of Pandemonium that is! *Flicker-flicker-whooosh!* Don't be any more the fool than you need be!"~ */
  IF ~~ THEN REPLY #29608 /* ~"I must still seek her out, whether she's dead or alive."~ */ GOTO 41
  IF ~~ THEN REPLY #29609 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29610 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #29611 /* ~"So if she's dead - as she most likely is - then what is your plan, may I ask? You have everything all figured out, do you? Quell is just blowing words out of his pits, nonsense, nothing! What *do* you plan to do if she's in the dead-book, eh?"~ */
  IF ~~ THEN REPLY #29612 /* ~"I don't know. I'll figure something out."~ */ GOTO 42
  IF ~~ THEN REPLY #29613 /* ~"What do you think I should do?"~ */ GOTO 47
  IF ~~ THEN REPLY #29614 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29615 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29616 /* ~"My, my, my, that's the best plan I've ever heard! Pure, blinding white genius of an idea! No idea how to get into the maze, no idea how to get out, no idea what to do if she's dead, certainly no idea what to do if she's alive. I might as well be talking to a lemure for all the barmy foolishness you're spouting out!"~ */
  IF ~~ THEN REPLY #29617 /* ~"Can you tell me how to get to her maze?"~ */ GOTO 43
  IF ~~ THEN REPLY #29618 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29619 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 47.0
  SAY #29620 /* ~"Lunatic! Madman! Addle-cove! Have you not listened to a word I've said?! She's imprisoned in an inter-dimensional *maze* for trying to best the *LADY OF PAIN!* That means she's at least ten times as barmy as you, and at least a hundred times more powerful! She's also most likely dead, dead, dead, thrice-dead and... if by some happenstance she isn't... she'll make *you* dead!"~ */
  IF ~~ THEN REPLY #29621 /* ~"I understand, but I really need your help. Can you tell me how to reach her or not?"~ */ GOTO 44
  IF ~~ THEN REPLY #29622 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29623 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #29624 /* ~Quell goes quiet, chewing on his lip. After a moment, he fishes around in his tunic for a mint, then plops it into his mouth. "You're serious? Serious now? Why so serious, so Baator-bent, so mule-stubborn?" He sighs. "Well, born Clueless, die Clueless."~ */
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #29625 /* ~"Yes...?"~ */ DO ~SetGlobal("Know_Ravel_Key","GLOBAL",1)
~ JOURNAL #28832 /* ~A mage named Quell told me the key to the portal which would lead to Ravel's maze was, oddly enough, a piece of Ravel.~ */ GOTO 45
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #18041 /* ~"Yes...?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #29626 /* ~"All mazes have portals; this much I *know* to be true. A way in, a way out... this is how the Lady fashions them. I do not know the portal - its location, or even its form - but I am told its key... is a piece of Ravel."~ */
  IF ~~ THEN REPLY #29627 /* ~"A piece of Ravel? But if Ravel is MAZED, then how am I supposed to..."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #29628 /* ~"Then you'll have to make do. Find something that has Ravel's taint in it, mayhap... that is all I know! All! Bother me no more about it! If you want to go pestering someone about something like that, go to the Brothel of Slating Intellectual Lust - one of the ladies there is bound to have met someone or know something that'll help."~ */
  IF ~~ THEN REPLY #29629 /* ~"Thanks. I had other questions..."~ */ JOURNAL #66703 /* ~Quell suggested that I go to the Brothel of Slating Intellectual Lusts in search of the key to Ravel's Maze. He claimed that at least one of the ladies there will most likely have met someone who - or know something that - can help me.~ */ GOTO 24
  IF ~~ THEN REPLY #29630 /* ~"My thanks for your help. Farewell."~ */ JOURNAL #66703 /* ~Quell suggested that I go to the Brothel of Slating Intellectual Lusts in search of the key to Ravel's Maze. He claimed that at least one of the ladies there will most likely have met someone who - or know something that - can help me.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 41.1
  SAY #29631 /* ~"The first brilliant question you've asked! Me? *I* think you should give up this clueless idea of entering mazes and chatting with night hags and lope back into whatever crypt you crawled out of! Makes far more sense than fishing for the Lady's anger, it does."~ */
  IF ~~ THEN REPLY #29632 /* ~"Can you tell me how to get to her maze?"~ */ GOTO 43
  IF ~~ THEN REPLY #29633 /* ~"Forget it. I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29634 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 26.1
  SAY #29635 /* ~"*Teach* you?! Hah! Are you even a *mage?*"~ */
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #29636 /* ~"Yes, I am."~ */ GOTO 50
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #29637 /* ~"No, but I was hoping you could make me one."~ */ GOTO 49
  IF ~~ THEN REPLY #29638 /* ~"Forget it. I had some other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29639 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #29640 /* ~He sneers at you. "Oooo, if only I had Bigby's Boot of Righteous Rump-Kicking to throw down upon you! NO! I will most certainly *not* make you a mage, you boil-brained puttock! To do so would be to demean the Art!"~ */
  IF ~~ THEN REPLY #29641 /* ~"I had some other questions, then..."~ */ GOTO 24
  IF ~~ THEN REPLY #29642 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #29643 /* ~"Oh! What wonders the multiverse holds for Quell today! Come, let me see your spell-book."~ */
  IF ~~ THEN REPLY #29644 /* ~Let him look at it.~ */ GOTO 51
  IF ~~ THEN REPLY #29645 /* ~"I think not. Let me ask you something else..."~ */ GOTO 24
  IF ~~ THEN REPLY #29646 /* ~"Perhaps another time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29647 /* ~He tears it from your grasp and glares at it furiously. "What is this trash?! I'll tell you: dung! Dung, dung, dung! How do you even pluck the spells from these stained pages... have you been using this book as a bar towel, so soaked in spirits, glue and blood it is! Do you not care for your spell book?! How can I teach someone who does not respect the Art?!"~ */
  IF ~~ THEN REPLY #29648 /* ~"Why does its appearance matter?"~ */ GOTO 52
  IF ~~ THEN REPLY #29649 /* ~"It holds my spells. Its appearance is unimportant."~ */ GOTO 53
  IF ~~ THEN REPLY #29650 /* ~"Forget it. I had some other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29651 /* ~"Forget I asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0 54.0
  SAY #29652 /* ~"Your spell-book's appearance should reflect your respect for the power it holds. That trashy little book of yours is suitable for only the basest of words! *True* spells should be recorded in rare, precious inks, on sheets of vellum edged with gold leaf! Everything in its proper place, or not at all!" He begins to hop about madly. "Proper place! Proper place!"~ */
  IF ~~ THEN REPLY #29653 /* ~"I... see. Can you teach me or not?"~ */ DO ~SetGlobal("Quell_Spells","AR0604",1)
~ GOTO 55
  IF ~~ THEN REPLY #29654 /* ~"Forget it. I had some other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29655 /* ~"Forget I ever asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #29656 /* ~"Ridiculous! Preposterous! A most laughable notion, if I ever heard one! Whoever *taught* you the Art?"~ */
  IF ~  Global("Mage_Training","GLOBAL",1)
~ THEN REPLY #29657 /* ~"A midwife in Ragpicker's Square, Mebbeth."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",2)
~ THEN REPLY #50720 /* ~"Lady Thorncombe, here in the Festhall."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",3)
~ THEN REPLY #67160 /* ~"A mage I met in the Lower Ward, Sebastion."~ */ GOTO 54
  IF ~  Global("Mage_Training","GLOBAL",4)
~ THEN REPLY #67161 /* ~"A woman I met in Curst, Kitla."~ */ GOTO 54
  IF ~~ THEN REPLY #29658 /* ~"Forget it. I had some other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29659 /* ~"Forget I ever asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0 53.1 53.2 53.3
  SAY #29660 /* ~"Then shamed be their name to be spreading such ineffable twaddle! And look at these spells! What is this addled crap that they have been spilling out, sullying magicks with hoodoo names and mumbo-jumbo wash! Trivial, tiny, flickering candle-like magicks with grandiose names!"~ */
  IF ~~ THEN REPLY #29661 /* ~"So why does its appearance matter?"~ */ GOTO 52
  IF ~~ THEN REPLY #29662 /* ~"Forget it. I had some other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29663 /* ~"Forget I ever asked. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.0
  SAY #29664 /* ~He shuts his eyes and massages his temples for a moment. Finally, he speaks in a cold, level tone: "It is obvious I can teach you nothing. I may, however, have some spells you might wish to *purchase* from me. Would you care to see them? Hmmm?"~ */
  IF ~~ THEN REPLY #29665 /* ~"Yes, I would."~ */ DO ~StartStore("Quell_S",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #29666 /* ~"Not now. I had some other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29667 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~  Global("Quell","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #29668 /* ~Quell glances around him as you approach. "Blast! Nowhere to hide!" He sighs loudly. "Well, out with it! What do you wish of me *now,* hmm?" He plops a candy into his mouth and looks at you expectantly.~ */
  IF ~~ THEN REPLY #29669 /* ~"I had some questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29670 /* ~"Nothing, I was only passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 35.3 35.4
  SAY #29671 /* ~He nods grimly. "The Lady of Pain, she... 'rules' the city of Sigil; keeps the powers out and such. One of the punishments she reserves for those who cross her is mazing... she breaks off a piece of Sigil, twisting it about and banishing it to who-knows-where, the offender trapped inside. Gone, gone, gone they are to the planes, then!"~ */
  IF ~~ THEN REPLY #29672 /* ~"You had mentioned 'shadow-magic'?"~ */ GOTO 36
  IF ~  Global("Chaotic_Quell_1","GLOBAL",1)
~ THEN REPLY #29673 /* ~"How might I find her?"~ */ GOTO 37
  IF ~  Global("Chaotic_Quell_1","GLOBAL",0)
~ THEN REPLY #29674 /* ~"How might I find her?"~ */ GOTO 38
  IF ~~ THEN REPLY #29675 /* ~"I had other questions..."~ */ GOTO 24
  IF ~~ THEN REPLY #29676 /* ~"That's all I wished to know, farewell."~ */ EXIT
END
