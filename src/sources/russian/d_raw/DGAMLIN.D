// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAMLIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAMLIN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
Global("Rauk","Global",0)
~ THEN BEGIN 0 // from:
  SAY #49877 /* ~«Эй! Что ты делаешь в моей палатке?!»~ */
  IF ~~ THEN REPLY #49878 /* ~«Приветствую...»~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49879 /* ~«Я ищу палатку Раука. Ты не знаешь, как ее найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49880 /* ~«Я ошибся. Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedToGT(0)
Global("Rauk","Global",0)
~ THEN BEGIN 1 // from:
  SAY #49881 /* ~«Пусть Леди тебя проклянет! Во имя всех планов, что теперь тебе нужно?»~ */
  IF ~~ THEN REPLY #49882 /* ~«Приветствую...»~ */ GOTO 3
  IF ~  Global("Rings3","Global",1)
~ THEN REPLY #49883 /* ~«Я ищу палатку Раука. Ты не знаешь, как ее найти?»~ */ GOTO 4
  IF ~~ THEN REPLY #49884 /* ~«Я ухожу. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Rauk","Global",1)
~ THEN BEGIN 2 // from:
  SAY #49885 /* ~«Ну и, ты друг Раука и я друг Раука. И что? Это не значит, что мне нужно с тобой общаться».~ */
  IF ~~ THEN REPLY #49886 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #49887 /* ~«Ты без приглашения вломился в мою палатку, и все, что ты можешь сказать — 'Приветствую'?! Двигай своей дорогой, пень!»~ */
  IF ~~ THEN REPLY #49888 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #49889 /* ~«Проклятье! Еще один 'друг' Раука? Да, это одна из палаток, которую он называет домом. И как ты видишь, она уже занята. Иди в другую его палатку».~ */
  IF ~~ THEN REPLY #49890 /* ~«Прощай».~ */ DO ~SetGlobal("Rauk","Global",1)
~ EXIT
END
