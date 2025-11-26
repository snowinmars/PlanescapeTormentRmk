// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~Перед тобой скелет, переминающийся с ноги на ногу. Он что-то насвистывает сквозь зубы. Похоже, он изнывает от скуки. Когда ты подходишь, его поведение кардинально меняется. «Добро пожаловать! У меня тут целая гора вещей на твое рассмотрение, свежачок от последних пней, пытавшихся обчистить тихих. Хочешь взглянуть?»~ */
  IF ~~ THEN REPLY #51002 /* ~«Да. Покажи-ка, что тут у тебя».~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~«Нет. Вообще-то, я хотел бы задать тебе несколько вопросов».~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~«Нет. Ошибочка вышла. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~Он вздыхает. «Слушай, я, конечно, мог бы стоять тут и трепаться до скончания веков, но, по правде говоря, мне не по душе иметь дело с живыми, понятно? Я беру это барахло у живых до того, как они умрут, и продаю его другим трупакам, так что если тебе это неинтересно, то мне лучше сворачиваться и идти домой, понятно? Итак. Хочешь посмотреть, что у меня есть? Отлично, я все тебе покажу. Если нет — оставь меня в покое».~ */
  IF ~~ THEN REPLY #51006 /* ~«Покажи, что тут у тебя».~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~«Тогда забудь об этом».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~«О, снова ты. Что тебе нужно на этот раз?»~ */
  IF ~~ THEN REPLY #51008 /* ~«Так ты собираешься отвечать на мои вопросы или нет?»~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~«У тебя есть что-нибудь новое на продажу?»~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~«Ничего. Ошибочка вышла. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~«Нет, — он заглядывает тебе за спину. — Если честно, я лучше буду пялиться в стену, — он снова смотрит на тебя. — Так мы будем что-нибудь покупать или нет?»~ */
  IF ~~ THEN REPLY #51012 /* ~«Пожалуй, да».~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~«Нет, я так не думаю».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~«Тогда счастливо». Он снова начинает что-то насвистывать сквозь белоснежные зубы.~ */
  IF ~~ THEN REPLY #51036 /* ~«Счастливо».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~Похоже, торговец спокоен, несмотря на крики вокруг. «Значит, пришел меня усыпить? Вперед. Мне все равно».~ */
  IF ~~ THEN REPLY #51038 /* ~«Тебе правда все равно?»~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~«Давай это проверим».~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~«Тогда я оставлю тебя в покое. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~«Конечно. Много лет назад я погиб ужасной смертью. Меня не волнует ничего из того, что ты можешь со мной сделать. Боль ничего не значит. Все, что у меня есть — это сознание, а его я не ценю настолько, чтобы драться с тобой».~ */
  IF ~~ THEN REPLY #51042 /* ~«Хорошо. Умри».~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~«Как интересно. Что ж, прощай».~ */ EXIT
END
