// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~Ты видишь мужчину средних лет. При твоем приближении он смотрит на тебя с интересом. «Добрый день, рубака».~ */
  IF ~~ THEN REPLY #57947 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~Игнорировать его.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~Он слегка кивает. «Меня зовут Дорн. Могу ли я показать тебе свои товары?»~ */
  IF ~~ THEN REPLY #57950 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~«Покажи, что у тебя есть».~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~«Нет, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~Он качает головой. «Сейчас у меня нет времени на вопросы. В другой раз, может быть».~ */
  IF ~~ THEN REPLY #57954 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~«Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~Ты видишь торговца Дорна, улыбающегося тебе. «И снова мы встретились. Чем я могу помочь тебе?»~ */
  IF ~~ THEN REPLY #57960 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~«Прощай».~ */ EXIT
END
