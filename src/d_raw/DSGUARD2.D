// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37939 /* ~Ты видишь стражника Гармониума. При твоем приближении он отмахивается от тебя. «Проходи мимо, гражданин. Здесь не на что смотреть».~ */
  IF ~~ THEN REPLY #37944 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37945 /* ~Не обращать внимания на мужчину.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37940 /* ~Он хмуро смотрит на тебя. «Какую часть из *проходи мимо* ты не понял? — он бросает на тебя яростный взгляд. — Здесь не на что смотреть, проваливай».~ */
  IF ~~ THEN REPLY #37946 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37947 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #37941 /* ~Он насмешливо смотрит на тебя. «А, так у тебя есть вопросы. Что ж, это сразу меняет все дело... — он свирепо смотрит на тебя. — Послушай, у меня нет времени на вопросы. Проходи мимо».~ */
  IF ~~ THEN REPLY #37948 /* ~«Это займет не так уж много твоего времени».~ */ GOTO 3
  IF ~~ THEN REPLY #37949 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37942 /* ~«У меня нет ни секунды на тебя, гражданин. Проходи мимо». Он отмахивается от тебя.~ */
  IF ~~ THEN REPLY #37950 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37943 /* ~Ты видишь стражника Гармониума. При твоем приближении он хмурится. «У меня нет времени на общение, гражданин. Проходи мимо».~ */
  IF ~~ THEN REPLY #37951 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37952 /* ~«Прощай».~ */ EXIT
END
