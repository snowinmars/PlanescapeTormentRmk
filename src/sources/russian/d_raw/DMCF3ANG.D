// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~Перед тобой привлекательная девушка, одетая в хорошую одежду. Она бесцельно бродит, просто рассматривая товары на продажу.~ */
  IF ~~ THEN REPLY #37171 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~Игнорировать ее.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~Она хмуро осматривает тебя сверху донизу. «Я не связываюсь лицами сомнительного происхождения, к коим, судя по виду, ты идеально подходишь. Проваливай, пень».~ */
  IF ~~ THEN REPLY #37173 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~Нахмурившись еще сильнее, она кладет руки на бедра. «Мне все равно, пень. Оставь меня, или я позову стражу!»~ */
  IF ~~ THEN REPLY #67883 /* ~«Зови...»~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~Она показывает тебе неприличный жест. «Ну хорошо... Стража! Стража!»~ */
  IF ~~ THEN REPLY #37178 /* ~Уйти до того, как они придут.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~Повернувшись к тебе лицом, она тот час же узнает тебя. Она хмуро произносит: «Что нужно сделать, чтобы ты отвязался от меня, пень?»~ */
  IF ~~ THEN REPLY #37179 /* ~«Если бы смог задать пару вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~«Прошу прощения, я ухожу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~Она показывает тебе неприличный жест. «Я не собираюсь отвечать на твои тупые вопросы. Найди себе седобородого, — она отмахивается от тебя. — А теперь оставь меня в покое, или я позову стражу!»~ */
  IF ~~ THEN REPLY #37181 /* ~«Зови...»~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~«Хорошо, прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~Повернувшись к тебе лицом, она тот час же узнает тебя. Она хмуро произносит: «Что нужно сделать, чтобы ты отвязался от меня, пень?» Она со вздохом вскидывает руки. «Я уже звала стражу, я смогу это сделать еще раз... и, кажется, это придется сделать».~ */
  IF ~~ THEN REPLY #37183 /* ~«Зови...»~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~«Хорошо, прощай».~ */ EXIT
END
