// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~Ты видишь скучающую девушку. При твоем приближении она вскидывает голову. «Добрый день, рубака. Чем я могу помочь?»~ */
  IF ~~ THEN REPLY #58501 /* ~«Приветствую».~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~Игнорировать ее.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~Она улыбается. «Я — Гильди. Не желаешь ли взглянуть на мои товары?»~ */
  IF ~~ THEN REPLY #58504 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~«Нет, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~Она качает головой. «Я простая торговка, у меня нет для тебя ответов».~ */
  IF ~~ THEN REPLY #58508 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~«Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~Ты видишь торговку Гильди. Она улыбается тебе. «И снова здравствуй. Чем могу помочь?»~ */
  IF ~~ THEN REPLY #58511 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~«Ничего, прощай».~ */ EXIT
END
