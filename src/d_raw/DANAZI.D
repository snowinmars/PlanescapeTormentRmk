// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANAZI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DANAZI~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 0 // from:
  SAY #3024 /* ~Перед тобой больная гитцерайка. Она сгорблена, ее постоянный кашель явно причиняет ей боль: она держит у лица платок, насквозь пропитанный кровью и мокротой. Она следит за тобой, шипя.~ */
  IF ~~ THEN REPLY #3025 /* ~«Приветствую».~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42426 /* ~«Кто ты?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42427 /* ~«Что ты можешь рассказать об этом месте?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #42428 /* ~«У меня нет к тебе вопросов. Прощай».~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DDakkon")
~ THEN BEGIN 1 // from:
  SAY #42429 /* ~Анаци удивленно смотрит на тебя своими слезящимися глазами, затем перекидывается парой слов с Дакконом.~ */
  IF ~~ THEN REPLY #42430 /* ~«Что она сказала?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",2)
~ EXTERN ~DDAKKON~ 132
  IF ~~ THEN REPLY #42431 /* ~«Убей ее, Даккон. Заставь ее мучиться».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ EXTERN ~DDAKKON~ 126
  IF ~~ THEN REPLY #42432 /* ~«Даккон, избавь ее от страданий. Очевидно, что ей очень больно, и она недолго еще протянет».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_1","GLOBALGood",1)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)
~ EXTERN ~DDAKKON~ 130
  IF ~~ THEN REPLY #42433 /* ~«Давай убираться отсюда, Даккон. Попрощайся с ней».~ */ EXTERN ~DDAKKON~ 128
  IF ~~ THEN REPLY #42434 /* ~Избавить ее от страданий.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #42435 /* ~Заколоть ее для развлечения.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_2","GLOBALGood",-1)
~ GOTO 14
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 0.3
  SAY #42436 /* ~Она пристально смотрит на тебя и произносит Даккону пару неразборчивых слов.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 124
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 3 // from:
  SAY #42467 /* ~Перед тобой больная женщина-гитцерай. Она сгорблена, ее постоянный кашель явно причиняет ей боль: она держит у лица платок, насквозь пропитанный кровью и мокротой. Она следит за тобой, шипя.~ */
  IF ~~ THEN REPLY #42468 /* ~«Приветствую».~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42469 /* ~«Кто ты?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42470 /* ~«Что ты можешь рассказать об этом месте?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #42471 /* ~«Тебе нужно лечение? Я могу для тебя что-нибудь сделать?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #42472 /* ~«Что с тобой?»~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #42473 /* ~«У меня нет к тебе вопросов. Прощай».~ */ DO ~SetGlobal("Know_Anazi","GLOBAL",1)
