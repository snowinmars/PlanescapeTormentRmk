// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_DRINK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_DRINK~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67935 /* ~Человек поворачивается к тебе, явно разозленный тем, что ты его отвлекаешь. Рассмотрев тебя, он сменяет злобную гримасу на хмурое лицо с поджатыми губами, неохотно кивает тебе в знак приветствия и отворачивается.~ */
  IF ~~ THEN REPLY #67936 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67937 /* ~Этот человек едва отрывает свой взгляд от выпивки. «Ничем не могу помочь, ответов на твои вопросы у меня нет... Просто оставь меня в покое. Прощай».~ */
  IF ~~ THEN REPLY #67938 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67939 /* ~Он поворачивается и сердито смотрит на тебя «Что? Не видишь, я занят! Если бы я хотел поговорить с тобой, я бы сам начал разговор». Он отворачивается, качая головой.~ */
  IF ~~ THEN REPLY #67940 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67941 /* ~Повернувшись, человек нервно смотрит на тебя. «Можешь пить здесь, но разговаривать с тобой я не буду, так и знай». Он возвращается к своей выпивке.~ */
  IF ~~ THEN REPLY #67942 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67943 /* ~Ему больше нечего тебе сказать.~ */
  IF ~~ THEN REPLY #67944 /* ~Уйти.~ */ EXIT
END
