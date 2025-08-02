// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~Перед тобой симпатичный парень, одетый в хорошую одежду. Он бесцельно бродит, просто рассматривая товары на продажу. Заметив твое приближение, он не подает виду.~ */
  IF ~~ THEN REPLY #37713 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~Игнорировать его.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~Он с отвращением осматривает тебя сверху донизу. «Я не связываюсь лицами сомнительного происхождения, к коим, судя по виду, ты идеально подходишь. Проваливай, пень».~ */
  IF ~~ THEN REPLY #37715 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~Нахмурившись, он тычет в тебя пальцем, словно читая нотации ребенку. «Мне все равно, пень. Оставь меня, или я позову стражу!»~ */
  IF ~~ THEN REPLY #37717 /* ~«Зови...»~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~«Хорошо, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~Он показывает тебе неприличный жест. «Ну хорошо... Стража! Стража!»~ */
  IF ~~ THEN REPLY #37719 /* ~Приготовиться к защите...~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~Уйти до того, как они придут.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~Повернувшись к тебе лицом, парень тот час же узнает тебя. Он хмуро произносит: «Что нужно сделать, чтобы ты отвязался от меня, пень?»~ */
  IF ~~ THEN REPLY #37721 /* ~«Если бы смог задать пару вопросов...»~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~«Прошу прощения, я ухожу. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~Он показывает тебе неприличный жест. «Я не собираюсь отвечать на твои тупые вопросы. Найди себе седобородого, — он отмахивается от тебя. — А теперь оставь меня в покое, или я позову стражу!»~ */
  IF ~~ THEN REPLY #37723 /* ~«Зови...»~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~«Хорошо, прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~Повернувшись к тебе лицом, парень тот час же узнает тебя. Он хмуро произносит: «Что нужно сделать, чтобы ты отвязался от меня, пень?» Он со вздохом вскидывает руки. «Я уже звал стражу, я смогу это сделать еще раз... и, кажется, это придется сделать».~ */
  IF ~~ THEN REPLY #37725 /* ~«Зови...»~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~«Хорошо, прощай».~ */ EXIT
END
