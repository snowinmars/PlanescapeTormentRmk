// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENSHPF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENSHPF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36034 /* ~Ты видишь женщину, неспешно изучающую товары.~ */
  IF ~~ THEN REPLY #36035 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #36036 /* ~Не обращать внимания на женщину.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36037 /* ~Она бросает на тебя быстрый взгляд. «Да, рубака?»~ */
  IF ~~ THEN REPLY #36038 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #36039 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #36040 /* ~Она отмахивается от тебя. «У меня нет времени на это, рубака. Оставь меня». Она отворачивается от тебя.~ */
  IF ~~ THEN REPLY #36041 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #36042 /* ~Покупательница, едва заметив твое приближение, отворачивается от тебя. Она игнорирует твои попытки начать разговор с ней.~ */
  IF ~~ THEN REPLY #36043 /* ~Уйти.~ */ EXIT
END
