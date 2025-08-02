// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLOOTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLOOTER~

IF ~  !Dead("Jujog")
~ THEN BEGIN 0 // from:
  SAY #53202 /* ~Этого человека буквально дергает от сильного возбуждения; его глаза горят в злобном предвкушении. Когда ты подходишь, он поворачивается и ухмыляется. «Чего?»~ */
  IF ~~ THEN REPLY #53203 /* ~«Что здесь происходит?»~ */ GOTO 1
  IF ~~ THEN REPLY #53204 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53205 /* ~«Поговори с Джужогом, если хочешь немного поучаствовать в действиях. А сейчас отвали!»~ */
  IF ~~ THEN REPLY #53206 /* ~«Погоди... кто такой Джужог?»~ */ GOTO 2
  IF ~~ THEN REPLY #53207 /* ~«Отлично. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53208 /* ~Он раздраженно смотрит на тебя, вяло указывая рукой. «Вон тот стражник, весь в броне».~ */
  IF ~~ THEN REPLY #53209 /* ~Уйти.~ */ EXIT
END

IF ~  Dead("Jujog")
~ THEN BEGIN 3 // from:
  SAY #53210 /* ~Этот человек в панике: он кричит и в по большей части неспособен мыслить рационально. «Джужог мертв! Что нам делать? Нужно отсюда убираться!»~ */
  IF ~~ THEN REPLY #53211 /* ~Уйти.~ */ EXIT
END
