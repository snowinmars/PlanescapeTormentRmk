// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DESPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DESPEC~

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #53634 /* ~Похоже, этого человека раздражает, что ты отвлекаешь его от казни, которая вот-вот начнется. «Да?»~ */
  IF ~~ THEN REPLY #57408 /* ~«Что здесь происходит?»~ */ GOTO 1
  IF ~~ THEN REPLY #57409 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57410 /* ~«Большая грязная кровавая казнь — если все будет по-*нашему*». Он ухмыляется и водит бровями.~ */
  IF ~~ THEN REPLY #57411 /* ~«Что совершил обвиняемый?»~ */ GOTO 2
  IF ~~ THEN REPLY #57412 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57413 /* ~Он пожимает плечами. «Какая разница? Виновен-виновен-виновен, правильно? Только так мы увидим, как прольется кровь!» Он потирает ладони в предвкушении.~ */
  IF ~~ THEN REPLY #57414 /* ~«Вы приговариваете человека к смерти ради *забавы*?»~ */ GOTO 3
  IF ~~ THEN REPLY #57415 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57416 /* ~Он закатывает глаза. «*Никого* я не приговариваю, пень: это работа судьи. Если у тебя с этим проблемы — с ним и говори. А теперь оставь меня».~ */
  IF ~~ THEN REPLY #57417 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Woff1_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #57418 /* ~Этот человек удостаивает тебя лишь секундным раздраженным взглядом. «Просто оставь меня в покое, ладно? Я не стану отвечать на твои вопросы, так что уходи».~ */
  IF ~~ THEN REPLY #57419 /* ~Уйти.~ */ EXIT
END
