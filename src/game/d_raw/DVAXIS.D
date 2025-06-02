// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVAXIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVAXIS~

IF ~  Global("Vaxis","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #453 /* ~Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «821», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #454 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #455 /* ~«Итак... что тут у нас интересного?»~ */ GOTO 5
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #456 /* ~«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #457 /* ~Использовать на трупе свою способность «История костей».~ */ GOTO 1
  IF ~~ THEN REPLY #458 /* ~«Было приятно поболтать с тобой. Прощай».~ */ GOTO 5
  IF ~~ THEN REPLY #459 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.3
  SAY #460 /* ~Довольно странно, но твоя способность не работает с этим трупом.~ */
  IF ~~ THEN REPLY #461 /* ~Ткнуть его в глаз.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #462 /* ~Оставить труп в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #463 /* ~После твоего тычка в глаз труп, рефлекторно закрыв руками лицо, издает нечленораздельный вопль. Он начинает что-то невнятно бормотать, сыпля проклятиями в твой адрес.~ */
  IF ~~ THEN REPLY #464 /* ~«Ты не зомби! Кто ты?»~ */ JOURNAL #64513 /* ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ */ GOTO 6
  IF ~~ THEN REPLY #465 /* ~«Зачем ты замаскировался под зомби?»~ */ JOURNAL #64513 /* ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ */ GOTO 6
  IF ~~ THEN REPLY #466 /* ~Уйти. Быстро.~ */ JOURNAL #64513 /* ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.2 5.2
  SAY #467 /* ~Ты уже почти отвернулся, как «зомби» начинает что-то бормотать... кажется, он пытается что-то сказать, но с зашитым ртом это сделать трудно. «Фто ТЫ? Фто тее нао?»~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #468 /* ~«Я ищу выход отсюда. Ты можешь мне помочь?»~ */ GOTO 7
  IF ~~ THEN REPLY #469 /* ~«Кто ты?»~ */ GOTO 7
  IF ~~ THEN REPLY #470 /* ~«Рассказывай, кто ты такой, или я позову стражу».~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #472 /* ~Ложь: «Чего... Я искал тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #473 /* ~«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #474 /* ~«Извини, что побеспокоил тебя... кем бы ты ни был. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
  SAY #471 /* ~Ты уже почти отвернулся, как зомби начинает издавать низкое протяжное ворчание: «Никоу ничео не говои пво МЕЯ. Моучи. Не говои НИФЕО твуфявым, — он прикладывает палец к губам. — Фффф». После этого он проводит пальцем по горлу. «Или ты уфнефь нафегда. ПОЯЛ мея?»~ */
  IF ~~ THEN REPLY #475 /* ~«Ты пытаешься меня ЗАПУГАТЬ? Ну все... готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #476 /* ~Ложь: «Я даже и *не думал* ничего говорить тленным о тебе».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #477 /* ~Правда: «Обещаю, что я ничего не скажу о тебе тленным».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_1","GLOBALGood",1)
~ EXIT
  IF ~~ THEN REPLY #478 /* ~«Как хочешь. У тебя свои дела, у меня — свои».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 0.1 0.2 0.4
  SAY #479 /* ~Зомби от неожиданности моргает при твоем обращении. «А? Фто?»~ */
  IF ~~ THEN REPLY #480 /* ~«Ты не зомби! Кто ты?»~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ */ GOTO 6
  IF ~~ THEN REPLY #481 /* ~«Зачем ты замаскировался под зомби?»~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ */ GOTO 6
  IF ~~ THEN REPLY #482 /* ~Уйти. Быстро.~ */ DO ~SetGlobal("Vaxis","GLOBAL",1)
~ JOURNAL #64513 /* ~Один из зомби на втором этаже Морга — на самом деле не зомби, а замаскированный человек. Зачем кому-то строить из себя зомби — мне не понятно. ~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 2.1 5.0 5.1
  SAY #483 /* ~«Зомби» пытается что-то сказать сквозь зашитые губы. На его лице странная смесь испуга и злобы. «Фто ТЫ? Фего тее нао?»~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #484 /* ~«Я ищу выход отсюда. Ты можешь мне помочь?»~ */ GOTO 7
  IF ~~ THEN REPLY #485 /* ~«Кто ты?»~ */ GOTO 7
  IF ~~ THEN REPLY #486 /* ~«Рассказывай, кто ты такой, или я позову стражу».~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #487 /* ~Ложь: «Чего... Я искал тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~~ THEN REPLY #488 /* ~«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #489 /* ~«Извини, что побеспокоил тебя... кем бы ты ни был. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 7 // from: 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
  SAY #490 /* ~Кажется, зомби не расслышал тебя. Он осматривает тебя с ног до головы, затем хмурится. «Фто ты фдефь делаефь? — его глаза недоверчиво сужаются. — Фпионифь за Мертфяками?»~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #491 /* ~«Нет. Я пытаюсь сбежать отсюда».~ */ GOTO 12
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #492 /* ~«Я не шпион. Меня случайно здесь заперли. Ты поможешь мне выбраться отсюда?»~ */ GOTO 31
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #493 /* ~Ложь: «Да, я шпионю здесь за... трухлявыми».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #494 /* ~Ложь: «Да, я шпионю здесь за... трухлявыми».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_2","GLOBALLaw",-1)
~ GOTO 9
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #495 /* ~«Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #496 /* ~«Почему бы тебе не рассказать мне, что ТЫ здесь делаешь, пока я не позвал стражу».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #1306 /* ~«Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #1348 /* ~«Слушай, *зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #1349 /* ~«Я должен идти. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #1350 /* ~Он изучает тебя более пристально. «Ты фпион? Ты иф яфейки?»~ */
  IF ~~ THEN REPLY #4671 /* ~«А?»~ */ GOTO 10
  IF ~~ THEN REPLY #1352 /* ~«Яфейки?»~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1359 /* ~Ложь: «Да... Я искал тебя. И очень рад, что нашел».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #1360 /* ~Ложь: «Да... но я не могу сейчас об этом говорить, если ты понимаешь, что я имею в виду. Какова *твоя* миссия здесь?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #1361 /* ~Ложь: «Да... но я не могу говорить об этом сейчас. Что ты делаешь здесь?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #1362 /* ~«Э-э, сейчас у меня нет времени на разговоры... может, как-нибудь в другой раз».~ */ GOTO 4
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #1363 /* ~Он изучает тебя более пристально. «Ты фпион? Ты иф яфейки?»~ */
  IF ~~ THEN REPLY #4359 /* ~«А?»~ */ EXTERN ~DMORTE~ 85
  IF ~~ THEN REPLY #4360 /* ~«Яфейки?»~ */ EXTERN ~DMORTE~ 85
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #4361 /* ~Хмурясь, он шипит на тебя. «Ты не фпион! — он гонит тебя прочь. — Профь! Профь!» ~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4362 /* ~«Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4363 /* ~«Сперва ты расскажешь мне, что ты здесь делаешь, или я позову стражу».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4364 /* ~«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4365 /* ~«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4367 /* ~«Ну хорошо, хорошо... Я ухожу».~ */ GOTO 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY #4366 /* ~Зомби согласно кивает. Кажется, ты замечаешь, что под слоем маскировки его распирает от гордости.~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4368 /* ~«Ты поможешь мне выбраться отсюда?»~ */ GOTO 12
  IF ~~ THEN REPLY #4369 /* ~«Так что же ты делаешь здесь?»~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4370 /* ~Ложь: «Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми... Но сейчас я не могу об этом говорить, если ты понимаешь, о чем я. Какова *твоя* миссия здесь?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4371 /* ~Ложь: «Так ты шпионишь для анархистов? Я тоже шпионю за трухлявыми... Но сейчас я не могу об этом говорить. Что ты здесь делаешь?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~~ THEN REPLY #4372 /* ~«Э-э, сейчас у меня нет времени на разговоры... может, как-нибудь в другой раз».~ */ GOTO 4
END

IF ~~ THEN BEGIN 12 // from: 7.0 11.0
  SAY #4373 /* ~Зомби выглядит заинтересованным. «Пвоулемы? Фево ты натвовил?»~ */
  IF ~~ THEN REPLY #4374 /* ~«Я очнулся на одной из плит на верхнем этаже».~ */ GOTO 13
  IF ~~ THEN REPLY #4375 /* ~«Каким-то образом я... оказался здесь запертым. Ты поможешь мне выбраться?»~ */ GOTO 31
  IF ~~ THEN REPLY #4376 /* ~«Поговорим об этом в другой раз».~ */ GOTO 4
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #4377 /* ~Зомби смотрит на тебя как на умалишенного. «Ты фпятил?»~ */
  IF ~~ THEN REPLY #4378 /* ~«Да, я фпятил. Я окончательно фпятил».~ */ GOTO 14
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4379 /* ~«Фпятил? Что это значит?»~ */ GOTO 16
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4380 /* ~«Фпятил? Что это значит?»~ */ EXTERN ~DMORTE~ 87
  IF ~~ THEN REPLY #4381 /* ~«Я знаю, в это трудно поверить, но я говорю правду: я очнулся из мертвых на одной из плит на верхнем этаже».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4382 /* ~«Э-э, нет... На самом деле, я каким-то образом оказался здесь заперт. Ты поможешь мне выбраться?»~ */ GOTO 31
  IF ~~ THEN REPLY #4383 /* ~«Забудь о нашем разговоре. Мне нужно идти».~ */ GOTO 4
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.3 15.0
  SAY #4384 /* ~Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя. «Ты фпятил! Профь от мея!»~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4385 /* ~«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4386 /* ~«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4387 /* ~«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4388 /* ~«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4389 /* ~«Ну ладно, ладно... прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 15 // from:
  SAY #4390 /* ~Фальшивый зомби недоверчиво смотрит на вас обоих.~ */
  IF ~~ THEN REPLY #4391 /* ~«Это правда — я очнулся на одной из здешних плит».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vaxis_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vaxis_2","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #4392 /* ~«Э-э, прошу прощения... На самом деле, я оказался здесь заперт. Ты поможешь мне выбраться?»~ */ GOTO 31
  IF ~~ THEN REPLY #4393 /* ~«Неважно. Мне нужно идти».~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 13.1
  SAY #4394 /* ~Он смотрит на тебя, затем начинает шипеть и отмахиваться от тебя. «Пуфтогоовый! Приурок! Профь от мея, пей! Профь!»~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4395 /* ~«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4396 /* ~«Я никуда не уйду. Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4397 /* ~«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4398 /* ~«Сначала ты ответишь на мои чертовы вопросы, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4399 /* ~«Ну хорошо, хорошо... Я ухожу».~ */ GOTO 4
END

IF ~~ THEN BEGIN 17 // from: 7.5 10.1 14.1 16.1 25.3 27.3
  SAY #4400 /* ~На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. «Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу».~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4401 /* ~«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 18
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4402 /* ~«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4403 /* ~«Тогда гори в аду. Я ухожу».~ */ GOTO 4
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #4404 /* ~Глаза зомби превращаются в щелочки, он шипит на тебя: «Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят».~ */
  IF ~~ THEN REPLY #4405 /* ~«Я рискну. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4406 /* ~«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже... *зомби*».~ */ GOTO 4
END

IF ~~ THEN BEGIN 19 // from: 7.6 10.2 14.2 16.2 25.4 27.4
  SAY #4407 /* ~На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. «ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят».~ */
  IF ~~ THEN REPLY #4408 /* ~«Я рискну. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4409 /* ~«Что, если я раскрою твою маскировку перед стражей?»~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4410 /* ~«Что, если я раскрою твою маскировку перед стражей?»~ */ GOTO 20
  IF ~~ THEN REPLY #4411 /* ~«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже... *зомби*».~ */ GOTO 4
END

IF ~~ THEN BEGIN 20 // from: 19.2
  SAY #4412 /* ~Глаза зомби превращаются в щелочки, он шипит на тебя: «Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу».~ */
  IF ~~ THEN REPLY #4413 /* ~«Это был твой последний шанс, труп. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4414 /* ~«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже, *зомби*».~ */ GOTO 4
END

IF ~~ THEN BEGIN 21 // from: 7.4 10.0 14.0 16.0 19.1 25.2 27.2
  SAY #4415 /* ~Недобрый блеск в твоих глазах не оставляет от его самонадеянности и следа. «Не-не-не! Не наа фвать фтражу! — он явно напуган. — Я-я-я фпионю фа твуфявыми, говою, фео увиву. Ни-нифео больфе».~ */
  IF ~~ THEN REPLY #4416 /* ~«Шпионишь? Для кого?»~ */ GOTO 23
  IF ~~ THEN REPLY #4417 /* ~«И чем же, по твоим наблюдениям, занимаются тленные?»~ */ GOTO 29
  IF ~~ THEN REPLY #4418 /* ~«У меня есть другие вопросы...»~ */ GOTO 43
  IF ~~ THEN REPLY #4419 /* ~«Это все, что я хотел узнать. Прощай, *зомби*».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 7.7 10.3 14.3 16.3 17.1 25.5 27.5
  SAY #4420 /* ~«Не-не-не! Не твогаи мея!» Факт того, что ты явно превосходишь зомби в грубой силе, очевидно, повлиял на его решение, и от его самонадеянности не осталось и следа. «Я-я-я фпионю за твуфьявыми, говою, фео увиву. Ни-нифео больфе».~ */
  IF ~~ THEN REPLY #4421 /* ~«Шпионишь? Для кого?»~ */ GOTO 23
  IF ~~ THEN REPLY #4422 /* ~«И чем же, по твоим наблюдениям, занимаются тленные?»~ */ GOTO 29
  IF ~~ THEN REPLY #4423 /* ~«У меня есть другие вопросы...»~ */ GOTO 43
  IF ~~ THEN REPLY #4424 /* ~«Это все, что я хотел знать. А теперь прочь с дороги, *зомби*».~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0 22.0
  SAY #4425 /* ~Зомби в страхе умолкает, ничего не желая говорить.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4426 /* ~«Ну же, для кого ты следишь за этим местом?»~ */ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4427 /* ~«Ну же, для кого ты следишь за этим местом?»~ */ EXTERN ~DMORTE~ 89
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4428 /* ~«Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4429 /* ~«Если ты скажешь мне прямо сейчас, для кого ты шпионишь, будет ГОРАЗДО меньше боли».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 89
  IF ~~ THEN REPLY #4430 /* ~«Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?»~ */ GOTO 29
  IF ~~ THEN REPLY #4431 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4432 /* ~«Тогда забудь об этом. Прощай, *зомби*».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 3.3 6.3 8.2
  SAY #4433 /* ~«Иффефь мея? Вафем? — он искоса смотрит на тебя. — У тея соофение двя мея?»~ */
  IF ~~ THEN REPLY #4434 /* ~Ложь: «Да, у меня есть сообщение для тебя».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_5","GLOBALLaw",-1)
~ GOTO 26
  IF ~~ THEN REPLY #4435 /* ~«Сообщение от кого?»~ */ GOTO 27
  IF ~~ THEN REPLY #4436 /* ~«Нет, у меня нет сообщений».~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.2
  SAY #4437 /* ~Яростно шепчет. «Тада фео тее *надо*, пей?!»~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4438 /* ~«Я ищу выход отсюда. Ты можешь мне помочь?»~ */ GOTO 31
  IF ~~ THEN REPLY #4439 /* ~«Мне нужны кое-какие сведения...»~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4440 /* ~«Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4441 /* ~«Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4442 /* ~«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4443 /* ~«Отвечай на мои чертовы вопросы, или не успеешь пройти и трех шагов, как я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4444 /* ~«Извини, что побеспокоил тебя... кем бы ты ни был. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 26 // from: 24.0
  SAY #4445 /* ~«Какое фоофение?»~ */
  IF ~  CheckStatLT(Protagonist,12,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4446 /* ~«Ты должен сообщить мне свое задание».~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,CHR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #4447 /* ~Ложь: «У меня к тебе новые распоряжения».~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #4448 /* ~Ложь: «У меня... к тебе новые распоряжения».~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",1)
~ GOTO 30
  IF ~~ THEN REPLY #4449 /* ~«Извини, у меня нет сообщений».~ */ GOTO 27
  IF ~~ THEN REPLY #4450 /* ~«Неважно. Извини за беспокойство. Прощай».~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 24.1 26.3 26.4
  SAY #4451 /* ~Его глаза в ярости сужаются. «Ты не фьяфной. Фто ты?»~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4452 /* ~«Я ищу выход отсюда. Ты можешь мне помочь?»~ */ GOTO 31
  IF ~~ THEN REPLY #4453 /* ~«Мне нужны кое-какие сведения...»~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4454 /* ~«Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4455 /* ~«Рассказывай, что ты здесь делаешь, или я позову стражу».~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4456 /* ~«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 19
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4457 /* ~«*Зомби*, вопросы здесь задаю я. Рассказывай, что ты здесь делаешь, или я сделаю эту маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 22
  IF ~~ THEN REPLY #4458 /* ~«Извини, что побеспокоил тебя... кем бы ты ни был. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 28 // from: 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
  SAY #4459 /* ~«Я фпионю фа твуфьявыми. Говою, чео вифу. Нифео больфе».~ */
  IF ~~ THEN REPLY #4460 /* ~«И чем же, по твоим наблюдениям, занимаются тленные?»~ */ GOTO 29
  IF ~~ THEN REPLY #4461 /* ~«Понятно. Я хотел спросить у тебя еще кое-что...»~ */ GOTO 43
  IF ~~ THEN REPLY #4462 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 21.1 22.1 23.4 28.0 70.1 71.2
  SAY #4463 /* ~«Нифео. Они нифео ни деают. Нифео не нафол. Твупы, твупы, пвофто твупы. Твуфьявые *нифео* ни деают, — его глаза деловито сужаются. — Буу дальфе фледить».~ */
  IF ~~ THEN REPLY #4464 /* ~«Понятно. Я хотел спросить у тебя еще кое-что...»~ */ GOTO 43
  IF ~~ THEN REPLY #4465 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1 26.2
  SAY #4466 /* ~Он сужает глаза, будто пытаясь тебя вычислить. «Какие вафповявения?»~ */
  IF ~~ THEN REPLY #4467 /* ~«Доложи свою миссию».~ */ GOTO 28
  IF ~~ THEN REPLY #4468 /* ~«Мне нужно найти выход, через который можно уйти незамеченным».~ */ GOTO 49
  IF ~  Global("Vaxis_Leave","GLOBAL",0)
~ THEN REPLY #4469 /* ~«Я твой сменщик. Сообщи все, что тебе удалось узнать, отдай все вещи и покинь это место».~ */ DO ~SetGlobal("Vaxis_Leave","GLOBAL",1)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Embalm",Protagonist,1,0,0)
GiveItemCreate("Needle",Protagonist,1,0,0)
GiveItemCreate("Knife",Protagonist,1,0,0)
AddexperienceParty(500)
~ JOURNAL #64517 /* ~Я пообщался с замаскированным шпионом, которого я должен был «сменить». Он выложил все, что он сумел собрать — преимущественно бинты и исцеляющие предметы, необходимые для его маскировки. ~ */ GOTO 72
  IF ~~ THEN REPLY #4470 /* ~«Я здесь, чтобы помочь тебе во всем, в чем ты будешь нуждаться».~ */ GOTO 35
  IF ~~ THEN REPLY #4471 /* ~«Твои распоряжения будут переданы в свое время. Я вернусь».~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 7.1 12.1 13.4 15.1 25.0 27.0 50.0
  SAY #4472 /* ~Он на секунду умолкает, затем медленно, будто бы понимающе кивает. «Пофеу я доувен помоать тее?»~ */
  IF ~~ THEN REPLY #4473 /* ~«Потому что мне нужна твоя помощь».~ */ GOTO 32
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4474 /* ~«Мы можем помочь друг другу. Что ты хочешь взамен?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vaxis_3","GLOBALGood",1)
~ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4475 /* ~«Потому что я не хотел бы *раскрывать* твою маскировочку... если только ты не поможешь мне».~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4476 /* ~«Потому что я не хотел бы *раскрывать* твою маскировочку... если только ты не поможешь мне».~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4477 /* ~«Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4478 /* ~«Тебе, похоже, больше по душе маскироваться под труп, чем БЫТЬ им. Годится такая причина?»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4479 /* ~«Забудь о нашей встрече. Я должен идти. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #4480 /* ~Зомби едва усмехается. «Фем *нао* фео-то, но нифто нифео *не дает*. *Дай* мне фео-нить, и, *мовет*, я помоу».~ */
  IF ~~ THEN REPLY #4481 /* ~«Что тебе надо?»~ */ GOTO 35
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4482 /* ~«Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?»~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4483 /* ~«Как на счет того, чтобы ты мне помог, а я взамен не стал звать стражу?»~ */ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4484 /* ~«Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак... в последний раз спрашиваю: как мне отсюда выбраться?»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4485 /* ~«Ты похож на того, кто скорее выбрал бы остаться в живых, чем ответил мне 'нет'. Итак... в последний раз спрашиваю: как мне отсюда выбраться?»~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4486 /* ~«Неинтересно. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 33 // from: 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
  SAY #4487 /* ~Он оглядывает тебя с ног до головы, как бы примериваясь, сможет ли он с тобой справиться, останавливается на шрамах и решает не делать этого. «Хм-м. Ты мовефь убевать фееф поуталы».~ */
  IF ~~ THEN REPLY #4672 /* ~«Порталы?»~ */ DO ~SetGlobal("Strong_Arm_Vaxis","GLOBAL",1)
~ GOTO 50
END

IF ~~ THEN BEGIN 34 // from: 31.3 32.2 35.3
  SAY #4491 /* ~На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. «Ты подеиффя фо мной фвоим фекветом, я подеюфь фвоим ф *тоой*. Фдефь у мея пряфуффа друфья, у тея фдефь *никоо*. Тее фдефь не мефто. Твуфьявые тея уют. Я фбегу».~ */
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4489 /* ~«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4490 /* ~«Ты не сможешь сбежать, если я УБЬЮ тебя. А теперь отвечай, или я сделаю твою маскировку настоящей».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #4492 /* ~«Тогда гори в аду. Я ухожу».~ */ GOTO 4
END

IF ~~ THEN BEGIN 35 // from: 30.3 31.1 32.0
  SAY #4493 /* ~«Тее нуно найти *кьюч* дья мея. Нуен желефный кьюч к байвамовофной комуафе».~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4494 /* ~«Ты имеешь в виду этот ключ?»~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~~ THEN REPLY #4495 /* ~«Хорошо. Где этот ключ?»~ */ GOTO 36
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4496 /* ~«У меня нет времени на это. Помоги мне сбежать, или я позову стражу».~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4497 /* ~«У меня нет времени на это. Помоги мне сбежать, или я позову стражу».~ */ DO ~SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 34
  IF ~  CheckStatLT(Protagonist,12,STR)
~ THEN REPLY #4498 /* ~«Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 75
  IF ~  CheckStatGT(Protagonist,11,STR)
~ THEN REPLY #4499 /* ~«Я не собираюсь ничего тебе приносить. Помоги мне сбежать, или я прямо здесь и сейчас сверну тебе шею».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
SetGlobal("Vaxis_Orders","GLOBAL",0)
~ GOTO 33
  IF ~~ THEN REPLY #4500 /* ~«Нет, спасибо. Может быть, в другой раз».~ */ GOTO 4
END

IF ~~ THEN BEGIN 36 // from: 35.1 58.2
  SAY #4501 /* ~«Он у твуфьявой, — он показывает на свои глаза. — У нее воутые глафифи...» Затем он делает движение руками, похожее на стрижку ножницами. «Лефвия на пайфах».~ */
  IF ~  PartyHasItem("KeyEm")
~ THEN REPLY #4502 /* ~«Я уже с ней встречался. Вот ключ».~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
~ GOTO 42
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #64520 /* ~«Тленная... с желтыми глазами и лезвиями на пальцах? Я ее уже видел в бальзамационной. Погоди... я скоро вернусь с ключом».~ */ JOURNAL #64519 /* ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у тленной-бальзамировщицы Эи-Вейн (кажется, так ее зовут), которую я уже видел в другой комнате. Как ей удается со своими лезвиями на руках открывать двери ключами — для меня остается загадкой. ~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #4503 /* ~«Тленная... с желтыми глазами и лезвиями на пальцах? Хорошо. Я вернусь с ключом».~ */ JOURNAL #64518 /* ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у некой тленной с лезвиями на руках и желтыми глазами. ~ */ GOTO 38
  IF ~~ THEN REPLY #4504 /* ~«Судя по твоему описанию, эта тленная выглядит довольно привлекательно. Ты уверен, что не хочешь, чтобы я вас познакомил?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vaxis_6","GLOBALLaw",-1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.3
  SAY #4505 /* ~Зомби моргает. Кажется, он тебя не понял.~ */
  IF ~  Global("EiVene","GLOBAL",1)
~ THEN REPLY #4506 /* ~«Это была шутка, видишь ли, ты... а, забудь, найду я твой ключ».~ */ JOURNAL #64519 /* ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у тленной-бальзамировщицы Эи-Вейн (кажется, так ее зовут), которую я уже видел в другой комнате. Как ей удается со своими лезвиями на руках открывать двери ключами — для меня остается загадкой. ~ */ GOTO 38
  IF ~  Global("EiVene","GLOBAL",0)
~ THEN REPLY #66150 /* ~«Это была шутка, видишь ли, ты... а, забудь, найду я твой ключ».~ */ JOURNAL #64518 /* ~В обмен на помощь «зомби» я согласился достать ключ от бальзамационной, который находится у некой тленной с лезвиями на руках и желтыми глазами. ~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 36.2 37.0 37.1
  SAY #4507 /* ~Зомби косо на тебя смотрит. «Ефи тея поимают, не говои никоу обо мне, или я добеусь до тея, когда ты буешь фпать».~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4508 /* ~«Я найду твой треклятый ключ... но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?»~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4509 /* ~«Я еще вернусь».~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",1)
~ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4510 /* ~«Я найду твой треклятый ключ... но лучше бы тебе быть поосторожнее со своими угрозами, слышишь меня?»~ */ EXIT
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4511 /* ~«Я еще вернусь».~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 43.12
  SAY #4512 /* ~«Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби, — зомби хихикает через зашитые губы, потом стучит себя по голове. — Твуфяки тууупые».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 93
END

IF ~~ THEN BEGIN 40 // from:
  SAY #4514 /* ~«Я фду тея фдефь. Найди кьюч, — зомби улыбается мертвецким оскалом. — Потом я помоу тее».~ */
  IF ~~ THEN REPLY #4515 /* ~«Если я найду его, то принесу».~ */ EXIT
  IF ~~ THEN REPLY #4516 /* ~«Тогда забудь об этом».~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #4517 /* ~Глаза зомби расширяются, он протягивает руку и прищелкивает пальцами. «Дай его мие».~ */
  IF ~~ THEN REPLY #4518 /* ~«Секундочку. Я хочу кое-что взамен».~ */ EXIT
  IF ~~ THEN REPLY #4519 /* ~«На, бери».~ */ DO ~AddexperienceParty(250)
GiveItem("KeyEm","Vaxis")
SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 35.0 36.0 58.0 58.1
  SAY #4520 /* ~Глаза зомби расширены, он выхватывает ключ из твоей руки. Затем он поворачивается, все время кивая. «Хорофо... хорофо».~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
~ THEN REPLY #4521 /* ~«А теперь... Как мне выбраться отсюда?»~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~Ваксис получил свой драгоценный ключ от бальзамационной. Должно быть, ему нужны припасы для того, чтобы поддерживать маскировку, раз от него несет во все стороны бальзамирующей жидкостью. ~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",1)
~ THEN REPLY #4522 /* ~«А теперь... Есть кое-что, о чем я хочу узнать...»~ */ DO ~SetGlobal("Embalm_Key_Quest","GLOBAL",3)
~ JOURNAL #64521 /* ~Ваксис получил свой драгоценный ключ от бальзамационной. Должно быть, ему нужны припасы для того, чтобы поддерживать маскировку, раз от него несет во все стороны бальзамирующей жидкостью. ~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
  SAY #4523 /* ~«Фто ты хофефь уфнать?»~ */
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",1)
~ THEN REPLY #64508 /* ~«Как мне выбраться отсюда?»~ */ GOTO 49
  IF ~  Global("Escape_Mortuary","GLOBAL",0)
!Global("Vaxis_Help","GLOBAL",1)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Strong_Arm_Vaxis","GLOBAL",0)
~ THEN REPLY #4524 /* ~«Как мне выбраться отсюда?»~ */ GOTO 49
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #4525 /* ~«Еще раз — где тот портал, о котором ты говорил?»~ */ GOTO 52
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",1)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4526 /* ~«Ты можешь замаскировать меня под зомби?»~ */ GOTO 63
  IF ~  Global("Vaxis_Zombie_Disguise","GLOBAL",2)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4527 /* ~«Ты можешь еще раз замаскировать меня под зомби?»~ */ GOTO 63
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4528 /* ~«Что ты здесь делаешь?»~ */ GOTO 28
  IF ~  GlobalLT("Pharod","GLOBAL",1)
~ THEN REPLY #4673 /* ~«Ты знаешь кого-нибудь по имени Фарод?»~ */ GOTO 44
  IF ~  GlobalLT("Journal","GLOBAL",1)
~ THEN REPLY #4530 /* ~«Я потерял дневник. Тебе ничего такого не попадалось?»~ */ GOTO 47
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #4531 /* ~«Что ты можешь сказать о Дхолле?»~ */ GOTO 53
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #4532 /* ~«Что ты можешь сказать о Дейонарре?»~ */ GOTO 54
  IF ~  GlobalGT("Soego","GLOBAL",0)
~ THEN REPLY #4533 /* ~«Что ты можешь сказать о Соэго?»~ */ GOTO 55
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4534 /* ~«Как ты приобрел такой внешний вид?»~ */ GOTO 60
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4535 /* ~«Как ты приобрел такой внешний вид?»~ */ GOTO 39
  IF ~~ THEN REPLY #4536 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.6
  SAY #4537 /* ~«Фа-ОД? — нахмурившись, зомби напряженно думает. — Я... фвыфал, фто он фиет де-то ф Уле, — он качает головой. — Нефнаю где, — он снова хмурится. — Твуфявые фодят ф ума, они не ЛЮЯТ Фа-ода».~ */
  IF ~~ THEN REPLY #4538 /* ~«Улей?»~ */ GOTO 45
  IF ~~ THEN REPLY #4539 /* ~«А почему тленные не любят Фарода?»~ */ JOURNAL #64522 /* ~Похоже, тленные и Фарод не в лучших отношениях... Ваксис сказал мне, что Фарод привез в Морг слишком много тел, и тленные подозревают, что он просто убивает их до положенного срока. ~ */ GOTO 46
  IF ~~ THEN REPLY #4540 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4541 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #4542 /* ~«Твуффобы фнауви».~ */
  IF ~~ THEN REPLY #4543 /* ~«А почему тленные не любят Фарода?»~ */ JOURNAL #64522 /* ~Похоже, тленные и Фарод не в лучших отношениях... Ваксис сказал мне, что Фарод привез в Морг слишком много тел, и тленные подозревают, что он просто убивает их до положенного срока. ~ */ GOTO 46
  IF ~~ THEN REPLY #4544 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4545 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 45.0
  SAY #4546 /* ~«Он фбофик. Пвинофит твупы ф Моуг, пводает их твуфвым. Пвинофит МУОГО твупоф. Твуфявые ненают, откуда он их беет. Дуают, он пифет пьей в кьигу мертфых».~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4547 /* ~«Э-э... что?»~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4548 /* ~«Э-э... что?»~ */ EXTERN ~DMORTE~ 91
  IF ~~ THEN REPLY #4549 /* ~«А... Есть кое-что еще, о чем я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4550 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 43.7
  SAY #4551 /* ~«Ненают. Какой-то пей обфифтил тея?»~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4552 /* ~«Э-э... что?»~ */ GOTO 48
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #4553 /* ~«Э-э... что?»~ */ EXTERN ~DMORTE~ 92
  IF ~~ THEN REPLY #4554 /* ~«А... Есть кое-что еще, о чем я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4555 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #4556 /* ~Зомби пытается сказать, умолкает, пытается снова, затем вздыхает. Очевидно, что доходчивей он сказать не сможет.~ */
  IF ~~ THEN REPLY #4557 /* ~«А... Есть кое-что еще, о чем я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4558 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 30.1 42.0 43.0 43.1
  SAY #4559 /* ~Зомби ворчит. «Ты мовешь убевафь феев поуталы, — он взмахивает руками. — Пуф».~ */
  IF ~~ THEN REPLY #4560 /* ~«Порталы? Что за порталы?»~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 33.0 49.0
  SAY #4563 /* ~«Поуталы... — зомби окидывает широким жестом пространство вокруг себя. — Поуталы вефде».~ */
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
Global("Embalm_Key_Quest","GLOBAL",0)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4564 /* ~«Ты можешь показать мне один из этих порталов?»~ */ GOTO 31
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",0)
GlobalGT("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64509 /* ~«Ты можешь показать мне один из этих порталов?»~ */ GOTO 51
  IF ~  Global("Strong_Arm_Vaxis","GLOBAL",1)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #64510 /* ~«Ты можешь показать мне один из этих порталов?»~ */ GOTO 51
  IF ~  Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #64511 /* ~«Ты можешь показать мне один из этих порталов?»~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 50.2 50.3 72.0
  SAY #4567 /* ~Зомби кивает. «Тее надо выити, пойти ф арку на певом этаже, февео-фападный фал... Тее нувна кофть паица, фогнутоо в кьюк... — он поднимает указательный палец и сгибает его в крюк. — Ефли у тея кьюч, иди в авку и пуыгай ф тайную гуобицу. И ты выбралфя отфюда. Тайный выфод, — он энергично кивает. — Там ты мовефь ОДОФНУТЬ».~ */
  IF ~  !PartyHasItem("BoneChrm")
~ THEN REPLY #64527 /* ~«Кость согнутого пальца? А где можно найти ее?»~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64528 /* ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». Он не знает, где можно найти кость согнутого пальца, но, тем не менее, он посоветовал мне поискать на верхнем этаже Морга. ~ */ GOTO 77
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4568 /* ~«У меня есть другие вопросы...»~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». ~ */ GOTO 43
  IF ~  PartyHasItem("BoneChrm")
~ THEN REPLY #4569 /* ~«Арка в северо-западной комнате, на первом этаже? Хорошо, я проверю».~ */ DO ~AddexperienceParty(250)
SetGlobal("Vaxis_Help","GLOBAL",1)
~ JOURNAL #64529 /* ~Ваксис сообщил мне о секретном портале в северо-западной комнате на первом этаже Морга. Если у меня с собой будет кость согнутого пальца, то она активирует его и перенесет меня в тайную гробницу, где я, по словам Ваксиса, смогу «отдохнуть». ~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 43.2
  SAY #4570 /* ~«Фуфай! Фапомиай! — в голосе зомби слышна раздраженность. — Арка, пеувый этаж, феверо-фападная коуната... — он поднимает указательный палец и сгибает его. — Тее нувна кофть паица, фогнутая. Ты попаефь ф тайную гуобицу. Тайный выфод. Там ты мовефь ОДОФНУТЬ».~ */
  IF ~~ THEN REPLY #4571 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4572 /* ~«Арка в северо-западной комнате, на первом этаже, открывается костью изогнутого пальца? Хорошо, на этот раз запомнил».~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 43.8
  SAY #4573 /* ~«Пифец, — пожимает плечами. — Фтарый. Вовтый».~ */
  IF ~~ THEN REPLY #4574 /* ~«Полагаю, добавить больше нечего. Я хочу знать кое-что еще...»~ */ GOTO 43
  IF ~~ THEN REPLY #4575 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 43.9
  SAY #4576 /* ~«Э? — хмурится. — Фто она?»~ */
  IF ~~ THEN REPLY #4577 /* ~«Забудь. Я хочу знать кое-что еще...»~ */ GOTO 43
  IF ~~ THEN REPLY #4578 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 43.10
  SAY #4579 /* ~«Пвоводник. На пеувом этаже. Фто ты хофефь фнать о нем?»~ */
  IF ~~ THEN REPLY #4580 /* ~«Что ты знаешь о нем?»~ */ DO ~SetGlobal("Vaxis_Exposes_Soego","GLOBAL",1)
~ JOURNAL #64530 /* ~Ваксис как-то странно отозвался о Соэго — сказал, что тот похож на «крысу», что бы ЭТО ни значило. Довольно иронично, что Ваксис обвиняет кого-то в странностях.~ */ GOTO 56
  IF ~~ THEN REPLY #4581 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #4582 /* ~«Фтвааный. Не твуфявый, не анавфифт. Гуава двугие... — пожимает плечами. — Как у квыфы. Фтванно».~ */
  IF ~~ THEN REPLY #4583 /* ~«Хорошо, что только он странный в этом месте. Я хочу знать кое-что еще...»~ */ GOTO 43
  IF ~~ THEN REPLY #4584 /* ~«Неважно. Позже у меня могут появиться другие вопросы. Никуда не уходи».~ */ EXIT
END

IF ~  GlobalGT("Vaxis","GLOBAL",0)
~ THEN BEGIN 57 // from:
  SAY #4585 /* ~Ты видишь фальшивого зомби. Ты удивлен его маскировке... его дыхание едва заметно, ты практически не можешь уловить его.~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
~ THEN REPLY #4586 /* ~«Приветствую».~ */ GOTO 58
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
~ THEN REPLY #4587 /* ~«Приветствую».~ */ GOTO 58
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",0)
~ THEN REPLY #4588 /* ~«Приветствую».~ */ GOTO 59
  IF ~  !Global("Embalm_Key_Quest","GLOBAL",1)
!Global("Embalm_Key_Quest","GLOBAL",2)
Global("Vaxis_Orders","GLOBAL",1)
~ THEN REPLY #4589 /* ~«Приветствую».~ */ GOTO 58
  IF ~~ THEN REPLY #4590 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0 57.1 57.3
  SAY #4591 /* ~Зомби быстро оглядывается вокруг, высматривая соглядатая, затем поворачивается к тебе: «Фто?»~ */
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
PartyHasItem("KeyEm")
~ THEN REPLY #4592 /* ~«Вот ключ к бальзамационной комнате, который ты хотел».~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",2)
PartyHasItem("KeyEm")
~ THEN REPLY #4593 /* ~«Вот ключ к бальзамационной комнате, который ты хотел».~ */ DO ~AddexperienceParty(250)
TakePartyItemNum("KeyEm",1)
~ GOTO 42
  IF ~  Global("Embalm_Key_Quest","GLOBAL",1)
!PartyHasItem("KeyEm")
~ THEN REPLY #4594 /* ~«Еще раз — где тот ключ, о котором ты говорил?»~ */ GOTO 36
  IF ~~ THEN REPLY #4595 /* ~«У меня есть несколько вопросов к тебе...»~ */ GOTO 43
  IF ~~ THEN REPLY #4596 /* ~«Неважно».~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.2
  SAY #4597 /* ~Зомби быстро оглядывается вокруг, высматривая соглядатая, затем шипит на тебя. «Ухои! Вон!»~ */
  IF ~~ THEN REPLY #4598 /* ~«Нет. Сначала у меня несколько вопросов к тебе...»~ */ GOTO 43
  IF ~  Global("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4599 /* ~«Тогда неважно».~ */ GOTO 4
  IF ~  GlobalGT("Embalm_Key_Quest","GLOBAL",0)
~ THEN REPLY #4600 /* ~«Тогда неважно».~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 43.11
  SAY #4601 /* ~«Я ховоф ф мафкироуке. У мея ефть фрамы. Я наил на сея мноо байфамируфеи фидкофти. Иф мея поуфифя ХООФЫЙ фомби, — зомби хихикает через зашитые губы, потом стучит себя по голове. — Твуфяки тууупые».~ */
  IF ~~ THEN REPLY #4602 /* ~«Ага, уж кто тупой, так это они. Это точно».~ */ GOTO 61
  IF ~~ THEN REPLY #4603 /* ~«Это не больно?»~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4604 /* ~«Довольно неплохая маскировка. Скажи... а ты можешь и меня замаскировать под зомби?»~ */ GOTO 63
  IF ~~ THEN REPLY #4605 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4606 /* ~«Мне нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #4607 /* ~Зомби определенно не понял сарказма, энергично кивая словам. «Тупие твуфявые. Ив мея ХОВОФЫЙ фомби».~ */
  IF ~~ THEN REPLY #4608 /* ~«Это не больно?»~ */ GOTO 62
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4609 /* ~«Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?»~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4610 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #4611 /* ~«Мне нужно идти. Прощай».~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4612 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,9,CHR)
~ THEN REPLY #4613 /* ~«Мне нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.1 61.0
  SAY #4614 /* ~Он смотрит на твои шрамы. «А как ты думаефь? По мие, нет, не офень, — бьет себя по груди. — Я КИЕПКИЙ».~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
!Global("Appearance","GLOBAL",1)
~ THEN REPLY #4615 /* ~«Довольно неплохая маскировка. А ты можешь и меня замаскировать под зомби?»~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4616 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 64
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #4617 /* ~«Мне нужно идти. Прощай».~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4618 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #4674 /* ~«Мне нужно идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 43.3 43.4 60.2 61.1 62.0 64.1 64.2
  SAY #4619 /* ~Что-то бормоча, он несколько раз оглядывает тебя с ног до головы, затем кивает. «Уху. Мие нуна банка баифама, — показывает на шрамы на твоей груди. — И игоука ф ниткой».~ */
  IF ~  PartyHasItem("Embalm")
PartyHasItem("Needle")
~ THEN REPLY #4620 /* ~«На, бери».~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",2)
DestroyPartyItem("Embalm",FALSE)
DestroyPartyItem("Needle",FALSE)
~ GOTO 65
  IF ~~ THEN REPLY #4621 /* ~«Я подумаю над этим. У меня есть еще несколько вопросов...»~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4622 /* ~«Может, быть в другой раз, спасибо... Прощай».~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #4623 /* ~«Бальзамирующая жидкость и нитка? Пойду, поищу их».~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 64 // from: 61.2 61.3 62.1 62.2
  SAY #4624 /* ~Странным взглядом он осматривает тебя с ног до головы. «Ты будефь ХОВОФЫМ фомби. Мовно фделать из тея фомби? ХОВОФАЯ мафкиофка».~ */
  IF ~~ THEN REPLY #4625 /* ~«Спасибо. У меня есть другие вопросы к тебе...»~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ GOTO 43
  IF ~~ THEN REPLY #4626 /* ~«Конечно. Ты сможешь сделать это?»~ */ GOTO 63
  IF ~~ THEN REPLY #4627 /* ~«Почему бы и нет? Я и так чувствую себя ходячим мертвецом».~ */ GOTO 63
  IF ~~ THEN REPLY #4628 /* ~«Нет... нет... так тоже неплохо. Прощай».~ */ DO ~SetGlobal("Vaxis_Zombie_Disguise","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.0
  SAY #4629 /* ~Зомби берет у тебя предметы и приступает к работе...~ */
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",0)
~ THEN REPLY #4630 /* ~Попробовать не двигаться.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
AddexperienceParty(500)
SetGlobal("Vaxis_Zombie_XP","GLOBAL",1)
~ GOTO 66
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",0)
~ THEN REPLY #4631 /* ~Попробовать не двигаться.~ */ DO ~SetGlobal("Morte_Vaxis_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 94
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_1","GLOBAL",1)
~ THEN REPLY #4632 /* ~Попробовать не двигаться.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
  IF ~  !NearbyDialog("DMorte")
Global("Vaxis_Zombie_XP","GLOBAL",1)
~ THEN REPLY #64533 /* ~Попробовать не двигаться.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
SetNamelessDisguise(ZOMBIE)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.2 65.3
  SAY #4633 /* ~Зомби обильно натирает твое тело бальзамирующей жидкостью, затем широкими стежками зашивает несколько шрамов. Начав с ног, он медленно поднимается наверх, зашивая в конце концов твои губы.~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #4634 /* ~«Ммм-ммф-ммм... Фпафибо».~ */ GOTO 67
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",0)
~ THEN REPLY #4635 /* ~«Ммм-ммф-ммм... Фпафибо».~ */ DO ~SetGlobal("Morte_Vaxis_Quip_2","GLOBAL",1)
~ EXTERN ~DMORTE~ 95
  IF ~  NearbyDialog("DMorte")
Global("Morte_Vaxis_Quip_2","GLOBAL",1)
~ THEN REPLY #4636 /* ~«Ммм-ммф-ммм... Фпафибо».~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.2
  SAY #4637 /* ~Зомби держит тебя за руку. «Офтововно! Вафгоов вафофет фвы, науфив мафкивку. Фомби не говоят. Поняу? Говои медвенно, офтовоно».

^NПРИМЕЧАНИЕ: Помните, что никто не ожидает, что зомби будет говорить. Если вы, будучи зомби, заговорите с кем-нибудь, вы рискуете раскрыть свою маскировку.^-~ */
  IF ~~ THEN REPLY #4638 /* ~«Ммф... ммм. Я... понимаю».~ */ JOURNAL #64531 /* ~В обмен на иголку, нитку и бальзамирующую жидкость Ваксис замаскировал меня под зомби. Он предупредил меня, что бег может разрушить маскировку, и что я не должен ни с кем разговаривать, будучи замаскированным. Зомби ведь «не разговаривают». ~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #4639 /* ~Зомби хмурится. «Мафкирофка не деужится доуго... бальфам выфыхает, фвы рвутфя, — он жмет плечами. — Фнаружи Морга от нее нифего не офтанетфя. Не бегай! Ефли ты побежифь, то науфифь вфю мафкирофку».

^NПРИМЕЧАНИЕ: Вооружение и/или бег немедленно разрушит вашу маскировку. Если вы найдете новое оружие, не используйте его до тех пор, пока вам больше не понадобится маскировка. Если у вас включен автобег и вы хотите сохранить маскировку, проверьте, что он отключен сразу же, как закончите разговаривать с Ваксисом.^-~ */
  IF ~~ THEN REPLY #4640 /* ~Снова кивнуть, уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #4641 /* ~«Зомби» хмурится. «Фде-то я тея виел. Мы не виелифь раньфе?»~ */
  IF ~~ THEN REPLY #4642 /* ~«Может быть. Где ты меня видел?»~ */ EXIT
  IF ~~ THEN REPLY #4643 /* ~X. ~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 23.0 23.2 71.0 71.1
  SAY #4644 /* ~К твоему удивлению, зомби отступается от тебя... Он начинает со страхом озираться.~ */
  IF ~~ THEN REPLY #4645 /* ~«Не хочешь говорить? Тогда приготовься кричать».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4646 /* ~«Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?»~ */ GOTO 29
  IF ~~ THEN REPLY #4647 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4648 /* ~«Тогда забудь об этом. Прощай, *зомби*».~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #4649 /* ~Зомби смотрит на вас обоих с явной опаской, продолжая молчать... но что-то в его выражении говорит тебе, что предположение Морта верно.~ */
  IF ~~ THEN REPLY #4650 /* ~«Значит, анархисты? Так за кем вы тут следите?»~ */ GOTO 70
  IF ~~ THEN REPLY #4651 /* ~«Если ты скажешь мне прямо сейчас, почему анархисты следят за этим местом, боли будет ГОРАЗДО меньше».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vaxis_1","GLOBALGood",-1)
~ GOTO 70
  IF ~~ THEN REPLY #4652 /* ~«Тогда неважно. Так чем же, по твоим наблюдениям, занимаются тленные?»~ */ GOTO 29
  IF ~~ THEN REPLY #4653 /* ~«Есть еще кое-что, что я хочу узнать...»~ */ GOTO 43
  IF ~~ THEN REPLY #4654 /* ~«Тогда забудь об этом. Прощай, *зомби*».~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 30.2
  SAY #4655 /* ~Зомби выглядит сбитым с толку, но затем пожимает плечами, начиная копаться в своей заляпанной тунике. «Вфе тихо, твувявыя не февелятся, нифего новоо с пофледнего отфета». Спустя несколько секунд он протягивает тебе какие-то предметы, затем ворчит: «Вот» Судя по запаху, они прятались очень глубоко, чтобы их невозможно было найти в случае обыска. «Я фкоро уйду».~ */
  IF ~  Global("Vaxis_Help","GLOBAL",0)
~ THEN REPLY #4656 /* ~«Уйдешь? Как?»~ */ GOTO 51
  IF ~  Global("Vaxis_Help","GLOBAL",1)
~ THEN REPLY #64532 /* ~«Отлично. Прощай, Ваксис».~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #4658 /* ~Зомби ворчит: «Поутал в арке — пеувый этав, феверо-фападная коумата, нувен кофтяной паиец дья откуывания, — он кивает. — Удафи».~ */
  IF ~~ THEN REPLY #4659 /* ~«Э-э... Ладно».~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 34.0
  SAY #4660 /* ~Глаза зомби превращаются в щелочки, он шипит на тебя: «Ты ПЫТАЕФФЯ фапифать мея ф кьигу мертфых? У мея фдефь пвяфуффа двуфья, у тея фдефь *никоо*. Твониф мея — они тея пвиконфят».~ */
  IF ~~ THEN REPLY #4661 /* ~«Это был твой последний шанс. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4662 /* ~«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже... *зомби*!»~ */ GOTO 4
END

IF ~~ THEN BEGIN 75 // from: 31.4 32.3 35.4
  SAY #4663 /* ~На миг он кажется испуганным, потом осматривает тебя, и по его лицу расползается ухмылка. «ТЫ пытаеффя фапифать МЕЯ ф кьигу мертфых? У мея фдефь пвячуффа двуфья, у тея фдефь *никоо*. Твонеф мея — они тея пвиконфят».~ */
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #4664 /* ~«А что, если я раскрою твою маскировку страже?»~ */ GOTO 33
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #4665 /* ~«А что, если я раскрою твою маскировку страже?»~ */ GOTO 76
  IF ~~ THEN REPLY #4666 /* ~«Я рискну. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4667 /* ~«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже... *зомби*».~ */ GOTO 4
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #4668 /* ~Глаза зомби превращаются в щелочки, он шипит на тебя: «Ты подеилфя фо мной фвоим фекретом, я подеюфь фоим ф *тоой*. Фдефь у мея прячуффа друфья, у тея фдефь *никоо*. Твуфьявые тея уют. Я фбегу».~ */
  IF ~~ THEN REPLY #4669 /* ~«Это был твой последний шанс, труп. Готовься к смерти».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #4670 /* ~«Тогда гори в аду. Я ухожу. Тебе лучше быть настороже... *зомби*».~ */ GOTO 4
END

IF ~~ THEN BEGIN 77 // from: 51.0
  SAY #64523 /* ~Он пожимает плечами. «Доувен быть де-то фдефь... Ифи на фкладах навеуху. Мовет быть, там».~ */
  IF ~~ THEN REPLY #64524 /* ~«Хорошо. У меня есть другие вопросы...»~ */ GOTO 43
  IF ~~ THEN REPLY #64525 /* ~«Хорошо. Я проверю наверху, есть ли там изогнутая кость пальца, потом пойду на первый этаж, к одной из арок в северо-западной комнате. Все ясно».~ */ EXIT
END
