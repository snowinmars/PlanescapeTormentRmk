// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #11350 /* ~You see a short, rotund man with a perplexed expression on his face. From the lines on his loose skin, it looks like it's not too uncommon. He carries a flagon of ale that looks like it's in the process of being emptied - rapidly. In between swallows, he speaks in a gentle voice, so quiet that you can barely hear his words. "Hello, traveler. My name is Ilquix. Can I be of some assistance to you?"~ */
  IF ~~ THEN REPLY #11351 /* ~"Greetings. I would like to ask you some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #11352 /* ~"No. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #11353 /* ~The loose-skinned man turns and smiles at you. "Hello again, traveler. What can Ilquix do for you today?"~ */
  IF ~~ THEN REPLY #11354 /* ~"Greetings, Ilquix. I had some questions for you."~ */ GOTO 2
  IF ~~ THEN REPLY #11355 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 4.0 5.0 6.1 7.0 8.0 9.4 10.0
  SAY #11356 /* ~"What did you want to know, my friend?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11357 /* ~"Who exactly are you?"~ */ GOTO 3
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11358 /* ~"Who exactly are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #11359 /* ~"What can you tell me about this place?"~ */ GOTO 5
  IF ~~ THEN REPLY #11360 /* ~"What can you tell me of the patrons of this place?"~ */ GOTO 6
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #11361 /* ~"Who is that burning man?"~ */ GOTO 7
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11362 /* ~"I'm trying to find a way to make this Mochai pay for her drinks. Any suggestions?"~ */ GOTO 8
  IF ~~ THEN REPLY #11363 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11365 /* ~"I? I am but a humble man with a slight flowery, poetical bent and a tendency toward the supernatural. I regret that I have none of my supplies here, or I should be most, MOST eager to teach you of the ways of power." He pauses and looks admiringly at Grace. "And may I compliment you, sir, on your choice of traveling companions? You are obviously a man who understands his needs; just as obviously, you are a man with drive. One must be appreciative of all ambitious men."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 12
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #11367 /* ~"I? I am but a humble man with a slight flowery, poetical bent and a tendency toward the supernatural. I regret that I have none of my supplies here, or I should be most, MOST eager to teach you of the ways of power. Perhaps some later time?"~ */
  IF ~~ THEN REPLY #11369 /* ~"Yes, I'd like that. For now, though, I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11371 /* ~"Perhaps. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #11373 /* ~"This place? The Smoldering Corpse Tavern? A fine establishment, with a fine owner - Barkis is a true gentleman, and ambitious to increase his standing to boot. These, I feel, are the most useful qualities one can possess."~ */
  IF ~~ THEN REPLY #11374 /* ~"They drive people. I had some more questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11376 /* ~"Many would agree with you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #11377 /* ~"The patrons of this tavern are many and varied. I have spoken with most, and find them delightful - with the exception of those creatures of law." He gestures toward the pair of abishai sitting in the corner. "They taint the air with their presence, lending an unwholesome stench to an otherwise pleasant environment. I recommend speaking to Barkis - I understand he requires some aid with a trifling matter. Then we have that O character. I am still trying to understand him fully. It is *quite* an undertaking, if I say so myself. Those are the folk of interest here. The others... well, perhaps I am too discriminating."~ */
  IF ~~ THEN REPLY #11379 /* ~"Why do you despise creatures of law?"~ */ GOTO 9
  IF ~~ THEN REPLY #11381 /* ~"Perhaps. I had some other questions."~ */ GOTO 2
  IF ~~ THEN REPLY #11383 /* ~"Thank you for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4
  SAY #11385 /* ~"That? Ha. That is the last unfortunate who chose to exercise his individual will without the strength to back up his desires. His name is Ignus, and he is... was... a pyromaniac. He burned and burned, and didn't burn the right people, and wound up channeling more raw power than he could control. Now, well, you can see what became of him. If you wish to learn more of him, perhaps that poor creature Drusilla can help you."~ */
  IF ~~ THEN REPLY #11387 /* ~"I see. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11388 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.5
  SAY #11390 /* ~He laughs, his jowls shaking loosely, almost seeming to fall from his face. "You could always poison her, friend! A dose of that was always effective in bringing resolution to nearly *any* conflict!" He laughs again. "Of course, I'm joking." He winks.~ */
  IF ~~ THEN REPLY #11392 /* ~"Of course you are. I had some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11393 /* ~"Of course you are. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #11394 /* ~"Ah, a fine question, my friend! My upbringing has been on the chaotic side of the Great Ring - you may speak to Candrian Illborne (a misnomer if ever I heard one) of the planes. He fancies himself a great planewalker. To return from my digression, I have lived my many years with Chaos, and find it pleasantly agreeable. To me, the taint of law, as in those creatures there, is reprehensible and tyrannical. If I am to be crushed underfoot, I'd rather it be by an individual than a machine that knows nothing of emotion."~ */
  IF ~~ THEN REPLY #11395 /* ~Truth: "I very much agree."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_One","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11396 /* ~Lie: "I very much agree."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11397 /* ~Truth: "I disagree."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Ilquix_One","GLOBALLaw",1)
~ GOTO 10
  IF ~~ THEN REPLY #11398 /* ~Lie: "I disagree."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Ilquix_Two","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #11399 /* ~"There are many who agree with you. I have some other questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #11400 /* ~"There are many who agree with you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2 9.3
  SAY #11401 /* ~Ilquix smiles toothily, his fat cheeks barely moving. "To each his own, I say. Did you have more questions?"~ */
  IF ~~ THEN REPLY #11402 /* ~"Yes."~ */ GOTO 2
  IF ~~ THEN REPLY #11403 /* ~"No. Farewell."~ */ EXIT
END
