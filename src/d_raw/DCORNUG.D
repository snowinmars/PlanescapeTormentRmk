// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCORNUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCORNUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3331 /* ~Гррр. Моя есть большой корнугон. Моя делать больно. Очень сильно много больно.~ */
  IF ~~ THEN REPLY #3332 /* ~Я тоже. Приятно было встретиться.~ */ EXIT
  IF ~~ THEN REPLY #3520 /* ~А разве ты не должен быть более умным? Я имею в виду, ТЫ же нечистый высокого уровня, который тысячелетиями оттачивает свои злобу и интеллект, верно?~ */ GOTO 1
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.1
  SAY #3521 /* ~Эээ, ну в общем-то да, но гораздо проще просто много раз по рычать... Это производит впечатление на простофиль, знаешь ли.~ */
  IF ~~ THEN EXIT
END
