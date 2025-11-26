// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1545 /* ~Ты видишь мужчину в старых лохмотьях. При твоем приближении он останавливается и смотрит на тебя.~ */
  IF ~~ THEN REPLY #1560 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #1561 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1546 /* ~«*Проблемы*, пень?.. Или тебе их *не хватает* до кучи?» Плюет тебе под ноги. «Вали отсюда, или шрамов добавлю».~ */
  IF ~~ THEN REPLY #1562 /* ~«Успокойся. Я просто хочу задать несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #1563 /* ~Атаковать его.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1564 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1547 /* ~Ухмыляется. «Уверен, что хочешь, вот только ответов для тебя нет. Исчезни!»~ */
  IF ~~ THEN REPLY #1565 /* ~Атаковать его.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1566 /* ~«Тогда прощай». ~ */ EXIT
END
