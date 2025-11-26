// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37953 /* ~Ты видишь стражника Гармониума. При твоем приближении он смотрит на тебя скучающим видом.~ */
  IF ~~ THEN REPLY #37961 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #37962 /* ~Не обращать внимания на мужчину.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37954 /* ~Он кивает тебе. «И тебе тоже, гражданин».~ */
  IF ~~ THEN REPLY #37963 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37964 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #37955 /* ~«Я новенький в Гармониуме и в этом районе, гражданин. Я не смогу ответить на твои вопросы. Он извинительно улыбается.~ */
  IF ~~ THEN REPLY #37965 /* ~«Можешь тогда сказать, что здесь происходит?»~ */ GOTO 3
  IF ~~ THEN REPLY #37966 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37956 /* ~Он кивает. «Эти люди были признаны виновными в небольших преступлениях. Их приговорили к нескольким годам каторжных работ и продаже». Он делает паузу. «Это все, что я могу сказать, гражданин».~ */
  IF ~~ THEN REPLY #37967 /* ~«Понятно. Могу ли я спросить о чем-нибудь еще?»~ */ GOTO 4
  IF ~~ THEN REPLY #37968 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37957 /* ~Он качает головой. «Я должен быть бдительным при исполнении обязанностей, гражданин. Я вынужден попросить тебя уйти».~ */
  IF ~~ THEN REPLY #37969 /* ~«Отлично, прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #37958 /* ~Ты видишь стражника Гармониума. При твоем приближении он кивает. «Здравствуй снова, гражданин. Чем я могу помочь?»~ */
  IF ~~ THEN REPLY #37970 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #37960 /* ~«Неважно. Прощай».~ */ EXIT
END
