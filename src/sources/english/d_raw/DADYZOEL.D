// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DADYZOEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DADYZOEL~

IF ~  Global("Adyzoel","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #15296 /* ~This slightly effeminate, well-groomed young man is watching passersby with a contemptuous sneer. His hand rests on the elaborately crafted, bejeweled hilt of a saber. With his silk garments and suede boots, he seems painfully out of place.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #15351 /* ~"Greetings..."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #15352 /* ~"Greetings..."~ */ EXTERN ~DANNAH~ 97
  IF ~~ THEN REPLY #15353 /* ~Pass the man by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #15297 /* ~Though with his delicate features and bow lips he could pass for a comely woman, his voice, despite its softness, is without doubt a male's: "Mmm, a stranger. Another 'cutter'..." he spits the word out, as if its taste offended him, "...come to challenge my blade?"~ */
  IF ~~ THEN REPLY #15354 /* ~"No, but I had some questions..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15355 /* ~"Why not? Yes."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15356 /* ~"Why not? Yes."~ */ EXTERN ~DMORTE~ 169
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15357 /* ~"Yes, but would you care to make a wager on the outcome?"~ */ GOTO 20
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15358 /* ~"Yes, but would you care to make a wager on the outcome?"~ */ EXTERN ~DMORTE~ 171
  IF ~~ THEN REPLY #15359 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 21.2
  SAY #15298 /* ~"Away, then. I've no time for the likes of you." He waves you off.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #15360 /* ~"You've underestimated me, then, 'sir.' Will you hear my questions or not?"~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15361 /* ~"Make the time. You'll answer my questions."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15362 /* ~"Make the time. You'll answer my questions."~ */ EXTERN ~DMORTE~ 170
  IF ~~ THEN REPLY #15363 /* ~"I won't waste your time, then, low-bred cur."~ */ GOTO 3
  IF ~~ THEN REPLY #15364 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 37.1
  SAY #15299 /* ~The young man's eyes gleam like burning ice; a frigid half-smile creeps over his lips. "Come now? Repeat yourself, you hulking, brutish wreck. What did you say to me?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15365 /* ~"You heard me, woman."~ */ GOTO 4
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15366 /* ~"You heard me, woman."~ */ EXTERN ~DMORTE~ 173
  IF ~~ THEN REPLY #15367 /* ~"Nothing. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0 8.0 13.0 13.1
  SAY #15300 /* ~You catch only a blur of motion before his saber is readied. He licks his lips and laughs softly: "Do your best not to bleed on my boots, will you?" Behind him, a filthy, robed figure is watching you with greedy eyes...~ */
  IF ~~ THEN REPLY #15368 /* ~Meet his attack.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15369 /* ~Flee.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 21.3
  SAY #15301 /* ~"No, no, no... it's not so easy." He closes his eyes and shakes his head in mock regret. "You're walking away a corpse or a coward; all that's left is for you to decide between the two."~ */
  IF ~~ THEN REPLY #15370 /* ~"Sure there's no third choice?"~ */ GOTO 8
  IF ~~ THEN REPLY #15371 /* ~"I'm looking at the only corpse here."~ */ GOTO 6
  IF ~~ THEN REPLY #15372 /* ~Turn and leave.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #15302 /* ~You catch only a blur of motion before his saber is readied. "You merely see yourself in my eyes, beast. Do your best not to bleed on my boots, will you?" Behind him, a filthy, robed figure is watching you with greedy eyes...~ */
  IF ~~ THEN REPLY #15373 /* ~Meet his attack.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15374 /* ~Flee.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 8.2 10.1 11.1 13.2 36.1
  SAY #15303 /* ~As you go, he speaks: "Much as I thought. Coward." Though barely audible, you hear someone behind him give a disappointed sigh.~ */
  IF ~~ THEN REPLY #15375 /* ~Turn and attack him.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15376 /* ~Ignore the comment, leave.~ */ DO ~SetGlobal("Adyzoel","AR0400",2)
~ EXIT
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15377 /* ~Ignore the comment, leave.~ */ EXTERN ~DMORTE~ 180
END

IF ~~ THEN BEGIN 8 // from: 5.0
  SAY #15304 /* ~He appears surprised for a moment, then nods. "There *always* is, isn't there? Hmm... I suppose you could ask my forgiveness, and pray to some power that I'm in a generous mood."~ */
  IF ~~ THEN REPLY #15378 /* ~"Never. We'll fight."~ */ GOTO 4
  IF ~~ THEN REPLY #15379 /* ~"Then I ask for your forgiveness. I misspoke."~ */ GOTO 9
  IF ~~ THEN REPLY #15380 /* ~"That I won't do. Farewell."~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #15305 /* ~He frowns, rolling his eyes. "Very well, I for -" He stops suddenly, confused, and puts his hand to his temple.~ */
  IF ~~ THEN REPLY #15381 /* ~Wait and see what happens.~ */ GOTO 10
  IF ~~ THEN REPLY #15382 /* ~"Are you all right?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 10
  IF ~~ THEN REPLY #15383 /* ~Attack him while he's off guard.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15384 /* ~Leave while he's distracted.~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #15306 /* ~"I... er... no, there can be no forgiveness!" He shakes his head, and his expression changes from one of confusion to grim resolve. "Flee or die!"~ */
  IF ~~ THEN REPLY #15385 /* ~Attack him.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15386 /* ~Leave.~ */ GOTO 7
END

IF ~~ THEN BEGIN 11 // from: 9.3
  SAY #15307 /* ~He calls after you as you leave: "Get back here, you spineless wretch!"~ */
  IF ~~ THEN REPLY #15387 /* ~Turn and face him.~ */ GOTO 12
  IF ~~ THEN REPLY #15388 /* ~Keep walking.~ */ GOTO 7
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #15308 /* ~As you turn to face him, his saber is readied in a blur of motion. "Ah, good; you'll fight, then! Do your best not to bleed on my boots, will you?" Behind him, a filthy, robed figure is watching you with greedy eyes...~ */
  IF ~~ THEN REPLY #15389 /* ~Meet his attack.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15390 /* ~Flee.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.1 40.0
  SAY #15309 /* ~He laughs bitterly. "You can't intimidate me, brute. I suggest you walk away before you find your life running off into Sigil's gutters."~ */
  IF ~~ THEN REPLY #15391 /* ~Truth: "I'll give you one last chance to talk, before I break you and your pretty sword in half."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Adyzoel_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15392 /* ~Bluff: "I'll give you one last chance to talk, before I break you and your pretty sword in half."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_2","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #15393 /* ~Leave.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 2.0
  SAY #15310 /* ~"*Have* I, then? Hmm... your impudence is amusing, Hiver. What would you ask of me?"~ */
  IF ~~ THEN REPLY #15394 /* ~"Who are you?"~ */ GOTO 17
  IF ~~ THEN REPLY #15395 /* ~"What are you doing here?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15396 /* ~"I want to fight a duel."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15397 /* ~"I want to fight a duel."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15398 /* ~"I'm looking for a man named Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15399 /* ~"I'm looking for a journal I've lost."~ */ GOTO 16
  IF ~~ THEN REPLY #15400 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.4 22.4
  SAY #15311 /* ~"The names of the... 'people'... here don't interest me. I wouldn't have known this Pharod if I met him."~ */
  IF ~~ THEN REPLY #15401 /* ~"I had other questions..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15402 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15403 /* ~"Farewell, then."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15404 /* ~"Farewell, then."~ */ GOTO 25
END

IF ~~ THEN BEGIN 16 // from: 14.5 22.5
  SAY #15312 /* ~"Can you *read?*" He chuckles to himself. "So... you lost it here? Doubtless it's been stolen, probably used as bedding or kindling by the local degenerates. I'd forget you ever had it; I'm certain you wouldn't want the thing if you came across it, now."~ */
  IF ~~ THEN REPLY #15405 /* ~"I had other questions..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15406 /* ~"Farewell, then."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15407 /* ~"Farewell, then."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15408 /* ~"Farewell, then."~ */ GOTO 25
END

IF ~~ THEN BEGIN 17 // from: 14.0 22.0
  SAY #15313 /* ~"You may address me as Adyzoel, of the House Eriane-Ard."~ */
  IF ~~ THEN REPLY #15409 /* ~"I had other questions..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15410 /* ~"We may speak again, Adyzoel. Farewell."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15411 /* ~"We may speak again, Adyzoel. Farewell."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15412 /* ~"We may speak again, Adyzoel. Farewell."~ */ GOTO 25
END

IF ~~ THEN BEGIN 18 // from: 14.1 22.1
  SAY #15314 /* ~He grins evilly; his teeth, perfect and white as freshly fallen snow, might as well be sharp as knives. "Oh, this and that. Testing my skills, looking for trouble. 'Hiving,' as it were."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15413 /* ~"I think I'd be a good test of your skills."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15414 /* ~"I think I'd be a good test of your skills."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15415 /* ~"I had other questions..."~ */ GOTO 22
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15416 /* ~"I hope you find your trouble, then. Farewell."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15417 /* ~"I hope you find your trouble, then. Farewell."~ */ GOTO 24
  IF ~  Global("Adyzoel","AR0400",5)
~ THEN REPLY #15418 /* ~"I hope you find your trouble, then. Farewell."~ */ GOTO 25
END

IF ~~ THEN BEGIN 19 // from: 1.1 14.2 18.0 21.0 22.2 23.0 27.0 28.1 29.0 31.0 38.1 40.1
  SAY #15315 /* ~The young man's eyes gleam like burning ice; a frigid half-smile creeps over his lips. "Excellent..." You catch only a blur of motion before his saber is readied. "Do your best not to bleed on my boots, will you?" Behind him, a filthy, robed figure is watching you with greedy eyes...~ */
  IF ~  Global("Adyzoel","AR0400",6)
~ THEN REPLY #15419 /* ~"Wait..."~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15420 /* ~Meet his attack.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15421 /* ~Flee.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.3
  SAY #15316 /* ~His eyes light up. "Why, yes, that's a splen-" He suddenly stops, confused, and puts his hand to his temple.~ */
  IF ~~ THEN REPLY #15422 /* ~Wait and see what happens.~ */ GOTO 21
  IF ~~ THEN REPLY #15423 /* ~"Are you all right?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 21
  IF ~~ THEN REPLY #15424 /* ~Attack him while he's off guard.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobalOnceEx("GLOBALChaotic_Adyzoel_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #15425 /* ~Leave while he's distracted.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #15317 /* ~"I... er... no, no wagers! You win, you live; you lose, you die. It's that simple."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15426 /* ~"Very well. Let's fight."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15427 /* ~"Very well. Let's fight."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15428 /* ~"Forget it, then. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #15429 /* ~"Never mind, then. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 15.0 16.0 17.0 18.2 23.2 23.3 31.2
  SAY #15318 /* ~"Fine, fine. Go on."~ */
  IF ~~ THEN REPLY #15430 /* ~"Who are you?"~ */ GOTO 17
  IF ~~ THEN REPLY #15431 /* ~"What are you doing here?"~ */ GOTO 18
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15432 /* ~"I want to fight a duel."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15433 /* ~"I want to fight a duel."~ */ EXTERN ~DMORTE~ 169
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #15434 /* ~"I'm looking for a man named Pharod."~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #15435 /* ~"I'm looking for a journal I've lost."~ */ GOTO 16
  IF ~  GlobalLT("Adyzoel","AR0400",4)
~ THEN REPLY #15436 /* ~"Nothing, never mind. Farewell."~ */ EXIT
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15437 /* ~"Nothing, never mind. Farewell."~ */ GOTO 24
END

IF ~  Global("Adyzoel","AR0400",1)
~ THEN BEGIN 23 // from: 26.0
  SAY #15319 /* ~Adyzoel nods his head when he sees you. "Ah, back again. Here to cross blades, this time, or bother me with questions?"~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15438 /* ~"I'm here to fight."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15439 /* ~"I'm here to fight."~ */ EXTERN ~DMORTE~ 169
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15440 /* ~"I had some questions..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15441 /* ~"I had some questions..."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 22
  IF ~  !Global("Adyzoel","AR0400",4)
~ THEN REPLY #15442 /* ~"Neither. Farewell."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
  IF ~  Global("Adyzoel","AR0400",4)
~ THEN REPLY #15443 /* ~"Neither. Farewell."~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 15.2 16.2 17.2 18.4 22.7 23.4 31.3
  SAY #15320 /* ~He speaks curtly: "'Farewell' to you. I'll have to ask that you don't trouble me again, unless you've come to challenge me."~ */
  IF ~~ THEN REPLY #15444 /* ~Leave.~ */ DO ~SetGlobal("Adyzoel","AR0400",5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 15.3 16.3 17.3 18.5 23.5
  SAY #15321 /* ~Adyzoel speaks contemptuously as you turn to leave: "I told you the last time we spoke: don't trouble me again, unless you've come to challenge me. Should we meet again I'll take it as such; we'll cross blades on sight, whether you like it or not."~ */
  IF ~~ THEN REPLY #15445 /* ~Leave.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",5)
~ THEN BEGIN 26 // from:
  SAY #15322 /* ~You recall Adyzoel asking you to not trouble him again, unless you were coming to challenge him.~ */
  IF ~~ THEN REPLY #15446 /* ~Speak to him anyway.~ */ GOTO 23
  IF ~~ THEN REPLY #15447 /* ~Leave him be.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",6)
~ THEN BEGIN 27 // from:
  SAY #15323 /* ~You recall Adyzoel saying that he'd consider it a challenge and attack you on sight, should you approach him again.~ */
  IF ~~ THEN REPLY #15448 /* ~Speak to him anyway.~ */ GOTO 19
  IF ~~ THEN REPLY #15449 /* ~Leave him be.~ */ EXIT
END

IF ~  Global("Adyzoel","AR0400",2)
~ THEN BEGIN 28 // from:
  SAY #15324 /* ~"Huh! The craven brute has returned!"~ */
  IF ~~ THEN REPLY #15450 /* ~"I had some questions..."~ */ GOTO 29
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15451 /* ~"Do I hear a dog barking? I've come to fight, you pox-ridden cur."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15452 /* ~"Do I hear a dog barking? I've come to fight, you pox-ridden cur."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15453 /* ~Turn and leave.~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #15325 /* ~He sneers, turning his head away. "I'll have no words with a spineless thing such as you. Fight me or leave."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15454 /* ~"I'll fight you, then."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15455 /* ~"I'll fight you, then."~ */ EXTERN ~DMORTE~ 169
  IF ~~ THEN REPLY #15456 /* ~"I'll leave. Farewell."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.3 29.2
  SAY #15326 /* ~"I'll not allow you to continue pestering me, coward. I don't want to see you again unless you've come to offer a challenge. Should we meet again I'll take it as such; we'll cross blades on sight, whether you like it or not."~ */
  IF ~~ THEN REPLY #15457 /* ~Leave.~ */ DO ~SetGlobal("Adyzoel","AR0400",6)
~ EXIT
END

IF ~  Global("Adyzoel","AR0400",3)
~ THEN BEGIN 31 // from:
  SAY #15327 /* ~Adyzoel looks genuinely surprised. "What, again? From where did you crawl, brute? I was certain I had finished you off."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15458 /* ~"Not quite. I'm back for another fight."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15459 /* ~"Not quite. I'm back for another fight."~ */ EXTERN ~DMORTE~ 172
  IF ~~ THEN REPLY #15460 /* ~"No, you didn't. I had some questions..."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 22
  IF ~~ THEN REPLY #15461 /* ~"You were wrong. Farewell."~ */ DO ~SetGlobal("Adyzoel","AR0400",4)
~ GOTO 24
END

IF ~~ THEN BEGIN 32 // from:
  SAY #15328 /* ~The young man, taken aback, simply gapes at Morte for a moment. "And just who are *you?*"~ */
  IF ~~ THEN REPLY #15462 /* ~"Just ignore him; he's harmless."~ */ EXTERN ~DMORTE~ 174
  IF ~~ THEN REPLY #15463 /* ~Let Morte speak.~ */ EXTERN ~DMORTE~ 174
END

IF ~~ THEN BEGIN 33 // from:
  SAY #15329 /* ~All the man can manage is a half-formed growl, flecks of spittle flying from his lips: "Rargh!" His saber is out in a flash, his face livid with rage. "Enough! I *DEMAND* satisfaction!"~ */
  IF ~~ THEN REPLY #15464 /* ~"I can only ask that you forgive my companion."~ */ GOTO 36
  IF ~~ THEN REPLY #15465 /* ~"Well, Morte? Going to duel him?"~ */ EXTERN ~DMORTE~ 178
  IF ~~ THEN REPLY #15466 /* ~"Very well... but you'll have to fight us both."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 35.2
  SAY #15330 /* ~"Fine! Then you'll both die!" As he prepares to strike, you notice standing behind him a filthy, robed figure, watching you with greedy eyes...~ */
  IF ~~ THEN REPLY #15467 /* ~Meet his attack.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15468 /* ~Flee.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15331 /* ~"What?" The young man squints at Morte in disbelief. "That's an *odd* mimir, to say the least!"~ */
  IF ~~ THEN REPLY #15469 /* ~"Mimir?"~ */ EXTERN ~DMORTE~ 179
  IF ~~ THEN REPLY #15470 /* ~"Can you forgive his offenses?"~ */ GOTO 36
  IF ~~ THEN REPLY #15471 /* ~"We'll fight... but you'll have to face us both."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 33.0 35.1
  SAY #15332 /* ~"Silence, you blathering fool!" He calms himself, sheathing his saber. "Both of you: Fight or flee, I'll accept no less." Though he's reigned in his anger, the young man's eyes seem to shimmer with an icy hatred. ~ */
  IF ~~ THEN REPLY #15472 /* ~Attack him.~ */ DO ~SetGlobal("Adyzoel","AR0400",3)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #15473 /* ~Turn and leave.~ */ GOTO 7
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15333 /* ~"You there; leave that wretch be. Is he not miserable enough that you must harangue him?"~ */
  IF ~~ THEN REPLY #15474 /* ~"It's no concern of yours."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 38
  IF ~~ THEN REPLY #15475 /* ~"Mind your mouth, or you're next."~ */ DO ~SetGlobal("Adyzoel","AR0400",1)
~ GOTO 3
  IF ~~ THEN REPLY #15476 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15334 /* ~"It's whatever I make of it. Now leave that pitiable creature alone or you'll have me to pay."~ */
  IF ~~ THEN REPLY #15477 /* ~"First, tell me why it matters to you at all."~ */ GOTO 39
  IF ~~ THEN REPLY #15478 /* ~"You to pay? I dare you to try it."~ */ GOTO 19
  IF ~~ THEN REPLY #15479 /* ~"Fine. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #15335 /* ~"Because... because..." He stops, confused, and puts his hand to his temple. He appears dazed.~ */
  IF ~~ THEN REPLY #15480 /* ~"Are you all right?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Adyzoel_1","GLOBALGood",1)
~ GOTO 40
  IF ~~ THEN REPLY #15481 /* ~Wait.~ */ GOTO 40
  IF ~~ THEN REPLY #15482 /* ~Leave while he's distracted.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0 39.1
  SAY #15336 /* ~He shakes off the confusion. "It's no concern of yours. The ultimatum's been placed before you; fight me now, or walk away."~ */
  IF ~~ THEN REPLY #15483 /* ~"It's whatever I make of it. Now tell me."~ */ GOTO 13
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #15484 /* ~"We'll fight."~ */ GOTO 19
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #15485 /* ~"We'll fight."~ */ EXTERN ~DMORTE~ 169
END
