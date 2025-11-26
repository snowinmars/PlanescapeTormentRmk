// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAVEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAVEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Ravel_Cut_Scene","AR0610",0)
~ THEN BEGIN 0 // from:
  SAY #2976 /* ~The plump, hook-nosed crone before you doesn't look much like a myth; she is outfitted in a simple (if dirty) brown shirt and leggings, with a number of pouches hanging from her frayed belt. She seems oblivious to your presence, more concerned with the tangled black roots woven together to form the floor of the maze than anything transpiring around her.~ */
  IF ~~ THEN REPLY #2977 /* ~Study her for a moment.~ */ GOTO 1
  IF ~~ THEN REPLY #51564 /* ~Leave the woman to her garden.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51566 /* ~A tangle of jagged gray hair juts from beneath the crone's hood, spreading down her shoulders like a mass of twisted gray roots. Sickly blue-gray flesh hangs in loose folds from her face; her narrow chin, long and sharp, juts forward in an extreme under-bite, and two filthy yellow canines protrude from her lower jaw, like small tusks.~ */
  IF ~~ THEN REPLY #51567 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #51568 /* ~Attack her before she notices you.~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #51569 /* ~Attack her before she notices you.~ */ GOTO 3
  IF ~~ THEN REPLY #51570 /* ~Leave the woman to her garden.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #51571 /* ~As you begin to size up the crone for any weaknesses, a swimming sensation passes through your stomach, like nausea. You know, in your heart, that attacking now is tactically sound, but you KNOW you must find out what this crone... this creature... knows about you first. ~ */
  IF ~~ THEN REPLY #51572 /* ~Attack her anyway.~ */ GOTO 3
  IF ~~ THEN REPLY #51573 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #51574 /* ~As the thought of attack flickers across your mind, the crone lifts her head, as if a strange thought had just occurred to her. She blinks and gives a rasping hiss, like a sigh.~ */
  IF ~~ THEN REPLY #51575 /* ~"Ravel...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Ravel_Cut_Scene","AR0610",1)
~ THEN BEGIN 4 // from:
  SAY #51576 /* ~"Ah... visitors." The crone's voice is thick and scratchy, as if trying to force its way past layers of dust. Her eyes are a dull, bloody red, with black veins running through them like tree branches. As she gazes at you, a strange crawling sensation passes through you, like snakes burrowing beneath your skin.~ [RAV005] */
  IF ~~ THEN REPLY #51577 /* ~"Greetings... Ravel."~ */ DO ~SetGlobal("Ravel","GLOBAL",1)
