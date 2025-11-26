// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61227 /* ~Ты видишь стражника Гармониума. Похоже, он внимательно осматривает обстановку вокруг себя.~ */
  IF ~~ THEN REPLY #61228 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #61229 /* ~Не обращать внимания на мужчину.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61230 /* ~Он бросает на тебя быстрый взгляд, а затем отводит глаза. Больше никакой реакции на твое присутствие он не проявляет.~ */
  IF ~~ THEN REPLY #61231 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #61232 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #61233 /* ~Он качает головой и отмахивается от тебя. «Нет». Похоже, он игнорирует тебя.~ */
  IF ~~ THEN REPLY #61234 /* ~«Это не займет много твоего времени».~ */ GOTO 3
  IF ~~ THEN REPLY #61235 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #61236 /* ~Он качает головой и отмахивается от тебя. «Нет». Похоже, он по-прежнему игнорирует тебя.~ */
  IF ~~ THEN REPLY #61237 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #61238 /* ~Ты видишь стражника Гармониума. Он не реагирует на тебя, хотя ты определенно уверен, что он знает о твоем присутствии.~ */
  IF ~~ THEN REPLY #61239 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #61240 /* ~«Прощай».~ */ EXIT
END
