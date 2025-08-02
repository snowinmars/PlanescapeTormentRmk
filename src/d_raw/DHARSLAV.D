// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARSLAV~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50939 /* ~Перед тобой крепко сложенный стражник Гармониума. Он седой, угрюмый и немного пьян. Не сводя глаз с рабов, которых они окружили, он проговаривает из уголка рта: «Чего надо?»~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50940 /* ~«Я пришел за дочерью Гниющего Копчика».~ */ GOTO 2
  IF ~~ THEN REPLY #50941 /* ~«Кто вы?»~ */ GOTO 3
  IF ~~ THEN REPLY #50942 /* ~«Что вы делаете?»~ */ GOTO 4
  IF ~~ THEN REPLY #50943 /* ~«Я здесь, чтобы прикрыть эту шайку работорговцев».~ */ GOTO 5
  IF ~~ THEN REPLY #50944 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #50945 /* ~«Снова ты?»~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50946 /* ~«Я пришел за дочерью Гниющего Копчика».~ */ GOTO 2
  IF ~~ THEN REPLY #50947 /* ~«Кто вы?»~ */ GOTO 3
  IF ~~ THEN REPLY #50948 /* ~«Что вы делаете?»~ */ GOTO 4
  IF ~~ THEN REPLY #50949 /* ~«Я здесь, чтобы прикрыть эту шайку работорговцев».~ */ GOTO 5
  IF ~~ THEN REPLY #50950 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.0
  SAY #50951 /* ~«Хочешь ее выкупить? Тогда поговори со Скатчем... он тут главный».~ */
  IF ~~ THEN REPLY #50952 /* ~«Кто вы?»~ */ GOTO 3
  IF ~~ THEN REPLY #50953 /* ~«Что вы делаете?»~ */ GOTO 4
  IF ~~ THEN REPLY #50954 /* ~«Я здесь, чтобы прикрыть эту шайку работорговцев».~ */ GOTO 5
  IF ~~ THEN REPLY #50955 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0 4.1
  SAY #50956 /* ~Он ворчит: «О на что это похоже? Мы — 'вербовщики' Гармониума».~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50957 /* ~«В таком случае, я здесь за дочерью Гниющего Копчика».~ */ GOTO 2
  IF ~~ THEN REPLY #50958 /* ~«Что вы делаете?»~ */ GOTO 4
  IF ~~ THEN REPLY #50959 /* ~«Что ж, тогда я здесь, чтобы прикрыть эту шайку работорговцев».~ */ GOTO 5
  IF ~~ THEN REPLY #50960 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.1 3.1
  SAY #50961 /* ~«А на что это похоже? Скатч зовет это вербовкой. Я называю это перегоном рабов. Меня это волнует? Нисколько. Это приличные деньги, — он пристально на тебя смотрит. — Тебе что-нибудь нужно?»~ */
  IF ~  Global("Curst_Key","GLOBAL",1)
~ THEN REPLY #50962 /* ~«Я пришел за дочерью Гниющего Копчика».~ */ GOTO 2
  IF ~~ THEN REPLY #50963 /* ~«Кто вы?»~ */ GOTO 3
  IF ~~ THEN REPLY #50964 /* ~«Я здесь, чтобы прикрыть эту шайку работорговцев».~ */ GOTO 5
  IF ~~ THEN REPLY #50965 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.2 3.2 4.2
  SAY #50966 /* ~«Хе. Зачем ты мне это сказал? Теперь придется тебя убить». Он вынимает оружие и бросается в атаку!~ */
  IF ~~ THEN REPLY #50967 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
