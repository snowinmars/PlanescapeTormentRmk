// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~«Так это ты избавился от этой карги Кристалл, да? Думаешь, теперь ты можешь не платить? Очень жаль, но это правда. Проходи».~ */
  IF ~~ THEN REPLY #3797 /* ~«Спасибо. Прощай».~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~«Приветствую, странник. Кажется, теперь ты на территории Заточек с Темного переулка. Похоже, у тебя есть кошелек, который можно немного облегчить. И молись, что нам этого хватило».~ */
  IF ~~ THEN REPLY #3799 /* ~«Мне нужно переговорить с вашим главарем».~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~«Сколько тебе надо?»~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~«Хочется посмотреть, как ты попытаешься это сделать с дырками в своей шкуре».~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~«Я уже заплатил».~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~Блеф: «Я уже заплатил».~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~«С Гнилым Уильямом? Ага, ты встретишься с ним не раньше, чем я встречусь с твоим кошельком».~ */
  IF ~~ THEN REPLY #34441 /* ~«Ни за что. Сперва ты истечешь кровью».~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~«Сколько тебе надо?»~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~«Нет. Это не так уж важно».~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~«Это не так много». Он великодушно говорит. «Всего лишь десять звенелок, и ты пройдешь мимо».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~«По рукам».~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~«Ни за что».~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~«Тогда ты обнаружишь, что это не так уж важно, когда начнешь истекать кровью».~ */
  IF ~~ THEN REPLY #34448 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~Он берет твои деньги, прячет их в карман и говорит: «А теперь проваливай отсюда».~ */
  IF ~~ THEN REPLY #34451 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~«Тогда отсюда ты уйдешь убитым». Он выхватывает свой нож и нападает!~ */
  IF ~~ THEN REPLY #34453 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~Он вглядывается в тень, делает жест рукой и снова смотрит на тебя. «Хорошо. Проходи, пень».~ */
  IF ~~ THEN REPLY #34456 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~Он вглядывается в тень, делает жест рукой и снова смотрит на тебя. «Нет, не платил. Теперь ты умрешь».~ */
  IF ~~ THEN REPLY #34458 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~«Что, опять ты? Тебе что, не надоело нам платить? Похоже, нет, раз ты здесь. Десять монет, и ты можешь вернуться еще раз».~ */
  IF ~~ THEN REPLY #34461 /* ~«Мне нужно переговорить с вашим главарем».~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~«Сколько тебе надо?»~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~«Хочется посмотреть, как ты попытаешься это сделать с дырками в своей шкуре».~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~«Я уже заплатил».~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~Блеф: «Я уже заплатил».~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~«Я слышал, Гнилой Уильям подбил тебя на убийство, а? Пока ты не разберешься с этим, для тебя будет старая цена. Десять звенелок».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~«Хорошо. Держи».~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~«У меня нет столько».~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~«Но я работаю на Гнилого Уильяма!»~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~«На самом деле тебе не стоит их собирать».~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~«Только через мой труп».~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~«Я уже заплатил».~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~Блеф: «Я уже заплатил».~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~«Ты все еще не убил кое-кого для Гнилого Уильяма? За отсрочку — деньги на бочку. Десять монет и ты можешь идти своей беззаботной дорогой».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~«Хорошо. Держи».~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~«У меня нет столько».~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~«Но я работаю на Гнилого Уильяма!»~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~«На самом деле тебе не стоит их собирать».~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~«Только через мой труп».~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~«Я уже заплатил».~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~Блеф: «Я уже заплатил».~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~«Благодарю. Повидай меня, когда пойдешь назад, ладно?» Он подмигивает тебе.~ */
  IF ~~ THEN REPLY #34484 /* ~«Весело. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~«Как жаль. Гнилой Уильям будет очень несчастлив слышать, что тебя подвесили на ноже». Он достает свое оружие и бросается в атаку.~ */
  IF ~~ THEN REPLY #34486 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~«И я тоже. Что скажешь? Платить и говорить или кровоточить?»~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~«Я заплачу».~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~«У меня нет столько».~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~«Я уже заплатил».~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~Блеф: «Я уже заплатил».~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~«На самом деле тебе не стоит их собирать».~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~«Только через мой труп».~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~Он с опаской смотрит на тебя, пытаясь уяснить твои слова. «На этот раз я тебе прощаю. Проваливай отсюда».~ */
  IF ~~ THEN REPLY #34498 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~«Ты даже не представляешь, как я хотел услышать это». Он выхватывает свой нож и нападает.~ */
  IF ~~ THEN REPLY #34500 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
