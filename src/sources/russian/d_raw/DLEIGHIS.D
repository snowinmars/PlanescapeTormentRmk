// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~Ты видишь старика в грязной рабочей одежде. При твоем приближении он хмурится.~ */
  IF ~~ THEN REPLY #58804 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~Игнорировать его.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~Он хмурится еще сильнее. «Ага... и тебе хорошего дня, пень. Почему ты трясешь со мной черепушкой? Я меня много работы».~ */
  IF ~~ THEN REPLY #58807 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~«Неважно, прощай».~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~Вздох. «Давай по-быстрому, ладно?»~ */
  IF ~~ THEN REPLY #58810 /* ~«Кто ты?»~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~«Что ты делаешь?»~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~«Я ищу одного дэва. Мне сказали, что он в Проклятом».~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~«Тебе это знать не нужно, но меня зовут Леигис».~ */
  IF ~~ THEN REPLY #58816 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~Он фыркает. «Болтаю со штопанным идиотом вместо того, чтобы работать...»~ */
  IF ~~ THEN REPLY #58819 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~Он озирается вокруг. «Это склад, ты, пустоголовый пень. Что еще об этом нужно знать?»~ */
  IF ~~ THEN REPLY #58822 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~Он сурово смотрит на тебя, а затем качает головой. «Ты ищешь дэва в Проклятом...» Он хохочет над тобой. «Поди лучше поищи девственниц в борделе. Шансов будет больше, пень».~ */
  IF ~~ THEN REPLY #58825 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~Ты видишь Леигис, рабочего склада. Он хмурится при твоем приближении. «Вернулся. Что тебе надо?»~ */
  IF ~~ THEN REPLY #58828 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~«Ничего, прощай».~ */ EXIT
END
