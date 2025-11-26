// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~Этот краснолицый старик кричит в толпу вокруг него. Когда ты подходишь, в его глазах появляется надежда. «Уделишь минутку... или поделишься монеткой... за одни из лучших товаров по эту сторону Сигила, а, братец?»~ */
  IF ~~ THEN REPLY #9365 /* ~«Посмотрю, что тут у тебя, после того как посоветуюсь с Робом Холлоувеем насчет купеческих лавок».~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~«Пф. Посоветуйся и возвращайся».~ */
  IF ~~ THEN REPLY #9367 /* ~«Так и сделаю».~ */ EXIT
END
