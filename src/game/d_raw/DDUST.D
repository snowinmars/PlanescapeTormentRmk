// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUST~

IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #300 /* ~Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.~ */
  IF ~~ THEN REPLY #302 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #303 /* ~«Кто ты?»~ */ GOTO 1
  IF ~~ THEN REPLY #304 /* ~«Что это за место?»~ */ GOTO 1
  IF ~~ THEN REPLY #305 /* ~«У меня есть пара вопросов...» ~ */ GOTO 1
  IF ~~ THEN REPLY #306 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2 0.3
  SAY #307 /* ~Тленный подпрыгивает от неожиданности. Затем он поворачивает к тебе голову. Он выглядит потрясенным: должно быть, маскировка у тебя весьма неплохая.~ */
  IF ~~ THEN REPLY #310 /* ~Воспользоваться эффектом неожиданности и свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 41
  IF ~~ THEN REPLY #312 /* ~«У меня есть пара вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #1332 /* ~Уйти. Быстро.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
  SAY #309 /* ~Тленный отступает на шаг, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.~ */
  IF ~~ THEN REPLY #313 /* ~«Ну хорошо...»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #314 /* ~Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью. Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.~ */
  IF ~~ THEN REPLY #315 /* ~«Приветствую».~ */ GOTO 4
  IF ~~ THEN REPLY #316 /* ~«Кто ты?»~ */ GOTO 4
  IF ~~ THEN REPLY #317 /* ~«Что это за место?»~ */ GOTO 4
  IF ~~ THEN REPLY #319 /* ~«У меня есть пара вопросов...» ~ */ GOTO 4
  IF ~~ THEN REPLY #382 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2 3.3 40.2 40.3
  SAY #321 /* ~Тленный медленно поднимает свою голову и оборачивается к тебе. «Ты потерялся?»~ */
  IF ~~ THEN REPLY #322 /* ~«Да».~ */ GOTO 5
  IF ~~ THEN REPLY #323 /* ~«Нет».~ */ GOTO 6
  IF ~~ THEN REPLY #324 /* ~«Нет, я не потерялся. У меня есть несколько вопросов...»~ */ GOTO 6
  IF ~~ THEN REPLY #325 /* ~«Прощай».~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.3 6.4 16.2 51.1
  SAY #326 /* ~«Я позову стражу, они тебя живо выведут. Погоди минуточку».~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #327 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #328 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 41
  IF ~~ THEN REPLY #329 /* ~Уйти. Быстро.~ */ GOTO 2
  IF ~~ THEN REPLY #1333 /* ~Подождать.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 4.1 4.2 51.2 51.3
  SAY #330 /* ~«Если ты не потерялся, что же ты здесь делаешь?»~ */
  IF ~~ THEN REPLY #331 /* ~«Это тебя не касается».~ */ GOTO 7
  IF ~~ THEN REPLY #332 /* ~«Я очнулся на одной из плит в вашей препараторской».~ */ GOTO 8
  IF ~~ THEN REPLY #333 /* ~«Я хочу кое с кем повидаться».~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #334 /* ~«Я пришел сюда на похороны, но, похоже, произошла ошибка».~ */ GOTO 16
  IF ~~ THEN REPLY #337 /* ~Уйти. Быстро.~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 6.0 9.0 20.0
  SAY #335 /* ~«Боюсь, что касается. Может, стражники развяжут твой язык». Тленный отступает на шаг; кажется, он собирается позвать стражников.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #344 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3887 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 41
  IF ~~ THEN REPLY #3888 /* ~«Давай, зови их. Буду рад с ними встретиться».~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 16.0 20.1
  SAY #336 /* ~«Любишь пошутить? Тогда, может, ты поделишься своими шутками со стражниками». Тленный отступает на шаг; кажется, он собирается позвать стражников.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #358 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3885 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 41
  IF ~~ THEN REPLY #3886 /* ~«Давай, зови их. Буду рад с ними встретиться».~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2 20.2
  SAY #338 /* ~«Кого ты хочешь увидеть?»~ */
  IF ~~ THEN REPLY #3922 /* ~«Это не твое дело».~ */ GOTO 7
  IF ~  GlobalGT("Dhall","GLOBAL",0)
