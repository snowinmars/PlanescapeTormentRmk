// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36044 /* ~Ты видишь мужчину, неспешно изучающего товары.~ */
  IF ~~ THEN REPLY #36045 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #36046 /* ~Не обращать внимания на мужчину.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36047 /* ~Он бросает на тебя быстрый взгляд. «Да, рубака?»~ */
  IF ~~ THEN REPLY #36048 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #36049 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36050 /* ~Он отмахивается от тебя. «У меня нет времени на это, рубака. Оставь меня». Он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #36051 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36052 /* ~Покупатель, едва заметив твое приближение, отворачивается от тебя. Он игнорирует твои попытки начать разговор с ним.~ */
  IF ~~ THEN REPLY #36053 /* ~Уйти.~ */ EXIT
END
