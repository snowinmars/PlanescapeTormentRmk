// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORA~

IF ~  Global("Dolora","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #34365 /* ~This dark-haired, pale-skinned woman has a cultured, refined look about her. As she turns to you, you note that her eyes - which you had previously thought to be gray - are the color of brushed steel.~ */
  IF ~~ THEN REPLY #34366 /* ~"Greetings..."~ */ DO ~SetGlobal("Dolora","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41352 /* ~Leave her be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41282 /* ~The woman's voice is soft, calm, and without inflection - it has a certain 'far-away' quality, as if somehow not attached to her. "Greetings... I am called Dolora. May I serve you, somehow?"~ */
  IF ~~ THEN REPLY #41353 /* ~"In what ways can you serve me, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41354 /* ~"Not really, but I had some questions..."~ */ GOTO 32
  IF ~~ THEN REPLY #41355 /* ~"No, I just wished to meet you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 38.0 64.0
  SAY #41283 /* ~She blinks her eyes, then touches her hand to her heart, bowing her head slightly. "I am able to debate any scholarly or academic matter quite proficiently, if that is your wish. I am also well-versed in various games of strategy, should you wish to play something - though I have the materials for few such games, here."~ */
  IF ~~ THEN REPLY #41356 /* ~"I was hoping for something of a more 'physical' nature..."~ */ GOTO 3
  IF ~~ THEN REPLY #41357 /* ~"Debate, you say?"~ */ GOTO 7
  IF ~~ THEN REPLY #41358 /* ~"Could we play a game, then?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41359 /* ~"Actually, could I just ask you a few questions?"~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41360 /* ~"Actually, could I just ask you a few questions?"~ */ GOTO 44
  IF ~~ THEN REPLY #41361 /* ~"On second thought, I'll just take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #41284 /* ~Dolora seems neither intrigued nor repulsed, but answers in the same, flat tone: "Then you are mistaken as to the purpose of this establishment; the Brothel caters to lusts of the cerebral sort, and not those of the loins. In any case, I can assure you I would make a most unsatisfactory partner."~ */
  IF ~~ THEN REPLY #41362 /* ~"Oh? Why would you say that?"~ */ GOTO 4
  IF ~~ THEN REPLY #41363 /* ~"You had mentioned debating?"~ */ GOTO 7
  IF ~~ THEN REPLY #41364 /* ~"Could we play a game, then?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41365 /* ~"In that case, I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41366 /* ~"In that case, I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41367 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #41285 /* ~"That is simply my nature. Allow me to show you." She reaches out to touch your arm...~ */
  IF ~~ THEN REPLY #41368 /* ~Allow her to touch you.~ */ GOTO 5
  IF ~~ THEN REPLY #41369 /* ~Draw away from her.~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #41286 /* ~Dolora runs the back of her hand along your forearm; her skin is smooth and dry, but cold, like chilled iron. The touch sends a shiver down your spine and sets the hairs of your arm on end. "Do not trouble yourself to ask who or what I am, for I will only tell you that this is simply my nature."~ */
  IF ~~ THEN REPLY #41370 /* ~"Very well. You had mentioned debating?"~ */ GOTO 7
  IF ~~ THEN REPLY #41371 /* ~"All right. Could we play a game, then?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41372 /* ~"In that case, I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41373 /* ~"In that case, I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41374 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #41287 /* ~You pull your arm away before she can touch you. "So be it. I had merely intended to illustrate my statement; I would not have harmed you."~ */
  IF ~~ THEN REPLY #41375 /* ~"Very well... show me, then."~ */ GOTO 5
  IF ~~ THEN REPLY #41376 /* ~"Forget it. You had mentioned debating?"~ */ GOTO 7
  IF ~~ THEN REPLY #41377 /* ~"Could we play a game, then?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41378 /* ~"In that case, I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41379 /* ~"In that case, I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41380 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1 3.1 5.0 6.1 22.1 23.0 24.1 25.1 27.1 28.1 30.1 31.1
  SAY #41288 /* ~Dolora nods. "That is correct. I am neither a tome nor a tutor; I have no desire to educate my patrons. Should you have a matter to discuss, however... the fifteen factions and their effect on Sigilian politics, the most effective battle stratagems for warring in Acheron, the meaning of existence itself... I would be most pleased to choose a counter-point and engage you in debate."~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41381 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41382 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41383 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41384 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #41385 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 15
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",0)
~ THEN REPLY #41386 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Memory_Dolora_1","AR0605",1)
~ GOTO 16
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_1","AR0605",1)
~ THEN REPLY #57371 /* ~Choose a topic, see if you can 'best' her.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41387 /* ~"Hmm. Could we play a game, then?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41388 /* ~"Actually, let me just ask you some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41389 /* ~"Actually, let me just ask you some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41390 /* ~"No, not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #41289 /* ~After only a few minutes of talking, Dolora crushes each of your arguments with casual ease; her counter-points to your feeble attempts at debate make your position seem pathetic and childish. She seems to take no joy in her victory, however, and merely offers: "If you would like, we can debate once more upon the same topic... I could argue your position this time, should you desire it."~ */
  IF ~~ THEN REPLY #41391 /* ~"Wait... are you always so ruthless in a debate?"~ */ GOTO 9
  IF ~~ THEN REPLY #41392 /* ~"No thanks. Could we play a game?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41393 /* ~"That's all right. I had some questions, though..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41394 /* ~"That's all right. I had some questions, though..."~ */ GOTO 44
  IF ~~ THEN REPLY #41395 /* ~"That's enough, for now. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0 11.0 14.0
  SAY #41290 /* ~Dolora nods. "Mistress Grace instructed me to show no mercy, for another of her students always allows a patron to win after a lengthy debate. It was Mistress Grace's desire that I provide a different sort of experience for the clientele."~ */
  IF ~~ THEN REPLY #41396 /* ~"I see. Could we play a game, now?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41397 /* ~"I understand. I had some questions for you..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41398 /* ~"I understand. I had some questions for you..."~ */ GOTO 44
  IF ~~ THEN REPLY #41399 /* ~"That makes sense. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1
  SAY #41291 /* ~You make a serious effort, but it's to no avail; Dolora easily and unhesitatingly crushes each of your arguments with her infallible sense of logic. She seems to take no joy in her victory, however, and merely offers: "If you would like, we can debate once more upon the same topic... I could argue your position this time, should you desire it."~ */
  IF ~~ THEN REPLY #41400 /* ~"Wait... are you always so ruthless in a debate?"~ */ GOTO 9
  IF ~~ THEN REPLY #41401 /* ~"No thanks. Could we play a game?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41402 /* ~"That's all right. I had some questions, though..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41403 /* ~"That's all right. I had some questions, though..."~ */ GOTO 44
  IF ~~ THEN REPLY #41404 /* ~"That's enough, for now. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.2
  SAY #41292 /* ~You choose a topic and begin. At first, you seem to be holding up fine... but in time, your position crumbles as Dolora crushes one of your arguments after another with her infallible sense of logic. She seems to take no joy in her victory, however, and merely offers: "If you would like, we can debate once more upon the same topic... I could argue your position this time, should you desire it."~ */
  IF ~~ THEN REPLY #41405 /* ~"Wait... are you always so ruthless in a debate?"~ */ GOTO 9
  IF ~~ THEN REPLY #41406 /* ~"No thanks. Could we play a game?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41407 /* ~"That's all right. I had some questions, though..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41408 /* ~"That's all right. I had some questions, though..."~ */ GOTO 44
  IF ~~ THEN REPLY #41409 /* ~"That's enough, for now. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.3
  SAY #41293 /* ~You choose a topic and begin... the debate lasts a long time as the two of you exchange points and counter-points, each attempting to methodically undermine the other's position. As you speak, a strange feeling begins to come over you... a memory, trying to surface...~ */
  IF ~~ THEN REPLY #41410 /* ~Allow the memory to surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 56
  IF ~~ THEN REPLY #41411 /* ~Repress the memory.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 59.0
  SAY #41294 /* ~Though Dolora is extremely hard-pressed to beat you, she eventually prevails... her infallible sense of logic at last wins out over even your most brilliant arguments. She seems to take no joy in her victory, however, merely nodding in approval. "You are a most skilled debater; this there is no denying. I feel that, had you time to perform some research, I might not have bested you."~ */
  IF ~~ THEN REPLY #41412 /* ~"Thanks..."~ */ GOTO 14
  IF ~~ THEN REPLY #41413 /* ~"I don't know... you're quite an opponent."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 15.0 15.1 17.0 17.1 18.0 18.1
  SAY #41295 /* ~Dolora nods. "If you would like, we can debate once more upon the same topic... I could argue your position this time, should you desire it."~ */
  IF ~~ THEN REPLY #41414 /* ~"Wait... are you always so ruthless in a debate?"~ */ GOTO 9
  IF ~~ THEN REPLY #41415 /* ~"Not right now, thanks. Could we play a game, though?"~ */ GOTO 19
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41416 /* ~"That's all right. I had some questions, though..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41417 /* ~"That's all right. I had some questions, though..."~ */ GOTO 44
  IF ~~ THEN REPLY #41418 /* ~"That's enough, for now. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.4
  SAY #41296 /* ~You choose a topic and begin... the debate lasts a long time as the two of you exchange points and counter-points, each attempting to methodically undermine the other's position. Though Dolora is extremely hard-pressed to beat you, she eventually prevails... her infallible sense of logic at last wins out over even your most brilliant arguments. She seems to take no joy in her victory, however, merely nodding in approval. "You are a most skilled debater; this there is no denying. I feel that, had you time to perform some research, I might not have bested you."~ */
  IF ~~ THEN REPLY #41419 /* ~"Thanks..."~ */ GOTO 14
  IF ~~ THEN REPLY #41420 /* ~"I don't know... you're quite an opponent."~ */ GOTO 14
END

IF ~~ THEN BEGIN 16 // from: 7.5
  SAY #41297 /* ~You choose a topic and begin... the debate lasts a long time as the two of you exchange points and counter-points, each attempting to methodically undermine the other's position. As you speak, a strange feeling begins to come over you... a memory, trying to surface...~ */
  IF ~~ THEN REPLY #41421 /* ~Allow the memory to surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 56
  IF ~~ THEN REPLY #41422 /* ~Repress the memory.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.1 59.1
  SAY #41298 /* ~As hard-pressed as you are to beat Dolora's infallible sense of logic, you eventually win out. She merely nods in approval. "You are a most skilled debater; this there is no denying. I do feel, though, that had I time to perform some research, you might not have bested me."~ */
  IF ~~ THEN REPLY #41423 /* ~"Thanks..."~ */ GOTO 14
  IF ~~ THEN REPLY #41424 /* ~"Perhaps, perhaps not. I'd consider that an unfair advantage, though."~ */ GOTO 14
END

IF ~~ THEN BEGIN 18 // from: 7.6
  SAY #41299 /* ~You choose a topic and begin... the debate lasts a long time as the two of you exchange points and counter-points, each attempting to methodically undermine the other's position. As hard-pressed as you are to beat her infallible sense of logic, however, you eventually win out. Dolora merely nods in approval. "You are a most skilled debater; this there is no denying. I do feel, though, that had I time to perform some research, you might not have bested me."~ */
  IF ~~ THEN REPLY #41425 /* ~"Thanks..."~ */ GOTO 14
  IF ~~ THEN REPLY #41426 /* ~"Perhaps, perhaps not. I'd consider that an unfair advantage, though."~ */ GOTO 14
END

IF ~~ THEN BEGIN 19 // from: 2.2 3.2 5.1 6.2 7.7 8.1 9.0 10.1 11.1 14.1
  SAY #41300 /* ~"Of course. Is there anything in particular you wish to play?"~ */
  IF ~  Global("Dolora_Go","AR0605",1)
~ THEN REPLY #41427 /* ~"The one we played before would be fine."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 67
  IF ~  Global("Dolora_Go","AR0605",0)
~ THEN REPLY #41428 /* ~"No... I don't really remember any games..."~ */ GOTO 20
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41429 /* ~"Actually, let me ask you some questions, instead..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41430 /* ~"Actually, let me ask you some questions, instead..."~ */ GOTO 44
  IF ~~ THEN REPLY #41431 /* ~"No, not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #41301 /* ~"Here, then - allow me to show you one." Dolora brings out a thin, lacquered box, which unfolds into a small board marked with a grid. The contents of the box prove to be a number of polished stone chips... half of them black, half of them white. "This game goes by many names. Shall I explain the rules to you?"~ */
  IF ~~ THEN REPLY #41432 /* ~"Yes, please."~ */ DO ~SetGlobal("Dolora_Go","AR0605",1)
~ GOTO 21
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41433 /* ~"Actually, let me ask you some questions, instead..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41434 /* ~"Actually, let me ask you some questions, instead..."~ */ GOTO 44
  IF ~~ THEN REPLY #41435 /* ~"No, not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #41302 /* ~Dolora explains to you the rules of the game - how the chips are moved, how one bests one's opponent. It seems, somehow, faintly familiar to you. "The rules are simple, yes? But a great deal of complexity lies within the game, itself. It takes a great deal of time to master. Shall we play?"~ */
  IF ~  CheckStatLT(Protagonist,9,INT)
~ THEN REPLY #41436 /* ~"Yes, let's."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 22
  IF ~  CheckStatGT(Protagonist,8,INT)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #41437 /* ~"Yes, let's."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #41438 /* ~"Yes, let's."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41439 /* ~"Yes, let's."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41440 /* ~"Yes, let's."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",0)
~ THEN REPLY #41441 /* ~"Yes, let's."~ */ DO ~SetGlobal("Memory_Dolora_2","AR0605",1)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Memory_Dolora_2","AR0605",1)
~ THEN REPLY #41442 /* ~"Yes, let's."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 31
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41443 /* ~"Actually, let me ask you some questions, instead..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41444 /* ~"Actually, let me ask you some questions, instead..."~ */ GOTO 44
  IF ~~ THEN REPLY #41445 /* ~"No, not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #41303 /* ~Despite your being certain you've played before, you perform miserably... Dolora defeats you rapidly and with such ease that it's almost laughable. She does not smile or gloat, however, but quietly begins to put the game away. "I fear that time and practice would do you little good - it seems you simply cannot grasp such games."~ */
  IF ~~ THEN REPLY #41446 /* ~"Do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41447 /* ~"Maybe not. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41448 /* ~"Hmm. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41449 /* ~"Hmm. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41450 /* ~"I didn't find it very entertaining, anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 24.0 25.0 27.0 28.0 30.0 31.0
  SAY #41304 /* ~Dolora nods. "Mistress Grace instructed me to hold nothing back, for another of her students plays so that her opponent will always just manage a win. It was Mistress Grace's desire that I provide a different sort of experience - a true challenge, rather than something that might be more pleasing to one's ego."~ */
  IF ~~ THEN REPLY #41451 /* ~"I see. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41452 /* ~"I understand. I had some questions for you..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41453 /* ~"I understand. I had some questions for you..."~ */ GOTO 44
  IF ~~ THEN REPLY #41454 /* ~"That makes sense. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 21.1
  SAY #41305 /* ~Despite your being certain you've played before, Dolora defeats you easily. She does not smile or gloat, however, but quietly begins to put the game away. "You seem to possess a decent understanding of the game. In time, you could become quite proficient."~ */
  IF ~~ THEN REPLY #41455 /* ~"Do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41456 /* ~"Perhaps. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41457 /* ~"Thanks. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41458 /* ~"Thanks. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41459 /* ~"Maybe if I had more time, I'd practice. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 21.2
  SAY #41306 /* ~As you play, you come to realize that you've done so before. Even your best tricks, though, are nothing to Dolora's well-calculating strategies... the game runs steadily downhill for you until you are, at last, beaten entirely. She does not smile or gloat, however, but quietly begins to put the game away. "You seem to possess a good understanding of the game. In time, you could become quite good."~ */
  IF ~~ THEN REPLY #41460 /* ~"Do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41461 /* ~"Perhaps. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41462 /* ~"Thanks. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41463 /* ~"Thanks. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41464 /* ~"Maybe if I had more time, I'd practice. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.3
  SAY #41310 /* ~As you play, you come to realize that you've done so before. You recall various ploys and strategies that have won you previous games, trying every trick you know to beat her. Suddenly, a strange feeling comes over you... a memory, trying to surface...~ */
  IF ~~ THEN REPLY #41465 /* ~Allow the memory to surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,3000)
~ GOTO 60
  IF ~~ THEN REPLY #41466 /* ~Repress the memory.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1 62.0
  SAY #41311 /* ~Throughout the game, Dolora seems to counter-act all but your most crafty moves one after another. Despite your best efforts, you at last fall beneath her well-calculated strategies. She does not smile or gloat, however, but quietly begins to put the game away. "You are a fine player. In time, I am certain you could become a master of the game."~ */
  IF ~~ THEN REPLY #41467 /* ~"Thanks... but do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41468 /* ~"Perhaps. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41469 /* ~"My thanks. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41470 /* ~"My thanks. I had some questions..."~ */ GOTO 44
END

IF ~~ THEN BEGIN 28 // from: 21.4
  SAY #41312 /* ~As you play, you come to realize that you've done so before. You recall various ploys and strategies that have won you previous games, trying every trick you know to beat her. Still, Dolora seems to counter-act all but your most crafty moves one after another. Despite your best efforts, you at last fall beneath her well-calculated strategies. She does not smile or gloat, however, but quietly begins to put the game away. "You are a fine player. In time, I am certain you could become a master of the game."~ */
  IF ~~ THEN REPLY #41471 /* ~"Thanks... but do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41472 /* ~"Perhaps. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41473 /* ~"My thanks. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41474 /* ~"My thanks. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41475 /* ~"Maybe if I had more time, I'd practice. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.5
  SAY #41313 /* ~As you play, you come to realize that you've done so before. You recall various ploys and strategies that have won you previous games, and employ every trick you know to beat her. Suddenly, a strange feeling comes over you... a memory, trying to surface...~ */
  IF ~~ THEN REPLY #41476 /* ~Allow the memory to surface.~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,5000)
~ GOTO 60
  IF ~~ THEN REPLY #41477 /* ~Repress the memory.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 62.1
  SAY #41314 /* ~Dolora plays excellently, counter-acting all but your most crafty moves, but eventually your feints and calculating maneuvers win over her well-crafted strategies. She nods approvingly as she begins to put the game away. "You are a fine player, perhaps a master. I commend you for your skill."~ */
  IF ~~ THEN REPLY #41478 /* ~"Thanks... but do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41479 /* ~"Thanks. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41480 /* ~"My thanks. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41481 /* ~"My thanks. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41482 /* ~"Yes, it seems I've played before after all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.6
  SAY #41315 /* ~As you play, you come to realize that you've done so before. You recall various ploys and strategies that have won you previous games, and employ every trick you know to beat her. Dolora plays excellently, counter-acting all but your most crafty moves, but eventually your feints and calculating maneuvers win over her well-crafted strategies. She nods approvingly as she begins to put the game away. "You are a fine player, perhaps a master. I commend you for your skill."~ */
  IF ~~ THEN REPLY #41483 /* ~"Thanks... but do you always play so mercilessly?"~ */ GOTO 23
  IF ~~ THEN REPLY #41484 /* ~"Thanks. You mentioned debating, before?"~ */ GOTO 7
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41485 /* ~"My thanks. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41486 /* ~"My thanks. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41487 /* ~"Yes, it seems I've played before after all. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 1.1 2.3 3.3 5.2 6.3 7.8 8.2 9.1 10.2 11.2 14.2 19.2 20.1 21.7 22.2 23.1 24.2 25.2 27.2 28.2 30.2 31.2 38.1 67.0
  SAY #41316 /* ~Dolora casts her eyes to the floor with a sound that might be a sad sigh. "I am willing to serve you as a patron, but have no wish to answer other questions at this time... my apologies, but I fear you shall simply have to bear with that for the time being."~ */
  IF ~~ THEN REPLY #41488 /* ~"What's wrong? Anything I can help you with?"~ */ JOURNAL #66740 /* ~Dolora, one of the women in the Brothel of Slating Intellectual Lusts, refuses to answer any of my questions that don't relate to her tasks as a 'prostitute'... I fear, though, that she might hold information dear to my quest.~ */ GOTO 33
  IF ~~ THEN REPLY #41489 /* ~"I'll speak with you another time, then. Farewell."~ */ JOURNAL #66740 /* ~Dolora, one of the women in the Brothel of Slating Intellectual Lusts, refuses to answer any of my questions that don't relate to her tasks as a 'prostitute'... I fear, though, that she might hold information dear to my quest.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #41317 /* ~She looks up from the floor and into your eyes. Once more you're struck by the pale smoothness of skin, the cold depths of her silvery eyes. "No... no, I fear not. My troubles are a matter of the heart. In time, I think, all things shall be resolved."~ */
  IF ~~ THEN REPLY #41490 /* ~"Are you certain there's nothing I could do?"~ */ GOTO 34
  IF ~~ THEN REPLY #41491 /* ~"I'll speak with you another time, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #41318 /* ~"Certain?" Dolora pauses, as if thinking. "No, I am not. My first love, Merriman, possesses still the keys to my heart. So long as he has them, I shan't be free to love another. This is the cause of my melancholy."~ */
  IF ~~ THEN REPLY #41492 /* ~"Why don't you seek him out, speak with him?"~ */ GOTO 35
  IF ~~ THEN REPLY #41493 /* ~"Then I'll find this Merriman, and speak to him on your behalf."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~I agreed to seek out a man named Merriman, Dolora's first love, and speak to him on her behalf. She told me he was a member of the Society of Sensation, and so should ask for him at the Civic Festhall.~ */ GOTO 36
  IF ~~ THEN REPLY #41494 /* ~"You're in luck. I can find Merriman... for a price."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~In return for a reward, I agreed to seek out a man named Merriman, Dolora's first love, and speak to him on her behalf. She told me he was a member of the Society of Sensation, and so should ask for him at the Civic Festhall.~ */ GOTO 37
  IF ~~ THEN REPLY #41495 /* ~"I see. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #41319 /* ~Dolora shakes her head. "I may not leave this place. The reasons why are deeply personal, and not to be shared with strangers - even ones who might bestow a kindness upon me - but suffice to say that I cannot seek out Merriman myself."~ */
  IF ~~ THEN REPLY #41496 /* ~"Then I'll find this Merriman, and speak to him on your behalf."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Dolora_1","GLOBALGood",1)
~ JOURNAL #39465 /* ~I agreed to seek out a man named Merriman, Dolora's first love, and speak to him on her behalf. She told me he was a member of the Society of Sensation, and so should ask for him at the Civic Festhall.~ */ GOTO 36
  IF ~~ THEN REPLY #41497 /* ~"You're in luck. I can find Merriman... for a price."~ */ DO ~SetGlobal("Dolora","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Dolora_1","GLOBALGood",-1)
~ JOURNAL #39466 /* ~In return for a reward, I agreed to seek out a man named Merriman, Dolora's first love, and speak to him on her behalf. She told me he was a member of the Society of Sensation, and so should ask for him at the Civic Festhall.~ */ GOTO 37
  IF ~~ THEN REPLY #41498 /* ~"I see. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1 35.0
  SAY #41320 /* ~Dolora nods, the slightest hint of a smile appearing on her lips. She bows her head. "Were you to find and speak with Merriman, I would be most grateful. He is a member of the Society of Sensation, so you may wish to ask for him at the Civic Festhall."~ */
  IF ~~ THEN REPLY #41499 /* ~"I'll return when I find him. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 34.2 35.1
  SAY #41321 /* ~"I possess little save for a few pieces of jewelry I once received as gifts. Should those suffice, I would be willing to reward you with them. Merriman is a member of the Society of Sensation, so you may wish to ask for him at the Civic Festhall."~ */
  IF ~~ THEN REPLY #41500 /* ~"It'll have to do. I'll be back if I find him. Farewell."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",1)
~ THEN BEGIN 38 // from:
  SAY #41322 /* ~Dolora's cold, steely eyes flicker over you briefly as you approach her. "Greetings. In what manner may I serve you?"~ */
  IF ~~ THEN REPLY #41501 /* ~"Just how might serve me, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41502 /* ~"Actually, I just had some questions..."~ */ GOTO 32
  IF ~~ THEN REPLY #41503 /* ~"None; I was just passing by. Farewell."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",2)
~ THEN BEGIN 39 // from:
  SAY #41323 /* ~Dolora's eyes flash as she sees you. "Did you find him? Has he agreed to return the keys to my heart?"~ */
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41504 /* ~"No, not yet. Farewell."~ */ EXIT
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41506 /* ~"Yes... I have the keys to your heart. Here they are."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",4)
AddexperienceParty(30000)
~ JOURNAL #39471 /* ~I returned to Dolora after finding Merriman, and returned to her the keys to her heart.~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from:
  SAY #41324 /* ~Dolora stares at you silently for a moment. "Where are they?"~ */
  IF ~~ THEN REPLY #41507 /* ~"Eh... I'll return when I have them."~ */ DO ~SetGlobal("Dolora","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1 43.0
  SAY #41325 /* ~"At last..." As she takes the keys from your grasp, her hand brushes against yours - her skin is dry, but icy to the touch, like cold metal. "These will be of great use to me. I thank you."~ */
  IF ~  Global("Good_Dolora_1","GLOBAL",1)
~ THEN REPLY #41508 /* ~"Of course, Dolora. I had some questions..."~ */ GOTO 44
  IF ~  Global("Evil_Dolora_1","GLOBAL",1)
~ THEN REPLY #41510 /* ~"Of course. And my reward...?"~ */ DO ~GiveItemCreate("Silbra",Protagonist,1,0,0)
GiveItemCreate("Silbra",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #41509 /* ~"Glad to help. Farewell, Dolora."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1
  SAY #41326 /* ~Dolora nods and removes a pair of bracelets from a pouch at her side. "These are yours, now; you have earned them."~ */
  IF ~~ THEN REPLY #41511 /* ~"I had some questions, now..."~ */ GOTO 44
  IF ~~ THEN REPLY #41512 /* ~"Right. Farewell, Dolora."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",3)
~ THEN BEGIN 43 // from:
  SAY #41327 /* ~Dolora's eyes flash as she sees you. "The keys to my heart... have you found what you have lost?"~ */
  IF ~  PartyHasItem("DlraKey")
~ THEN REPLY #41513 /* ~"Yes... here they are."~ */ DO ~DestroyPartyItem("DlraKey",FALSE)
SetGlobal("Dolora","GLOBAL",3)
AddexperienceParty(30000)
~ GOTO 41
  IF ~  !PartyHasItem("DlraKey")
~ THEN REPLY #41514 /* ~"No... I'll return when I do, though."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 2.4 3.4 5.3 6.4 7.9 8.3 9.2 10.3 11.3 14.3 19.3 20.2 21.8 22.3 23.2 24.3 25.3 27.3 28.3 30.3 31.3 41.0 42.0 45.2 46.1 47.1 48.3 49.2 50.0 51.0 52.1 53.0 54.0 55.0 63.0 64.1 65.0 66.0 67.1
  SAY #41328 /* ~"Of course. I will answer what I can."~ */
  IF ~~ THEN REPLY #41515 /* ~"I was hoping to learn more about your nature."~ */ GOTO 45
  IF ~~ THEN REPLY #41516 /* ~"What are you doing here?"~ */ GOTO 48
  IF ~~ THEN REPLY #41517 /* ~"Can you tell me about this place?"~ */ GOTO 51
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #41518 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora told me that Ecco - the silent prostitute - could not speak because her voice had been stolen and destroyed. She said that Ecco's words once wooed away the paramour of the godling Paramisha. Paramisha, in a jealous rage, tore away Ecco's voice, sealed it within a crystal vial, and hurled it into a megogalamdraga's maw. Dolora told me that Ecco's voice is forever lost to her, and that only another, new voice could return to Ecco the ability to communicate once more. It's some tale, but Dolora says she got it from that Paramisha's paramour himself...~ */ GOTO 66
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #67843 /* ~"What can you tell me about the silent prostitute?"~ */ DO ~SetGlobal("Ecco_Rumor_6","AR0605",1)
~ JOURNAL #66741 /* ~Dolora told me that Ecco - the silent prostitute - could not speak because her voice had been stolen and destroyed. She said that Ecco's words once wooed away the paramour of the godling Paramisha. Paramisha, in a jealous rage, tore away Ecco's voice, sealed it within a crystal vial, and hurled it into a megogalamdraga's maw. Dolora told me that Ecco's voice is forever lost to her, and that only another, new voice could return to Ecco the ability to communicate once more. It's some tale, but Dolora says she got it from that Paramisha's paramour himself...~ */ GOTO 66
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #41519 /* ~"I heard that Kesai-Serris is Ravel's daughter. Is that true?"~ */ JOURNAL #66743 /* ~I asked one of the prostitutes if she knew whether or not Kesai-Serris was truly Ravel's daughter, and she suggested I ask Juliette about it. Apparently, they were good friends before Juliette met Montague.~ */ GOTO 65
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #41520 /* ~"I'm trying to find Vivian's scent... do you know where it might be?"~ */ JOURNAL #66727 /* ~One of the prostitutes suggested that I ask Nenny if she knows anything about who took Vivian's personal scent. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 52
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #41521 /* ~"I'm trying to find Marissa's Crimson Veil... do you know where it might be?"~ */ JOURNAL #66728 /* ~One of the prostitutes suggested that I ask Nenny if she's seen Marissa's Crimson Veil anywhere. Apparently, Nenny's got a reputation for always wandering around and watching what other people are doing.~ */ GOTO 54
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #41522 /* ~"Do you know anything about Ravel Puzzlewell?"~ */ JOURNAL #66742 /* ~I asked one of the Brothel's prostitutes about Ravel, and she suggested I speak to Yves about it. I'm told that Yves collects all sorts of tales, and will likely have one about Ravel in her repertoire.~ */ GOTO 55
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #41523 /* ~"I've spoken to nine prostitutes altogether... do you know who or where the tenth student is?"~ */ GOTO 63
  IF ~~ THEN REPLY #41524 /* ~"Never mind, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #41329 /* ~Dolora blinks. "Merriman never told me much regarding my construction. I know little of the inner workings of my body, much as you likely know little of yours. Outwardly, though, I am a human woman in all respects... save for the texture and temperature of my flesh. Does that satisfy your curiosity?"~ */
  IF ~~ THEN REPLY #41525 /* ~"What about your mind, your emotions?"~ */ GOTO 46
  IF ~~ THEN REPLY #41526 /* ~"What do the keys do, exactly?"~ */ GOTO 47
  IF ~~ THEN REPLY #41527 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41528 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #41330 /* ~"Its functions are as much a mystery to me as any human's. When I first came to this place, I did not understand emotions, nor have any of my own. I have... feelings... now, though I am only beginning to understand them."~ */
  IF ~~ THEN REPLY #41529 /* ~"What do the keys do, exactly?"~ */ GOTO 47
  IF ~~ THEN REPLY #41530 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41531 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1 46.0
  SAY #41331 /* ~"I can only assume that Merriman made the keys so that there would be no risk of me drawing away from him before he had tired of his experiment. Now that they are in my possession, I am free to develop and possess my own emotions."~ */
  IF ~~ THEN REPLY #41532 /* ~"How does your mind work? You do have emotions, then?"~ */ GOTO 46
  IF ~~ THEN REPLY #41533 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41534 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1
  SAY #41332 /* ~"I, like the other women here, am a student of Mistress Grace. She tutors us in the ways of dialogue and verbal intercourse. Most of the students will go on to become members of the Society of Sensation, having come to study beneath the mistress in preparation for the faction's initiation rites."~ */
  IF ~~ THEN REPLY #41535 /* ~"Do you enjoy it here?"~ */ GOTO 49
  IF ~~ THEN REPLY #41536 /* ~"Tell me about this Society of Sensation."~ */ GOTO 50
  IF ~~ THEN REPLY #41537 /* ~"Initiation rites?"~ */ GOTO 50
  IF ~~ THEN REPLY #41538 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41539 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #41333 /* ~"I am learning much. This pleases me, yes." She smiles for a moment; the expression seems awkward on her pale face, as if it was somehow foreign to her.~ */
  IF ~~ THEN REPLY #41540 /* ~"You mentioned the Society of Sensation...?"~ */ GOTO 50
  IF ~~ THEN REPLY #41541 /* ~"You had said something about initiation rites?"~ */ GOTO 50
  IF ~~ THEN REPLY #41542 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41543 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1 48.2 49.0 49.1
  SAY #41334 /* ~"You would do well to seek the answers to such questions from Mistress Grace. She would explain them better than I might."~ */
  IF ~~ THEN REPLY #41544 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41545 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 44.2
  SAY #41335 /* ~"Yes, I can. The Brothel of Slating Intellectual Lusts is a school; its prostitutes are tutored in the ways of dialogue and verbal intercourse. I would recommend you speak to the establishment's proprietor, Mistress Grace, should you require a more enumerated explanation."~ */
  IF ~~ THEN REPLY #41546 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41547 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 44.6
  SAY #41336 /* ~"I will assume you mean her personal scent, which she alleges has been stolen from her by one of the prostitutes, here. I do not know with whom it now rests. You may wish to ask Nenny, however, as she sees much of what occurs here."~ */
  IF ~~ THEN REPLY #41548 /* ~"How could someone's scent be *stolen?*"~ */ GOTO 53
  IF ~~ THEN REPLY #41549 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41550 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #41337 /* ~"Vivian utilizes an aspect of the Art to create, change and enhance the olfactory aspects of an object, living or dead. Perhaps the thief knows some of these skills, as well. Her scent would have to rest in an object, however, and not on the thief, were that the case - else Vivian would know them by their smell."~ */
  IF ~~ THEN REPLY #41551 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41552 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 44.7
  SAY #41338 /* ~Dolora shakes her head. "I have not seen Marissa's veil since she last wore it outside her chambers. That was some time ago." She shuts her eyes for a moment, then speaks again: "Nenny sees much of what goes on, here. You might do well to ask her if she has seen anything that might help you."~ */
  IF ~~ THEN REPLY #41553 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41554 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 44.8
  SAY #41339 /* ~"I know that she was - or is, should she still be numbered among the living - a night hag of great power and inestimable evil. The Lady of Pain banished her to an extra-dimensional prison for crimes against the city of Sigil. You would do well to speak to Yves of her; she knows a great many tales, and can likely tell you Ravel's."~ */
  IF ~~ THEN REPLY #41555 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41556 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.0 16.0
  SAY #41340 /* ~Memories of a great hall begin to form in your mind... a vast place, full of well-dressed elites... a formal ball was taking place. Before you was a small, impeccably dressed fellow who wore a golden medallion; it was emblazoned with a symbol you dimly recall as the "Sign of One." The two of you stood in a circle of onlookers who've gathered to listen to your debate.~ */
  IF ~~ THEN REPLY #41557 /* ~Continue the memory.~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #41341 /* ~"But... but that's impossible!" the man was saying, looking perplexed.

"Oh, but it is." You recall yourself replying. "I've made several inarguable points and given you a number of examples. You simply don't exist."

"But... you can't! Were I to accept that, I'd... I'd..."~ */
  IF ~~ THEN REPLY #41558 /* ~Continue the memory.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #41342 /* ~"Yes. You'd cease to exist."

And without a flash of light or puff of smoke - with no fanfare of any sort - the man was simply gone. ~ */
  IF ~~ THEN REPLY #41559 /* ~Continue the memory.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #41343 /* ~The onlookers *oohed* and *aahed,* some clapped... you remember giving a flourishing bow and walking away, a small, satisfied smile upon your lips.

You suddenly realize Dolora is watching you closely. "Are you feeling well? We might finish our discussion at another time, should you like..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41560 /* ~"No... let's continue the debate..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41561 /* ~"No... let's continue the debate..."~ */ GOTO 17
END

IF ~~ THEN BEGIN 60 // from: 26.0 29.0
  SAY #41344 /* ~Memories of a smoke-filled field of battle begin to fill your mind... atop a great hill overlooking the fighting you sat, mounted upon a massive, four-legged beast. The braying of horns carried your orders to the troops below.~ */
  IF ~~ THEN REPLY #41562 /* ~Continue the memory.~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #41345 /* ~Even as you watched, your forces divided, fleeing left and right as the foreign army fought its way up the hill to slay the enemy lord - you.~ */
  IF ~~ THEN REPLY #41563 /* ~Continue the memory.~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #41346 /* ~"The fools," you had thought, lips curling into a wicked smile. "My knights shall charge down the hillside and stop their advance in an instant... and at that very moment my 'retreating' footmen will fall in to crush their flanks! Ah, yet another victory soon to be mine..."

You suddenly realize Dolora is watching you intently. "Are you feeling well? We might take up the game another day, if you so wish..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #41565 /* ~"No... let's continue the game..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #41566 /* ~"No... let's continue the game..."~ */ GOTO 30
END

IF ~~ THEN BEGIN 63 // from: 44.9
  SAY #41347 /* ~She shakes her head. "I fear you are mistaken. Unless this is a most recent development, there is no tenth student."~ */
  IF ~~ THEN REPLY #41567 /* ~"I had another question, then..."~ */ GOTO 44
  IF ~~ THEN REPLY #41568 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~  Global("Dolora","GLOBAL",4)
~ THEN BEGIN 64 // from:
  SAY #41348 /* ~Dolora's face seems to brighten when she sees you. "Greetings, again. How may I serve you?"~ */
  IF ~~ THEN REPLY #41569 /* ~"And just how might you serve me, Dolora?"~ */ GOTO 2
  IF ~~ THEN REPLY #41570 /* ~"Actually, I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41571 /* ~"I was just passing by, Dolora. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 44.5
  SAY #41349 /* ~"I, too, have heard such a rumor, but I do not know. Perhaps another of the women here can give you the answer, if not Kesai herself. Ask Juliette... she and Kesai were once goods friends, before Juliette met Montague."~ */
  IF ~~ THEN REPLY #41572 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41573 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 44.3 44.4
  SAY #41350 /* ~"Yes. Her name is Ecco. Her voice - and in fact her every means of communication - was stolen and destroyed. Ecco's words once wooed away the paramour of the godling Paramisha. Paramisha, in a jealous rage, tore away Ecco's voice, sealed it within a crystal vial, and hurled it into a megogalamdraga's maw. Ecco's voice is forever lost to her; only another, new voice could return to her the ability to communicate once more. I know this because I spoke to Paramisha's paramour myself, once."~ */
  IF ~~ THEN REPLY #41574 /* ~"I had another question..."~ */ GOTO 44
  IF ~~ THEN REPLY #41575 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 19.0
  SAY #41351 /* ~You finish the game with much the same result as before.

"A most enjoyable game. Again?"~ */
  IF ~  GlobalLT("Dolora","GLOBAL",4)
~ THEN REPLY #41576 /* ~"Not just now. I had some questions..."~ */ GOTO 32
  IF ~  Global("Dolora","GLOBAL",4)
~ THEN REPLY #41577 /* ~"Not just now. I had some questions..."~ */ GOTO 44
  IF ~~ THEN REPLY #41578 /* ~"Perhaps another time, Dolora. Farewell."~ */ EXIT
END
