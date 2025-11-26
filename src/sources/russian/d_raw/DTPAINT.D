// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPAINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPAINT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36403 /* ~Перед тобой стройная девушка-тифлинг, стоящая к тебе спиной. Ты замечаешь, что обе ее руки, а также перевернутый стол перед ней покрыты свежим слоем, скорее всего, розовой краски. Похоже, она не замечает твоего приближения.~ */
  IF ~~ THEN REPLY #36406 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #36407 /* ~Проигнорировать девушку и пройти мимо.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36404 /* ~От звука твоего голоса девушка поворачивает к тебе голову, чтобы разглядеть. Ее лицо, пусть немного грязное и заляпанное розовой краской, поразительно красиво. Она дарит тебе широкую озорную улыбку, затем возвращается к импровизированному полотну.~ */
  IF ~~ THEN REPLY #36408 /* ~«У меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #36409 /* ~Оставить девушку наедине с ее рисунком.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from: 1.0
  SAY #36405 /* ~Похоже, девушка-тифлинг полностью поглощена своей работой. Она совершенно тебя не замечает.~ */
  IF ~~ THEN REPLY #36410 /* ~Оставить девушку наедине с ее рисунком.~ */ EXIT
END
