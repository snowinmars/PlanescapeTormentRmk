// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSALABSH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSALABSH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48444 /* ~This tall, thin man, dressed in heavy crimson robes, has sharp, pinched features. He bows regally as you approach him. "I am Salabesh, oft-called Salabesh the Onyx, future mage-tutor for the Civic Festhall. You've business with me, I take it...?"~ */
  IF ~~ THEN REPLY #48445 /* ~"No... just some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #48446 /* ~"No, I don't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #48447 /* ~"About what, hmmm? Not the Ward and the like, I hope... plenty of more common folk could answer such questions, and I'd just as soon direct you to one of them."~ */
  IF ~~ THEN REPLY #48448 /* ~"Why are you called 'the Onyx'?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48449 /* ~"What did you mean by 'future mage-tutor of the Festhall'?"~ */ JOURNAL #66221 /* ~I met a man named Salabesh outside the Civic Festhall. He claimed to be vying for the prestigious position of 'mage-tutor of the Festhall,' but needs a way to prove that he'd be a better tutor than the current one.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67858 /* ~"Have you put in your request to be made mage-tutor of the Festhall, yet?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67859 /* ~"So... whatever happened to your becoming mage-tutor of the Festhall?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48450 /* ~"You're a Master of Curses? Perhaps you could - *hiccup!* - help me..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66247 /* ~"Do you know of a cursed man called Reekwind?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~I was told that Jumble Murdersense made Reekwind - the cursed, stench-ridden man I met in the Hive - what he is, and that I could find him in the Civic Festhall.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48451 /* ~"Are you the mage that cursed the performer down the street?"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 10
  IF ~~ THEN REPLY #48452 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.1 5.1 6.2 7.1 8.2 10.1 11.1 12.0 14.1 15.1 16.0 17.0 18.0
  SAY #48453 /* ~Salabesh smirks. "I am not surprised."~ */
  IF ~~ THEN REPLY #48454 /* ~"Why are you called 'the Onyx'?"~ */ GOTO 3
  IF ~  GlobalLT("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #48455 /* ~"What did you mean by 'future mage-tutor of the Festhall'?"~ */ JOURNAL #66221 /* ~I met a man named Salabesh outside the Civic Festhall. He claimed to be vying for the prestigious position of 'mage-tutor of the Festhall,' but needs a way to prove that he'd be a better tutor than the current one.~ */ GOTO 11
  IF ~  Global("CW_Thorn_Train","GLOBAL",3)
~ THEN REPLY #67860 /* ~"Have you put in your request to be made mage-tutor of the Festhall, yet?"~ */ GOTO 17
  IF ~  Global("CW_Thorn_Train","GLOBAL",4)
~ THEN REPLY #67861 /* ~"So... whatever happened to your becoming mage-tutor of the Festhall?"~ */ GOTO 18
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Jumble","GLOBAL",2)
~ THEN REPLY #48456 /* ~"You're a Master of Curses? Perhaps you could - *hiccup!* - help me..."~ */ GOTO 4
  IF ~  Global("Know_Salabesh","AR0600",2)
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #66249 /* ~"Do you know of a cursed man called Reekwind?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #66248 /* ~I was told that Jumble Murdersense made Reekwind - the cursed, stench-ridden man I met in the Hive - what he is, and that I could find him in the Civic Festhall.~ */ GOTO 15
  IF ~  Global("Know_Salabesh","AR0600",1)
~ THEN REPLY #48457 /* ~"Are you the mage that cursed the performer down the street?"~ */ GOTO 10
  IF ~~ THEN REPLY #48458 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48459 /* ~"A long tale, which I'll shorten to save my breath. In my youth, I was once called Salabesh the Golden, for I was said to have a heart of gold... small, hard and yellow. Well, I cursed the fool who started *that* so that he could only speak from his arse and defecate through his mouth. The 'Onyx' appellation - along the same lines as 'the Golden,' though admittedly somewhat less clever - soon followed. In any case, I'm a much kinder fellow now... far less prone to laying curses and the like. I'm not certain if I deserve the name any longer."~ */
  IF ~  GlobalLT("Know_Salabesh","AR0600",2)
~ THEN REPLY #66250 /* ~"You cursed him so that *what?*"~ */ DO ~SetGlobal("Know_Salabesh","AR0600",2)
~ GOTO 14
  IF ~~ THEN REPLY #48460 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #48461 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.4 2.4 10.0 14.0
  SAY #48462 /* ~"Help you?" Salabesh sneers. "Doubtful." Before you can respond, he sighs, shaking his head. "Well... *perhaps* I could. What troubles you, then?"~ */
  IF ~~ THEN REPLY #48463 /* ~"Jumble Murdersense cursed me."~ */ GOTO 5
  IF ~~ THEN REPLY #48464 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #48465 /* ~"Jumble Murdersense? Hah! That sputtering mooncalf could *never* best me! Oh, the battles we used to have, though..." Salabesh frowns. "But I'm past all that, now. No longer my sort of thing, you see. I really don't know what I could do for you... after all, it's *his* curse. Not the sort you'd find on an item or somesuch, you know, that you could remove with simple magicks... *he'll* have to remove it, and willingly."~ */
  IF ~~ THEN REPLY #48466 /* ~"Well, could you teach me a curse, then, that I could use on him?"~ */ GOTO 6
  IF ~~ THEN REPLY #48467 /* ~"I had another question, then..."~ */ GOTO 2
  IF ~~ THEN REPLY #48468 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48469 /* ~"Hmm. Well... I don't normally do that. I keep my curses to myself, you know. And besides, even a single curse would take one a long, long while to learn - more time than I'd care to spend on it."~ */
  IF ~~ THEN REPLY #48470 /* ~"I could pay you for your trouble..."~ */ GOTO 7
  IF ~~ THEN REPLY #48471 /* ~"Perhaps you're just worried your curses aren't good enough to best him, anymore..."~ */ GOTO 8
  IF ~~ THEN REPLY #48472 /* ~"I had another question, then..."~ */ GOTO 2
  IF ~~ THEN REPLY #48473 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #48474 /* ~"No, no... I've simply no desire to do it." Salabesh looks directly into your eyes. "Now kindly drop the subject, sirrah, before you begin to annoy me."~ */
  IF ~~ THEN REPLY #48475 /* ~"Perhaps you're just worried your curses aren't good enough to best him, anymore..."~ */ GOTO 8
  IF ~~ THEN REPLY #48476 /* ~"All right. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #48477 /* ~"It's dropped, Salabesh. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #48478 /* ~"You *what?!* Of all the ridiculous... now look here, you knuckle-dragging sack of scars, Salabesh the Onyx is the *MASTER* of Curses, and there is no other! Why, I could give you but a single phrase that would render that nincompoop's cursing wholly impotent!"~ */
  IF ~~ THEN REPLY #48479 /* ~"Teach it to me, then..."~ */ GOTO 7
  IF ~~ THEN REPLY #48480 /* ~Purse your lips, look skeptical.~ */ DO ~SetGlobal("Know_Salabesh_Curse","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #48481 /* ~"I'm sure you could. I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #48484 /* ~"All right, all right... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #48485 /* ~"That's it! You've *made* me do it!" Salabesh utters a short string of impossible syllables... words of power, which you note mentally for later use against Jumble. "There! See what *that* does to him, and tell me Salabesh the Onyx isn't *the* Master of Curses, then!"~ */
  IF ~~ THEN REPLY #48486 /* ~"Thanks, Salabesh; I'll do that. Farewell."~ */ JOURNAL #48487 /* ~I learned a short curse from Salabesh the Onyx, which I should be able to use against Jumble Murdersense.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.6 2.6
  SAY #48488 /* ~"Oh..." Salabesh narrows his eyes; his lip curls up. "*Him.* Yes, I cursed him, and he was well-deserving of it! Mocking a passing mage... now what sort of fool does that? He was *asking* for it! After all, I *am* Salabesh the Onyx, Master of Curses. Don't worry yourself, though... the curse is harmless. Improves his sorry little act, if anything - he'll be fine."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #48489 /* ~"Master of Curses? Perhaps you could - *hiccup!* - help me, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #48490 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #48491 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1
  SAY #48492 /* ~"It's a prestigious position, to be an official tutor in one the Festhall's training chambers. It's my intention to one day take the position of mages' tutor, but the title's currently in the possession of the Lady Thorncombe. If only I could somehow prove that I'd be a superior tutor..."~ */
  IF ~  Global("CW_Thorn_Train","GLOBAL",2)
~ THEN REPLY #48493 /* ~"You could always bring up the fact that she's addicted to sensory stones. She doesn't seem to want to teach anymore..."~ */ DO ~SetGlobal("CW_Thorn_Train","GLOBAL",3)
~ JOURNAL #48496 /* ~I told Salabesh that Lady Thorncombe spent all her time in the sensorium and no longer wished to teach. He was eager to take up her position himself, but I'm unsure as to how good a tutor he'd be. Perhaps I'd best inform Lady Thorncombe of his intentions to give her a final chance to sort out her priorities.~ */ GOTO 12
  IF ~~ THEN REPLY #48494 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #48495 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #48497 /* ~Salabesh's tight lips curl into a nasty smile. "*Is* she, now? And she no longer cares to teach? Excellent..." He rubs his hands together eagerly. "I'll request to be made the new mage's tutor shortly, then."~ */
  IF ~~ THEN REPLY #48498 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #48499 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #48500 /* ~You see Salabesh the Onyx. He makes a brief but graceful half-bow. "Hmm. Again you stand before me..."~ */
  IF ~~ THEN REPLY #48501 /* ~"Yes. I had some questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #48502 /* ~"I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 3.0
  SAY #66236 /* ~"Oh, yes... you heard right." Salabesh sighs happily and chuckles to himself. "That sort of thing is why I'm known as the Master of Curses, you know."~ */
  IF ~  Global("Jumble","GLOBAL",2)
~ THEN REPLY #66237 /* ~"Master of Curses? Perhaps you could - *hiccup!* - help me, then..."~ */ GOTO 4
  IF ~~ THEN REPLY #66238 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #66239 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.5
  SAY #66240 /* ~"Reek...? Hmmm." Salabesh's eyebrows suddenly dart up. "Oh, yes... Jumble Murdersense cursed that man, if I recall correctly. Why? Seeking to get his curse undone? Good luck... only Jumble can do that, you know."~ */
  IF ~  Global("Jumble","GLOBAL",0)
~ THEN REPLY #66241 /* ~"Where would I find this Jumble Murdersense?"~ */ GOTO 16
  IF ~~ THEN REPLY #66243 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #66244 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66242 /* ~"Within the Civic Festhall, I suppose. A short, portly fellow with a leering smile. Never speaks, so you'll be hard pressed to get anything out of him."~ */
  IF ~~ THEN REPLY #66245 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #66246 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.2 2.2
  SAY #67852 /* ~Salabesh's expression darkens. "No... I recently upset the head of the Festhall's board of mages, and I feel it would be best to wait for a time before making my request. Besides, I am certain that 'Lady' Thorncombe won't come skipping out of the sensorium anytime soon..." He chuckles evilly.~ */
  IF ~~ THEN REPLY #67853 /* ~"I had another question..."~ */ GOTO 2
  IF ~~ THEN REPLY #67854 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 1.3 2.3
  SAY #67855 /* ~"Humph! That vacuous, scatter-brained child of a woman... Thorncombe finally saw fit to leave the sensoriums and return to teaching, so my chance is lost. I do not wish to speak of it any longer!" Salabesh continues to mumble foul curses beneath his breath.~ */
  IF ~~ THEN REPLY #67856 /* ~"I had another question, then..."~ */ GOTO 2
  IF ~~ THEN REPLY #67857 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END
