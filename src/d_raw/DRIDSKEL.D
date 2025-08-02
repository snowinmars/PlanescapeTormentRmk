// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRIDSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DRIDSKEL~

IF ~  GlobalLT("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20324 /* ~Этот скелет мотает головой и хихикает себе под нос. Временами он начинает громко хохотать, закусывая свою костлявую руку, чтобы остановиться. Он довольно стар, так что на его костях не осталось плоти... только несколько цветных тряпок.~ */
  IF ~~ THEN REPLY #20356 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #20357 /* ~Не обращать на него внимания, пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20325 /* ~«Ага, здравствуй!» Он давится от смеха, при каждом выдохе из него вылетают облачка пыли.~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20358 /* ~«Я так понял, у тебя есть сложная загадка».~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20359 /* ~«Мне нужен ответ на одну из твоих загадок».~ */ GOTO 3
  IF ~~ THEN REPLY #20360 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #20361 /* ~«Мне пора идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #20326 /* ~«Тебе бы поискать ответы в другом месте, мне неохота слушать твои вопросы, — он прикрывает рот, хихикая. — Знаю, это ужасно грубо, но тебе придется простить меня».~ */
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20362 /* ~«Я так понял, у тебя есть сложная загадка».~ */ GOTO 5
  IF ~  Global("DN_Riddle","AR1500",1)
~ THEN REPLY #20363 /* ~«Мне нужен ответ на одну из твоих загадок».~ */ GOTO 3
  IF ~~ THEN REPLY #20364 /* ~«Хорошо, я найду кого-нибудь еще. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1
  SAY #20327 /* ~Он насмешливо хихикает. «Не думаю!» Выражения твоего лица только усиливает его смех, он начинает клацать зубами.~ */
  IF ~~ THEN REPLY #20365 /* ~«И что за загадка?»~ */ GOTO 5
  IF ~~ THEN REPLY #20366 /* ~Правда: «Говори, иначе я разобью тебя на маленькие хихикающие кусочки».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20367 /* ~Блеф: «Говори, иначе я разобью тебя на маленькие хихикающие кусочки».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20368 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2 15.1 15.2
  SAY #20328 /* ~Смех внезапно прекращается. «Пф!» — скелет отворачивается от тебя.~ */
  IF ~~ THEN REPLY #20370 /* ~Уйти.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0 3.0
  SAY #20329 /* ~Он кивает, хихикая. «Хочешь ее услыхать?»~ */
  IF ~~ THEN REPLY #20371 /* ~«Да».~ */ GOTO 6
  IF ~~ THEN REPLY #20372 /* ~«Нет, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20330 /* ~«Гм! Так, вспомни слова, которые кончаются на '-люс'. Вот два из них — полюс и плюс. Всеобщий планарный язык содержит три слова... Какое третье слово? Оно употребляется в каждодневной речи. Если ты слушал внимательно, то я его уже произнес».~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20373 /* ~«Конечно. Это 'язык'».~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(6250)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20374 /* ~«Это... э... хм».~ */ GOTO 14
  IF ~~ THEN REPLY #20375 /* ~«Я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #20331 /* ~«А-а-а! Как ты узнал?!»~ */
  IF ~~ THEN REPLY #20376 /* ~«Первые два предложения проигнорировать: они просто запутывают тебя. Вспомни: 'всеобщий — планарный — язык' содержит три слова... Третье слово — 'язык'».~ */ GOTO 9
  IF ~~ THEN REPLY #20377 /* ~Уйти, смеясь.~ */ GOTO 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #20332 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 29.0 30.0
  SAY #20333 /* ~«Эх, троллиные отбросы! А, ладно. Только больше никому не говори ответ. Хотя бы пообещай мне это, добро?»~ */
  IF ~~ THEN REPLY #20378 /* ~«Почему я не должен?»~ */ GOTO 10
  IF ~~ THEN REPLY #20379 /* ~«Конечно. Я обещаю никому не рассказывать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20380 /* ~«Я не буду ничего обещать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.0
  SAY #20334 /* ~«Потому что мне нравится, когда люди стоят в ступоре, гадая загадку целую вечность, — он злобно хихикает, прикрывая рот костлявой рукой. — Ну как, обещаешь?»~ */
  IF ~~ THEN REPLY #20381 /* ~«Конечно. Я обещаю никому не рассказывать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20382 /* ~«Я не буду ничего обещать. Прощай».~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",2)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 11 // from:
  SAY #20335 /* ~«Запомни... — он прерывается, чтобы похихикать. — Никому не говори ответ!»~ */
  IF ~~ THEN REPLY #20383 /* ~«Хорошо, хорошо. Прощай».~ */ EXIT
END

IF ~  Global("DN_Riddle","AR1500",3)
Global("DN_Riddler","AR1500",0)
~ THEN BEGIN 12 // from:
  SAY #20336 /* ~«Злодей! Портишь мне веселье, гореть бы тебе в Бааторе! Плюнул бы в тебя, да нечем! Пф!» Скелет отворачивается от тебя.~ */
  IF ~~ THEN REPLY #20384 /* ~Уйти.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 30.1
  SAY #20337 /* ~«Погоди, погоди! Никому не говори ответ. Хотя бы пообещай, добро?»~ */
  IF ~~ THEN REPLY #20385 /* ~«Почему я не должен?»~ */ GOTO 10
  IF ~~ THEN REPLY #20386 /* ~«Конечно. Я обещаю никому не рассказывать. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Riddling_1","GLOBALLaw",1)
~ EXIT
  IF ~~ THEN REPLY #20387 /* ~«Я не буду ничего обещать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.1
  SAY #20338 /* ~Скелет взрывается в припадке язвительного хохота. Он тычет в тебя костлявым пальцем и держится за воображаемый живот, смеясь и клацая зубами.~ */
  IF ~~ THEN REPLY #20388 /* ~«Ладно, ладно, какой ответ?»~ */ GOTO 15
  IF ~~ THEN REPLY #20389 /* ~«Хе. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #20339 /* ~«Не скажу! *Не скажу*!» Выражения твоего лица только усиливает его смех.~ */
  IF ~~ THEN REPLY #20390 /* ~«Что, если мне удастся поставить тебя в тупик? Тогда ты мне скажешь?»~ */ GOTO 16
  IF ~~ THEN REPLY #20391 /* ~Правда: «Говори, иначе я разобью тебя на маленькие хихикающие кусочки».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Riddling_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20392 /* ~Блеф: «Говори, иначе я разобью тебя на маленькие хихикающие кусочки».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Riddling_1","GLOBALLaw",-1)
~ GOTO 4
  IF ~~ THEN REPLY #20393 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #20340 /* ~Смех внезапно прерывается. «Что это? — он прикладывает костлявую ладонь ребром к виску. — Я слышу... вызов? Да... да... давай! Но если ты проиграешь или уйдешь на полпути, я больше не буду с тобой разговаривать!»~ */
  IF ~~ THEN REPLY #20394 /* ~«Хорошо. Давай начнем».~ */ GOTO 17
  IF ~~ THEN REPLY #20395 /* ~«Не бери в голову. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #20341 /* ~Он энергично кивает.~ */
  IF ~~ THEN REPLY #20396 /* ~«Хм. Что дороже: фунт золотых монет достоинством по сотне или полфунта по двести?»~ */ GOTO 18
  IF ~~ THEN REPLY #20397 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #20342 /* ~«Просто, слишком просто! Фунт золота *всегда* дороже половины фунта! Глупо, глупо!» — хихикает он.~ */
  IF ~~ THEN REPLY #20398 /* ~«Отлично. Твоя очередь».~ */ GOTO 19
  IF ~~ THEN REPLY #20399 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #20343 /* ~Скелет наклоняется и рисует на пыли простенькое личико. Указывая на него, он произносит: «Дядей и братьев нет у меня, но его отец — сын моего отца. Кто он, а?»~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #20400 /* ~«Он твой сын».~ */ DO ~AddexperienceParty(625)
~ GOTO 20
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #20401 /* ~«Я... не знаю». ~ */ GOTO 31
  IF ~~ THEN REPLY #20402 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #20344 /* ~«Ха! Твоя очередь».~ */
  IF ~~ THEN REPLY #20403 /* ~«Кто сделал — тому не нужно, кто купил — тот не пользуется, кто пользуется — тот не видит. Что это?»~ */ GOTO 21
  IF ~~ THEN REPLY #20404 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #20345 /* ~Скелет по-детски хихикает. «Неправда, неправда! Ответ — гроб, а свой-то я точно видел!»~ */
  IF ~~ THEN REPLY #20405 /* ~«Хорошо. Теперь твоя очередь».~ */ GOTO 22
  IF ~~ THEN REPLY #20406 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #20346 /* ~«Какое слово из одиннадцати букв даже величайшие из смертных мудрецов произносят неправильно?»~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #20407 /* ~«Хм. 'Неправильно'».~ */ DO ~AddexperienceParty(1250)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #20408 /* ~«Я... не знаю». ~ */ GOTO 31
  IF ~~ THEN REPLY #20409 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #20347 /* ~Он грозит тебе кулаком. «О-о-о, проклятье! Давай».~ */
  IF ~~ THEN REPLY #20410 /* ~«Рассыпалось к ночи золотое зерно, глянули утром — нет ничего».~ */ GOTO 24
  IF ~~ THEN REPLY #20411 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #20348 /* ~«Э... хм. А... звезды! Звезды, хи-хи!»~ */
  IF ~~ THEN REPLY #20412 /* ~«Да, верно. Загадывай».~ */ GOTO 25
  IF ~~ THEN REPLY #20413 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #20349 /* ~Скелет хрустит пальцами. «Что было завтра, а будет вчера?»~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #20414 /* ~«Ответ... а! 'Сегодня'».~ */ DO ~AddexperienceParty(1875)
~ GOTO 26
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #20415 /* ~«Я... не знаю». ~ */ GOTO 31
  IF ~~ THEN REPLY #20416 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #20350 /* ~«А-а-а! Да, точно, это сегодня. Теперь ты».~ */
  IF ~~ THEN REPLY #20417 /* ~«Сейчас. Чем кончаются жизнь и смерть?»~ */ GOTO 27
  IF ~~ THEN REPLY #20418 /* ~«Не бери в голову. Прощай».~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #20351 /* ~Скелет начинает саркастически хихикать, но вдруг останавливается. «А... э-э. Вот дела».~ */
  IF ~~ THEN REPLY #20419 /* ~«Ну? Я жду ответа».~ */ GOTO 28
  IF ~~ THEN REPLY #20420 /* ~Самому издевательски посмеяться над ним.~ */ GOTO 28
  IF ~~ THEN REPLY #20421 /* ~Терпеливо ждать.~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1 27.2
  SAY #20352 /* ~Скелет опускает голову. «Я... не знаю».~ */
  IF ~~ THEN REPLY #20422 /* ~«Скажи мне ответ на твою первую загадку, а я скажу тебе ответ на свою».~ */ DO ~SetGlobal("DN_Riddle","AR1500",2)
AddexperienceParty(2500)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #20353 /* ~Он кивает. «Это язык. Первое предложение и половину второго можно проигнорировать: они просто запутывают тебя. Вспомни: 'всеобщий — планарный — язык' содержит три слова... Третье слово — 'язык', — он громко вздыхает. — Твой ответ?»~ */
  IF ~~ THEN REPLY #20423 /* ~«Мягким знаком».~ */ GOTO 9
  IF ~~ THEN REPLY #20424 /* ~«Без шансов, без шансов. Прощай».~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #20354 /* ~«Хм... занимательно. Так какой же ответ? Ой... погоди! Куда ты уходишь?»~ */
  IF ~~ THEN REPLY #20425 /* ~«Хорошо. Мягким знаком».~ */ GOTO 9
  IF ~~ THEN REPLY #20426 /* ~Посмеяться и уйти.~ */ GOTO 13
END

IF ~~ THEN BEGIN 31 // from: 19.1 22.1 25.1
  SAY #20355 /* ~Скелета трясет от оглушающего хохота. Его гогот эхом отражается от стен катакомб. Он весело крутит черепом, без конца клацая зубами.~ */
  IF ~~ THEN REPLY #20428 /* ~Уйти.~ */ DO ~SetGlobal("DN_Riddler","AR1500",1)
~ EXIT
END

IF ~  Global("DN_Riddler","AR1500",1)
~ THEN BEGIN 32 // from:
  SAY #48939 /* ~Скелет игнорирует все попытки заговорить с ним.~ */
  IF ~~ THEN REPLY #48940 /* ~Уйти.~ */ EXIT
END