AddexperienceParty(90000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51578 /* ~"Well, now, my pretty thing, have you returned at last?" Ravel's face splits into a grotesque smile, displaying a row of chipped yellowed fangs. "You were a-gone so long, I a-feared you forgot poor, lonely Ravel." ~ [RAV002] */
  IF ~~ THEN REPLY #51579 /* ~"I did forget for a time. Now I have returned."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #51580 /* ~"How could I forget you, Ravel? I missed you, but you hid yourself in a place that was difficult for me to reach. Come now... did you not wish my company?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #51581 /* ~"Ahhh..." Ravel's yellow smile widens, peeling back the folds of her skin, and she cackles softly. "Such *sweet* words... you already are a-knowing the answer of your asking, my precious man. I scattered clues like caltrops, and these were my means of a-guiding you to my garden. I a-feared it was YOU who had forgot *I.*"~ */
  IF ~~ THEN REPLY #51582 /* ~"I assure you, I did no such thing. I have returned to you at last."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #51583 /* ~"Have you? But WHAT has returned?" She squints at you with her black-veined eyes and hisses softly. "Let Ravel see how you've a-fared in this life." She reaches out, as if to caress you, and you suddenly notice her fingers are talons, each fingernail filthy and wickedly sharp.~ */
  IF ~~ THEN REPLY #51584 /* ~Let her touch you.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #51585 /* ~"Do not touch me, Ravel. I only wish to trade words with you, nothing more."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
  IF ~~ THEN REPLY #51586 /* ~Strike her as she reaches out to touch you.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #51587 /* ~As the thought of attacking her flickers across your mind, Ravel's eyes *blaze* like fires, and her voice suddenly gains a threatening weight. "Do NOT. If you value what *little* you still hold, do NOT."~ */
  IF ~~ THEN REPLY #51588 /* ~"I don't think you can stop me, Ravel. Try if you can."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
  IF ~~ THEN REPLY #51589 /* ~"Then don't touch me, Ravel. I only wish to trade words with you, nothing more."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0 49.1 50.0 86.0
  SAY #51590 /* ~"You have forgotten your place, HALF-man. Humility is in order."~ [RAV065] */
  IF ~~ THEN REPLY #51591 /* ~"We'll see, you foul witch..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #51592 /* ~Her ragged talons trace their way across your skin, and in their wake you feel the same strange tingling sensation you felt when Ravel first looked at you. Her eyes dim somewhat, and her talons slide gently along the contours of your face, lingering on your scars.~ */
  IF ~~ THEN REPLY #51594 /* ~Wait...~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51595 /* ~Reach out to touch her, feel her features.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51596 /* ~Reach out to touch her, feel her features.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51597 /* ~Reach out to touch her, feel her features.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #51598 /* ~Your hand touches Ravel's cheek as her talons caress your face, and instinctively, you mirror her touch - as her talons drag along your left cheek, your fingers drag along hers. Her eyes close, and yours follow. It feels strangely familiar, but you cannot recall the memory. After a moment, her bloody eyes open, and she gives a rasping hiss. ~ */
  IF ~~ THEN REPLY #51599 /* ~Wait.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 10.2 10.3
  SAY #51600 /* ~Your hand touches Ravel's cheek as her talons caress your face, and instinctively, you mirror her touch - as her talons drag along your left cheek, your fingers drag along hers. Her eyes close, and yours follow. It feels strangely familiar... ~ */
  IF ~~ THEN REPLY #51601 /* ~Close your eyes, surrender to the memory.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Ravel_Memory","GLOBAL",1)
PlaySound("SPTR_01")
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51602 /* ~When your eyes open, it feels as if all the color has bled out of the trees and the maze; *everything* is a featureless, dusty, dead gray. Ravel's eyes are still closed, but as you watch, they slowly open and she smiles, a sad, gray smile. You feel words rising to your lips, echoing something you have said in the past, in a different place, on another plane...~ */
  IF ~~ THEN REPLY #51603 /* ~Memory Echo: "It is said you are the greatest of the Gray Sisters, Ravel. I have traveled far to reach you."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51604 /* ~She nods, but slowly, too slowly, as if through a dream. When she speaks, her words are muted, as if being spoken underwater. "But *why* have you traveled so far? Your need must be great... yet you seem to have brought *nothing* that would interest me. You must PAY for your services..."~ */
  IF ~~ THEN REPLY #51605 /* ~Memory Echo: "My need is great. My currency is this: a challenge. Perhaps an impossible challenge... one I fear is beyond even *your* abilities..."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #51606 /* ~You echo the words, and you feel the MANIPULATION, the subtle twist designed to pull Ravel's strings. Her eyes blaze a fiery gray in the dream-memory, and the gray that is eating the landscape seems to ebb from her features. "There is NOTHING that is beyond me, foolish man! NOTHING! Pose your challenge, I will hear you!"~ */
  IF ~~ THEN REPLY #51607 /* ~Memory Echo: "Death waits at the end of life for all men. I need it to wait for me no longer... can you do this, beautiful Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #51608 /* ~The vision clears, the gray bleeding away from the maze, until the color resumes, your hand still cupping Ravel's cheek. Her eyes are closed, and she sighs. You withdraw it slowly, and after a moment, Ravel's eyes open, and she gives a rasping hiss. "Yessssss..."~ */
  IF ~~ THEN REPLY #51609 /* ~"Ravel...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #51610 /* ~When I came to Ravel in the black-barbed maze, I remembered what I believe to have been the first time we met... in some place where everything was gray, as if all the colors had been bled from everything. I challenged her to make me immortal, and if memory serves, she agreed. ~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 10.0 11.0 16.0
  SAY #51611 /* ~Ravel's finger withdraws, and she looks at you sadly. "Oh, sad, sad, broken half-thing. All-a-pieces." She squints at you again. "No longer the one Ravel knew are you... are you still a-broken, after all this sad, sad time?"~ */
  IF ~~ THEN REPLY #51612 /* ~"Broken? What do you mean?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 7.1 8.1
  SAY #51613 /* ~"Ah... always the cautious one, my most beloved of puzzles?" She withdraws her finger, and lets it fall to her side. "So did I mark you when you *first* came to me on the wastes with your challenge for Ravel."~ */
  IF ~~ THEN REPLY #51614 /* ~"I... do not remember such a meeting. There is much that I have forgotten."~ */ GOTO 19
  IF ~~ THEN REPLY #51615 /* ~"What is this you are speaking of?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #51616 /* ~Ravel gives a whispering sigh as she studies you. "Oh, sad, sad, broken half-thing. All-a-pieces. No longer the one Ravel knew are you... are you still a-broken, after all this sad, sad time?"~ */
  IF ~~ THEN REPLY #51617 /* ~"What do you mean?"~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51618 /* ~"Ravel, the ritual you performed was flawed... it didn't work. Every time I die... or at least every time I *used* to die, I forgot myself and became somebody else. I'm broken, yes. Can you fix me, help me remember?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0 19.1
  SAY #51619 /* ~"A body you possess, but a body of knowledge you do not?" She points her ragged talon at your chest, at your scars. "Many and such, such scars you have, all a-scrawled on your skin. Many tales does your skin tell."~ */
  IF ~~ THEN REPLY #51620 /* ~"What are you talking about?"~ */ GOTO 21
  IF ~~ THEN REPLY #51621 /* ~"What tales does my skin tell?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #51622 /* ~"Your scars and tattoos shout to me, 'here is a man in confrontation with the world.'" Ravel makes a crooning noise, not unlike a dying bird. "Yes, such tales as would shrivel even a *hag's* ears..."~ */
  IF ~~ THEN REPLY #51623 /* ~"Tell me these... tales. I would know them."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 24.0 26.0 27.0 29.0
  SAY #51624 /* ~"The tales are many. They echo of balance imbalanced, trials of war, battles with fiendish elements, and a creature that feeds on others from a-far to sustain itself... and of torments. Such *torments* flesh has never known..."~ */
  IF ~~ THEN REPLY #51625 /* ~"Balance Imbalanced?"~ */ DO ~SetGlobal("Ravel_Tale_1","AR0610",1)
~ GOTO 23
  IF ~~ THEN REPLY #51626 /* ~"Trials of War?"~ */ DO ~SetGlobal("Ravel_Tale_2","AR0610",1)
~ GOTO 25
  IF ~~ THEN REPLY #51627 /* ~"Battles with fiendish elements?"~ */ DO ~SetGlobal("Ravel_Tale_3","AR0610",1)
~ GOTO 27
  IF ~~ THEN REPLY #51628 /* ~"A creature that feeds on others from afar?"~ */ DO ~SetGlobal("Ravel_Tale_4","AR0610",1)
~ GOTO 28
  IF ~  NumInParty(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51629 /* ~"And these torments... what are these torments you speak of?"~ */ JOURNAL #51631 /* ~Ravel told me I was "broken." She made cryptic comments about my scars and tattoos, saying they spoke of a "balance imbalanced," "trials of war," "battles with fiendish elements," and called me a creature "that feeds on others from afar." She admitted to taking my mortality from me, and she said I acted as a lodestone to tormented souls, drawing them to me as a lodestone draws iron.~ */ GOTO 30
  IF ~  NumInPartyGT(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51630 /* ~"And these torments... what are these torments you speak of?"~ */ JOURNAL #51631 /* ~Ravel told me I was "broken." She made cryptic comments about my scars and tattoos, saying they spoke of a "balance imbalanced," "trials of war," "battles with fiendish elements," and called me a creature "that feeds on others from afar." She admitted to taking my mortality from me, and she said I acted as a lodestone to tormented souls, drawing them to me as a lodestone draws iron.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51632 /* ~"Divided in two you were, when your mortality was peeled from you. No longer balanced, much a-broken in the separation... both a blessing and a mistake... but more mistake than blessing, Ravel thinks."~ */
  IF ~~ THEN REPLY #51633 /* ~"You *took* my mortality? How?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51634 /* ~"Forgotten the how of it, I have... have I?" Ravel's gaze dims for a moment, the black veins swimming in her eyes. "And even if I a-membered it, I would never do it twice. Not forgotten the moment have I, after the *break,* a-seeing the pain stream from your veins, your cries like a wailing child, every bit of your being filled with *emptiness.* Terrible, even for these eyes."~ */
  IF ~~ THEN REPLY #51635 /* ~"So... that's why I feel hollow inside? Because my mortality is gone? Very well... what are these other tales my skin tells?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY #51636 /* ~"Great, great trials of war... much too much to be borne by any, any mortal thing."~ */
  IF ~~ THEN REPLY #51637 /* ~"What war? Where?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #51638 /* ~"This war touches ALL, my precious half-man. There is no place where its caress is not felt... did it touch you?" Ravel's voice drops, almost bitter. "To this, Ravel says 'aye.'"~ */
  IF ~~ THEN REPLY #51639 /* ~"That would explain the scars... what are these other tales my skin tells?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY #51640 /* ~"Two fiends butt heads..." Ravel sniffs, as if in contempt. "Their tiny heads filled with ideas of how the planes *should* be, yet can *never* be or the planes they would be no longer. Such foolishness!"~ */
  IF ~~ THEN REPLY #51641 /* ~"I'm not certain I understand... what are these other tales my skin tells?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY #51642 /* ~"No base hungers do you feel, but far, far more terrible ones boil beneath your skin. And *such* a cost..."~ */
  IF ~~ THEN REPLY #51643 /* ~"Hungers? What do you mean?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #51644 /* ~"I know not... knot? Knot the nature nor the cause of these hungers. But heed this: Coming events cast their *shadows* before them, my precious half-man... there is no a-saying of what these events will be, not even with *Ravel's* eyes."~ */
  IF ~~ THEN REPLY #51645 /* ~"Uh, very well... what are these other tales my skin tells?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 22.4
  SAY #51646 /* ~"A lodestone pulls iron to it... and so do you, my precious half-man, but it is not iron, but tormented souls. As others suffer, they are drawn to you, and your path becomes theirs."~ */
  IF ~~ THEN REPLY #51647 /* ~"Why is this so?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 31 // from: 22.5
  SAY #51648 /* ~"A lodestone pulls iron to it... and so do you, my precious half-man, but it is not iron, but tormented souls. As others suffer, they are drawn to you, and your path becomes theirs." She makes a sweeping gesture. "Do you not see them in the eyes of those that have traveled here with you?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51649 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",1)
~ GOTO 32
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51650 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ GOTO 33
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51651 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51652 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51653 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51654 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51655 /* ~"My companions? What do you mean?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51656 /* ~"Do *you* wish to explain, gith?" Ravel throws a burning glance at Dak'kon, tempered with a fanged smile. "Vows may prove tighter than any chain, no? The manacles of a race once enslaved, now a slave again?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 170
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY #51657 /* ~"The cog-box..." Ravel's gaze drifts to Nordom. "Once it knew only *suffering's* definition, but now it feels its sting. There is no room for '2' in the world of 1's and 0's, no place for 'mayhap' in a house of trues and falses, and no 'green with envy' in a black and white world. When it discovers how the planes turn, when it discovers the TRUTH behind loyalty and ill-logic, more torments will it know..."~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #51658 /* ~"Ravel, leave my companions alone. I have q-"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51659 /* ~"Ravel, leave my companions alone. I have q-"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51660 /* ~"Ravel, leave my companions alone. I have q-"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51661 /* ~"Ravel, leave my companions alone. I have q-"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51662 /* ~"Ravel, leave my companions alone. I have q-"~ */ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 31.2 33.0
  SAY #51663 /* ~"The crackling, cackling sorcerer..." Ravel's eyes seem to catch Ignus' fire and blaze with his hellish light. "An ember of Ravel's once-passion he carries, for he cares not what he does, but... mayhap... down inside in the lightless places, he is tormented by what he ONCE was a-fore the passions came upon him... do my words burn true, o smoldering corpse...?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 17
END

IF ~~ THEN BEGIN 35 // from: 31.3 33.1
  SAY #51667 /* ~"The chattering skull..." Ravel doesn't bother to even look at Morte, as if he is beneath her notice. "Are the quips enough of a shield for what lies buried inside your brain-box, hmmm? Why speak truths when lies suffice?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #51671 /* ~"Morte...? What do you mean, Ravel?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51672 /* ~"Morte...? What do you mean, Ravel?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51673 /* ~"Morte...? What do you mean, Ravel?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 31.4 33.2 35.0
  SAY #51668 /* ~"The Abyssal temptress..." Ravel sneers, her yellowed fangs piercing her purpled lips as she squints at Fall-from-Grace. "A skin so fair, lips so rich, eyes that might cause you to forget Ravel herself... and yet she suffers, more than any other. When one turns on their nature, many are the torments that arise from such a betrayal."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 158
END

IF ~~ THEN BEGIN 37 // from:
  SAY #51674 /* ~"You LIE, succubus!" Ravel's lips peel back in a snarl. "You LIE! Do not DARE lie to me, when your heart is a BOOK to me! Every word you SPIT *screams* of your torment!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51675 /* ~"Have a care with your words, Ravel! Enough of this!"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51676 /* ~"Have a care with your words, Ravel! Enough of this!"~ */ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.5 33.3 35.1 37.0
  SAY #51677 /* ~"Ah..." Ravel gestures at Annah, as if she is for sale upon an auction block. "Look upon the feisty tiefling... such *fiery* hair and voice..." Ravel smiles, baring her rows of yellowed teeth. "Shall I speak of *your* torment, tiefling?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 252
END

IF ~~ THEN BEGIN 39 // from:
  SAY #51678 /* ~"No... no, I shall not speak of it." Ravel's voice drops, almost in exhaustion, and the smile fades from her face. "Grown tired of cruelties and torments, Ravel has... the world is a-jagged enough place..." She turns to you, her bloody eyes dimmed, and she sighs.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 33.4 35.2 37.1 39.0
  SAY #51679 /* ~"And my precious, precious half-man... for *you,* the greatest torment of all... life forever-more. Can it be life a-cares for you as Ravel does?" She gnashes her yellowed tusks with a horrid *clacking* noise. "One so brave, so passionate, so terribly lost, sad, sad."~ */
  IF ~~ THEN REPLY #51680 /* ~"Ravel, *why* did you make me immortal? I must kn-"~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 238.0
  SAY #51681 /* ~"A puzzle of bone and skin were you, always, intriguing, and the most beloved of all who came to me, petitioning, requesting, pleading... pleasing? Pleading for help." Ravel stares hard at you, her black-veined ember eyes narrowing. "So *hard* to see a-past the scars, to dig up the man-who-once-was underneath..."~ */
  IF ~~ THEN REPLY #51682 /* ~"Ravel, can you tell me anything about who I once was?"~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #51683 /* ~"A shadow with substance, a-seeking that which casts the light. I know you more and no... know..." Ravel pauses, her eyes dimming. "No more than I know the nature of ANY man. Crossed pasts have we... a man tainted with un-death, still feeling the pangs of separation, and an old withered crone, now all-imprisoned."~ */
  IF ~~ THEN REPLY #51684 /* ~"Crossed Pasts?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #51685 /* ~"Seems it that we are a-meeting for the first time? No, no, not, not... knot?" Ravel seems confused for a moment, then shudders, as if throwing off a weight. "Knot at all. An echo of a future meeting this is... or a past meeting, depending on which way time is facing." ~ */
  IF ~~ THEN REPLY #51686 /* ~"So this... this meeting echoes a meeting in the past?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #51687 /* ~"The now and then - very... similar? So tangled the now-and-then is, both mirrored in each other... once and again, you come a-fore me with a problem, to challenge me for a solution to an IMPOSSIBILITY." Ravel hisses at you, and her eyes blaze. "Beautiful, *ungrateful,* beloved man!"~ */
  IF ~~ THEN REPLY #51688 /* ~"What was this impossibility I asked you to solve?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #51689 /* ~Ravel doesn't seem to have heard you - she still seems to be in the past, for her eyes dim, as if looking far away. "Such fire in your eyes, enough to stir a Gray Lady's heart... passion to be free, but when freed, the fire in your eyes guttered out. With the separation, your life has shed all meaning, I fear." Ravel smiles with her yellowed fangs, then *clicks* them together, as if laughing. "Mayhap you should sit on your hind legs and limp your forepaws - mayhap Ravel will give you another scrap of knowing."~ */
  IF ~~ THEN REPLY #51690 /* ~"If begging will bring me answers, then I beg you, Ravel: Tell me what you know. I need your help in remembering what happened."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 46
  IF ~~ THEN REPLY #51691 /* ~"I will not *beg* for your aid, Ravel. I will ask, nothing more."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #51692 /* ~"Ah... a gentled heart now?" Ravel's black-veined eyes glint, and the corner of her mouth twists upwards, like a snake. "Has life a-softened you... ah, but one can hope."~ */
  IF ~~ THEN REPLY #51693 /* ~"Ravel, I have many questions I wish to ask you..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #51694 /* ~"As it ever was for you, you would not bend your knee to me, my precious man."~ */
  IF ~~ THEN REPLY #51695 /* ~"Ravel, I have many questions I wish to ask you..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #51696 /* ~"Oh, MORE questions do you have?" Ravel croons softly, but there is an edge to it, as if she is reprimanding you. "Tchhh-tcchhh. But you have already asked *soooo* many." Ravel's black-veined eyes take on a curious gleam. "The time for MY questions is now, half-man."~ */
  IF ~~ THEN REPLY #51697 /* ~"Very well, Ravel... ask your questions."~ */ GOTO 51
  IF ~~ THEN REPLY #51698 /* ~"Ravel, I need a little more information first..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #51699 /* ~"You shall gather NO more seeds of knowing from my mind until MY questions have been *sated.* Do not TRY me on this - there are *limits* to your preciousness in my eyes."~ */
  IF ~~ THEN REPLY #51700 /* ~"Very well..."~ */ GOTO 51
  IF ~~ THEN REPLY #51701 /* ~"I will ask my questions, and you will answer, Ravel. I have neither the time nor patience for your questions..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 52.17 52.18 58.2 58.3 68.12 68.13 69.11 69.12 70.10 70.11 92.2 98.15 99.15
  SAY #51702 /* ~"Answer my questions you will not... DARE not?" To your surprise, her yellowed fangs extend and gleam, and you watch her talons *grow.* "I WARNED you, step a-lightly, I did... lest the questions TEAR you apart..."~ */
  IF ~~ THEN REPLY #51703 /* ~"Ravel, I..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #51704 /* ~"Know this and know Ravel's law: if you do not answer my questions, no more of *your* questions will I answer, my precious man. Step a-lightly with the answers, or the asking shall TEAR you apart..."~ */
  IF ~  NumInParty(1)
~ THEN REPLY #51705 /* ~"Understood. Ask your questions, Ravel."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51706 /* ~"Understood. Ask your questions, Ravel."~ */ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51707 /* ~"Your rules are fair. Ask your questions, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51708 /* ~"Your rules are fair. Ask your questions, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51709 /* ~"Do not *threaten* me, Ravel... ask your questions and be done with them..."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51710 /* ~"Do not *threaten* me, Ravel... ask your questions and be done with them..."~ */ GOTO 58
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.2 51.4
  SAY #51735 /* ~"I would know why you stand here a-fore me, all-alone... why do no others stand with you?"~ */
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51736 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51737 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51738 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51739 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51740 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51741 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51742 /* ~"I have no wish for companions. My path is my own, and I have no desire to walk it with others."~ */ GOTO 54
  IF ~~ THEN REPLY #51743 /* ~"I have met no one I wish to travel with."~ */ GOTO 53
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51744 /* ~"I would not bring anyone to this place, Ravel, especially when the way out is not known. It is a journey I thought I should undertake alone."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51745 /* ~Truth: "The others are here. I have told them to wait elsewhere... for I thought we should speak alone."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51746 /* ~Truth: "The others are here. I have told them to wait elsewhere... for I thought we should speak alone."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51747 /* ~Truth: "The others are here. I have told them to wait elsewhere... for I thought we should speak alone."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51748 /* ~Truth: "The others are here. I have told them to wait elsewhere... for I thought we should speak alone."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51749 /* ~Truth: "The others are here. I have told them to wait elsewhere... for I thought we should speak alone."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51750 /* ~Truth: "The others are here. I have told them to wait elsewhere... for I thought we should speak alone."~ */ GOTO 58
  IF ~~ THEN REPLY #51751 /* ~"I wished to speak to you alone, Ravel."~ */ GOTO 56
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51752 /* ~"I thought we might speak alone, beautiful Ravel, speak of old times, you and I..."~ */ GOTO 57
  IF ~~ THEN REPLY #51753 /* ~"This question I will not answer, Ravel... ask another."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51754 /* ~"I tire of your questions, Ravel. It is my turn again."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.7 52.8
  SAY #51755 /* ~"Ahhh... so it was then... so it is now. Another question have I..."~ */
  IF ~~ THEN REPLY #51756 /* ~"Go ahead..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2 52.3 52.4 52.5 52.6
  SAY #51757 /* ~"Is that why you told them to wait elsewhere in my Black-Barbed Maze, my precious man? You travel alone in word only, for you have brought *others* with you. Yet mayhap still you speak true... though Ravel is not inclined to believe your honeyed words." She sniffs. "Now, another question..."~ */
  IF ~~ THEN REPLY #51758 /* ~"Go ahead..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 55 // from: 141.4
  SAY #51759 /* ~"I tried to help a Lady and a-kindly she did not take to it."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 162
END

IF ~~ THEN BEGIN 56 // from: 52.15
  SAY #51760 /* ~"Ahhh... very well. Answers and questions will you and I trade... they shall be as *secrets* between you and I. Now, another question have I..."~ */
  IF ~~ THEN REPLY #51761 /* ~"Go ahead..."~ */ GOTO 92
END

IF ~~ THEN BEGIN 57 // from: 52.16
  SAY #51762 /* ~"Tchhhh! Flatterer!" Ravel's face splits into a foul grin, then she cackles softly. "Yet your attentions are not unwelcome... mayhap flattery will serve you well here. So... answers and questions will you and I trade... they shall be as secrets between you and I." Her grin melts away. "Now, another question do I have..."~ */
  IF ~~ THEN REPLY #51763 /* ~"Go ahead..."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 92
END

IF ~~ THEN BEGIN 58 // from: 51.1 51.3 51.5 52.9 52.10 52.11 52.12 52.13 52.14
  SAY #51764 /* ~"I would know *why* you traveled here with these others... know not the place they were traveling to?"~ */
  IF ~~ THEN REPLY #51765 /* ~"They chose to walk this path with me."~ */ GOTO 61
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51766 /* ~"Of course they knew. Who would *not* want to travel here to meet with you, beautiful Ravel? Few opportunities does life provide for such a meeting. They wished to see if the tales of your power and beauty were true... as I knew them to be."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #51767 /* ~"This question I will not answer, Ravel... ask another."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51768 /* ~"I tire of your questions, Ravel. It is my turn again."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #51769 /* ~Ravel stares at you for a moment in silence, then her face splits into a horrendous grin, her row of yellowed fangs glistening in the faint light of her eyes. "Ahhhh... my precious man, you carry *only* words..." A blackish tongue darts from her purple lips, and rolls around the rim of her mouth, as if in anticipation of a meal. "...but you are WELL armed, indeed..."~ */
  IF ~~ THEN REPLY #51770 /* ~Truth: "Only truths do I speak, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_4","GLOBALLaw",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
  IF ~~ THEN REPLY #51771 /* ~Lie: "Only truths do I speak, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_3","GLOBALLaw",-1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #51772 /* ~She nods slowly, and her grin fades. "And they travel with you willingly?"~ */
  IF ~~ THEN REPLY #51773 /* ~"They chose to walk my path with me. As I said, who wouldn't wa-"~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 58.0 60.0
  SAY #51774 /* ~"*Chose?* Ahh... a dangerous word. Is it so?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51775 /* ~"Yes."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",2)
~ GOTO 62
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51776 /* ~"Yes."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ GOTO 63
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51777 /* ~"Yes."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ GOTO 64
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51778 /* ~"Yes."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ GOTO 65
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51779 /* ~"Yes."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ GOTO 66
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51780 /* ~"Yes."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51781 /* ~"Yes, look, Ravel, I don't have time for th-"~ */ GOTO 68
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #51782 /* ~"Yes?" Ravel throws a black-veined glance at Dak'kon, her voice like an arrow. "Is it *choice,* gith? Is it? Or is it a matter of two skies?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 171
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #51783 /* ~"What of the cog-box?" Ravel turns to Nordom, sneering. "What does IT know of *choice?*" She snaps her fingers, like the sound of cracking bone. "There is only obey and obey, hmnnn?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 15
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #51785 /* ~"You think the burning man cares any for *choice?* To burn or not to burn, those are his only choices, and in the end, one 'choice' always wins. For does fire have any desire *but* to burn?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 18
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #51786 /* ~Ravel turns to Morte. "Skull, skull, skull..." Ravel clicks her tongue after each word, and her smile widens. "Your expression is difficult to read without the skin wrapping, but I feel your FEAR from here. Coming here was *not* your choice."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 508
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #51787 /* ~"The succubus..." Ravel squints. "Did she have a choice? Mayhap in her smooth-skinned mind of soft silks and hard truths, MAYBE choice... tchhh. But no. A Sensate MUST experience all, and to refuse to come - NOT a Sensate would you be. Still no choice!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51788 /* ~"Ravel. Enough of this..."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51789 /* ~"Ravel. Enough of this..."~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 61.5 66.0
  SAY #51790 /* ~"The *tiefling.* The FIERY one." Ravel cackles softly, and her eyes kindle, as if amused. "No choice. At. All. When you *feel* instead of *think,* there is little room for choice."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 251
END

IF ~~ THEN BEGIN 68 // from: 61.6 66.1
  SAY #51791 /* ~"Shhhhhh... there will be time enough for you to speak, my precious man." Ravel taps a talon against one of her yellowed tusks. "This question next: What do you feel for these that have come with you? Do they MATTER in your heart?" She smiles, black veins dancing in her eyes. "Or are they TOOLS for your will?"~ */
  IF ~~ THEN REPLY #51792 /* ~"Why do you want to know such a thing?"~ */ GOTO 69
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51793 /* ~Truth: "They *matter* to me, and that is all the answer you need. Ask your next question."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51794 /* ~Truth: "They *matter* to me."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51795 /* ~Truth: "They *matter* to me."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51796 /* ~Truth: "They *matter* to me."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51797 /* ~Truth: "They *matter* to me."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51798 /* ~Truth: "Tools only. Nothing more. That is all the answer you need, so ask your next question."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51799 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51800 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51801 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51802 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51803 /* ~"My feelings for my companions are a matter between them and I, Ravel. Ask another question, for that one I will not answer."~ */ GOTO 70
  IF ~~ THEN REPLY #51804 /* ~"I will not answer that question, Ravel..."~ */ GOTO 50
  IF ~~ THEN REPLY #51805 /* ~"I tire of your questions, Ravel. It is my turn again."~ */ GOTO 50
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #51806 /* ~"Tchhhh... thick and stubborn as a githzerai! That is yet ANOTHER question, but the answer shall cost you nothing - my answer is because I WISH to know, no other reason. Now, surrender your answer from your skeptical heart."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51807 /* ~Truth: "They *matter* to me."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51808 /* ~Truth: "They *matter* to me."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51809 /* ~Truth: "They *matter* to me."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51810 /* ~Truth: "They *matter* to me."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51811 /* ~Truth: "They *matter* to me."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51812 /* ~Truth: "Tools only. Nothing more. That is all the answer you need, so ask your next question."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51813 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51814 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51815 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51816 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51817 /* ~"My feelings for my companions are a matter between them and I, Ravel. Ask another question, for that one I will not answer."~ */ GOTO 70
  IF ~~ THEN REPLY #51818 /* ~"I will not answer that question, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51819 /* ~"I tire of your questions, Ravel. It is my turn again."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 70 // from: 68.11 69.10
  SAY #51820 /* ~"You will keep no secrets from me *here,* half-man!" Ravel hisses. "You WILL answer my questions, or you shall suffer within these brambled walls."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51821 /* ~Truth: "They *matter* to me."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51822 /* ~Truth: "They *matter* to me."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51823 /* ~Truth: "They *matter* to me."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51824 /* ~Truth: "They *matter* to me."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51825 /* ~Truth: "They *matter* to me."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51826 /* ~Truth: "Tools only. Nothing more. That is all the answer you need, so ask your next question."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51827 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51828 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51829 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51830 /* ~Truth: "Tools only. Nothing more. They follow for reasons of their own, and their skills I will use."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51831 /* ~"I will not answer that question, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51832 /* ~"I tire of your questions, Ravel. It is my turn again."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 71 // from: 68.2 69.1 70.1
  SAY #51833 /* ~"Even the gith?" Ravel's ember gaze falls on Dak'kon, then slides off to lock with your eyes again. "Speak what he means to you, and say it true, or *blanketing* my garden he will be."~ */
  IF ~~ THEN REPLY #51834 /* ~Truth: "He is my ally. I *know* him. He is my friend."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #51835 /* ~Truth: "The gith? I don't really care about him one way or another."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
SetGlobal("Ravel_Dakkon","GLOBAL",4)
~ GOTO 73
  IF ~~ THEN REPLY #51836 /* ~Truth: "Ofttimes, he angers me. I hate him."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",5)
~ GOTO 73
  IF ~~ THEN REPLY #51837 /* ~Truth: "He is silent on many things. I don't trust him yet."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #51838 /* ~Truth: "He is useful... nothing more."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",7)
~ GOTO 73
  IF ~~ THEN REPLY #51839 /* ~Truth: "He seems trustworthy enough. He's loyal, and he fought by my side bravely."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",8)
~ GOTO 73
  IF ~~ THEN REPLY #51840 /* ~Truth: "I don't know enough about Dak'kon yet to say."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",9)
~ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.7 69.6 70.6
  SAY #51841 /* ~"Even the gith?" Ravel's ember gaze falls on Dak'kon, then slides off to lock with your eyes again. "He means nothing to you? Speak truly; is he a tool?"~ */
  IF ~~ THEN REPLY #51842 /* ~Truth: "I care nothing for him. He follows me, he obeys my commands. That is all."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #51843 /* ~Truth: "I hate him."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 73
  IF ~~ THEN REPLY #51844 /* ~Truth: "Yes, and he shall always be a tool, for there is no trust between us."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 73
  IF ~~ THEN REPLY #51845 /* ~Truth: "Perhaps I do not know him well enough yet, but for now, he means nothing to me."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.0 71.1 71.2 71.3 71.4 71.5 72.0 72.1 72.2 72.3
  SAY #51846 /* ~"Ah..." Ravel nods... then she smiles again, her talons tapping against each other.~ */
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51847 /* ~"Does that surprise you?"~ */ GOTO 75
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51848 /* ~"Does that surprise you?"~ */ DO ~MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51849 /* ~"Does that surprise you?"~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("Dannah")
~ THEN REPLY #51850 /* ~"Does that surprise you?"~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51851 /* ~"Does that surprise you?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 74 // from: 71.6
  SAY #51852 /* ~Ravel snorts, then clacks her tusks. "A muddy answer, yet simple. No matter."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #51853 /* ~"It is the truth, Ravel."~ */ GOTO 75
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51854 /* ~"It is the truth, Ravel."~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51855 /* ~"It is the truth, Ravel."~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51856 /* ~"It is the truth, Ravel."~ */ GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 68.3 69.2 70.2 73.0 74.0
  SAY #51857 /* ~"What of the skull?" Ravel doesn't even bother to look at Morte. "Surely he matters *not* to one such as you! Or... does he?"~ */
  IF ~~ THEN REPLY #51858 /* ~Truth: "I like him... he is my friend."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",3)
~ GOTO 77
  IF ~~ THEN REPLY #51859 /* ~Truth: "The skull? I don't care about him one way or another."~ */ DO ~MoraleDec("Morte",2)
SetGlobal("Ravel_Morte","GLOBAL",4)
~ GOTO 77
  IF ~~ THEN REPLY #51860 /* ~Truth: "He often angers me and is useless in combat; I hate him."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",5)
~ GOTO 77
  IF ~~ THEN REPLY #51861 /* ~Truth: "To be honest, I don't trust him yet. He seems to know much, but he is careful with what he shares."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",6)
~ GOTO 77
  IF ~~ THEN REPLY #51862 /* ~Truth: "He can be annoying... but he has his uses."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",7)
~ GOTO 77
  IF ~~ THEN REPLY #51863 /* ~Truth: "He is useful... nothing more."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",8)
~ GOTO 77
  IF ~~ THEN REPLY #51864 /* ~Truth: "I don't know enough about Morte yet to say."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",9)
~ GOTO 77
  IF ~~ THEN REPLY #51865 /* ~Truth: "He seems trustworthy enough. He's loyal, and he helped save my life in the Mortuary."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",10)
~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 68.8 69.7 70.7 73.1
  SAY #51866 /* ~"What of the skull?" Ravel doesn't even bother to look at Morte. "No surprise that he matters *not* to one such as you! Or... does he?"~ */
  IF ~~ THEN REPLY #51867 /* ~Truth: "No, I care nothing for him. He follows me, he obeys my commands. That is all."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 77
  IF ~~ THEN REPLY #51868 /* ~Truth: "I hate him."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 77
  IF ~~ THEN REPLY #51869 /* ~Truth: "Yes, and he shall always be a tool, for there is no trust between us."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 77
  IF ~~ THEN REPLY #51870 /* ~Truth: "Perhaps I do not know him well enough yet, but for now, he means nothing to me."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",14)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.1 75.2 75.3 75.4 75.5 75.6 75.7 76.0 76.1 76.2 76.3
  SAY #51871 /* ~"Curious, curious-er, curious-her..." Ravel smiles. "Quite the puzzle box you are a-shaping up to be. What else lurks in the dark places of your mind?"~ */
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51872 /* ~"I hide nothing."~ */ GOTO 78
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51873 /* ~"I hide nothing."~ */ DO ~MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51874 /* ~"I hide nothing."~ */ GOTO 87
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51875 /* ~"I hide nothing."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51876 /* ~"I hide nothing."~ */ GOTO 92
END

IF ~~ THEN BEGIN 78 // from: 68.4 68.9 69.3 69.8 70.3 70.8 73.2 74.1 77.0 77.1
  SAY #51877 /* ~"Ah..." Ravel's voice takes on a threatening weight, and she turns to Fall-from-Grace, her red eyes blazing. "And here is the core of it - the Abyssal temptress... does she rise above the merely carnal to you, or is she something *else* in your eye, hmnnn?" ~ */
  IF ~~ THEN EXTERN ~DGRACE~ 163
END

IF ~~ THEN BEGIN 79 // from:
  SAY #51878 /* ~Ravel turns back to you, clacking her yellowed tusks, as if in anticipation. "*Speak,* precious man, but have a care where your words fall."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51879 /* ~Lie: "What is she to you, beautiful Ravel? She cannot even compare to your looks, your intellect, your power."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",3)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51880 /* ~Truth: "What is she to you, beautiful Ravel? She cannot even compare to your looks, your intellect, your power."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",4)
~ GOTO 81
  IF ~~ THEN REPLY #51881 /* ~Truth: "I could fall in love with her."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",5)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51882 /* ~Truth: "I like her. She has many good qualities; I consider her a friend."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",6)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51883 /* ~Truth: "The succubus? I don't really care about her one way or another."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",7)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51884 /* ~Truth: "Her superiority is often hard to stand. I hate her."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",8)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51885 /* ~Truth: "For a fiend who has lived centuries, she has little to say about her past. I don't trust her yet."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",9)
MoraleDec("Grace",1)
~ GOTO 80
  IF ~~ THEN REPLY #51886 /* ~Truth: "She has her uses... nothing more."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",10)
MoraleDec("Grace",1)
~ GOTO 81
  IF ~~ THEN REPLY #51887 /* ~Truth: "I don't know her well enough yet."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",11)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.3 79.6 79.8 82.0
  SAY #51888 /* ~Ravel slides her gaze off of you and narrows her eyes at Grace. "Hmmmmnnn..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51889 /* ~"Enough of these games, Ravel. Look -"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51890 /* ~"Enough of these games, Ravel. Look -"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51891 /* ~"Any other questions?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 81 // from: 79.0 79.1 79.4 79.5 79.7
  SAY #51892 /* ~Ravel slides her gaze off of you and narrows her eyes at Grace. "Hmmmmnnn... so if I were to strike her down, snuff her infernal heart, you would not stir? Answer carefully..."~ */
  IF ~~ THEN REPLY #51893 /* ~"I... retract my words. I do not wish her harmed."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 82
  IF ~~ THEN REPLY #51894 /* ~"Strike her down, Ravel - I care nothing for her. She is chattel, nothing more."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_4","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_5","GLOBALGood",-3)
MoraleDec("Grace",5)
SetAnimState("Grace",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Grace",ANIM_MIMESTANCE)
~ EXTERN ~DGRACE~ 164
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51895 /* ~"Pah! Contrary man!" Ravel's eyes smolder, and as she turns back to you, you see the veins in her eyes have *sharpened.* "Which thought a-rattles about in your skull now?" ~ */
  IF ~~ THEN REPLY #51896 /* ~"I spoke falsely - I knew not what I said, but I have had enough of death... mine or any other... to last several lifetimes."~ */ GOTO 80
END

IF ~~ THEN BEGIN 83 // from:
  SAY #51897 /* ~Ravel sizes up Fall-from-Grace, then cackles. "Any defenses you may muster are *useless* here, tanar'ri... but such a noble effort. Hold onto your fear tightly; I will attend to you shortly..."~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51898 /* ~"Enough of these games, Ravel. Look -"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51899 /* ~"Enough of these games, Ravel. Look -"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51900 /* ~"Any other questions?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 80.0 80.1 83.0 83.1
  SAY #51901 /* ~"Hmnnnn..." Ravel turns, clacks her tusks, then glances at Annah with a sneer. "And what of THIS slip of flesh... the fiendling, the tiefling with the scarlet hair and the fiery passion. What is SHE to you, my precious man?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51902 /* ~Lie: "Nothing, beautiful Ravel. Only you hold meaning to me... no other."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51903 /* ~Truth: "Nothing, beautiful Ravel. Only you hold meaning to me... no other."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~  Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51904 /* ~Truth: "I could fall in love with her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleDec("Grace",3)
~ GOTO 85
  IF ~  !Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51905 /* ~Truth: "I could fall in love with her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51906 /* ~Truth: "I like her company... I consider her my friend."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51907 /* ~Truth: "The fiendling? I don't really care about her one way or another."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51908 /* ~Truth: "Her brashness is often hard to stand. I hate her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51909 /* ~Truth: "I think she got the worst of the fiend qualities; I trust her about as far as I can throw her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51910 /* ~Truth: "She has her uses... nothing more."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51911 /* ~Truth: "I don't know her well enough yet."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 84.2
  SAY #51912 /* ~Ravel's eyes BLAZE, and she raises her talons like a fan in front of her body; involuntarily, you take a step back. "You know nothing of LOVE, my precious man, to think it can be SHARED in such a way between these two fiendish whores and Ravel... no more of your words will I hear - you have ANSWERED my questions..."~ */
  IF ~~ THEN REPLY #51913 /* ~"Ravel, I misspoke! I know not what I said - you know I didn't mean-"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51914 /* ~Ravel's lips peel back and her voice becomes shrill, like a howling wind. "What do YOU know of KNOWING, half-man?! KNOW this: KNOW you will stay here until the END DAYS in my brambled garden, never to leave, and you shall LOVE me, as you were MEANT, as you PROMISED!"~ */
  IF ~~ THEN REPLY #51915 /* ~"If we must fight to settle this, then we will. Prepare yourself, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 87 // from: 68.5 68.10 69.4 69.9 70.4 70.9 73.3 74.2 77.2 77.3
  SAY #51916 /* ~"Ah... and here is the barbed question, not double-edged, but a hundred-edged, each spike SHARPER than the last -" Ravel thrusts one of her talons at Annah. "The fiendling, the tiefling with the scarlet hair and the fiery passion. What is she to you, my precious man?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51917 /* ~Lie: "Nothing, beautiful Ravel. Only you hold meaning to me... no other."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51918 /* ~Truth: "Nothing, beautiful Ravel. Only you hold meaning to me... no other."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~~ THEN REPLY #51919 /* ~Truth: "I could fall in love with her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51920 /* ~Truth: "I like her company... I consider her my friend."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51921 /* ~Truth: "The fiendling? I don't really care about her one way or another."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 88
  IF ~~ THEN REPLY #51922 /* ~Truth: "Her brashness is often hard to stand. I hate her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51923 /* ~Truth: "I think she got the worst of the fiend qualities; I trust her about as far as I can throw her."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51924 /* ~Truth: "She has her uses... nothing more."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51925 /* ~Truth: "I don't know her well enough yet."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 84.3 84.4 84.9 87.2 87.3 87.4 90.0
  SAY #51926 /* ~Ravel glances at Annah, then snorts, her black-veined eyes gleaming. "Hmmmmnnn... so be it."~ */
  IF ~~ THEN REPLY #51927 /* ~"Enough of these games, Ravel. Look -"~ */ GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 84.0 84.1 84.5 84.6 84.7 84.8 87.0 87.1 87.5 87.6 87.7 87.8
  SAY #51928 /* ~Ravel glances at Annah, then snorts, her black-veined eyes gleaming. "Hmmmmnnn... so you would not miss her? Her fiery blood would be a welcome draught to the Trigits... it has been long indeed since they have tasted fiendish blood." Ravel doesn't take her eyes off Annah, but she continues to speak to you. "Answer carefully, my precious man. This is NO game."~ */
  IF ~~ THEN REPLY #51929 /* ~"I... retract my words. I do not wish her harmed."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 90
  IF ~~ THEN REPLY #51930 /* ~"Strike her down, Ravel - I care nothing for her. She is Hive gutter trash, nothing more."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_6","GLOBALGood",-3)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-5)
~ EXTERN ~DANNAH~ 255
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #51931 /* ~"Pah! Contrary man!" Ravel's eyes smolder, and as she turns back to you, you see the veins in her eyes have *sharpened.* "Which thought a-rattles about in your skull now?" ~ */
  IF ~~ THEN REPLY #51932 /* ~"I spoke falsely - I knew not what I said, but I have had enough of death... mine or any other... to last several lifetimes."~ */ GOTO 88
END

IF ~~ THEN BEGIN 91 // from:
  SAY #51933 /* ~"I shall not kill her... yet. For she will not last long in this maze's black-brambled maze... you hear me, girl? The shadows you favor will not keep you SAFE here." Ravel cackles at Annah. "Pray your fury gives you strength; it may mean the precious few moments between life and death..."~ */
  IF ~~ THEN REPLY #51934 /* ~"Enough of these games, Ravel. Have you exhausted your questions?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 53.0 54.0 56.0 57.0 68.1 68.6 69.0 69.5 70.0 70.5 73.4 74.3 77.4 80.2 83.2 88.0 91.0
  SAY #51935 /* ~"My NEXT question is this..." Ravel's voice drops, almost whispering. And suddenly, you have a strange feeling she does not want to hear the answer. "Why did you wait so long to *return* to me? Ravel grew a-lonely without you, precious man."~ */
  IF ~~ THEN REPLY #51936 /* ~"The way to this place is... difficult, Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 93
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51937 /* ~"The way to this place is difficult, beautiful Ravel. Efforts have been made to insure you have little company, and many were the trials I was forced to undertake in order to stand before you. Yet I am glad to see you once again, Ravel - time has not dulled your beauty, I see."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 94
  IF ~~ THEN REPLY #51938 /* ~"This question I will not answer, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #51939 /* ~"Is the way so hard?" A hint of a smile plays on the corners of her mouth. "Then your visit is precious, and I give thanks."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51940 /* ~"Have you another question for me?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51941 /* ~"Have you another question for me?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51942 /* ~"Have you another question for me?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #51943 /* ~"Your answers..." Ravel's eyes glint, and her lips peel back in a grotesque smile. "Your words are *soothing* and have not been heard in such a time... they stir even my black-brambled heart. No matter where your memories be, your charms remain, pretty thing..." ~ */
  IF ~~ THEN REPLY #51944 /* ~"Nay, it is *your* charms that persist, beautiful Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 95
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51945 /* ~"Perhaps. Have you another question for me?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51946 /* ~"Perhaps. Have you another question for me?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51947 /* ~"Perhaps. Have you another question for me?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51948 /* ~"Of charms, enchantments, beguilements... all these Ravel has mastered... yet, there is much it seems you could *teach* I..."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51949 /* ~"Perhaps. Have you another question for me?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51950 /* ~"Perhaps. Have you another question for me?"~ */ GOTO 97
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51952 /* ~"Perhaps. Have you another question for me?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.0 94.1 95.0
  SAY #51953 /* ~"Ahhhh, yessss. The third and last of my questions is a simple one; answer it, then YOUR questions to me may fly free, and Ravel shall cage them with answers... my final question to you is *this*..."~ */
  IF ~~ THEN REPLY #51954 /* ~"Yes...?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",7)
StartCutSceneMode()
StartCutSceneEx("0610Cut9",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1 93.2 94.2 94.3 95.1 95.2
  SAY #51959 /* ~"Ahhhh, yessss. The third and last question... is *this*..." As Ravel opens her mouth to speak her final question, you are suddenly gripped with the terrible realization that this final question has murdered many others to whom it has been asked. You know what it is, and you feel it welling up within you, and you feel compelled to ask it.~ */
  IF ~~ THEN REPLY #51962 /* ~Echo: "What can change the nature of a man?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",8)
StartCutSceneMode()
StartCutSceneEx("0610CutC",FALSE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",7)
~ THEN BEGIN 98 // from:
  SAY #51963 /* ~"What can change the nature of a man?"~ [RAV079B] */
  IF ~~ THEN REPLY #51964 /* ~Truth: "I... don't know."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51965 /* ~Truth: "Love."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51966 /* ~Truth: "Hatred."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51967 /* ~Truth: "Power."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51968 /* ~Truth: "Greed."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51969 /* ~Truth: "Betrayal."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51970 /* ~Truth: "Death."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51971 /* ~Truth: "Regret."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51972 /* ~Truth: "Age."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51973 /* ~Truth: "Suffering."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51974 /* ~Truth: "Success."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51975 /* ~Truth: "The planes."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51976 /* ~Truth: "You, Ravel. As you changed my nature forever."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51977 /* ~Lie: "A beautiful woman, Ravel. As you changed me."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51978 /* ~Truth: "Nothing can change the nature of a man, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51979 /* ~Truth: "I cannot answer that question..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF WEIGHT #8 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",8)
~ THEN BEGIN 99 // from:
  SAY #51980 /* ~"I see you have not forgotten..." Ravel smiles, her yellowed fangs gleaming. "What is your answer?"~ */
  IF ~~ THEN REPLY #51981 /* ~Truth: "I... don't know."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51982 /* ~Truth: "Love."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51983 /* ~Truth: "Hatred."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51984 /* ~Truth: "Power."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51985 /* ~Truth: "Greed."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51986 /* ~Truth: "Betrayal."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51987 /* ~Truth: "Death."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51988 /* ~Truth: "Regret."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51989 /* ~Truth: "Age."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51990 /* ~Truth: "Suffering."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51991 /* ~Truth: "Success."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51992 /* ~Truth: "The planes."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51993 /* ~Truth: "You, Ravel. As you changed my nature forever."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51994 /* ~Lie: "A beautiful woman, Ravel. As you changed me."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51995 /* ~Truth: "Nothing can change the nature of a man, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51996 /* ~Truth: "I cannot answer that question..."~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF ~~ THEN BEGIN 100 // from: 98.0 98.1 98.2 98.3 98.4 98.5 98.6 98.7 98.8 98.9 98.10 98.11 98.12 98.13 98.14 99.0 99.1 99.2 99.3 99.4 99.5 99.6 99.7 99.8 99.9 99.10 99.11 99.12 99.13 99.14
  SAY #51997 /* ~"And that is your answer...?" The veins in Ravel's eyes begin to shift slightly, and she gives an evil smile. "Be certain before you say."~ */
  IF ~~ THEN REPLY #51998 /* ~"It may not be *your* answer, but it is *my* answer."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 101 // from:
  SAY #51999 /* ~"Ah!" Ravel cackles, then her cackling dies, and she pins her gaze on you with such intensity, you can almost feel your skin writhing, as if stabbed. The veins in Ravel's eyes begin to shift slightly, and she gives a slow, evil smile. "A pleasing answer... but is it the right one? Be certain before you say."~ */
  IF ~~ THEN REPLY #52000 /* ~"It may not be *your* answer, but it is *my* answer."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 100.0 101.0
  SAY #52001 /* ~"And that is all I wished for, my precious man." Ravel's smile relaxes. "A simple answer, and in the end, many are the men have I laid low while they sought MY answer." ~ */
  IF ~~ THEN REPLY #52002 /* ~"That's it...? I thought..."~ */ GOTO 103
  IF ~~ THEN REPLY #52003 /* ~"Ha! More fools they... but isn't it such the way with mortals?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_7","GLOBALGood",-1)
~ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #52004 /* ~Ravel cackles. "Countless times has the question been asked, and not ONCE did the pathetic shells who came a-fore me answered with THEIR answer, but always sought to creep inside my mind and find what *I* thought... tchhh! There is no truth in that."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52005 /* ~"I... don't believe you. In fact, I don't think they ever could have answered you true, even if it was true to them."~ */ GOTO 104
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52006 /* ~"Oh, come now, there is no need to lie to me, Ravel. We both know that they never could have answered you true, even if it was true to them."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #52007 /* ~Ravel falls suddenly, strangely, silent. She is watching you warily.~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52008 /* ~"MY answer was the only one you sought. Thus, no one could EVER answer your question. The pile of corpses must have been high in the end, eh?"~ */ JOURNAL #52010 /* ~That filthy crone, Ravel, pestered me with three inane questions, the last of which was one I *know* I've heard before: "What can change the nature of a man?" I answered her, and she accepted my answer - for as I suspected, any answer I gave was the one she had sought for so long. I think many fools over the centuries have died trying to answer Ravel's question... never knowing that my answer was the only one she wanted. Perhaps it is idiocy that makes the planes turn... ~ */ GOTO 105
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52009 /* ~"You *never* cared about any answer other than mine. Ever. Did you? Yet still you asked the question, knowing that no matter what the answer they gave, they would die by your hand."~ */ JOURNAL #52011 /* ~Ravel asked me three questions, the last of which was one I *know* I've heard before: "What can change the nature of a man?" I answered her, and she accepted my answer - for any answer I gave, as long as it was true to me, was the one she had sought for so long. I think many petitioners died trying to answer Ravel's question... never knowing that my answer was the only one she wanted. ~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0 104.1
  SAY #52012 /* ~Ravel hisses. "Of COURSE your answer was the only one I sought, for you were the ONLY reason I asked the question! Did you think I cared for them...? Tchhh! Did you think I even cared a *fraction* of the amount for them that I cared for *you,* my precious man? Answer me that!"~ */
  IF ~~ THEN REPLY #52013 /* ~"I'm *through* answering your questions, Ravel. Now you'll answer *mine.*"~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0 107.1 108.2 109.1 110.1 111.1 112.1 113.1 114.1 115.4 116.2 117.1 118.1 119.1 120.1 121.1 125.1 126.2 127.1 128.3 129.2 131.1 136.1 137.1 138.2 139.0 140.0 141.8
  SAY #52014 /* ~"Of course... ever questions, ever questions..."~ */
  IF ~  Global("Ravel_Ritual_4","AR0610",0)
~ THEN REPLY #52015 /* ~"Why did you make me immortal, Ravel?"~ */ GOTO 107
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52016 /* ~"Tell me again, Ravel - why did you make me immortal?"~ */ GOTO 107
  IF ~  NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52017 /* ~"So you took my mortality from me, Ravel... is it still intact?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52018 /* ~"So you took my mortality from me, Ravel... is it still intact?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52019 /* ~"So you took my mortality from me, Ravel... is it still intact?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52020 /* ~"Is my mortality still intact, Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52021 /* ~"Who is this who knows where my mortality is again?"~ */ GOTO 135
  IF ~~ THEN REPLY #52022 /* ~"I have some questions about YOU, Ravel..."~ */ GOTO 141
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52023 /* ~"Thank you for the information you have given me, Ravel; I must leave now." ~ */ GOTO 213
END

IF ~~ THEN BEGIN 107 // from: 106.0 106.1
  SAY #52024 /* ~"It's what you *wanted,* seedling, and you asked so sweetly... now how could Ravel say 'no' to one such as you? Immortality was *your* solution and your challenge to me."~ */
  IF ~~ THEN REPLY #52025 /* ~"*My* solution? But why?"~ */ GOTO 108
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52026 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #52027 /* ~"I don't know, seedling. Time has chipped away at my memories as well, it would seem... seam? If you remember, tell me... I'm a-curious myself. It must have been something important... isn't it in the nature of a man to want to live forever?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN EXTERN ~DDAKKON~ 169
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #52028 /* ~"Ravel... this is VERY important: do you have any idea why I asked you to do it?"~ */ GOTO 109
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52029 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #52030 /* ~"Death was a thing you needed to dodge. An easy thing to say, mayhap, but to DO, it is not! Immortality, even with its flaws, was the best solution this withered mind could untangle..."~ */
  IF ~~ THEN REPLY #52031 /* ~"Yet..."~ */ GOTO 110
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52032 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #52033 /* ~"Lead is not easily a-changed to gold, but it is possible, thought the unwise... un-whys? ...Ravel. If water can be drawn from blood, mortality can be taken from a mortal, peeled back like a sticky film..."~ */
  IF ~~ THEN REPLY #52034 /* ~"So you pulled it off?"~ */ GOTO 111
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52035 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #52036 /* ~"The gulf between man and unman is great. You traveled the distance. I provided the means, but you crossed on your own." Ravel slaps her head and rakes her hand through her hair. "Bad Ravel! Mortals are too flawed to be made to last. Still they break! They must be dragged kicking and screaming into an unhealthy new mold."~ */
  IF ~~ THEN REPLY #52037 /* ~"Unhealthy...? So the ritual was flawed?"~ */ GOTO 112
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52038 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #52039 /* ~"Shortcuts must be made, and they can *break* the molded... for it is not always the mold that breaks, but the substance poured within it. Force something into a shape it was not meant to be, and it breaks! I thought the material was of stronger stuff, but you have been broken."~ */
  IF ~~ THEN REPLY #52040 /* ~"But I *am* immortal - surely that was a success?"~ */ GOTO 113
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52041 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #52042 /* ~"You have survived long, immortaled one, but you have become the prey of the creature that is life." She cups her hands, then reverses it, forming a canopy with her hands. "The body is but a hut for the soul. But now no one dwells in your hut."~ */
  IF ~~ THEN REPLY #52043 /* ~"What went wrong with the ritual?"~ */ GOTO 114
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52044 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #52045 /* ~"Puzzle-fleshed broken, beautiful, beautiful mortal man, the ritual was not... knot? Knot... not a finished thing." Ravel's brows wrinkle, and her talons pick at her hair, tugging on a lone strand. "The ritual gave you what you wanted, but..."~ */
  IF ~~ THEN REPLY #52046 /* ~"But..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52047 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 115 // from: 114.0 117.0 118.0 119.0
  SAY #52048 /* ~"The ritual gave you what you wanted, but *great* were the costs... the casting of shadows, the quiet, violent deaths of the mind, and the pain-taking emptiness... these things, a-dangerous are in such a fragile vessel, no matter how strong a mortal man. Regret them and the ritual do I."~ */
  IF ~~ THEN REPLY #52049 /* ~"Casting of Shadows?"~ */ DO ~SetGlobal("Ravel_Ritual_1","AR0610",1)
~ GOTO 116
  IF ~~ THEN REPLY #52050 /* ~"The quiet, violent death of the mind?"~ */ DO ~SetGlobal("Ravel_Ritual_2","AR0610",1)
~ GOTO 118
  IF ~~ THEN REPLY #52051 /* ~"Pain-taking emptiness?"~ */ DO ~SetGlobal("Ravel_Ritual_3","AR0610",1)
~ GOTO 119
  IF ~  Global("Ravel_Ritual_1","AR0610",1)
Global("Ravel_Ritual_2","AR0610",1)
Global("Ravel_Ritual_3","AR0610",1)
~ THEN REPLY #52052 /* ~"Despite these problems, it seems like the ritual worked..."~ */ JOURNAL #52054 /* ~Ravel said I asked her to make me immortal, but she could not recall why. She spoke at length about the ritual, however - she told me that I "cast shadows on existence." Every time I die, another shadow is born, and it seeks me out to murder me. She also said that while my flesh heals, my mind does not... the more I die, the more of myself I lose when my mind awakens again. This might explain my memory loss? I don't know. She also said the hollowness I feel inside is the place where my mortality used to rest... ~ */ GOTO 120
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52053 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #52055 /* ~"Ungrateful shades... but ungrateful without cause? The shades... they hate you, Nameless One, for they are fathered by you, your children, once forsaken, they will never forgive. They will do everything they can to destroy the parent... such is the way of children."~ */
  IF ~  !Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52056 /* ~"How do I father shades... these shadows?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0610Cut1",FALSE)
SetGlobal("Ravel_Cut_Scene","AR0610",2)
~ EXIT
  IF ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52057 /* ~"How do I father shades... these shadows?"~ */ GOTO 117
  IF ~~ THEN REPLY #52058 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF WEIGHT #2 ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN BEGIN 117 // from: 116.1
  SAY #52059 /* ~"You cast shadows on existence, Nameless One. With every death, a shadow arises fresh from the fields of your flesh. They a-wander for a time, but always they a-return, looking to murder their parent. Such is the way of many offspring..." Ravel purses her lips in disapproval, then suddenly pokes you in the chest with a talon. "...and thankless young men such as yourself."~ */
  IF ~~ THEN REPLY #52060 /* ~"Tell me more about this ritual..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52061 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 118 // from: 115.1
  SAY #52062 /* ~"A thousand deaths, and you recover from each. Not so the mind, the mind is much more fragile. Its scars run deep and do not heal. The brain is encased in a hard bone shell, difficult to breach, but with no defense against that which eats at it from within."~ */
  IF ~~ THEN REPLY #52063 /* ~"Tell me more about this ritual..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52064 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 119 // from: 115.2
  SAY #52065 /* ~"You have a hole where... wear? Wear your mortality once lay within your shell." She makes her hand into a fist and shakes it. "*Rattle-rattle* goes the hollow man, a baby's plaything, with naught but a tiny stone that a-clatters and clacks in your frame."~ */
  IF ~~ THEN REPLY #52066 /* ~"Tell me more about this ritual..."~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52067 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 120 // from: 115.3
  SAY #52071 /* ~"Do you doubt Ravel? Of course I delivered on what was promised! Not long after the spell a-drew to a close, I killed you to see if it had worked. You struggled so, but I kept my grip *tight* and watched you die your first of many deaths." Ravel *clacks* her teeth. "Then was I a-learned in its flaws..."~ */
  IF ~~ THEN REPLY #52072 /* ~"What flaws?"~ */ GOTO 121
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52073 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #52074 /* ~"Ego enwraps us like a prison. Forgot I did that it ofttimes serves as a shield." Ravel clicks her tongue. "My pretty, pretty thing, there is much wisdom and understanding in the truth that life is a preparation for the ultimate goal: death. Our life is a means by which we learn *how* to die. If we FORGET such things..." ~ */
  IF ~~ THEN REPLY #52075 /* ~"So that's when you discovered I lost my memories when I died..."~ */ DO ~SetGlobal("Ravel_Ritual_4","AR0610",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 122
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52076 /* ~"I've heard enough. I had other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #52077 /* ~"Yess..." Ravel nods. "Unfortunate... without the mortality to hold such memories tight, the shell a body is..." ~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52078 /* ~"So you took my mortality from me... is it still intact?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52079 /* ~"So you took my mortality from me... is it still intact?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52080 /* ~"So you took my mortality from me... is it still intact?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
END

IF ~~ THEN BEGIN 123 // from: 106.2 122.0
  SAY #52081 /* ~Ravel seems surprised, then alarmed. "Yes, yes, *yes!* Fear not for a broken mortality... if you are here... hear? Hear a-talking at me, intact your mortality must be. Such a thing cannot... knot... not be destroyed as long as you exist. You are an *anchor* of your mortal soul. As long as *you* are intact, so shall it be. Made to last are you..." Ravel smiles and gives a wheezing laugh. "For life swallowed you and spit you out!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 506
END

IF ~~ THEN BEGIN 124 // from: 106.3 122.1
  SAY #52082 /* ~Ravel seems surprised, then alarmed. "Yes, yes, *yes!* Fear not for a broken mortality... if you are here... hear? Hear talking at me, intact your mortality must be. Such a thing cannot... knot... not be destroyed as long as you exist. You are an *anchor* of your mortal soul. As long as *you* are intact, so shall it be. Made to last are you..." Ravel smiles and gives a wheezing laugh. "For life swallowed you and spit you out!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 253
END

IF ~~ THEN BEGIN 125 // from: 106.4 106.5 122.2
  SAY #52083 /* ~Ravel seems surprised, then alarmed. "Yes, yes, *yes!* Fear not for a broken mortality... if you are here... hear? Hear talking at me, intact your mortality must be. Such a thing cannot... knot... not be destroyed as long as you exist. You are an *anchor* of your mortal soul. As long as *you* are intact, so shall it be. It cannot be destroyed any more than you can."~ */
  IF ~  Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52084 /* ~"Enough of this, Ravel. You took my mortality from me, and it has caused more harm than good. I would take it back now - you have had it overlong, I think."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 126
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52085 /* ~"Very well. I had other questions for you, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #52086 /* ~"Ah... you make a demand...?" Ravel's black-veined eyes sharpen and twist, taking a disturbing *awareness,* and she bares her yellow fangs. "No, no, no. That, Ravel, I, will *not* do. What is undone cannot be done."~ */
  IF ~~ THEN REPLY #52087 /* ~"Ravel... I tire of your word games; I am not playing with you any longer. Give me back my mortality or I shall kill you."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 127
  IF ~~ THEN REPLY #52088 /* ~"Why not?"~ */ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52089 /* ~"I have heard enough. I had some other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #52090 /* ~"Kill me you will, your will shall kill me, it is no matter. It is difficult to tell in which of time's many directions I am facing. Mortals face in the opposite direction, looking to the future, and I am facing the past, for I do not like what I see in the future."~ */
  IF ~~ THEN REPLY #52091 /* ~"Cease this nonsense-speak, Ravel. I tire of bandying words with you. Give me back my mortality... *now.*"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52092 /* ~"I have heard enough. I had some other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 128 // from: 126.1 127.0
  SAY #52093 /* ~"Ravel *cannot* give such a thing to you, my precious man, for Ravel has *nothing* to give... I never possessed *you* or your mortality... though I wished to keep them both in my garden as selfish affection's keepsakes, trace the patterns of your flesh... but such things Ravel could not bring herself to do..."~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52094 /* ~"Why not?"~ */ EXTERN ~DANNAH~ 254
  IF ~  !NearbyDialog("Dannah")
NearbyDialog("DGrace")
~ THEN REPLY #52095 /* ~"Why not?"~ */ EXTERN ~DGRACE~ 159
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("DGrace")
~ THEN REPLY #52096 /* ~"If you don't have it, Ravel... where is my mortality?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52097 /* ~"I have heard enough. I had some other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52098 /* ~Ravel gives a low, wide smile. "Is that so hard for you to believe, fiendling...?" She cackles softly to herself. "Does Ravel being Ravel, and thus, a myth, not *deserve* to carry such a feeling in her black-brambled heart...?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 160
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #52099 /* ~"Then if you don't have it, Ravel... where is my mortality?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52100 /* ~"I have heard enough. I had some other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 130 // from:
  SAY #52101 /* ~Ravel gives a low, wide smile. "Is that so hard for you to believe, succubus...?" She cackles softly to herself. "Does Ravel being Ravel, and thus, a myth, not *deserve* to carry such a feeling in her black-brambled heart...?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #52102 /* ~"Tchhh! The past is past, and histories care little for a-speaking the truth of it..." Ravel frowns, then her voice drops slightly, threateningly, as she studies Grace. "The feeling *brushed* me, yes... and now *hold* your silvered tongue, Abyssal daughter. I need not your soft words to cloud the air here - the man and I shall speak, and you shall bow out of this. I shall attend to you shortly."~ */
  IF ~~ THEN REPLY #52103 /* ~"Enough, Ravel: If you don't have my mortality... where is it?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52104 /* ~"I have heard enough. I had some other questions..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 132 // from: 128.2 129.1 131.0
  SAY #52105 /* ~"*I* don't know, sweet thing. But if I were you, I'd get it back quick-quick. No telling what horrible things someone could do to you if they held your mortality for RANSOM." Ravel *clicks* her talons together. "It would like be holding someone's sweet, succulent soul... a puppet dancing on someone's strings, would you be, and a most sad puppet, too... two? Know where it is, I do not."~ */
  IF ~~ THEN REPLY #52106 /* ~"Well, it would have been too EASY for you to know where it could be found... looks like I'm off on another hunt."~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 133
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #52107 /* ~"Hold a moment... you say YOU don't know where my mortality is. Do you know someone who DOES know where it is?"~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #52108 /* ~"Ahhh... not so quick to rush off, you should be." Ravel gives a horrid smile, her tusks gleaming. "*I* do not know where your mortality lies, my precious man... but there is *another* may carry the knowing of such a thing..."~ */
  IF ~~ THEN REPLY #52109 /* ~"'Another may know'? Who?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 132.1
  SAY #52110 /* ~Ravel smiles horridly, her tusks gleaming. "Clever, clever, *clever* you are... yes, there is ANOTHER who might know the things that Ravel does not..."~ */
  IF ~~ THEN REPLY #52111 /* ~"'Another may know'? Who?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 106.6 133.0 134.0
  SAY #52112 /* ~Ravel's eyes dim, as if she is staring at something in the distance, and her voice slows. "A... fair-skinned one... must you ask. An angel, a deva, one who soars on the wings of morning and with his hands, is the architect of horizons. He lies, lies beyond my keeping, in another cage, in another prison... in his knowing is the knowing of what you wish to know. Ask him your questions, listen to his answers, use them as guides."~ */
  IF ~  Global("Ravel_Trias","GLOBAL",0)
~ THEN REPLY #52113 /* ~"Where can I find this angel?"~ */ DO ~SetGlobal("Ravel_Trias","GLOBAL",1)
AddexperienceParty(180000)
~ JOURNAL #52115 /* ~Ravel told me my mortality is still intact... somewhere, but she knows not where, though she knew of one who *might* know. Ravel told me to travel beyond her maze, to another prison, where I would find an angel, a "deva," who would tell me where my mortality lies - if this angel is half as difficult to reach as Ravel, I'm beginning to doubt if I'll EVER find my mortality. Still, it looks like it's even more important than I first thought - Ravel warned me to get my mortality back before someone else got a hold of it, for she claimed that anyone holding it could use me as a puppet.~ */ GOTO 136
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52114 /* ~"Where can I find this angel?"~ */ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0 135.1
  SAY #52116 /* ~"In a-leaving this prison, to *another* cursed prison will you arrive... though it may not appear as such to casual glances. Step a-lightly, and find the golden link in the ever-shortening chain. The light shall give the dark of the matter, and new paths shall open to you."~ */
  IF ~~ THEN REPLY #52117 /* ~"Delightfully cryptic... though not surprising. Thanks."~ */ GOTO 137
  IF ~~ THEN REPLY #52118 /* ~"I had other questions for you, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #52119 /* ~Ravel cackles. "Of the past I am not held to particulars... you are fortunate to receive *anything,* o caustic one!"~ */
  IF ~~ THEN REPLY #52120 /* ~"Oh, am I? It's just that the chain of who knows what and where they are never seems to be a smooth series of links."~ */ GOTO 138
  IF ~~ THEN REPLY #52121 /* ~"Perhaps so. In any event, I had other questions for you, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #52122 /* ~"Ahhh..." Ravel smiles, holding up one of her talons. "And that is why you must keep each link safe, for if they are not smooth now, imagine what the chain will be like when MORE links shatter... time and death are not as *patient* with others as they are with you."~ */
  IF ~~ THEN REPLY #52123 /* ~"What are you saying?"~ */ GOTO 139
  IF ~~ THEN REPLY #52124 /* ~"That better not have been a threat."~ */ GOTO 140
  IF ~~ THEN REPLY #52125 /* ~"Perhaps so. In any event, I had other questions for you, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #52126 /* ~"What if one of your precious links was to *die?* And what if you forgot yourself again? What would you do then? Where would your stolen mortality be, then... it would be LOST forever, for there would be no one left to ASK how to reach it. Tracing your path would become harder... mayhap IMPOSSIBLE..."~ */
  IF ~~ THEN REPLY #52127 /* ~"True enough. In any event, I had other questions for you, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 140 // from: 138.1
  SAY #52128 /* ~"Not a threat of mine, but a *very* real threat nonetheless. What if one of your precious links was to *die?* And what if you forgot yourself again? What would you do then? Where would your stolen mortality be, then... it would be LOST forever, for there would be no one left to ASK how to reach it. Tracing your path would become harder... mayhap IMPOSSIBLE..."~ */
  IF ~~ THEN REPLY #52129 /* ~"True enough. In any event, I had other questions for you, Ravel..."~ */ GOTO 106
END

IF ~~ THEN BEGIN 141 // from: 106.7 142.1 144.0 149.0 162.1 163.6 164.4 165.1 167.1 169.1 171.1 175.1 182.1 183.1 184.1 185.2 188.1 189.1 190.1 192.1 193.4 194.2 195.0 199.0 200.0 201.2 202.5 203.1 206.0 207.0 207.1 211.0 241.1
  SAY #52130 /* ~"Yes? Ask your questions about Ravel, my precious man."~ */
  IF ~~ THEN REPLY #52131 /* ~"Ravel... who are you? Where did you come from?"~ */ GOTO 142
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",0)
~ THEN REPLY #52132 /* ~"What other forms have you been in your life, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52133 /* ~"What is this place?"~ */ GOTO 200
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52134 /* ~"Why were you imprisoned, Ravel?"~ */ GOTO 186
  IF ~  NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52135 /* ~"Why were you imprisoned, Ravel?"~ */ GOTO 55
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52136 /* ~"Why were you imprisoned, Ravel?"~ */ GOTO 185
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52137 /* ~"Why were you imprisoned, Ravel?"~ */ GOTO 185
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #52138 /* ~"The legends claim you are a powerful mage, Ravel. Can you teach me some of the Art?"~ */ GOTO 201
  IF ~~ THEN REPLY #52139 /* ~"I had some other questions concerning my immortality..."~ */ GOTO 106
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52140 /* ~"Thank you for the information you have given me, Ravel; I must leave now." ~ */ GOTO 213
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #52141 /* ~"I? Ravel am I, a maker and breaker of puzzles, a solver of what *cannot* be solved, a mind raveling and unraveling until the threads of thought are tied up like knots in a drunken man's hair." Ravel picks at one of her jagged gray hairs, wrapping it around her finger. "It is enough, enough it is."~ */
  IF ~~ THEN REPLY #52142 /* ~"But *what* are you? Some have called you a 'night hag,' whatever that is."~ */ GOTO 143
  IF ~~ THEN REPLY #52143 /* ~"I had other questions for you..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #52144 /* ~"Night hag...?" Ravel gives a ghastly smile, her yellowed teeth like needles. "I am but a *woman* who has sorely... soarly? Soarly missed her beloved creation. Some have named me crone, gray lady, Yaga sister, night hag - but MYSELF is my name, Ravel, Ravel who puzzles well, providing conundrums to decipher and laying impossibilities low. But..."~ */
  IF ~  Global("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52145 /* ~"But...?"~ */ GOTO 145
  IF ~  GlobalGT("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52146 /* ~"But...?"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #52147 /* ~"But it is no matter. We have been down this road a-fore." Ravel makes a 'shooing' noise. "Other questions do you have?"~ */
  IF ~~ THEN REPLY #52148 /* ~"Yes..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #52149 /* ~"MANY things are said about we gray ladies. A race are we 'night hags,' but an *individual* am I. Some call us evil of Old, stalkers of mortal dreams, the kindly ones, ugly, hideous things whose homes lie in the dark places of men's minds." Ravel's eyes narrow to reddish sparks. "But that means NOTHING to me... what would one such as YOU call one such as I, pretty thing?"~ */
  IF ~~ THEN REPLY #52150 /* ~Lie: "I would call you beautiful, Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ravel_2","GLOBALLaw",-2)
SetGlobal("Ravel_Self_Answer","GLOBAL",1)
~ GOTO 146
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52151 /* ~Truth: "I find you beautiful, Ravel. Not perhaps to the eye, but your mind seems sharp and vibrant."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_1","GLOBALLaw",2)
SetGlobal("Ravel_Self_Answer","GLOBAL",2)
~ GOTO 148
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52152 /* ~Truth: "I would call you ugly."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52153 /* ~Truth: "I would call you ugly."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52154 /* ~Truth: "I would call you ugly."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 160
  IF ~~ THEN REPLY #52155 /* ~"I would say all the descriptions are all correct."~ */ DO ~SetGlobal("Ravel_Self_Answer","GLOBAL",4)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #52156 /* ~Ravel is silent for a moment, then she cackles. "Oh, you are a *diamond,* my precious songbird. You make the centuries worthwhile! How sweetly you sing to these tired ears that have a-feasted only on silence and the slow creep of black barbs spreading..." Ravel smiles. "Yet you LIE to me..."~ */
  IF ~~ THEN REPLY #52157 /* ~"No, Ravel, I do not..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #52158 /* ~"Tchhh! Do you think I care for truths?! Deceit is *beautiful* to me, songbird, and Ravel loves to hear you say such things, she does. Ugly I may be..."~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52159 /* ~"Ravel, you are *not* ugly..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52160 /* ~"Ravel, you are *not* ugly..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52161 /* ~"Ravel, you are *not* ugly..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #52162 /* ~"Tchhh! Do you think I care for such truths?! A hex on inner beauty, no matter how long it may last the flesh. Think you ugly am I...?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52163 /* ~"Ravel, you are *not* ugly..."~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52164 /* ~"Ravel, you are *not* ugly..."~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52165 /* ~"Ravel, you are *not* ugly..."~ */ GOTO 160
END

IF ~~ THEN BEGIN 149 // from: 145.5
  SAY #52166 /* ~"So they are, but they are not YOUR answer. Tchhhh! I withdraw the question, o discreet one. No more shall we speak on this."~ */
  IF ~~ THEN REPLY #52167 /* ~"Oh... uh, I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 150 // from: 145.2 147.0 148.0
  SAY #52168 /* ~"Yet ugly I need *not* be, pretty thing. My shape is but water to my will, and I may re-weave its fibers to a more pleasing tapestry..." Ravel glances at Fall-from-Grace, then smiles and licks her lips. "Yes..."~ */
  IF ~~ THEN REPLY #52169 /* ~"Ravel, what..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",3)
StartCutSceneMode()
StartCutSceneEx("0610Cut5",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("Ravel_Cut_Scene","AR0610",3)
~ THEN BEGIN 151 // from:
  SAY #52170 /* ~Ravel has... melted into Fall-from-Grace, taking on her demeanor, her features, her clothes... "Is this shape more pleasing?" Ravel smiles, her teeth now a brilliant, perfect white, the lips with just a *hint* of red. "So cultured and breathtaking?" She motions you to come closer. "Come, my precious man, *my* lips do not burn with Abyssal torments. Lay your lips upon mine."~ */
  IF ~~ THEN REPLY #52171 /* ~"Very well..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",1)
~ GOTO 152
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52172 /* ~"No, Ravel."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52173 /* ~"No, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52174 /* ~"Ravel, stop these games... I have neither time nor patience for them. Resume your form."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52175 /* ~"Ravel, stop these games... I have neither time nor patience for them. Resume your form."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0 158.0 161.0
  SAY #52176 /* ~You touch your lips to Ravel's. Despite her new form, her lips are dry, like sand, and as your lips touch, you feel a sharp pin-prick, like kissing a row of barbed seeds. You draw back, licking the blood from your lips. Ravel mirrors your gesture, made even more horrifying in her new form. A drop of your blood remains on the edge of her mouth, and she smiles evilly.~ */
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
NearbyDialog("Dannah")
~ THEN REPLY #52177 /* ~"You... bit me."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",4)
~ GOTO 155
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
!NearbyDialog("Dannah")
~ THEN REPLY #52178 /* ~"You... bit me."~ */ GOTO 153
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #52179 /* ~"You... bit me."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",5)
~ GOTO 156
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
!NearbyDialog("DGrace")
~ THEN REPLY #52180 /* ~"You... bit me."~ */ GOTO 154
  IF ~  Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #52181 /* ~"You... bit me."~ */ GOTO 240
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY #52182 /* ~"And you bit me, so long ago, 'twas not a kiss then, but a bite to the heart..." Ravel smiles. "Do not be surprised, my precious man. There is no harm done... except, mayhap, to the ones you travel with." She chuckles lightly, and you suddenly become aware of Grace's gaze upon you; outwardly, she seems composed, but you have a strange feeling something has *changed* between the two of you.~ */
  IF ~~ THEN REPLY #52183 /* ~"Resume your normal shape, Ravel."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.3
  SAY #52184 /* ~"And you bit me, so long ago, 'twas not a kiss then, but a bite to the heart..." Ravel smiles. "Do not be surprised, my precious man. There is no harm done... except, mayhap, to the ones you travel with." She chuckles lightly, and you suddenly become aware of Annah's gaze upon you - her eyes are wide, and her heart is beating rapidly.~ */
  IF ~~ THEN REPLY #52185 /* ~"Resume your normal shape, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.0
  SAY #52186 /* ~"And you bit me, so long ago, 'twas not a kiss then, but a bite to the heart..." Ravel smiles. "Do not be surprised, my precious man. There is no harm done... except, mayhap, to the ones you travel with." She chuckles lightly, and you suddenly become aware of Grace's and Annah's gaze upon you; outwardly, Grace seems composed, but you have a strange feeling something has *changed* between the two of you. Annah's eyes have narrowed to slits and her tail is flicking dangerously back and forth. ~ */
  IF ~~ THEN REPLY #52187 /* ~"Resume your normal shape, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #52188 /* ~"And you bit me, so long ago, 'twas not a kiss then, but a bite to the heart..." Ravel smiles. "Do not be surprised, my precious man. There is no harm done... except, mayhap, to the ones you travel with." She chuckles lightly, and you suddenly become aware of Annah's gaze upon you; her eyes are wide, and her heart is beating rapidly. Grace, on the other hand, is watching Annah with a curious expression.~ */
  IF ~~ THEN REPLY #52189 /* ~"Resume your normal shape, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 145.3 147.1 148.1
  SAY #52191 /* ~"Ugly I need not be, pretty thing. My shape is but water to my will, and I may re-weave its fibers to a more pleasing tapestry..." Ravel glances at Annah, who stiffens as Ravel's gaze pins her. Ravel smiles as she sees Annah's fear, then licks her lips. "Yes..."~ */
  IF ~~ THEN REPLY #52192 /* ~"Ravel, what..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("Ravel_Cut_Scene","AR0610",4)
~ THEN BEGIN 158 // from:
  SAY #52193 /* ~Ravel has... melted into Annah's shape, taking on her demeanor, her features, her leather vest... "Is it the rough-edged woman that you crave, the one for whom age has not yet tempered her passions?" Annah's... Ravel's... tail flicks, as if in anticipation. "Come, caress my lips with your own, and I shall please you."~ */
  IF ~~ THEN REPLY #52194 /* ~"Very well..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",2)
~ GOTO 152
  IF ~~ THEN REPLY #52195 /* ~"No, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52196 /* ~"Ravel, stop these games... I have neither time nor patience for them. Resume your form."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 151.1 151.3
  SAY #52197 /* ~"Mayhap... is it the rougher woman that you crave, the one of passionate fire?" Ravel glances at Annah, who stiffens as Ravel's gaze pins her. "Mayhap it is HER that whets your appetite..."~ */
  IF ~~ THEN REPLY #52198 /* ~"Ravel, stop this. I've no more time for your g-"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52199 /* ~Wait, see what happens...~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 145.4 147.2 148.2
  SAY #52200 /* ~"Ugly I need not be, pretty thing. My shape is but water to my will, and I may re-weave its fibers to a more pleasing tapestry." Ravel smiles at you, and her form begins to unravel...~ */
  IF ~~ THEN REPLY #52201 /* ~"What do you m-"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",5)
StartCutSceneMode()
StartCutSceneEx("0610Cut7",FALSE)
~ EXIT
END

IF WEIGHT #5 ~  Global("Ravel_Cut_Scene","AR0610",5)
~ THEN BEGIN 161 // from:
  SAY #52202 /* ~Ravel has... melted into the shape of a comely young woman - EVERYTHING about her has changed: her demeanor, her features, her clothing... "Is it a softer, younger woman you crave, one for whom age has not yet left its mark?" She smiles, her lips a ruby red... inviting. "Come, caress my lips with your own, and I shall please you."~ */
  IF ~~ THEN REPLY #52203 /* ~"Very well..."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",3)
~ GOTO 152
  IF ~~ THEN REPLY #52204 /* ~"No, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52205 /* ~"Ravel, stop these games... I have neither time nor patience for them. Resume your form."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF WEIGHT #6 ~  Global("Ravel_Cut_Scene","AR0610",6)
~ THEN BEGIN 162 // from:
  SAY #52206 /* ~You blink, and Ravel has *twisted* back into her original form. "A difficult man to please are you! Pah! And wonder do they why there are no males of our kind!"~ */
  IF ~~ THEN REPLY #52207 /* ~"What other shapes can you... *have* you turned yourself into?"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",2)
~ GOTO 163
  IF ~~ THEN REPLY #52208 /* ~"Enough... I had some other questions..."~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 163 // from: 141.1 162.0 165.0 167.0 169.0 171.0 175.0 176.1 182.0 183.0 184.0 241.0
  SAY #52209 /* ~"Maybe some, Mebbeth none." Ravel seems confused by the question. "I've not a-membered such, I've neen, I-vene, Ei-Vene, mayhap? Neither smarta nor Marta... so many threads and branchings, so many Ravels... always stitching and mending and growing are my forms."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52210 /* ~"Mebbeth? You were Mebbeth?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Mebbeth")
~ THEN REPLY #52211 /* ~"Mebbeth? You were Mebbeth? But... she's dead."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("EiVene","GLOBAL",0)
!Dead("EiVene")
~ THEN REPLY #52212 /* ~"You were Ei-Vene? In the Mortuary?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Dead("EiVene")
~ THEN REPLY #52213 /* ~"You were Ei-Vene? In the Mortuary? But... she's dead."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52214 /* ~"You were that barmy seamstress in the Buried Village? Marta?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Marta","GLOBAL",0)
Dead("Marta")
~ THEN REPLY #52215 /* ~"You were that barmy seamstress in the Buried Village? Marta? But... she's dead."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~~ THEN REPLY #52216 /* ~"Uh... I see. I had some other questions..."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 164 // from: 163.0 163.2 163.4
  SAY #52217 /* ~"That may have been one of my names... yes?" Ravel looks more confused, her black-veined eyes becoming misty. "Names are *difficult* to remember..." Her voice becomes faint. "Like calling across a great distance..."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Global("Ravel_Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Art_Answer","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52218 /* ~"Mebbeth was kind to me and helped me, Ravel. That means YOU helped me. I thank you."~ */ GOTO 176
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Global("Ravel_EiVene","GLOBAL",1)
!Dead("EiVene")
~ THEN REPLY #52219 /* ~"In her own way, Ei-Vene helped me, Ravel. That means YOU helped me. I thank you."~ */ GOTO 166
  IF ~  GlobalGT("Marta","GLOBAL",0)
Global("Ravel_Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52220 /* ~"Marta was barmy, Ravel, but she was not unkind and not unhelpful. If you were her, then you mean me no harm. I thank you."~ */ GOTO 170
  IF ~~ THEN REPLY #52221 /* ~"Why did you help me, Ravel?"~ */ GOTO 184
  IF ~~ THEN REPLY #52222 /* ~"I... see. I had other questions for you..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 165 // from: 163.1 163.3 163.5
  SAY #52223 /* ~Ravel blinks... "Yes... in the dead-book that one is. No more may I draw upon her strength..."~ */
  IF ~~ THEN REPLY #52224 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52225 /* ~"I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #52226 /* ~Almost unconsciously, Ravel's hand reaches out for you, and just for a moment, you swear they are Ei-Vene's talons...~ */
  IF ~~ THEN REPLY #52227 /* ~Step back.~ */ GOTO 167
  IF ~~ THEN REPLY #52228 /* ~Stand your ground...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52229 /* ~You step back, and Ravel blinks, then mutters to herself. "Dum zomfie... dum zomfie..."~ */
  IF ~~ THEN REPLY #52230 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52231 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #52232 /* ~Ravel's left hand plucks a hair from her head, hooks it around her talons, and lightning-like, she jabs another talon into the skin near one of your scars. It's barely more than a pin-prick, but it looks like she's about to start stitching you up.~ */
  IF ~~ THEN REPLY #52233 /* ~Let her work.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
SetGlobal("Ravel_EiVene","GLOBAL",2)
~ JOURNAL #52234 /* ~It turns out that Ravel was Ei-Vene, the strange tiefling I encountered in the Mortuary. When I confronted her on it, Ravel seemed to become Ei-Vene for a short time and "stitched" up my wounds, making me tougher. ~ */ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #52235 /* ~As it was with Ei-Vene, the sensation is curiously painless, but the thread and stitching seems to be going much deeper, almost INSIDE you, without actually going beyond the surface of the skin. In moments, Ravel's talons draw back, and you feel... better, stronger. Ravel mutters in Ei-Vene's voice: "Dum zomfie..."~ */
  IF ~~ THEN REPLY #52236 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52237 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 170 // from: 164.2
  SAY #52238 /* ~As you say her name, Ravel's face seems to *shift*... her blue skin sags, until she's wearing the same sour, curd-faced expression you saw on Marta's face. "C'mon, now... don't be all-difficult on Marta..." She raises the talon of her index finger like a scalpel and advances upon you. "False, nasty, corpse."~ */
  IF ~~ THEN REPLY #52239 /* ~Step back.~ */ GOTO 171
  IF ~~ THEN REPLY #52240 /* ~Stand your ground...~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #52241 /* ~You step back, and Ravel blinks, then mutters to herself; her features *shift* back to Ravel's... but her expression is still dazed, as if she is having trouble orienting herself. "Nasty corpse, eh, Marta...? yes, Marta, he is..."~ */
  IF ~~ THEN REPLY #52242 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52243 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #52245 /* ~Ravel's filthy talon jabs into your abdomen, then pulls it brutally downwards in a saw-like motion... but there is no pain. You watch as your skin peels slowly back from her touch -no blood issues from the wound. "Look at this, Marta... look at this..."~ */
  IF ~~ THEN REPLY #52246 /* ~Let her work.~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #52247 /* ~Ravel's free hand digs into your chest, where she loops your intestines up like yarn, and *plucks* them from your stomach... as she does, your stomach seals up, as if time was going backwards. Marta... Ravel... holds up your intestines like a trophy. "Pretty, pretty, eh, Marta...? One shouldn't swallow such a thing, no, no..."~ */
  IF ~~ THEN REPLY #52248 /* ~"Uh... can I have those back, please? I might need them later."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
GiveItemCreate("Intest2",Protagonist,3,0,0)
~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #52249 /* ~She hands you the ropy mass... despite the freshness, the fluids surrounding your intestines have dried like resin. It feels more like a loop of glazed... rope.~ */
  IF ~~ THEN REPLY #52250 /* ~"Uh... thanks. I'll treasure this always."~ */ DO ~SetGlobal("Ravel_Marta","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ JOURNAL #52251 /* ~It turns out that Ravel was Marta, that barmy seamstress I encountered in the Buried Village. When I confronted her on it, Ravel seemed to become Marta for a short time and plucked out my intestines... which she told me would serve me as a talisman of great power. All I know is that there seems to be tons of people that keep reaching into my body and pulling out things that aren't MEANT to be pulled out, and getting away with it. ~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #52252 /* ~Marta... Ravel... nods slowly. "As well he should, shouldn't he, Marta? Yes... yes, he should, Marta. Powerful magic to be found in the guts of an immortal, yes... not like teethies... or eyes..."~ */
  IF ~~ THEN REPLY #52253 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52254 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 176 // from: 164.0
  SAY #52255 /* ~As you mention Mebbeth, all the color seems to bleed out of Ravel's face until she is gray and ashen - literally. It's like the color just... vanished. "And who might ye be, hmmmnnn? Does yer path bring you back to Ol' Mebbeth's door, child...?"~ */
  IF ~~ THEN REPLY #52256 /* ~"Yes, it does... Mebbeth... I, uh, came to learn more of the Art. Can you teach me any more?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 177
  IF ~~ THEN REPLY #52257 /* ~"Not this time... what other shapes have you turned yourself into, Ravel?"~ */ GOTO 163
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #52258 /* ~"Pah! I am but a midwife, child, such power as the Art commands is much beyond me..."~ */
  IF ~~ THEN REPLY #52259 /* ~"I... don't think so. I think you may have more to teach me than you may realize. Much more."~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #52260 /* ~Then comes the question like an echo: "Ye want to learn the Art, ye do? *Why* do ye want to learn such things?"~ */
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",1)
~ THEN REPLY #52261 /* ~Echo: "Because I just want to know."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 179
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",2)
~ THEN REPLY #52262 /* ~Echo: "Because I may need it to solve the mystery of who I am."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 180
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",3)
~ THEN REPLY #52263 /* ~Echo: "Because I need power."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 181
  IF ~~ THEN REPLY #52264 /* ~"My reasons are my own."~ */ GOTO 183
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #52265 /* ~Ravel... Mebbeth... scoffs. "Not a child's grammar book this is, not a Guvner's set of laws... it's the *Art,* child. I'll teach ye, but ye've got ta keep a clear head about ye..." She leans in close. "Listen..."~ */
  IF ~~ THEN REPLY #52266 /* ~Listen...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~It turns out that Ravel was Mebbeth, the kindly midwife I met in Ragpicker's Square. When I confronted her on it, Ravel seemed to become Mebbeth for a short time and told me something... something I cannot even recall, but I feel as if she peeled back my senses to the planes, making me more *aware* of my surroundings. ~ */ GOTO 182
  IF ~~ THEN REPLY #52267 /* ~"No, I don't think I wish to learn what you have to tell me... perhaps some other time."~ */ GOTO 241
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY #52269 /* ~After a moment, Ravel... Mebbeth... nods. "The Art may help, it may not, and ye must not rely on it ta solve all o' yer problems." She sighs. "Child, it's most like only going to add another chip to yer pile o' questions..." She leans in close. "But if ye'd know, then listen..."~ */
  IF ~~ THEN REPLY #52270 /* ~Listen...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~It turns out that Ravel was Mebbeth, the kindly midwife I met in Ragpicker's Square. When I confronted her on it, Ravel seemed to become Mebbeth for a short time and told me something... something I cannot even recall, but I feel as if she peeled back my senses to the planes, making me more *aware* of my surroundings. ~ */ GOTO 182
  IF ~~ THEN REPLY #52271 /* ~"No, I don't think I wish to learn what you have to tell me... perhaps some other time."~ */ GOTO 241
END

IF ~~ THEN BEGIN 181 // from: 178.2
  SAY #52272 /* ~"Pah! An ill-desire, fer the ladder of the Art will always remind ye that there's another rung jist above ye, and there's a bunch of people and things that'll be on it, too. There'll always be someone better, and they'll learn *ye* if ye crave too much." She leans in close. "But if ye'd know, then listen..."~ */
  IF ~~ THEN REPLY #52273 /* ~Listen...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,120000)
~ JOURNAL #52268 /* ~It turns out that Ravel was Mebbeth, the kindly midwife I met in Ragpicker's Square. When I confronted her on it, Ravel seemed to become Mebbeth for a short time and told me something... something I cannot even recall, but I feel as if she peeled back my senses to the planes, making me more *aware* of my surroundings. ~ */ GOTO 182
  IF ~~ THEN REPLY #52274 /* ~"No, I don't think I wish to learn what you have to tell me... perhaps some other time."~ */ GOTO 241
END

IF ~~ THEN BEGIN 182 // from: 179.0 180.0 181.0
  SAY #52275 /* ~Mebbeth... Ravel... whispered something, and you feel *different,* changed somehow. She told you something horrible, something about how the planes work, but your mind has shut out her words, and you cannot recall them. Just thinking about them sets your heart pounding... Ravel told you something you're not sure *anyone* was ever meant to know. She is watching you, studying you.~ */
  IF ~~ THEN REPLY #52276 /* ~"Wh-What... what other shapes have you been, Ravel?"~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 163
  IF ~~ THEN REPLY #52277 /* ~"I... I... have other questions for you, Ravel."~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 183 // from: 178.3
  SAY #52278 /* ~"That so? Well, iffen yer reasons are yer own, then my *knowledge* is my own. I won't teach one who hides hisself from the teacher... only... evil... comes... from such a path." Mebbeth... Ravel... blinks, as if trying to reorient herself.~ */
  IF ~~ THEN REPLY #52279 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52280 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 184 // from: 164.3
  SAY #52281 /* ~"I cannot help BUT help you, my precious man... and that will always be true, no matter how many Ravels there be... on this, they will agree."~ */
  IF ~~ THEN REPLY #52282 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52283 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 185 // from: 141.5 141.6
  SAY #52284 /* ~"I tried to help a Lady and a-kindly she did not take to it."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #52285 /* ~"What do you mean?"~ */ GOTO 188
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52286 /* ~"What do you mean?"~ */ GOTO 187
  IF ~~ THEN REPLY #52287 /* ~"Never mind. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 186 // from: 141.3
  SAY #52288 /* ~"I tried to help a Lady and a-kindly she did not take to it."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 161
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY #52289 /* ~"My offering of help was unwelcome. I *tried* to set her FREE; Sigil is the CAGE, a City of Doors and Locks, is a prison for her. It must be, mustn't it be? Why else call the city of Sigil 'the Cage'? And who is caged? The Lady! A prison so small for one so great. Unjustness, wrongness, intolerable to torment a woman thusly!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 507
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #52290 /* ~"My offering of help was unwelcome. I *tried* to set her FREE; Sigil is the CAGE, a City of Doors and Locks, is a prison for her. It must be, mustn't it be? Why else call the city of Sigil 'the Cage'? And who is caged? The Lady! A prison so small for one so great. Unjustness, wrongness, intolerable to torment a woman thusly!"~ */
  IF ~~ THEN REPLY #52291 /* ~"I... see."~ */ GOTO 189
  IF ~~ THEN REPLY #52292 /* ~"Never mind. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #52293 /* ~"I tried to break the Cage, let the Lady go free." She makes a shooing motion, her expression becoming pained as she scatters invisible birds. "Shoo, shoo, o pained woman, let Sigil's ring be broken so you might fly far from its filthy streets and the stupid dabus that dare not speak in words for fear their thoughts would be overheard!" Ravel's hands slowly stop their 'shooing' motion, and she gives a slow sigh.~ */
  IF ~~ THEN REPLY #52294 /* ~"Go on..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 190
  IF ~~ THEN REPLY #52295 /* ~"I see. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #52296 /* ~"Before I could finish, I a-found myself here, and my memories none the better for the trip... much has slipped away, much forgotten, yes it was... is? Was?" Ravel smiles with her yellowed teeth. "The dwindling of memory has become a comfort to these old bones. Much have I forgotten... I am fortunate in that I still remember you."~ */
  IF ~~ THEN REPLY #52297 /* ~"Ravel, but... WHY did you try to free the *Lady of Pain* from Sigil?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52299 /* ~It turns out that Ravel was mazed for trying to free the Lady of Pain from Sigil... was that such a crime? Still, the best of intentions... Ravel said she simply could not bear anyone being caged or imprisoned. ~ */ GOTO 191
  IF ~~ THEN REPLY #52298 /* ~"I see. I had other some questions for you..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #52300 /* ~Ravel's voice drops, almost reprimanding. "I resent anyone, even a power, being imprisoned and think that all, everyone ...whether stones, shores or quiet bladed ladies... should be FREE. Some have said more fool, I. Why risk such a thing, they said?"~ */
  IF ~~ THEN REPLY #52301 /* ~"I agree. I would have let the Lady lie in her cage."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_2","GLOBALGood",-2)
~ GOTO 192
  IF ~~ THEN REPLY #52302 /* ~"I think you did the right thing trying to set her free, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_2","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~~ THEN REPLY #52303 /* ~Lie: "I... think you did the right thing trying to set her free, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52304 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52305 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #52306 /* ~"There are some things I cannot bear, and no apologies will I make, my precious half-man - yet... when I cannot let matters well enough alone... many are the lives and dreams that are a-left in pieces on the ground. If I had let you be, mayhap much better would your life be..."~ */
  IF ~  Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52307 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52308 /* ~"Mayhap. I have other questions for you, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 193 // from: 191.1 191.2
  SAY #52309 /* ~"I'm glad that we share a like mind and view like-minded on this matter. Yet... when I cannot let matters well enough alone... it seems to mine eyes that many are the lives and dreams that are a-left in pieces on the ground."~ */
  IF ~~ THEN REPLY #52310 /* ~"At least you tried, Ravel, and I see no fault in your intentions."~ */ GOTO 194
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52311 /* ~"So you are at fault, Ravel? At least you *tried* where others would have lacked the courage. I see no fault in your intentions - in fact, I see only strength."~ */ DO ~IncrementGlobalOnceEx("GLOBALRavel_Flatter_2","GLOBALRavel_Flatter",2)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 195
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52312 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52313 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52314 /* ~"I have other questions for you, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #52315 /* ~"Tchhh. So *someone* does."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52316 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52317 /* ~"Is that what you were trying to do when I met you so long ago? Were you trying to set me free?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52318 /* ~"I have other questions for you, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 195 // from: 193.1
  SAY #52319 /* ~Ravel stares at you in silence for a moment, then she cackles to herself. "Such honeyed words! How have I MISSED you, my precious half-man! You sing so sweetly, stone would give up its blood for you!"~ */
  IF ~~ THEN REPLY #52320 /* ~"There is no harm in speaking the truth. I have other questions for you, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 196 // from: 191.3 191.4 192.0 193.2 193.3 194.0 194.1
  SAY #52321 /* ~"Quite possibly, possibly quite. Life's chains and fear-of-death may have gripped too-tightly on the man I new... knew? Knew then, hmmmm-hmmmm?" Ravel picks at one of her jagged gray hairs, wrapping it around her finger. "No liking for chains and cages does Ravel have..."~ */
  IF ~~ THEN REPLY #52322 /* ~"Ah, so I was caged somehow? Or chained? It sounds to me as if your memory is stirring, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #52323 /* ~"Yess..." Ravel blinks for a moment, and her black-veined eyes become duller, as if she has been struck with a heavy weapon. Her talon tightens around the gray hair, so tightly it looks like she is about to tear it from her skull. "Mayhap... you were a-trapped? But it was no normal cage that held you..."~ */
  IF ~~ THEN REPLY #52324 /* ~"Do you have any idea *what* held me?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52325 /* ~Ravel thinks I may have been caged or imprisoned when I came to her so long ago... but she couldn't remember exactly. She said something about a promise of some sort, then she tore one of the hairs from her head and told me to take it in place of an answer. ~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #52326 /* ~Ravel looks confused, and her face *twists,* as if she is fighting an unpleasant thought. "I have forgotten... mayhap a promise...? No, no..." Her finger tightens around the gray hair, and to your surprise, there is a *snap* like a twig breaking, and Ravel tears the hair from her head. A trickle of black blood worms from beneath her skull cap, and she hisses in anger.~ */
  IF ~~ THEN REPLY #52327 /* ~"Ravel...? Are you all right?"~ */ DO ~GiveItemCreate("RavelHai",Protagonist,1,0,0)
SetGlobal("Ravel_Hair","GLOBAL",1)
AddexperienceParty(90000)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #52328 /* ~"No MORE will I say..." Ravel's face wrinkles in pain, the talon covered with the blood-tipped gray hair - even plucked from her head, it looks jagged and stiff. "I do not know, and no knowing shall I share!" She stares down at the gray hair wrapped around her talon, and then she hisses, and flicks it to you. "Take this, and leave the past where it lies, half-man!"~ */
  IF ~~ THEN REPLY #52329 /* ~"Very well, Ravel; then there is nothing more to be said on the matter. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 200 // from: 141.2
  SAY #52330 /* ~Ravel gestures around her. "Once a maze of lifeless stone it was, featureless, but a small black seed was wound in my hair when I came to this place, and it grew strong amongst the stone, flourishing, flourishing, until it ran thick throughout the maze like the unraveling hair of a crone... and so this maze of another becomes MY garden."~ */
  IF ~~ THEN REPLY #52331 /* ~"I had some other questions for you, Ravel..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 201 // from: 141.7
  SAY #52404 /* ~Ravel frowns disapprovingly, her bluish skin twisting like a rag. "Does Ravel know the *Art?!* Is your mind gone a-way of the mortality, a thing all up-and-lost?! I have forgotten more of the Art than *you* shall..." She jabs you with one of her talons. "Ever." She jabs you again. "Know."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #52405 /* ~"Can you teach me some of the Art, then?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 203
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #52406 /* ~"Can you teach me some of the Art, then?"~ */ GOTO 202
  IF ~~ THEN REPLY #52407 /* ~"Never mind, then. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 202 // from: 201.1
  SAY #52408 /* ~Ravel narrows her black-veined eyes, studying you. "Mayhap I could be persuaded by one such as you... though any other would NOT have such a chance, nor the boon I offer. Are you a rudimentary student in the arts or am I facing a tried-true-and-tired... attired? A-tired master?"~ */
  IF ~~ THEN REPLY #52409 /* ~"I am but a rudimentary student."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52410 /* ~"I am but a rudimentary student, beautiful Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52411 /* ~"A master in the arts."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52412 /* ~"A master in the arts, beautiful Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52413 /* ~"I really couldn't say... I seem to be alternately complimented and ridiculed for my efforts."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 212
  IF ~~ THEN REPLY #52414 /* ~"Perhaps I could receive teaching another time. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 203 // from: 201.0
  SAY #52415 /* ~Ravel snorts. "Ha! I will not be a-sharing my knowledge with none but a TRUE practitioner and no other, and nothing will bend me on this, not even you."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52416 /* ~"Beautiful Ravel, I ask only that you teach some of your ways... I ask nothing more than a glimpse into the vast well of knowledge that you no doubt possess."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52417 /* ~"Very well, then. I had some other questions..."~ */ GOTO 141
END

IF ~~ THEN BEGIN 204 // from: 202.1 202.3 203.0
  SAY #52418 /* ~"Flatterer... and yet your words warm me." Ravel's voice changes, alternating in pitch, like someone plucking a stringed instrument. "Much have I learned tending this garden. Charms and incantations, distilled from the barbs..." She begins to hum slightly to herself. "...rhyming, swaying ways of the consonants constants and motions that bring the briars to your aid... listen, the branches will speak of it."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52419 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,30000)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52420 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,60000)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52421 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52422 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52423 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,120000)
~ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 202.0 202.2
  SAY #52424 /* ~"Very well..." Ravel's voice changes, alternating in pitch, like someone plucking a stringed instrument. "Much have I learned tending this garden. Charms and incantations, distilled from the barbs..." She begins to hum slightly to herself. "...rhyming, swaying ways of the consonants constants and motions that bring the briars to your aid... listen, the branches will speak of it."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52425 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52426 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52427 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52428 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52429 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
END

IF ~~ THEN BEGIN 206 // from: 204.0 205.0 212.0
  SAY #52430 /* ~As you close your eyes and listen, a tremor passes through you, as if barbed snakes were burrowing beneath your flesh. When your eyes open, within your palm is a strange, black-barbed seed. You have no idea how it got there. Ravel is watching you carefully. "Take the seed. Learn from it."~ */
  IF ~~ THEN REPLY #52431 /* ~"Very well... I had other questions for you, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 207 // from: 204.1 205.1
  SAY #52432 /* ~As you close your eyes and listen, a great trembling passes through you, as if dozens of barbed snakes were burrowing beneath your flesh. When your eyes open, within your palm are several strange, black-barbed seeds. You have no idea how it got there. Ravel is watching you carefully. "Take the seeds. Learn from them."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52433 /* ~"Very well... I had other questions for you, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52434 /* ~"Very well... I had other questions for you, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 208 // from: 204.2 204.3 204.4 205.2 205.3 205.4
  SAY #52435 /* ~As you close your eyes and listen, a great trembling passes through you, as if dozens of barbed snakes were burrowing beneath your flesh. Just when you think the pain is more than you can bear, you suddenly, instinctively, begin humming, the same tune that Ravel did... and the pain ebbs. In the distance of the maze you can hear the clicking of the tree creatures, as if responding to your call.~ */
  IF ~~ THEN REPLY #52436 /* ~Continue to hum.~ */ DO ~SetGlobal("Ravel_Teach","GLOBAL",2)
~ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #52437 /* ~Ravel watches you with a curious light in her black-veined eyes. "Such *power*..." She gives a soft hiss, as if in wonder, and her lips peel back in a smile. "It a-touches all that hear it. You are powerful, my precious man, so powerful... one day even the planes may bend to your will..."~ */
  IF ~~ THEN REPLY #52438 /* ~"I do not wish such a thing, Ravel. There are many who would walk that path, but not I."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_1","GLOBALGood",2)
~ GOTO 210
  IF ~~ THEN REPLY #52439 /* ~"The day the planes bend to me is not long in coming, Ravel. The more of my memories return, so shall my power grow until none shall stop me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_1","GLOBALGood",-2)
~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0 209.1
  SAY #52440 /* ~Ravel nods, then nods at your hand, which to your surprise, holds a number of black-barbed seeds. "Take those seeds. Use them as you will... and to this, I grant an additional boon." She plucks a hair from her head and takes a handful of the seeds, places them in her palm, then crushes them. A small trail of blackish blood runs from her hand, but when she opens it, there is no wound... only a necklace of black-barbs, woven around a lock of Ravel's gray hair. "Take this; it is *of* me, and it will serve you well."~ */
  IF ~~ THEN REPLY #52441 /* ~Take the seeds and the strange barbed charm.~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBChrm",Protagonist,1,0,0)
~ JOURNAL #52442 /* ~Ravel taught me some of the Art, and in the process, I tapped into the surroundings of her black-barbed maze, so much so that the tree creatures, the Trigits, answered me when I called them. Ravel was impressed, and she gave me an additional charm and told me that there was a secret space within the maze I might reach if I kept the black-barbed seeds with me.~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #52444 /* ~"Save those seeds, precious man... use not all of them, for they may prove more useful in *other* places in this maze... but if powerful you are, these places you will find."~ */
  IF ~~ THEN REPLY #52445 /* ~"Very well... I had other questions for you, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 212 // from: 202.4
  SAY #52446 /* ~"You are one who creeps along the middle path when speaking to others, I see. Such a path lacks conviction..." Ravel scrunches her eyes as she stares at you. "I'd a-guess you are a fledgling mage, but you have a branching of potential that has yet to grow. I'll give you this... shhhh... close your eyes, listen..."~ */
  IF ~~ THEN REPLY #52447 /* ~Close your eyes, listen.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
END

IF ~~ THEN BEGIN 213 // from: 106.8 141.9
  SAY #52448 /* ~"Hold..." Ravel's voice drops to a low hiss, like that of a serpent. "The most important question you have YET to ask, my precious man. Has it occurred to you yet?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52449 /* ~"No... what question are you speaking of?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 214
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #52450 /* ~"Yes... I need to know how to leave this place. Do you know the answer to this question?"~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52451 /* ~"Yes... I need to know how to leave this place. Do you know the answer to this question?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #52452 /* ~"'Ravel, do you know how to leave this beautiful garden of yours,' must you ask - ask this, will you?" She prompts you with one of her talons, her bloody eyes gleaming. "Go on, go on."~ */
  IF ~~ THEN REPLY #52453 /* ~"Ravel... how do I leave this beautiful garden of yours?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 213.1 213.2 214.0
  SAY #52454 /* ~"I know the branchings of this place, the twistings and bendings and burrowings. Though there are no leaves here, one may take their leave when they wish it."~ */
  IF ~~ THEN REPLY #52455 /* ~"So you DO know how to leave?"~ */ DO ~SetGlobal("Ravel_Curst_Portal","GLOBAL",1)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #52456 /* ~"Wrap your hands about you like branches, make them encircle your chest like a cage. Step from the edge of the maze into the darkness, and into another cage your body shall go - a simple leaving, but there is NO return when that final step is taken, so TAKE heed and TAKE what you need before you take the step."~ */
  IF ~~ THEN REPLY #52457 /* ~"Which of the edges of the maze do I leave by?"~ */ GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #52458 /* ~"Which, a question posed to the witch... which? One of the edges knows, not I. The remembering of which has failed me, and the edges of the maze have had little to say on the matter."~ */
  IF ~~ THEN REPLY #52459 /* ~"You've known how to leave? All this time? Then... why don't you leave?"~ */ GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #52460 /* ~"Why stay when one can leave is your question to me?" Ravel breaks into a crooked smile, displaying a row of fangs. "I turn the question upon its head and send it a-scurrying back to you. The answer lies not in the staying or leaving, but in the causes and reasons, my precious half-man."~ */
  IF ~~ THEN REPLY #52461 /* ~"Don't you *want* to leave?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #52462 /* ~"It is *a* want, a once-want, but not a now-want, and more and more a not, naught, knotted-want. What do I need that lies beyond my brambled walls? It is a cruel, jagged world beyond the edges of this maze, and Ravel has pulled *enough* of its shards from her skin."~ */
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",3)
~ THEN REPLY #52463 /* ~"You have done me a great service, beautiful Ravel. Thank you for hearing my request and sharing your knowledge with me."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 220
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52464 /* ~"Very well... thank you, Ravel. I must bid you farewell."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52465 /* ~"Very well... thank you, Ravel. I must bid you farewell."~ */ GOTO 230
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #52466 /* ~Ravel gives a crooked smile, all tusks, and then gives a soft cackle. "Ah... it is *I* who thanks you, my precious man. Long has it been since such sweet flattery has been brought to this maze... I wish to grant you a boon, my songbird."~ */
  IF ~~ THEN REPLY #52467 /* ~"No boon is necessary, beautiful Ravel."~ */ GOTO 221
  IF ~~ THEN REPLY #52468 /* ~"A boon? I would gladly accept any gifts you wish to give."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #52469 /* ~"Your protestations have no place here, songbird. Shhh... I would tell you a secret..."~ */
  IF ~~ THEN REPLY #52470 /* ~"At the risk of repeating myself, please: no boon is necessary, beautiful Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 222
  IF ~~ THEN REPLY #52471 /* ~"Very well..."~ */ GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #52472 /* ~"Very well..." Ravel hisses softly, as if disappointed. "No gifts shall I give this day..."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52473 /* ~"Very well... thank you, Ravel. I must bid you farewell."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52474 /* ~"Very well... thank you, Ravel. I must bid you farewell."~ */ GOTO 230
END

IF ~~ THEN BEGIN 223 // from: 220.1 221.1
  SAY #52475 /* ~"Then listen to me... close your eyes, and I shall let you see the nature of the multiverse..."~ */
  IF ~  GlobalLT("Ravel_Flatter","GLOBAL",7)
~ THEN REPLY #52476 /* ~Close your eyes and listen...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",6)
GlobalLT("Ravel_Flatter","GLOBAL",11)
~ THEN REPLY #52477 /* ~Close your eyes and listen...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,120000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",10)
~ THEN REPLY #52478 /* ~Close your eyes and listen...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,2)
GiveExperience(Protagonist,180000)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0 223.1 223.2
  SAY #52479 /* ~You close your eyes, and as you do, you feel a sharp, stabbing pain in your right eye. Your eye... *one* of your eyes... opens... and you see Ravel before you, her blood-red eyes gleaming with delight; one of her talons is extended, and is tipped with your blood... and an eyeball. Yours.~ */
  IF ~~ THEN REPLY #52480 /* ~"What... did... you... do...?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #52481 /* ~"A boon I have granted, songbird. A twist of perception, a tap into the branches of the mind, a tap into the roots of Ravel's knowing have I granted you... a piece of me..." She takes the eyeball, and you watch in disgust as she pulls forth a black seed and places them both in her left palm. With a grotesque smile, she crushes the two of them with a sickening *crunch.* "Ahh..."~ */
  IF ~~ THEN REPLY #52482 /* ~"Give... it back..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #52483 /* ~"Of course, precious man..." Ravel opens her palm and your eye lies there, seemingly untouched, staring at you. She places it between her thumb and forefinger, then before you can react, she stabs it into your empty eye socket. ~ */
  IF ~~ THEN REPLY #52484 /* ~"Erhhkkkk..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ JOURNAL #52485 /* ~In response to my flattery, Ravel plucked out my right eye, crushed a black-barbed seed into it, then jabbed it back into my bloody eye socket. I now see things a little differently... it's as if I'm seeing the planes through Ravel's perspective as well as my own. Of course, this experience has also taught me that I'm going to be really careful about who I flatter from now on, especially if they're within stabbing distance.~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #52486 /* ~"A piece of me lies in your good eye, precious man. When you see the planes through that eye, you will understand MORE than you once did... wiser you will be, and more experience of the planes and their turnings will you understand... and that is all."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52487 /* ~"Very well... thank you, Ravel. I must bid you farewell."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52488 /* ~"Very well... thank you, Ravel. I must bid you farewell."~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from: 219.1 222.0 227.0
  SAY #52489 /* ~As you are about to utter your farewell, you suddenly feel a crawling sensation in your skull - and you notice that Ravel's black-veined eyes have taken on a strange, predatory fire. ~ */
  IF ~~ THEN REPLY #52490 /* ~"You're not going to let me leave, are you Ravel?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 229
  IF ~~ THEN REPLY #52491 /* ~"Uh... thank you, Ravel. I must bid you farewell."~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #52492 /* ~"A perceptive question - yet it not the real question." Ravel's voice takes on a strange whisper - very sad, that sends a faint echo through your mind. "The question is do you *wish* to leave me, half-man?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52493 /* ~"Fair Ravel, you helped me when I came to you so long ago, and you have done so again. I shall not forget what you have done. But now I must leave - I have to know more about myself."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52494 /* ~"I have to. It's important that I find out all I can about myself, and there is much more I need to know."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52495 /* ~"I do not wish to be trapped here in this place, Ravel. It is your home, not mine."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52496 /* ~"I do not want to be trapped in this maze. Do I intend to leave? Yes."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 230 // from: 219.2 222.1 227.1 228.1
  SAY #52497 /* ~"Ah... so you say..." Ravel's voice takes on a strange whisper - very sad, that sends echoes through your mind. "One final question do I have for you: do you *wish* to leave me, my precious half-man?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52498 /* ~"Fair Ravel, you helped me when I came to you so long ago, and you have done so again. I shall not forget what you have done. But now I must leave - I have to know more about myself."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52499 /* ~"I have to. It's important that I find out all I can about myself, and there is much more I need to know."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52500 /* ~"I do not wish to be trapped here in this place, Ravel. It is your home, not mine."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52501 /* ~"I do not want to be trapped in this maze. Do I intend to leave? Yes."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2 230.2
  SAY #52502 /* ~"No, know, no... know THIS..." Ravel raises a taloned finger, as if warning you. "Know it is OUR home, my precious half-man. Two immortals shall we be in this black-brambled garden, and I shall keep you safe from the planes."~ */
  IF ~~ THEN REPLY #52503 /* ~"I think you know not what you say, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 229.3 230.3
  SAY #52504 /* ~"In the leaving I find fault, and your answer seems to be one of conviction, but it is the *wrong* answer, my precious half-man." She *clacks* her yellowed teeth together like a bear trap. "No, no, I shall *keep* you here in this place. Two immortals shall we be in this black-brambled garden, and I shall keep you safe from the planes."~ */
  IF ~~ THEN REPLY #52505 /* ~"I think you know not what you say, Ravel..."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 229.0 229.1 230.0 230.1 231.0 232.0
  SAY #52506 /* ~There is a terrible *shimmering* in the air around Ravel - and the sound of snapping twigs and cracking tree limbs, and the horrid sound of the trees *bending* and *splintering*...~ */
  IF ~~ THEN REPLY #52507 /* ~"Wh-?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Ravel",ANIM_MIMESTANCE)
~ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #52508 /* ~Ravel's lips peel back and her voice becomes shrill, like a howling wind. "What do YOU know of KNOWING, half-man?! KNOW this: KNOW you will stay here until the END DAYS in my brambled garden, never to leave, and you shall LOVE me, as you were MEANT, as you PROMISED!"~ */
  IF ~~ THEN REPLY #52509 /* ~"I will not, Ravel. Do not threaten me... I WILL leave this place."~ */ GOTO 235
  IF ~~ THEN REPLY #52510 /* ~"Ravel, calm down - I need to leave, but I shall return. Don't-"~ */ GOTO 235
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52511 /* ~"I'm afraid I would be poor company, Ravel. And I cannot stay in any event. I'm afraid you must allow me passage."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0 234.1 234.2
  SAY #52512 /* ~"I shall NOT let you leave - I have the power to KEEP you here, and I shall USE it. My black-barbed maze shall NOT allow you to travel beyond it while I LIVE, my precious, *precious* man..."~ */
  IF ~~ THEN REPLY #52513 /* ~"Ravel, I don't want to fight you... don't do this. Allow me passage, and I shall return to visit you. You need not be alone in this place."~ */ GOTO 236
  IF ~~ THEN REPLY #52514 /* ~"So the only way I can leave is when you're dead? Very well, mayhap it is YOU who have made a mistake by underestimating me, crone."~ */ GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #52515 /* ~"RETURN?! RETURN as you CLAIMED you would so LONG AGO?! No... no, you shall not LIE to Ravel TWICE! No more CENTURIES will I WAIT for you..." Ravel's lips peel back, and her talons seem to grow, grow into fiendish claws. "Here in my garden you will STAY, and a-wander the planes you will NO LONGER...!"~ */
  IF ~~ THEN REPLY #52516 /* ~"Ravel, calm yourself, there's no NEED for this..."~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 235.1 236.0
  SAY #52517 /* ~"You have forgotten your PLACE, HALF-man. Humility is in order."~ [RAV065] */
  IF ~~ THEN REPLY #52518 /* ~"Ravel, don't DO this..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ JOURNAL #52520 /* ~Ravel answered my questions, but I don't think she expected me to leave her... when I told her I was leaving, she attacked me, and she swore that I would not be able to leave while she lived. I had no choice but to fight her. ~ */ EXIT
  IF ~~ THEN REPLY #52519 /* ~"We'll see, witch..."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ EXIT
END

IF ~~ THEN BEGIN 238 // from: 30.0 239.0
  SAY #52521 /* ~"Why, my precious, precious half-man, you carry the greatest torment of all... life forever-more. Can it be life a-cares for you as Ravel does?" She gnashes her yellowed tusks with a horrid *clacking* noise. "One so brave, so passionate, so terribly lost, sad, sad."~ */
  IF ~~ THEN REPLY #52522 /* ~"Ravel, *why* did you make me immortal? I must kn-"~ */ GOTO 41
END

IF ~~ THEN BEGIN 239 // from: 31.6
  SAY #52523 /* ~"Study their eyes when they are close... you shall *see* their torments, for they will not speak of them. No more will Ravel say... mayhap if they were close, and Ravel could see them, she would say more... but not this day."~ */
  IF ~~ THEN REPLY #52524 /* ~"Why are they drawn to me?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 240 // from: 152.4
  SAY #52525 /* ~"And you bit me, so long ago, 'twas not a kiss then, but a bite to the heart..." Ravel smiles. "Do not be surprised, my precious man. There is no harm done..."~ */
  IF ~~ THEN REPLY #52526 /* ~"Resume your normal shape, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 179.1 180.1 181.1
  SAY #52527 /* ~Mebbeth's... Ravel's... face relaxes, and you watch as the bluish tinge returns to her skin, and the blood red bleeds back into her eyes. She blinks, slowly, as if re-orienting herself. ~ */
  IF ~~ THEN REPLY #52528 /* ~"What other shapes have you been, Ravel?"~ */ GOTO 163
  IF ~~ THEN REPLY #52529 /* ~"I have other questions for you, Ravel."~ */ GOTO 141
END
