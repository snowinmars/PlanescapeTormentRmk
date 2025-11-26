// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~This skeleton is shaking its head and giggling to itself. It guffaws and snorts occasionally, biting down on its bony hand to stop itself. It is old enough so that no meat is left on its bones... only a few colored rags.~ */
  IF ~~ THEN REPLY #20356 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~Ignore it and pass by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~ "Greetings, yes!" It sniggers, puffs of dust flying forth with each breath.~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~"I understand you've got a difficult riddle."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~"I'd like the answer to one of your riddles."~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~"I'll take my leave, now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~"T'would do thee well to seek answers from another, for I've no interest in hearing thy questions." It covers its mouth, giggling and snorting. "I know, terribly rude, but thou shall have to forgive me this."~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~"I understand you've got a difficult riddle."~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~"I'd like the answer to one of your riddles."~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~"Very well, I'll find someone else. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~It titters mockingly. "Not likely!" Seeing your expression only causes it to laugh harder, chattering its teeth at you.~ */
  IF ~~ THEN REPLY #20365 /* ~"What is the riddle, then?"~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~Truth: "Tell me, or I'll break you into tiny, giggling bits."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~Bluff: "Tell me, or I'll break you into tiny, giggling bits."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~The laughter stops abruptly. "Hmph!" The skeleton turns its head away from you.~ */
  IF ~~ THEN REPLY #20370 /* ~Leave.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~It nods, giggling. "Dost thou want to hear it?"~ */
  IF ~~ THEN REPLY #20371 /* ~"Yes."~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~"Ahem! Now, think of words which end in '-GRY.' Angry and hungry are two of them. There are but three words in the Common Tongue... what is the third word? The word is something that one uses every day. If thou hast listened carefully, I have already told thee what it is."~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~"Of course you have. It's 'tongue.'"~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~"It's... uh... hmm."~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~"Gaaaah! How did thou know?!"~ */
  IF ~~ THEN REPLY #20376 /* ~"The first two sentences are unrelated, only there to trick you. There are three words in 'the - Common - Tongue.' The third word is 'tongue.'"~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~Walk away, laughing.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~"Aw, troll's leavings! Oh, well. Just don't tell anyone else the answer. Will thou promise me that, at least?"~ */
  IF ~~ THEN REPLY #20378 /* ~"Why shouldn't I?"~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~"Sure. I promise not to tell. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~"I won't promise anything. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~"Because I enjoy the idea of them standing about, trying to puzzle it out for all eternity." It giggles evilly, holding a skeletal hand over its mouth. "Well? Will thou promise?"~ */
  IF ~~ THEN REPLY #20381 /* ~"Sure. I promise not to tell. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~"I won't promise anything. Farewell."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~"Remember..." It pauses to snigger. "Don't tell anyone the answer!"~ */
  IF ~~ THEN REPLY #20383 /* ~"Right, right. Farewell."~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~"Villain! Ruining my fun, damn thee to Baator! I would spit at thee, had I any! Hmph!" The skeleton turns its head away from you.~ */
  IF ~~ THEN REPLY #20384 /* ~Leave.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~"Wait, wait! Don't tell anyone the answer. Will thou promise me that, at least?"~ */
  IF ~~ THEN REPLY #20385 /* ~"Why shouldn't I?"~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~"Sure. I promise not to tell. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~"I won't promise anything. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~The skeleton bursts into a fit of mocking, derisive laughter. It points at you with a skeletal finger, chortling and chattering as it clutches some imaginary gut.~ */
  IF ~~ THEN REPLY #20388 /* ~"All right, what's the answer?"~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~"Heh. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~"Not a chance! Not a *chance!*" Seeing your expression only causes it to laugh more, chattering its teeth at you.~ */
  IF ~~ THEN REPLY #20390 /* ~"What if I stump *you?* Will you tell me, then?"~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~Truth: "Tell me, or I'll break you into tiny, giggling bits."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~Bluff: "Tell me, or I'll break you into tiny, giggling bits."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~The laughter stops abruptly. "What's this?" It cups a bony hand to the side of its skull. "Do I hear... a challenge? Yes... yes... go ahead! But should thou lose, or leave half-way through, I shan't speak to thee again!"~ */
  IF ~~ THEN REPLY #20394 /* ~"Very well. Let's begin."~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~"Never mind this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~It nods eagerly.~ */
  IF ~~ THEN REPLY #20396 /* ~"Hmm. What is worth more? A pound of one-hundred-common, pure gold coins, or half a pound of two-hundred-common, pure gold coins?"~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~"Easy, too easy! One pound of gold is *always* worth more than one half pound! Foolish, foolish!" It giggles.~ */
  IF ~~ THEN REPLY #20398 /* ~"Very well. Your turn."~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~The skeleton crouches down and draws a simple face in the dust. Pointing to it, it speaks: "Uncles and brothers have I none, but that man's father is my father's son. Who is he, eh?"~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~"He is your son."~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~"I... don't know."~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~"Bah! Your turn."~ */
  IF ~~ THEN REPLY #20403 /* ~"The maker doesn't want it, the buyer does not use it, the user does not see it. What is it?"~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~The skeleton titters childishly. "Not true, not true! The answer is 'coffin,' and I certainly see mine!"~ */
  IF ~~ THEN REPLY #20405 /* ~"Very well. Your turn again."~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~"What five letter word does even the greatest of mortal sages pronounce wrong?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~"Hmm. 'Wrong.'"~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~"I... don't know."~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~It shakes its fist at you. "Oooo, curses! Go."~ */
  IF ~~ THEN REPLY #20410 /* ~"At night they come without being fetched, and by day they are lost without being stolen."~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~"Eh... hmm. Ah... stars! Stars, hee-hee!"~ */
  IF ~~ THEN REPLY #20412 /* ~"Yes, of course. Ask away."~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~The skeleton cracks its knuckles. "I never was, am always to be, no one ever saw me, nor will ever see. And yet I am the confidence of all, to live and breathe in this hallowed hall."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~"The answer is... is... ah! 'Tomorrow.'"~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~"I... don't know."~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~"Waaah! Yes, tomorrow, indeed. Go, then."~ */
  IF ~~ THEN REPLY #20417 /* ~"I shall. What is the beginning of eternity, the end of time and space, the beginning of every end, and the end of every place?"~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~"Never mind this. Farewell."~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~The skeleton begins to giggle derisively, but suddenly stops. "Ah... er. Oh, dear."~ */
  IF ~~ THEN REPLY #20419 /* ~"Well? Your answer... let's have it."~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~Give him some mocking laughter of your own.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~Wait patiently.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~The skeleton hangs its head. "I... don't know."~ */
  IF ~~ THEN REPLY #20422 /* ~"Give me your first riddle's answer, and I'll give you mine."~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~It nods. "It is 'tongue.' The first two sentences are unrelated, only there to trick thee. Remember: there are three words in 'the - Common - Tongue.' The third word is 'tongue.'" It sighs loudly. "Thy answer?"~ */
  IF ~~ THEN REPLY #20423 /* ~"The letter 'E.'"~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~"Not a chance, not a chance. Farewell."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~"Heh... amusing. So, what is the answer? Ah... wait! Where are thou going?"~ */
  IF ~~ THEN REPLY #20425 /* ~"Very well. The letter 'E.'"~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~Laugh and walk away.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~The skeleton convulses with loud laughter. Its cackling and hooting echo from the catacomb walls, and it spins its skull about gleefully, chattering its teeth at you all the while.~ */
  IF ~~ THEN REPLY #20428 /* ~Leave.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~The skeleton ignores any attempts to speak with it.~ */
  IF ~~ THEN REPLY #48940 /* ~Leave.~ */ EXIT
END
