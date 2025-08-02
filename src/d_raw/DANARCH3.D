// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANARCH3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DANARCH3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #44482 /* ~Перед тобой громадный детина с тупым выражением лица и разинутым ртом. Его мускулы, однако, — зрелище воистину впечатляющее. Его мертвый взгляд неуклонно следует за тобой. «А?»~ */
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44485 /* ~«Мне сказали, что здесь я смогу найти ячейку анархистов. Пароль — 'затмение'».~ */ GOTO 2
  IF ~~ THEN REPLY #44486 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #44487 /* ~«Что это за место?»~ */ GOTO 2
  IF ~~ THEN REPLY #44489 /* ~«Забудь. Счастливо».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #44547 /* ~«А?»~ */
  IF ~~ THEN REPLY #44548 /* ~«Еще раз, кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #44549 /* ~«Что это за место?»~ */ GOTO 2
  IF ~  Global("Know_An_Pass","GLOBAL",1)
Global("Know_Anarchists","GLOBAL",0)
~ THEN REPLY #44550 /* ~«Мне сказали, что здесь я смогу найти ячейку анархистов. Пароль — 'затмение'».~ */ GOTO 2
  IF ~~ THEN REPLY #44551 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 0.1 0.2 1.0 1.1 1.2
  SAY #44552 /* ~«Не говорить со мной. Говорить Леена». Взмахом своей руки-колоды он указывает на женщину-бригадира.~ */
  IF ~~ THEN REPLY #44553 /* ~«Всего лишь несколько вопросов?»~ */ GOTO 3
  IF ~~ THEN REPLY #44554 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44555 /* ~«НЕ ГОВОРИТЬ СО МНОЙ!» Кажется, он взволнован.~ */
  IF ~~ THEN REPLY #44557 /* ~«Ну хорошо, хорошо. Прощай».~ */ EXIT
END
