// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSAROSSA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSAROSSA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from: 1.1 2.0 3.0 7.0 11.0 12.0 16.0
  SAY #8415 /* ~"You think to threaten me without cost to yourself? Fool!" She speaks three arcane syllables, and you feel as if a piece of your heart has been torn from you. Then she calls out. "Guards! GUARDS!"~ */
  IF ~~ THEN REPLY #8416 /* ~Attack her.~ */ DO ~Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("Alarm2","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8417 /* ~Leave.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
Enemy()
PermanentStatChange(Protagonist,STR,LOWER,1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
PermanentStatChange(Protagonist,CON,LOWER,1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #8418 /* ~"I advise you to leave. You can find no tests worthwhile in fighting our guards. Get thee gone."~ */
  IF ~~ THEN REPLY #8419 /* ~"I'd like you to answer some questions for me."~ */ GOTO 2
  IF ~~ THEN REPLY #8420 /* ~"You will answer my questions or suffer the penalty."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8421 /* ~"Very well. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #8422 /* ~"I will not answer your questions while the guards require another task of you. That is all."~ */
  IF ~~ THEN REPLY #8423 /* ~"You'll answer my questions or pay the price, girl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
~ GOTO 0
  IF ~~ THEN REPLY #8424 /* ~"Very well. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  GlobalGT("SarossaStatChange","GLOBAL",3)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN BEGIN 3 // from:
  SAY #8425 /* ~"So. Have you returned to beg my forgiveness, or have you decided to continue your ill-favored ways?"~ */
  IF ~~ THEN REPLY #8426 /* ~"I've come to kill you."~ */ GOTO 0
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8427 /* ~"I have come to apologize to you, Sarossa."~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8428 /* ~"I have come to apologize to you, Sarossa."~ */ GOTO 13
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
GlobalLT("SarossaStatChange","GLOBAL",8)
~ THEN REPLY #8429 /* ~"I have come to apologize to you, Sarossa."~ */ GOTO 14
  IF ~~ THEN REPLY #8430 /* ~"Neither. Farewell... for now."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 26 25 22 even though they appear after this state */
~  Global("Sarossa_Saros_Anger","AR0503",0)
GlobalGT("G_Test2","GLOBAL",8)
GlobalLT("G_Test2","GLOBAL",12)
!Global("G_Test2","GLOBAL",10)
~ THEN BEGIN 4 // from:
  SAY #8431 /* ~"How dare you speak to me when you have sent my brother to await the executioner's blade? I should tear the will from your spirit for the pain you have brought our family."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8432 /* ~"Saros was your brother?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8433 /* ~"I'm sorry, Sarossa. He was guilty, and no amount of blood-kinship can change that."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8434 /* ~"Saros was your brother?"~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
GlobalGT("G_Test3","GLOBAL",0)
~ THEN REPLY #8435 /* ~"I'm sorry, Sarossa. He was guilty, and no amount of blood-kinship can change that."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8437 /* ~"Both he and Thildon were guilty, though of different crimes. Both of them had to face the law."~ */ DO ~SetGlobal("Sarossa_Saros_Anger","AR0503",1)
~ GOTO 5
  IF ~~ THEN REPLY #8438 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.4 42.0 42.4
  SAY #8436 /* ~"He was my brother. Would you have acted differently had you known he was related to me?"~ */
  IF ~~ THEN REPLY #8439 /* ~Truth: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8440 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8440 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8440 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_2","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8441 /* ~"No."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_1","GLOBALLaw",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 9.0 9.1 9.2 9.3 42.1
  SAY #8442 /* ~"You really believe that, don't you? I love my brother, but you are true to yourself, and I cannot fault that."~ */
  IF ~~ THEN REPLY #8443 /* ~"Good. Then answer some questions for me, would you?"~ */ GOTO 18
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8444 /* ~"Then will you restore the portion of me you stole?"~ */ GOTO 10
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8445 /* ~"Then will you restore the portion of me you stole?"~ */ GOTO 13
  IF ~  Global("SarossaStatChange","GLOBAL",6)
~ THEN REPLY #8446 /* ~"Then will you restore the portion of me you stole?"~ */ GOTO 14
  IF ~~ THEN REPLY #8447 /* ~Truth: "I apologize for causing you and yours pain, lady."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 8
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8448 /* ~Lie: "I apologize for causing you and yours pain."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
~ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8448 /* ~Lie: "I apologize for causing you and yours pain."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Lie: "I apologize for causing you and yours pain."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8448 /* ~Lie: "I apologize for causing you and yours pain."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_3","GLOBALGood",-1)
SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8449 /* ~"Then farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.5 30.1
  SAY #8450 /* ~"Do you honestly think to deceive one who can read the hearts of men? Fool." She speaks a single syllable that seems to distort the air around you, that wrenches a piece of you away and spins it into the ether. "Get gone, scarred flesh, and speak not to me again."~ */
  IF ~~ THEN REPLY #8451 /* ~"I'll be back. You'll pay for that."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_1","GLOBALGood",-1)
PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ GOTO 0
  IF ~~ THEN REPLY #8452 /* ~"Farewell, Sarossa. I will not forget this."~ */ DO ~PermanentStatChange(Protagonist,STR,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5 6.4
  SAY #8453 /* ~Her eyes grow distant, as if she is seeing something beyond your five senses. "You are forgiven, so long as you remember that all your actions have consequences, whether you see them or not, and that you can cause pain through your ignorance. Let these words serve you."~ */
  IF ~~ THEN REPLY #8454 /* ~"Thank you. Could you answer some questions for me?"~ */ GOTO 18
  IF ~~ THEN REPLY #8455 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 4.3 42.2 42.3
  SAY #8456 /* ~"He was my brother, and now my father stands ready to die as well. I hope your heart can bear knowing that it brings so much pain to the world."~ */
  IF ~~ THEN REPLY #8457 /* ~"I cannot set aside my belief in the law for the benefit of a single individual."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sarossa_2","GLOBALLaw",1)
~ GOTO 6
  IF ~~ THEN REPLY #8458 /* ~"It certainly can. I've done it before, and chances are good I'll do it again."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sarossa_4","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8459 /* ~"If I had known he was your brother, I would not have implicated him."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sarossa_2","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #8460 /* ~"My heart is not warmed by the thought - but I believe that such pain is often the way to better things. Though we cannot see the benefit immediately, we learn to see the good when the pain has passed."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sarossa_2","GLOBALGood",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 3.1 6.1
  SAY #8461 /* ~"Then apologize."~ */
  IF ~~ THEN REPLY #8462 /* ~Truth: "I had no right to speak to you as I did. My words and my actions were hasty and ill-considered. I shall endeavor to constrain myself more carefully in the future."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8463 /* ~Lie: "I had no right to speak to you as I did. My words and my actions were hasty and ill-considered. I shall endeavor to constrain myself more carefully in the future."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8464 /* ~"No."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.2 5.3 6.6 6.7 10.1 13.1 30.2 30.3
  SAY #8465 /* ~"Do not lie to me, half-man, or I shall tear your life from your flesh." She spits out another twisted syllable, and you jerk convulsively as another piece of your spirit is torn away. "Go now. I do not wish to speak to you."~ */
  IF ~~ THEN REPLY #8466 /* ~Attack her.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8467 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 13.2 14.2
  SAY #8468 /* ~"If you have no sorrow in you, then I have no sorrow in me. Go. Now."~ */
  IF ~~ THEN REPLY #8469 /* ~Attack her.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8470 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.2
  SAY #8471 /* ~"Then apologize."~ */
  IF ~~ THEN REPLY #8472 /* ~Truth: "I had no right to speak to you as I did. My words and my actions were hasty and ill-considered. I shall endeavor to constrain myself more carefully in the future."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8473 /* ~Lie: "I had no right to speak to you as I did. My words and my actions were hasty and ill-considered. I shall endeavor to constrain myself more carefully in the future."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8474 /* ~"No."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 3.3 6.3
  SAY #8475 /* ~"Then apologize."~ */
  IF ~~ THEN REPLY #8476 /* ~Truth: "I had no right to speak to you as I did. My words and my actions were hasty and ill-considered. I shall endeavor to constrain myself more carefully in the future."~ */ DO ~PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DEX,RAISE,1)
PermanentStatChange(Protagonist,CON,RAISE,1)
SetGlobal("SarossaStatChange","GLOBAL",8)
~ GOTO 15
  IF ~~ THEN REPLY #8477 /* ~Lie: "I had no right to speak to you as I did. My words and my actions were hasty and ill-considered. I shall endeavor to constrain myself more carefully in the future."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8478 /* ~"No."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 10.0 13.0 14.0
  SAY #8479 /* ~Her mouth forms those syllables again, and you feel yourself turning whole - as if someone had added elements to your essential being. "You are free, half-man. What do you want?"~ */
  IF ~~ THEN REPLY #8480 /* ~"Why do you keep calling me half-man?"~ */ JOURNAL #67281 /* ~The witch-woman Sarossa in the Great Foundry told me that she calls me half-man because she cannot see my spirit. She doesn't know if this means I have no soul, or if I have transcended, but she will call me half-man regardless.~ */ GOTO 17
  IF ~~ THEN REPLY #8481 /* ~"I just want the answers to some questions."~ */ GOTO 18
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8482 /* ~"Tell me of your family."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8483 /* ~"Tell me of your family."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8484 /* ~"Tell me of your family."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8485 /* ~"Tell me of your family."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8487 /* ~"Your brother tells me you have a special talent."~ */ GOTO 22
  IF ~~ THEN REPLY #8488 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 5.4 6.8 14.1 30.4
  SAY #8486 /* ~"You respect no one but yourself, do you? I cannot abide that in anyone, no matter how gifted they may be. Farewell, half-man. GUARDS!"~ */
  IF ~~ THEN REPLY #8489 /* ~Attack her.~ */ DO ~SetGlobal("Alarm2","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #8490 /* ~Leave.~ */ DO ~SetGlobal("Alarm1","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 18.0
  SAY #8491 /* ~"I call you half-man because I cannot see your spirit. All other mortals who pass through my life show their spirits to me as a shining spark or a smoldering ember. You show nothing at all. I call you half-man because I cannot see your spirit as I see those of others. Whether this is because you have no soul, or because you have transcended, I cannot say. One way or another, you are but half a man. What the other half is, I cannot say." ~ */
  IF ~~ THEN REPLY #8492 /* ~"I see. Then answer some other questions for me."~ */ GOTO 18
  IF ~~ THEN REPLY #8493 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 6.0 8.0 15.1 17.0 19.4 20.4 21.4 22.2 23.4 24.0 24.1 25.0 26.0 28.2 29.0 31.0 32.1 35.0 36.0 37.0 38.0 41.0 43.0
  SAY #8494 /* ~"What answers do you seek, half-man?"~ */
  IF ~~ THEN REPLY #8495 /* ~"Why do you call me half-man?"~ */ JOURNAL #67281 /* ~The witch-woman Sarossa in the Great Foundry told me that she calls me half-man because she cannot see my spirit. She doesn't know if this means I have no soul, or if I have transcended, but she will call me half-man regardless.~ */ GOTO 17
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8496 /* ~"I need to speak to you about your father."~ */ GOTO 39
  IF ~~ THEN REPLY #8497 /* ~"Who are you?"~ */ GOTO 38
  IF ~  GlobalLT("G_Test2","GLOBAL",9)
~ THEN REPLY #8498 /* ~"Tell me of your family."~ */ GOTO 19
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #8499 /* ~"Tell me of your family."~ */ GOTO 20
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #8500 /* ~"Tell me of your family."~ */ GOTO 21
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8501 /* ~"Tell me of your family."~ */ GOTO 20
  IF ~  Global("Know_Saros","GLOBAL",2)
~ THEN REPLY #8502 /* ~"Everyone seems to have a special talent. Tell me of yours."~ */ GOTO 22
  IF ~~ THEN REPLY #8503 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.2 18.3
  SAY #8504 /* ~"My brother Saros is a child of the Foundry, yet I fear he has never embraced the philosophy of the Believers of the Source. My father is a factor here - and his travels have led him far from the Foundry and into realms most mortals never even dream of achieving."~ */
  IF ~~ THEN REPLY #8505 /* ~"Tell me more of your brother."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8506 /* ~"Tell me more of your father."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8507 /* ~"Tell me more of your father."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8508 /* ~"Tell me more of your father."~ */ GOTO 26
  IF ~~ THEN REPLY #8509 /* ~"I see. Can you answer more questions?"~ */ GOTO 18
  IF ~~ THEN REPLY #8510 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.3 15.5 18.4 18.6
  SAY #8511 /* ~A note of bitterness creeps into her voice. "My brother - as you know - awaits the executioner's whim. My father, as you may or may not know, travels far and wide across the multiverse, seeking meanings that most mortals have yet to grasp."~ */
  IF ~~ THEN REPLY #8512 /* ~"Tell me more of your brother."~ */ GOTO 27
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8513 /* ~"Tell me more of your father."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8514 /* ~"Tell me more of your father."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8515 /* ~"Tell me more of your father."~ */ GOTO 26
  IF ~~ THEN REPLY #8516 /* ~"I see. Can you answer more questions?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 21 // from: 15.4 18.5
  SAY #8517 /* ~"My brother Saros is, hopefully, a wiser lad for his experiences, while my father is a factor here, a man whose travels have led him far from the Great Foundry and into realms most mortals never even dream of achieving."~ */
  IF ~~ THEN REPLY #8518 /* ~"Tell me more of your brother."~ */ GOTO 23
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8519 /* ~"Tell me more of your father."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8520 /* ~"Tell me more of your father."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8521 /* ~"Tell me more of your father."~ */ GOTO 26
  IF ~~ THEN REPLY #8522 /* ~"I see. Can you answer more questions?"~ */ GOTO 18
  IF ~~ THEN REPLY #8523 /* ~"Thank you. Farewell."~ */ EXIT
END

IF WEIGHT #0 ~  False()
~ THEN BEGIN 22 // from: 15.6 18.7 32.0
  SAY #8524 /* ~"I know not how I came by it. It seems something that has always been a part of me. I can only surmise that my past lives and my beliefs in this one have given me a special insight into mortal nature. I am gifted with the ability to see a piece of the potential within every being. By reading the true name graven on that mortal's very being, and by slightly mispronouncing that word, I am able to change the nature of that potential, thus changing the nature of its bearer."~ */
  IF ~~ THEN REPLY #8525 /* ~"Can you teach me this skill?"~ */ GOTO 28
  IF ~~ THEN REPLY #8526 /* ~"Can you change me?"~ */ GOTO 28
  IF ~~ THEN REPLY #8527 /* ~"Interesting. Answer some other questions for me."~ */ GOTO 18
  IF ~~ THEN REPLY #8528 /* ~"The cosmos works in strange ways. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.0 21.0
  SAY #8529 /* ~"Saros is a brash, impulsive lad, easily given over to his manhood. He is eager to prove himself equal of anything on the planes, full of the aggression of youth. I believe he feels himself more Sensate than Godsman, further vindicating my belief that the Sensates are the most immature of all the factions of Sigil."~ */
  IF ~~ THEN REPLY #8530 /* ~"Why are they the most immature?"~ */ GOTO 29
  IF ~  Global("Join_Godsmen","GLOBAL",4)
GlobalLT("G_Test3","GLOBAL",6)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8531 /* ~"Tell me of your father."~ */ GOTO 24
  IF ~  GlobalGT("G_Test3","GLOBAL",5)
Global("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8532 /* ~"Tell me of your father."~ */ GOTO 25
  IF ~  GlobalGT("Sandoz_DEAD_KAPUTZ","GLOBAL",0)
~ THEN REPLY #8533 /* ~"Tell me of your father."~ */ GOTO 26
  IF ~~ THEN REPLY #8534 /* ~"Answer some other questions for me, will you?"~ */ GOTO 18
  IF ~~ THEN REPLY #8535 /* ~"Thank you... and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.1 20.1 21.1 23.1
  SAY #8536 /* ~"My father is a factor of the Believers of the Source, and throughout his life, he has held tightly to his belief that we are here for a purpose. I can only hope that he still clings tightly to that belief, and the belief that his children love him."~ */
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8537 /* ~"Then I will convey your hopes to him. Can you answer some other questions for me?"~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",2)
~ THEN REPLY #8538 /* ~"He sounds like a fine man. Answer some other questions for me, will you?"~ */ GOTO 18
  IF ~  GlobalLT("G_Test3","GLOBAL",1)
~ THEN REPLY #8539 /* ~"He sounds like a fine man. Farewell."~ */ EXIT
  IF ~  GlobalGT("G_Test3","GLOBAL",1)
GlobalLT("G_Test3","GLOBAL",5)
~ THEN REPLY #8540 /* ~"Then I will convey your hopes to him. Farewell."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ EXIT
END

IF WEIGHT #4 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
!Dead("Sandoz")
~ THEN BEGIN 25 // from: 19.2 20.2 21.2 23.2
  SAY #8541 /* ~"Thanks to your words, my father Sandoz is alive and well. I can only hope that whatever force has scarred him this way - I cannot believe he came to this on his own - will pay for its misdeeds. What else can I do for you?"~ */
  IF ~~ THEN REPLY #8542 /* ~"You can answer me some questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8543 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #5 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
Dead("Sandoz")
~ THEN BEGIN 26 // from: 19.3 20.3 21.3 23.3
  SAY #8544 /* ~"My father is dead."~ */
  IF ~~ THEN REPLY #8545 /* ~"I'm sorry. Can you answer some questions for me?"~ */ GOTO 18
  IF ~~ THEN REPLY #8546 /* ~"Err... right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 20.0
  SAY #8547 /* ~"I will not. He was always impulsive, eager to prove his bravery against this cruel cosmos - and now he cannot. I will not cast blame here, but neither will I speak of it. If you wish to know more, speak to me later. Farewell."~ */
  IF ~~ THEN REPLY #8548 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 22.0 22.1
  SAY #8549 /* ~"I can change you, but I cannot teach you - it is like teaching color to a blind man, or sound to a deaf man. And I *will* change you, if the price be right."~ */
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",0)
~ THEN REPLY #8550 /* ~"What is the price?"~ */ GOTO 30
  IF ~~ THEN REPLY #8551 /* ~"I don't think that's very fair."~ */ GOTO 31
  IF ~~ THEN REPLY #8552 /* ~"Forget it. Answer some other questions for me."~ */ GOTO 18
  IF ~  Global("Sarossa_ChangeUp","GLOBAL",1)
~ THEN REPLY #8553 /* ~"What is the price?"~ */ GOTO 43
  IF ~~ THEN REPLY #61301 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0
  SAY #8554 /* ~"Why are they the most immature? Because, like children, they do not understand that there is more beyond the world of the senses, beyond what one can see, hear, taste, touch, smell. Look around you. You are in the Outer Planes. This is belief made solid - but that does not mean this seemingly rough matter can be comprehended by the senses. This is belief - no mere physicality can match it."~ */
  IF ~~ THEN REPLY #8555 /* ~"I see. Speak of other matters to me."~ */ GOTO 18
  IF ~~ THEN REPLY #8556 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.0
  SAY #8557 /* ~"Tell me. Do you subscribe to the philosophy of the Godsmen?"~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #8558 /* ~Truth: "Yes."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
SetGlobal("Sarossa_ChangeUp","GLOBAL",1)
~ JOURNAL #67283 /* ~I told the witch-woman Sarossa that I believe in the Godsmen, and she granted me insight. For some reason, I feel... wiser.~ */ GOTO 32
  IF ~  Global("SarossaStatChange","GLOBAL",0)
~ THEN REPLY #8559 /* ~Lie: "Yes."~ */ JOURNAL #67282 /* ~I lied to the witch-woman Sarossa about my beliefs in the Godsmen, and the vixen drained strength from me in a single word.~ */ GOTO 7
  IF ~  Global("SarossaStatChange","GLOBAL",4)
~ THEN REPLY #8559 /* ~Lie: "Yes."~ */ DO ~PermanentStatChange(Protagonist,DEX,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",5)
~ GOTO 11
  IF ~  Global("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Lie: "Yes."~ */ DO ~PermanentStatChange(Protagonist,CON,LOWER,1)
SetGlobal("SarossaStatChange","GLOBAL",6)
~ GOTO 11
  IF ~  GlobalGT("SarossaStatChange","GLOBAL",5)
~ THEN REPLY #8559 /* ~Lie: "Yes."~ */ DO ~SetGlobal("SarossaStatChange","GLOBAL",7)
~ GOTO 16
  IF ~~ THEN REPLY #8560 /* ~"No."~ */ GOTO 33
  IF ~~ THEN REPLY #8561 /* ~"I don't know enough to tell you."~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 28.1
  SAY #8562 /* ~"No. It is not fair. But this is my gift, and these are my tests, and I choose to do with my gifts as I will. Now. How can I help you?"~ */
  IF ~~ THEN REPLY #8563 /* ~"Answer some questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8564 /* ~"You can't, at least not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #8565 /* ~"Then I feel no qualms in sharing my gift with you." She speaks an arcane syllable, one that shakes you to your very foundation, and somehow your flesh feels stronger.~ */
  IF ~~ THEN REPLY #8566 /* ~"How did you do that?"~ */ GOTO 22
  IF ~~ THEN REPLY #8567 /* ~"My thanks! Answer some questions for me, will you?"~ */ GOTO 18
  IF ~~ THEN REPLY #8568 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #8569 /* ~"You don't like the philosophy? Why not?"~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #8570 /* ~"Because I have already joined with the Dustmen."~ */ GOTO 35
  IF ~  Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #8571 /* ~"Because I have already joined with the Sensates."~ */ GOTO 35
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #8572 /* ~"Because I have already joined with the Anarchists."~ */ GOTO 35
  IF ~~ THEN REPLY #8573 /* ~"I think it's worse than that of the Dustmen. At least they do not preach - they accept, and move on."~ */ GOTO 35
  IF ~~ THEN REPLY #8574 /* ~"I'm still thinking about it. Convince me."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.6 33.4
  SAY #8575 /* ~"Learn more of us. Join the faction fully. If you haven't already, go speak to Keldor of Durian. He is the factor in charge of recruiting. You can find him in the Great Hall here. Farewell."~ */
  IF ~~ THEN REPLY #8576 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 33.2 33.3
  SAY #8577 /* ~"Then I shan't try to disabuse you of your beliefs. What else can I do for you?"~ */
  IF ~~ THEN REPLY #8578 /* ~"You can answer some questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8579 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 36 // from:
  SAY #8580 /* ~You see a young woman. As you approach her, her eyes stare directly into yours. You get the uncomfortable feeling that she's not just examining your eye color - her gaze seems to penetrate far deeper than that. "Greetings, stranger. How goes your day?"~ */
  IF ~~ THEN REPLY #8581 /* ~"Well enough. I would like you to answer some questions for me."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8582 /* ~"Are you Sarossa? I need to speak to you about your father."~ */ GOTO 39
  IF ~~ THEN REPLY #8583 /* ~"Well enough. Farewell."~ */ EXIT
END

IF WEIGHT #9 /* Triggers after states #: 42 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 37 // from:
  SAY #8584 /* ~"Greetings, wounded man. What do you need of me?"~ */
  IF ~~ THEN REPLY #8585 /* ~"Answers."~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8586 /* ~"I need to speak to you about your father."~ */ GOTO 39
  IF ~~ THEN REPLY #8587 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 18.2
  SAY #8588 /* ~"I am Sarossa, daughter of Sandoz, one of the factors of the Godsmen."~ */
  IF ~~ THEN REPLY #8589 /* ~"Can you answer some questions for me?"~ */ GOTO 18
  IF ~  GlobalGT("G_Test3","GLOBAL",0)
GlobalLT("G_Test3","GLOBAL",6)
~ THEN REPLY #8590 /* ~"I need to speak to you about your father."~ */ GOTO 39
  IF ~~ THEN REPLY #8591 /* ~"I see. Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 18.1 36.1 37.1 38.1
  SAY #8592 /* ~"What of him?"~ */
  IF ~~ THEN REPLY #8593 /* ~"He has locked himself into his tower, and is threatening to kill himself. What can you tell me of him that will allow me to keep him from doing so?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #8594 /* ~"You lie! My father is traveling! He is not expected back for days, at least!"~ */
  IF ~~ THEN REPLY #8595 /* ~"Even so. Speak to Keldor if you don't believe me. I require your assistance if your father is to live."~ */ DO ~SetGlobal("G_Test3","GLOBAL",4)
~ GOTO 41
  IF ~~ THEN REPLY #8596 /* ~"You don't believe me? Very well. On your head be it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #8597 /* ~"I will, you can be sure." She pauses and stares at you - hard. "You speak the truth, don't you? I see no deception in your heart on this matter. Very well. This is what I wish you to tell my father: All life is a test. One cannot expect to skip to the end directly. That is not the answer. Only the Doomguard and the Dustmen believe in utter decay - and you have always held them in contempt. Remember this."~ */
  IF ~~ THEN REPLY #8598 /* ~"I will convey the message. But first I wish to ask you some questions."~ */ GOTO 18
  IF ~~ THEN REPLY #8599 /* ~"I will convey the message. Farewell."~ */ EXIT
END

IF WEIGHT #7 ~  False()
Global("G_Test2","GLOBAL",11)
~ THEN BEGIN 42 // from:
  SAY #8600 /* ~"How dare you speak to me when you have sent my brother to await the executioner's blade? I should tear the will from your spirit for the pain you have brought our family."~ */
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8601 /* ~"Saros was your brother?"~ */ GOTO 5
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8602 /* ~"I'm sorry, Sarossa. He was guilty, and no amount of blood-kinship can change that."~ */ GOTO 6
  IF ~  Global("Know_Saros","GLOBAL",1)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8603 /* ~"Saros was your brother?"~ */ GOTO 9
  IF ~  Global("Know_Saros","GLOBAL",2)
Global("G_Test3","GLOBAL",0)
~ THEN REPLY #8604 /* ~"I'm sorry, Sarossa. He was guilty, and no amount of blood-kinship can change that."~ */ GOTO 9
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #8605 /* ~"Both he and Thildon were guilty, though of different crimes. Both of them had to face the law."~ */ GOTO 5
  IF ~~ THEN REPLY #8606 /* ~"I can't. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 28.3
  SAY #61302 /* ~"I have already spoken the words that will change your heart. The rest of you must learn to follow."~ */
  IF ~~ THEN REPLY #61303 /* ~"All right. Then answer some other questions for me."~ */ GOTO 18
  IF ~~ THEN REPLY #61304 /* ~"Farewell."~ */ EXIT
END
