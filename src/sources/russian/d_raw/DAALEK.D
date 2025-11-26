// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~Перед тобой пожилой мужчина с длинными седыми волосами и обветренной желтой кожей. Несмотря на очевидный возраст, стоит он прямо. Улыбаясь, он отвешивает тебе небольшой поклон.~ */
  IF ~~ THEN REPLY #33863 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~«И я тебя тоже, рубака. Чем могу служить?» В ожидании ответа он поднимает бровь.~ */
  IF ~~ THEN REPLY #33866 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~«Мне нужны кое-какие заклинания».~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~«Мне интересно, что у тебя есть на продажу».~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~Он хмурится. «Прости, рубака, но я торгую не информацией, а товарами магической природы. Если тебе нужна информация, тебе придется поискать ее в другом месте».~ */
  IF ~~ THEN REPLY #33871 /* ~«Мне нужны кое-какие заклинания».~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~«Покажи мне, что у тебя на продажу».~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~Ты видишь Аалека, торговца магией. «Добрый день, рубака. Приятно снова видеть тебя. Чем могу служить?»~ */
  IF ~~ THEN REPLY #33878 /* ~«Дай-ка взглянуть на твои товары еще раз».~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~Он кивает и окидывает рынок взглядом. «Прости, рубака, но я торгую только магическими товарами. Поговори-ка с Угольком. Он стоит за печкой, прямо у выхода».~ */
  IF ~~ THEN REPLY #33881 /* ~«Покажи мне, что у тебя на продажу».~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~«Спасибо. Прощай».~ */ EXIT
END
