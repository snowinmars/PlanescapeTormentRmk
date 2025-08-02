// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~Ты видишь парня со скучающим выражением на лице. Он не замечает твоего приближения.~ */
  IF ~~ THEN REPLY #63564 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~Подпрыгнув от неожиданного приветствия, он поворачивается к тебе. «Что... что тебе нужно?»~ */
  IF ~~ THEN REPLY #63567 /* ~«У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~«Ничего, неважно».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~«Вопросы... Только не это. Я занят».~ */
  IF ~~ THEN REPLY #63570 /* ~«Это займет совсем немного твоего времени...»~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~«Меня это не волнует», — он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #63573 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~Ты видишь парня, внимательно прислушивающегося к людям вокруг него. При твоем приближении он кивает.~ */
  IF ~~ THEN REPLY #63575 /* ~«Приветствую».~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~«Ага, и тебе хорошего дня». Он осматривает тебя с головы до пят.~ */
  IF ~~ THEN REPLY #63578 /* ~«У меня есть несколько вопросов...»~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~«Нет, неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~«Пожалуйста, задавай».~ */
  IF ~~ THEN REPLY #63582 /* ~«Кто ты?»~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~«Что ты делаешь?»~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~«Что ты можешь рассказать об этом районе?»~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~«Есть ли что интересное в этом районе?»~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~«Это не имеет значения. Тебя интересует что-то особенное?»~ */
  IF ~~ THEN REPLY #63588 /* ~«Да, у меня есть несколько вопросов...»~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~«Я слежу за толпой. Мне нравится наблюдать за людьми, я нахожу это занятие увлекательным».~ */
  IF ~~ THEN REPLY #63591 /* ~«Понятно. У меня еще есть вопросы...»~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~«Не так уж и много. Я просто пришел сюда, чтобы смотреть на толпу. Здесь полно всяких рынков, которые привлекают много разных людей... Мне нравится наблюдать за людьми». Он оглядывает все вокруг.~ */
  IF ~~ THEN REPLY #63594 /* ~«Что здесь можно купить?»~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~«Понятно. У меня есть еще вопросы...»~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~Он улыбается. «Ну... все что угодно... Просто пройдись по округе».~ */
  IF ~~ THEN REPLY #63599 /* ~«У меня есть еще вопросы...»~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~«Я должен идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~«Да! Здешние люди просто потрясающие. Такое разнообразие... Только мне кажется, никому до этого нет дела...»~ */
  IF ~~ THEN REPLY #63602 /* ~«Хм-м. У меня есть еще вопросы...»~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~«Спасибо, прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~Ты видишь беспокойного мужчину. При твоем приближении он раздраженно смотрит на тебя.~ */
  IF ~~ THEN REPLY #63605 /* ~«Приветствую».~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~«О... Привет», — он отвечает со скучающим лицом.~ */
  IF ~~ THEN REPLY #63608 /* ~«У меня есть несколько вопросов...»~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~«Тогда иди и найди осведомителя», — хмуро говорит он.~ */
  IF ~~ THEN REPLY #63611 /* ~«Это не займет много твоего времени».~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~Он хмурится еще сильнее. «Я не собираюсь тут выкаблучиваться перед тобой...»~ */
  IF ~~ THEN REPLY #63614 /* ~«Значит, ты не поможешь мне?»~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~«Понятно, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~С отвращением фыркнув на тебя, он отворачивается. «Пустоголовый...»~ */
  IF ~~ THEN REPLY #63617 /* ~«Хорошо, прощай».~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~Ты видишь участника аукциона. Он отмахивается от твоей попытки снова заговорить с ним.~ */
  IF ~~ THEN REPLY #63619 /* ~Уйти.~ */ EXIT
END