Global("Current_Area","GLOBAL",202)
~ THEN REPLY #342 /* ~«Я хочу повидаться с Дхоллом».~ */ GOTO 10
  IF ~  GlobalGT("Dhall","GLOBAL",0)
!Global("Current_Area","GLOBAL",202)
~ THEN REPLY #343 /* ~«Я хочу повидаться с Дхоллом».~ */ GOTO 11
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33183 /* ~«Я хочу повидаться с Дейонаррой».~ */ GOTO 13
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33185 /* ~«Я хочу повидаться с Дейонаррой».~ */ GOTO 12
  IF ~  GlobalGT("Soego","GLOBAL",0)
Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33186 /* ~«Я хочу повидаться с Соэго».~ */ GOTO 15
  IF ~  GlobalGT("Soego","GLOBAL",0)
!Global("Current_Area","GLOBAL",201)
~ THEN REPLY #33187 /* ~«Я хочу повидаться с Соэго».~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedTo(1)
~ THEN REPLY #33189 /* ~Ложь: «Э-э... Адана. Он все еще работает здесь?..»~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
NumTimesTalkedToGT(1)
~ THEN REPLY #33190 /* ~Ложь: «Э-э... Адана. Он все еще работает здесь?..»~ */ GOTO 21
  IF ~~ THEN REPLY #33191 /* ~«Ой, нет. Я оговорился».~ */ GOTO 20
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #345 /* ~«Дхолла можно найти в приемной комнате на этом этаже. Должен предупредить... Дхолл очень занят, а здоровье у него подкошено. Если у тебя к нему несрочное дело, то лучше не беспокоить его».~ */
  IF ~~ THEN REPLY #347 /* ~«Хорошо. Спасибо за информацию».~ */ GOTO 48
END

IF ~~ THEN BEGIN 11 // from: 9.2
  SAY #346 /* ~«Скорее всего, Дхолл в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено. Если у тебя к нему несрочное дело, то лучше не беспокоить его».~ */
  IF ~~ THEN REPLY #348 /* ~«Хорошо. Спасибо за информацию».~ */ GOTO 48
END

IF ~~ THEN BEGIN 12 // from: 9.4 19.1
  SAY #349 /* ~«Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?»~ */
  IF ~~ THEN REPLY #352 /* ~«Скорее всего. Спасибо».~ */ GOTO 48
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #350 /* ~«Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?»~ */
  IF ~~ THEN REPLY #353 /* ~«Скорее всего. Спасибо».~ */ GOTO 48
END

IF ~~ THEN BEGIN 14 // from: 9.6
  SAY #351 /* ~«Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика».~ */
  IF ~~ THEN REPLY #354 /* ~«Отлично. Спасибо».~ */ GOTO 48
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #355 /* ~«Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика».~ */
  IF ~~ THEN REPLY #356 /* ~«Отлично. Спасибо».~ */ GOTO 48
END

IF ~~ THEN BEGIN 16 // from: 6.3 20.3
  SAY #357 /* ~«Кто был погребен? Возможно, служба проводится в другом конце Морга».~ */
  IF ~~ THEN REPLY #359 /* ~«Ты не понимаешь... ошибка в том, что похоронить собирались МЕНЯ».~ */ GOTO 8
  IF ~~ THEN REPLY #360 /* ~«Может быть. Где еще проводят службу?»~ */ GOTO 17
  IF ~~ THEN REPLY #361 /* ~«Ты можешь показать выход отсюда?»~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #362 /* ~«По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах. Тебе известно имя усопшего?»~ */
  IF ~~ THEN REPLY #363 /* ~«Нет».~ */ GOTO 18
  IF ~~ THEN REPLY #364 /* ~«Да».~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #365 /* ~«Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут».~ */
  IF ~~ THEN REPLY #366 /* ~«Отлично. Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #367 /* ~Тленный ждет.~ */
  IF ~~ THEN REPLY #369 /* ~«Прошу прощения... Я оговорился. Мне неизвестно имя усопшего».~ */ GOTO 20
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #370 /* ~«Это имя — Дейонарра».~ */ GOTO 12
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #371 /* ~Ложь: «Меня зовут... э-э, Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 21
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #372 /* ~Ложь: «Меня зовут... э-э, Адан».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #373 /* ~Наклониться вперед, будто собираясь прошептать ему что-то на ухо, а затем свернуть ему шею.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #1335 /* ~Наклониться вперед, будто собираясь прошептать ему что-то на ухо, а затем свернуть ему шею.~ */ GOTO 45
  IF ~~ THEN REPLY #1336 /* ~Убежать от него.~ */ GOTO 2