~ GOTO 5
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 4 // from:
  SAY #42474 /* ~Старая гитцерайка выглядит еще хуже, чем раньше, если такое возможно. Она пытается шипеть на тебя, но у нее начинается приступ кровавого кашля.~ */
  IF ~~ THEN REPLY #42475 /* ~«Тебе нужно лечение? Я могу для тебя что-нибудь сделать?»~ */ GOTO 6
  IF ~~ THEN REPLY #42476 /* ~«Что с тобой?»~ */ GOTO 9
  IF ~~ THEN REPLY #42477 /* ~«Ты не могла бы ответить мне на несколько вопросов?»~ */ GOTO 7
  IF ~~ THEN REPLY #42478 /* ~«Прощай, старуха».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 3.1 3.2 3.5
  SAY #42479 /* ~Она все кашляет и кашляет, наполняя свой промокший платок мокротой. Ее глаза ненавистно глядят на тебя.~ */
  IF ~~ THEN REPLY #42480 /* ~«Тебе нужно лечение? Я могу для тебя что-нибудь сделать?»~ */ GOTO 6
  IF ~~ THEN REPLY #42481 /* ~«Что с тобой?»~ */ GOTO 9
  IF ~~ THEN REPLY #42482 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.3 4.0 5.0
  SAY #42483 /* ~Она кашляет, пренебрежительно отмахиваясь от тебя. Она кутается в свои лохмотья, явно желая, чтобы ее оставили умирать в одиночестве.~ */
  IF ~~ THEN REPLY #42484 /* ~«Тебе больно? Я могу тебе хоть *чем-то* помочь?»~ */ GOTO 7
  IF ~~ THEN REPLY #42485 /* ~Дать ей немного монет.~ */ GOTO 8
  IF ~~ THEN REPLY #42486 /* ~«Слушай, просто ответь на пару вопросов...»~ */ GOTO 7
  IF ~~ THEN REPLY #42487 /* ~«Тогда ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 6.0 6.2
  SAY #42488 /* ~Сквозь кашель она произносит пару фраз на неведомом тебе языке и сгибается пополам от очередного приступа мучительного кашля.~ */
  IF ~~ THEN REPLY #42489 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #42490 /* ~Она выбивает монеты из твоей руки, рассыпая их по улице. Она снова вяло шипит на тебя.~ */
  IF ~~ THEN REPLY #42491 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.4 4.1 5.1
  SAY #42492 /* ~Она бессильно показывает на воздух над ней. Затем она указывает на Литейную, на мусор, на горы угля, а потом на свою грудь. Как бы подчеркивая свои слова, она разражается еще одним приступом кашля, который оставляет кровь на ее губах.~ */
  IF ~~ THEN REPLY #42493 /* ~«Это все смог?»~ */ GOTO 10
  IF ~~ THEN REPLY #42494 /* ~«Я могу дать тебе какое-нибудь лекарство?»~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #42495 /* ~Она кивает и еще раз хрипло кашляет.~ */
  IF ~~ THEN REPLY #42496 /* ~«Я могу дать тебе какое-нибудь лекарство?»~ */ GOTO 11
  IF ~~ THEN REPLY #42497 /* ~«Тогда я ничего не могу для тебя сделать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #42498 /* ~Ее взгляд мрачнеет, когда она указывает на твое оружие, затем на себя.~ */
  IF ~~ THEN REPLY #42499 /* ~«Ты хочешь, чтобы я тебя убил?»~ */ GOTO 12
  IF ~~ THEN REPLY #42500 /* ~«Я не стану это делать для тебя. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #42501 /* ~Она кивает головой так энергично, как только может, расплачиваясь за это ужасным приступом кашля. Она твердо указывает на твое оружие. В ее желтых глазах не видно страха.~ */
  IF ~~ THEN REPLY #42502 /* ~«Ну что ж, удачи тебе в следующей жизни».~ */ GOTO 14
  IF ~~ THEN REPLY #42503 /* ~«Я не стану этого делать для тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 12.1 14.1
  SAY #42504 /* ~Она сплевывает кровавый комок слизи тебе под ноги, когда ты отворачиваешься.~ */
  IF ~~ THEN REPLY #42505 /* ~Оставить ее в покое.~ */ EXIT
  IF ~~ THEN REPLY #42506 /* ~Убить ее.~ */ DO ~AddexperienceParty(4000)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.4 1.5 12.0
  SAY #42507 /* ~Она смотрит на тебя отважно и без тени страха, в ожидании смертельного удара.~ */
  IF ~~ THEN REPLY #42508 /* ~Избавить ее от страданий.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Anazi_2","GLOBALGood",1)
~ GOTO 15
  IF ~~ THEN REPLY #42509 /* ~«Я не могу это сделать для тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Anazi_1","GLOBALGood",-1)
~ GOTO 13
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #42510 /* ~Ты убиваешь ее ловким ударом. Ее тело оседает на твердую мостовую, но почему-то она кажется благодарной.~ */
  IF ~~ THEN REPLY #42511 /* ~«Прощай, гитцерайка».~ */ DO ~IncrementGlobal("Githzerai","GLOBAL",1)
AddexperienceParty(4000)
SetGlobal("Anazi_Help","GLOBAL",1)
Kill(Myself)
~ JOURNAL #67286 /* ~Сегодня в Нижнем районе я убил больную гитцерайку. Ей было трудно дышать густым воздуха района, а смерть ее, похоже, не страшила.~ */ EXIT
END
