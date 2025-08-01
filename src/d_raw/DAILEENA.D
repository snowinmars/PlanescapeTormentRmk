// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAILEENA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DAILEENA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58096 /* ~Перед тобой девушка в грязной рабочей одежде. При твоем приближении она кивает.~ */
  IF ~~ THEN REPLY #58098 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #58099 /* ~Игнорировать ее.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58100 /* ~«Привет... тебе что-нибудь нужно?»~ */
  IF ~~ THEN REPLY #58101 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58102 /* ~«Нет, ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.1 7.0 8.0 9.0 10.0
  SAY #58103 /* ~«Хорошо». ~ */
  IF ~~ THEN REPLY #58104 /* ~«Кто ты?»~ */ GOTO 3
  IF ~~ THEN REPLY #58105 /* ~«Что ты делаешь?»~ */ GOTO 4
  IF ~~ THEN REPLY #58106 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 8
  IF ~~ THEN REPLY #58107 /* ~«Я ищу одного дэва. Мне сказали, что он в Проклятом».~ */ GOTO 9
  IF ~~ THEN REPLY #58108 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58109 /* ~«Меня зовут Айлина».~ */
  IF ~~ THEN REPLY #58110 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58111 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58112 /* ~«Обрабатываю заказы. Я получаю заказы на товары от городских торговцев. Затем беру вещи и готовлю их к отправке».~ */
  IF ~~ THEN REPLY #58113 /* ~«Похоже, это очень интересная работа».~ */ GOTO 5
  IF ~~ THEN REPLY #58114 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58115 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58116 /* ~Она улыбается. «Да, правда... — она вздыхает и пожимает плечами. — Если бы это не было так, я бы этим точно не занималась».~ */
  IF ~~ THEN REPLY #58117 /* ~«Почему?»~ */ GOTO 6
  IF ~~ THEN REPLY #58118 /* ~«Понятно. У меня еще есть вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #58119 /* ~«Я должен идти, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58120 /* ~Нахмурившись, она думает. «Ну... это не очень простая работа и ее нужно делать сразу для нескольких людей. К тому же, хозяин — сучий потрох и не хочет нанимать никого больше».~ */
  IF ~~ THEN REPLY #58121 /* ~«Тогда почему ты до сих пор здесь?»~ */ GOTO 7
  IF ~~ THEN REPLY #58122 /* ~«Понятно. У меня еще есть вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #58123 /* ~«Я должен идти, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58124 /* ~Она снова улыбается. «Девор, хозяин, может быть и сволочь, но у него есть одна отличная черта. Каждую неделю он дает каждому из нас оплачиваемый выходной!»~ */
  IF ~~ THEN REPLY #58125 /* ~«Понятно. У меня еще есть вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #58126 /* ~«Я должен идти, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #58127 /* ~Она пожимает плечами. «Говорить не о чем. Если ты когда-нибудь видел склад, значит, ты видел их все. Этот — не исключение».~ */
  IF ~~ THEN REPLY #58128 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58129 /* ~«Я должен идти, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.3
  SAY #58130 /* ~Она смущенно смотрит на тебя. «Я хотела было сказать, что глупо искать его в Проклятом... но потом я вспомнила кое-что о дэва, — она умолкает. — Хотя не так уж и много. Наверное, тебе следует сходить в управление и поспрашивать там. Оно там, на городской площади».~ */
  IF ~~ THEN REPLY #58131 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58132 /* ~«Я должен идти, прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #58133 /* ~Перед тобой Айлина, рабочий склада. Она улыбается и кивает тебе, когда ты подходишь. «Привет. Что нового?»~ */
  IF ~~ THEN REPLY #58134 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58135 /* ~«Ничего, прощай».~ */ EXIT
END
