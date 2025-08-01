// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHCP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHCP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #38515 /* ~Эта упыриха держится с большей важностью, чем остальные. Да и взгляд у нее более ясный и не такой дикий. «Чем могу... помочь, мясско?»~ */
  IF ~~ THEN REPLY #38516 /* ~«Кто ты? Что ты здесь делаешь?»~ */ GOTO 1
  IF ~~ THEN REPLY #38565 /* ~«Что это за место?»~ */ GOTO 4
  IF ~~ THEN REPLY #38566 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 3.0
  SAY #38517 /* ~«Я? Я... Алайна. Это мои упыри. Мы разведчики и охотники. Мы ищем новые месста... мы ищем *еду*. А теперь моя очередь спрашшивать... что здессь делаешшь ТЫ?»~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38518 /* ~«Я ищу бронзовый шар».~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38561 /* ~«Я ищу графин с водой».~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38562 /* ~«Я ищу склеп, в котором много ловушек».~ */ GOTO 6
  IF ~~ THEN REPLY #38563 /* ~«Я просто тут бродил».~ */ GOTO 9
  IF ~~ THEN REPLY #38564 /* ~«Я не знаю». ~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.0
  SAY #38519 /* ~«Бронзовый... шшар? Мы такого... не находили. Поищи в дальних уголках этого месста — может, там ты найдешшь то, что ищешшь».~ */
  IF ~~ THEN REPLY #38520 /* ~«У меня несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38560 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.2 7.0 8.0 9.1 10.0 11.1 12.0
  SAY #38521 /* ~«Я... отвечу, ессли смогу».~ */
  IF ~~ THEN REPLY #38522 /* ~«Кто ты? Что ты здесь делаешь?»~ */ GOTO 1
  IF ~~ THEN REPLY #38523 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 4
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38556 /* ~«Я ищу бронзовый шар».~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38557 /* ~«Я ищу графин с водой».~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38558 /* ~«Я ищу склеп, в котором много ловушек».~ */ GOTO 6
  IF ~~ THEN REPLY #38559 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 3.1
  SAY #38524 /* ~«Это Затопленные Народы. Это нашши охотничьи земли. Здессь... управляем мы, охотники. Чего тебе здессь нужно?»~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #38525 /* ~«Я ищу бронзовый шар».~ */ GOTO 2
  IF ~  Global("Water","GLOBAL",1)
~ THEN REPLY #38526 /* ~«Я ищу графин с водой».~ */ GOTO 5
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",3)
~ THEN REPLY #38530 /* ~«Я ищу склеп, в котором много ловушек».~ */ GOTO 6
  IF ~~ THEN REPLY #38543 /* ~«Я просто тут бродил».~ */ GOTO 9
  IF ~~ THEN REPLY #38551 /* ~«Я не знаю». ~ */ GOTO 11
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.3 4.1
  SAY #38527 /* ~«Мы не нашшли иссточник воды, но похоже, что большше всего воды к восстоку. Поищи там, и, возможно, найдешшь его».~ */
  IF ~~ THEN REPLY #38528 /* ~«У меня несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38529 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.4 4.2
  SAY #38531 /* ~«Кругом одни ссклепы, и мы защищаем их обитателей... Я ничего тебе не сскажу».~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #38532 /* ~«Для меня очень важно найти его».~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #38536 /* ~«Для меня очень важно найти его».~ */ GOTO 8
  IF ~~ THEN REPLY #38541 /* ~«Хорошо. Ответь тогда еще на пару моих вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38542 /* ~«Хорошо, тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #38533 /* ~Лидер упырей окидывает тебя холодным оценивающим взглядом. «Ищи на юго-восстоке. Не бесспокой других обитателей этих ссклепов, иначе *пожалеешшь*».~ */
  IF ~~ THEN REPLY #38534 /* ~«Спасибо. У меня еще несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38535 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #38537 /* ~Лидер упырей окидывает тебя взглядом, в ее глазах загорается пламя. «Мне вссе *РАВНО*, нассколько это для тебя важно, мяссная тварь. Я ничего тебе не *ССКАЖУ*».~ */
  IF ~~ THEN REPLY #38538 /* ~«Ладно, ладно. Тогда ответь на еще на пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #38539 /* ~«Говори или умрешь».~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #38540 /* ~«Что ж, спасибо за уделенное время. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 4.3
  SAY #38544 /* ~«Это... плохое мессто для прогулок. Здессь много опассностей. Мы обозначили тотемами безопассные пределы... не перессекай их, и будешшь в безопассности. Опассайся здешшних обитателей — они смертельно опассны, и посстоянно прибавляют в чиссле».~ */
  IF ~~ THEN REPLY #38545 /* ~«Что еще за обитатели?»~ */ GOTO 10
  IF ~~ THEN REPLY #38549 /* ~«Спасибо. У меня еще несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38550 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #38546 /* ~«Это мессто кишшит... трокопотоками, белыми рогатыми сущесствами с безмерными аппетитами и жесстоким нравом. Еще здессь поселилоссь много варгулий, и их количесство расстет за счет глупцов, которые забираютсся так далеко в катакомбы».~ */
  IF ~~ THEN REPLY #38547 /* ~«Понятно... может, ответишь еще на пару вопросов?»~ */ GOTO 3
  IF ~~ THEN REPLY #38548 /* ~«Спасибо за совет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.4 4.4
  SAY #38552 /* ~«Не знаешшь? Не знаешшь? Пожалуй... тебе лучшше уйти. Это мессто... опассно... для мяссных тварей».~ */
  IF ~~ THEN REPLY #38553 /* ~«Опасно? Чем опасно?»~ */ GOTO 10
  IF ~~ THEN REPLY #38554 /* ~«У меня всего лишь несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38555 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #38567 /* ~«Ты вернулсся, да? Чего ты хочешшь?»~ */
  IF ~~ THEN REPLY #38568 /* ~«Я хотел задать пару вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #38569 /* ~«Ничего. Прощай».~ */ EXIT
END