END

IF ~~ THEN BEGIN 20 // from: 9.9 19.0
  SAY #374 /* ~«Понятно. И что же ты здесь делаешь?»~ */
  IF ~~ THEN REPLY #375 /* ~«Это не твое дело».~ */ GOTO 7
  IF ~~ THEN REPLY #376 /* ~«Я очнулся на одной из плит в вашей препараторской».~ */ GOTO 8
  IF ~~ THEN REPLY #377 /* ~«Я хочу кое с кем повидаться».~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #378 /* ~«Я пришел сюда на похороны, но, похоже, произошла ошибка».~ */ GOTO 16
  IF ~~ THEN REPLY #379 /* ~Убежать от него.~ */ GOTO 2
END

IF ~~ THEN BEGIN 21 // from: 9.7 9.8 19.2 19.3
  SAY #368 /* ~«Это имя мне незнакомо. Справься у одного из проводников у главных ворот... они смогут сориентировать тебя лучше, чем я».~ */
  IF ~~ THEN REPLY #380 /* ~«Хорошо. Я так и сделаю. Прощай».~ */ GOTO 48
END

IF ~  Global("Appearance","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #294 /* ~Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью. Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.~ */
  IF ~~ THEN REPLY #295 /* ~«Приветствую».~ */ GOTO 23
  IF ~~ THEN REPLY #297 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #381 /* ~Он медленно оборачивается, его взгляд мельком скользит по твоей одежде. «Приветствую тебя, посвященный».~ */
  IF ~~ THEN REPLY #383 /* ~«Кто ты?»~ */ GOTO 24
  IF ~~ THEN REPLY #384 /* ~«Что это за место?»~ */ GOTO 25
  IF ~~ THEN REPLY #391 /* ~«У меня есть пара вопросов...» ~ */ GOTO 26
  IF ~~ THEN REPLY #392 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #393 /* ~«У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?»~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #450 /* ~Ложь: «Меня зовут... э-э, Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1337 /* ~Ложь: «Меня зовут... э-э, Адан».~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3904 /* ~«Как меня зовут — не твое дело. Я должен идти. Прощай».~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3905 /* ~«Как меня зовут — не твое дело. Я должен идти. Прощай».~ */ GOTO 46
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #394 /* ~«Это Морг...» Тленная какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное. «Как, ты сказал, тебя зовут?»~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #399 /* ~Ложь: «Меня зовут... э-э, Адан».~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobal("Law","GLOBAL",-1)
~ GOTO 49
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #3906 /* ~Ложь: «Меня зовут... э-э, Адан».~ */ GOTO 49
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3907 /* ~«Как меня зовут — не твое дело. Я должен идти. Прощай».~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3908 /* ~«Как меня зовут — не твое дело. Я должен идти. Прощай».~ */ GOTO 46
END

IF ~~ THEN BEGIN 26 // from: 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
  SAY #400 /* ~Тленный терпеливо ждет твоего продолжения.~ */
  IF ~~ THEN REPLY #401 /* ~«Можешь показать мне выход?»~ */ GOTO 27
  IF ~~ THEN REPLY #402 /* ~«Ты знаешь кого-нибудь по имени Фарод?»~ */ GOTO 28
  IF ~~ THEN REPLY #403 /* ~«Я потерял дневник. Тебе ничего такого не попадалось?»~ */ GOTO 39
  IF ~~ THEN REPLY #404 /* ~«Неважно. Извини за беспокойство».~ */ GOTO 48
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #405 /* ~«Ты можешь просто выйти через главные ворота. Они на первом этаже».~ */
  IF ~~ THEN REPLY #406 /* ~«У меня есть другие вопросы...»~ */ GOTO 26
  IF ~~ THEN REPLY #407 /* ~«Спасибо. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #408 /* ~«Это имя... — тленный на секунду умолкает. — Это имя *звучит* знакомо... Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше».~ */
  IF ~~ THEN REPLY #409 /* ~«Сборщика?»~ */ GOTO 29
  IF ~~ THEN REPLY #410 /* ~«Дхолл?»~ */ GOTO 30
  IF ~~ THEN REPLY #411 /* ~«У меня есть другие вопросы...»~ */ GOTO 26
  IF ~~ THEN REPLY #425 /* ~«Спасибо за уделенное время. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #412 /* ~«Сборщики... они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг... — тленный умолкает, хмуря брови. — Ты нездешний. Кто ты?»~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #413 /* ~«Я недавно посвящен. Прости мое невежество».~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3918 /* ~«Я... недавно здесь. Я... пытаюсь изучить обстановку».~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3919 /* ~«Ну... к чему имена? Храни веру, э-э, посвященный».~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3920 /* ~«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».~ */ GOTO 46
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #414 /* ~«Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он. У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью. Ему осталось не так долго жить в тени этого существования».~ */
  IF ~~ THEN REPLY #415 /* ~«*Ему осталось не так долго жить?*»~ */ GOTO 31
  IF ~  Global("Current_Area","GLOBAL",202)
~ THEN REPLY #416 /* ~«Где я могу найти Дхолла?»~ */ GOTO 32
  IF ~  !Global("Current_Area","GLOBAL",202)
~ THEN REPLY #417 /* ~«Где я могу найти Дхолла?»~ */ GOTO 33
  IF ~~ THEN REPLY #418 /* ~«У меня есть другие вопросы...»~ */ GOTO 26
  IF ~~ THEN REPLY #33204 /* ~«Спасибо за информацию. Я поговорю с ним».~ */ GOTO 48
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 33.0
  SAY #419 /* ~Кивок. «Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло».~ */
  IF ~~ THEN REPLY #420 /* ~«По меркам гитцераев?»~ */ GOTO 34
  IF ~~ THEN REPLY #421 /* ~«Что это еще за *гитцераи*?»~ */ GOTO 35
  IF ~~ THEN REPLY #422 /* ~«Повезло?»~ */ GOTO 36
  IF ~~ THEN REPLY #423 /* ~«Понятно. У меня еще вопросы...» ~ */ GOTO 26
  IF ~~ THEN REPLY #424 /* ~«Спасибо за уделенное время. Мне нужно идти».~ */ GOTO 48
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #427 /* ~«Дхолл находится в приемной комнате в северо-западной части этого этажа. Должен предупредить... Дхолл очень занят... то время, которое он не занят своими обязанностями, отбирает у него болезнь».~ */
  IF ~~ THEN REPLY #428 /* ~«Дхолл болен?»~ */ GOTO 31
  IF ~~ THEN REPLY #429 /* ~«Спасибо за уделенное время. Мне нужно идти. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #426 /* ~«Дхолл скорее всего находится в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно, он очень занят... то время, которое он не занят своими обязанностями, отбирает у него болезнь».~ */
  IF ~~ THEN REPLY #430 /* ~«Дхолл болен?»~ */ GOTO 31
  IF ~~ THEN REPLY #431 /* ~«Спасибо за уделенное время. Мне нужно идти. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 34 // from: 31.0
  SAY #432 /* ~«Да, гитцераи живут гораздо дольше, чем люди».~ */
  IF ~~ THEN REPLY #433 /* ~«Что это еще за *гитцераи*?»~ */ GOTO 35
  IF ~~ THEN REPLY #437 /* ~«Как это Дхоллу повезло? От него хотят избавиться?»~ */ GOTO 36
  IF ~~ THEN REPLY #438 /* ~«О, у меня есть другие вопросы...»~ */ GOTO 26
  IF ~~ THEN REPLY #440 /* ~«Спасибо за уделенное время. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 35 // from: 31.1 34.0
  SAY #435 /* ~«Гитцераи — это...» Тленный умолкает, затем хмурится, бросив на тебя пристальный взгляд. «Ты ведь нездешний. Кто ты?»~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #436 /* ~«Я недавно посвящен. Прости мое невежество».~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3909 /* ~«Я... недавно здесь. Я... пытаюсь изучить обстановку».~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3910 /* ~«Ну... к чему имена? Храни веру, э-э, посвященный».~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3911 /* ~«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».~ */ GOTO 46
END

IF ~~ THEN BEGIN 36 // from: 31.2 34.1
  SAY #439 /* ~«Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования».~ */
  IF ~~ THEN REPLY #441 /* ~«И... это хорошо?»~ */ GOTO 37
  IF ~~ THEN REPLY #442 /* ~«Понятно. И правда, очень повезло. У меня есть другие вопросы...»~ */ GOTO 26
  IF ~~ THEN REPLY #443 /* ~«Понятно. Ну что ж, мне нужно идти. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #444 /* ~Тленный кивает. «Да». Он хмурится, затем пристально смотрит на тебя. «Ты ведь не здешний. Кто ты?»~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #445 /* ~«Я недавно посвящен. Прости мое невежество».~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #446 /* ~«Я... недавно здесь. Я... пытаюсь изучить обстановку».~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3912 /* ~«Ну... к чему имена? Храни веру, э-э, посвященный».~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3913 /* ~«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from:
  SAY #447 /* ~«Ты не из наших. Кто ты? Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Стража! Стража!»~ */
  IF ~~ THEN REPLY #448 /* ~«Проклятье!»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  NumTimesTalkedTo(1)
~ THEN REPLY #449 /* ~«Тс-с! Я не смогу тебе ответить под такой крик!»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
IncrementGlobal("Law","GLOBAL",-1)
~ EXIT
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #1339 /* ~«Тс-с! Я не смогу тебе ответить под такой крик!»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 26.2
  SAY #398 /* ~«Дневник? Не встречал такого».~ */
  IF ~~ THEN REPLY #451 /* ~«У меня есть другие вопросы...»~ */ GOTO 26
  IF ~~ THEN REPLY #452 /* ~«Я должен идти. Прощай».~ */ GOTO 48
END

IF ~~ THEN BEGIN 40 // from:
  SAY #1419 /* ~Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью. Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.~ */
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",0)
~ THEN REPLY #1420 /* ~«Приветствую».~ */ EXTERN ~DMORTE~ 61
  IF ~  NearbyDialog("DMorte")
Global("Warning","GLOBAL",1)
~ THEN REPLY #1421 /* ~«Приветствую».~ */ EXTERN ~DMORTE~ 63
  IF ~  NearbyDialog("DMorte")
GlobalGT("Warning","GLOBAL",1)
~ THEN REPLY #1422 /* ~«Приветствую».~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1423 /* ~«Приветствую».~ */ GOTO 4
  IF ~~ THEN REPLY #1424 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 1.0 5.1 7.1 8.1 47.1
  SAY #1425 /* ~Тленный не успевает и слова вымолвить, как твои руки хватают его голову за виски и резко сворачивают ее влево. ~ */
  IF ~~ THEN REPLY #1426 /* ~«Нельзя дать тебе предупредить своих друзей...»~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 45.0
  SAY #1427 /* ~В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.~ */
  IF ~  Global("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1428 /* ~«Лучше ты, чем я, трухлявый». ~ */ DO ~SetGlobal("Choke_Memory","GLOBAL",1)
PlaySoundNotRanged("SPTR_01")
IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ GOTO 43
  IF ~  GlobalGT("Choke_Memory","GLOBAL",0)
~ THEN REPLY #1429 /* ~«Лучше ты, чем я, трухлявый». ~ */ DO ~IncrementGlobal("Choke_Dustman","GLOBAL",1)
IncrementGlobal("Choke","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
AddexperienceParty(15)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #1430 /* ~К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз... с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.~ */
  IF ~~ THEN REPLY #3882 /* ~Оставить тело, уйти.~ */ DO ~Kill(Myself)
GiveExperience(Protagonist,250)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 5.0 7.0 8.0 19.4 47.0
  SAY #3883 /* ~Ты недостаточно быстр, и тленный уворачивается от твоего выпада. Отступив на шаг, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.~ */
  IF ~~ THEN REPLY #3884 /* ~«Ну хорошо...»~ */ DO ~SetGlobal("Mortuary_Alert","GLOBAL",1)
PlaySoundNotRanged("AMB_M01")
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 19.5
  SAY #3889 /* ~Ты наклоняешься, чтобы «шепнуть» ему что-то на ухо, тленный тоже наклоняется. Как только он оказывается на расстоянии вытянутой руки, ты хватаешь его за виски и резко сворачиваешь голову влево. ~ */
  IF ~~ THEN REPLY #3890 /* ~«Нельзя дать тебе предупредить своих друзей...»~ */ DO ~PlaySoundNotRanged("SPE_11")
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 42
END

IF ~~ THEN BEGIN 46 // from: 24.3 25.3 29.3 35.3 37.3 49.3 50.1
  SAY #3891 /* ~Тленный явно что-то подозревает. Похоже, он хочет что-то сказать, затем едва качает головой и возвращается к своим обязанностям.~ */
  IF ~~ THEN REPLY #3892 /* ~Уйти прочь.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
  SAY #3893 /* ~Тленный внимательно тебя осматривает. «Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников...»~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #3914 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 44
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #3915 /* ~Свернуть ему шею до того, как он сможет позвать на помощь.~ */ GOTO 41
  IF ~~ THEN REPLY #3916 /* ~«Нет-нет... не он... то есть, я хотел сказать, не шпион... понимаешь, я очнулся на одной из плит... и...»~ */ GOTO 2
  IF ~~ THEN REPLY #3917 /* ~Уйти. Быстро.~ */ GOTO 2
END

IF ~~ THEN BEGIN 48 // from: 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
  SAY #3894 /* ~Тленный кивает, затем возвращается к своим обязанностям.~ */
  IF ~~ THEN REPLY #3895 /* ~Уйти прочь.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0 24.1 25.0 25.1
  SAY #3896 /* ~Тленный хмурится. «Это имя мне незнакомо».~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3898 /* ~«Я недавно посвящен. Прости мое невежество».~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3899 /* ~«Я... недавно здесь. Я... пытаюсь изучить порядки».~ */ GOTO 47
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #3900 /* ~«Ну... к чему имена? Храни веру, э-э, посвященный».~ */ GOTO 47
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #3901 /* ~«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».~ */ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 29.0 35.0 37.0 49.0
  SAY #3897 /* ~Тленный продолжает хмуриться, но затем слегка кивает. «Ну хорошо. Что я могу сделать для тебя, посвященный?»~ */
  IF ~~ THEN REPLY #3902 /* ~«У меня есть пара вопросов...» ~ */ GOTO 26
  IF ~~ THEN REPLY #3903 /* ~«На этот раз — ничего. Прощай».~ */ GOTO 46
END

IF ~  Global("Appearance","GLOBAL",0)
~ THEN BEGIN 51 // from:
  SAY #66674 /* ~Тленный бросает на тебя каменный взгляд. «Ты потерялся?»~ */
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66675 /* ~«Нет, я член фракции. Я просто осматриваю Морг».~ */ GOTO 52
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66676 /* ~«Да».~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66677 /* ~«Нет».~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66678 /* ~«Нет, я не потерялся. У меня есть несколько вопросов...»~ */ GOTO 6
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66679 /* ~«Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #66681 /* ~Тленный какое-то время пристально на тебя смотрит, затем кивает. «Хорошо. Если тебе нужна помощь, дай мне знать».~ */
  IF ~~ THEN REPLY #66682 /* ~«Конечно. Прощай». ~ */ EXIT
END
