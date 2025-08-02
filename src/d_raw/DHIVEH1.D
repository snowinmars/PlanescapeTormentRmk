// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEH1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1542 /* ~Ты видишь мужчину в старых лохмотьях. При твоем приближении он обходит тебя стороной и продолжает идти.~ */
  IF ~~ THEN REPLY #1549 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #1548 /* ~«Эй! Подожди на минуточку!»~ */ GOTO 1
  IF ~~ THEN REPLY #1550 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1543 /* ~Мужчина игнорирует тебя, ускоряя шаг.~ */
  IF ~~ THEN REPLY #1551 /* ~«Сэр?»~ */ GOTO 2
  IF ~~ THEN REPLY #1552 /* ~«Эй! Подожди на минуточку!»~ */ GOTO 2
  IF ~~ THEN REPLY #1553 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #1544 /* ~Он разворачивается, быстро озирается по сторонам, разыскивая твоих возможных друзей. Он выхватывает кинжал. «Тебе лучше оставить меня в покое или я вдену тебе сталь промеж ребер!»~ */
  IF ~~ THEN REPLY #1554 /* ~«Успокойся. Я просто хочу задать несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #1555 /* ~Атаковать его.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1556 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #1557 /* ~Он ухмыляется. «Уверен, что хочешь, да вот только ответов у меня для тебя нет. Исчезни!»~ */
  IF ~~ THEN REPLY #1558 /* ~Атаковать его.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #1559 /* ~«Тогда прощай». ~ */ EXIT
END
