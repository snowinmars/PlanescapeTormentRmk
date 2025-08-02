// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37185 /* ~Перед тобой ничем не примечательная женщина. Кажется, она всего лишь одна из покупательниц на рынке.~ */
  IF ~~ THEN REPLY #37193 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37194 /* ~Игнорировать ее.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37186 /* ~Она поворачивается на твое приветствие: «Да?..»~ */
  IF ~~ THEN REPLY #37195 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37196 /* ~«Неважно».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37187 /* ~С скукой на лице она отвечает: «Хорошо...»~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37197 /* ~«Я ищу кое-кого по имени Лотар, он же Повелитель Костей...»~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37198 /* ~«У меня был череп, который украли. Ты не знаешь кого-нибудь, кто бы мог это сделать?»~ */ GOTO 4
  IF ~~ THEN REPLY #37199 /* ~«Где я могу купить оружие?»~ */ GOTO 5
  IF ~~ THEN REPLY #37200 /* ~«Где я могу купить магические предметы?»~ */ GOTO 5
  IF ~~ THEN REPLY #37201 /* ~«Что ты можешь рассказать об этом районе?»~ */ GOTO 6
  IF ~~ THEN REPLY #37202 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37188 /* ~«Никогда не слышала о нем. Иначе я бы вспомнила титул *Повелитель Костей*. Такое вряд ли забудешь». Она все еще смотрит на тебя со скучающим лицом.~ */
  IF ~~ THEN REPLY #37203 /* ~«У меня есть еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #37204 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37189 /* ~Она пялится на тебя некоторое время. «Череп потерял... такое не каждый день услышишь. Не знаю даже, что можно сказать». Она пожимает плечами.~ */
  IF ~~ THEN REPLY #37205 /* ~«У меня есть еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #37206 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37190 /* ~Скучающим взглядом она окидывает рынок. «Да прямо здесь, рубака. Просто порасспрашивай торговцев. Уверена, что ты найдешь то, что тебе нужно».~ */
  IF ~~ THEN REPLY #37207 /* ~«У меня есть еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #37208 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37191 /* ~«Да не так уж много... — она вздыхает, — но это дом, кроме которого я, да и многие другие, не знают ничего больше. Приходится любить его, раз отсюда не выбраться».~ */
  IF ~~ THEN REPLY #37209 /* ~«У меня есть еще вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #37210 /* ~«Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37192 /* ~Она хмурится при твоем приближении. «Я уже потратила на тебя свое время. Больше не могу». Она отворачивается от тебя.~ */
  IF ~~ THEN REPLY #37211 /* ~Уйти.~ */ EXIT
END
