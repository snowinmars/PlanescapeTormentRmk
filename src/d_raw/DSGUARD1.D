// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37925 /* ~Ты видишь стражника Гармониума. При твоем приближении он пристально на тебя смотрит.~ */
  IF ~~ THEN REPLY #37930 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37931 /* ~Не обращать внимания на мужчину.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37926 /* ~Он кивает тебе. «Добрый день, гражданин».~ */
  IF ~~ THEN REPLY #37932 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37933 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37927 /* ~Он качает головой. «Я при исполнении, гражданин. У меня нет времени на вопросы. Пожалуйста, задай их кому-нибудь другому».~ */
  IF ~~ THEN REPLY #37934 /* ~«Это займет не так уж много твоего времени».~ */ GOTO 3
  IF ~~ THEN REPLY #37935 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37928 /* ~Он хмурится. «У меня нет времени на вопросы, гражданин. Проходи мимо».~ */
  IF ~~ THEN REPLY #37936 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37929 /* ~Ты видишь стражника Гармониума. При твоем приближении он хмурится. «Добрый день еще раз, гражданин».~ */
  IF ~~ THEN REPLY #37937 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37938 /* ~«Прощай».~ */ EXIT
END
