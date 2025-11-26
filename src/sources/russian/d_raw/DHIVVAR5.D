// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAR5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAR5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49004 /* ~Ты видишь бледного мужчину, стоящего посреди комнаты. Он сгорблен и выглядит нездоровым.~ */
  IF ~~ THEN REPLY #49005 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #49006 /* ~Оставить мужчину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49007 /* ~«Опять ты... разве я не сказал, что мне нужен покой?»~ */
  IF ~~ THEN REPLY #49008 /* ~«Хмм... Что случилось?»~ */ GOTO 4
  IF ~~ THEN REPLY #49009 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #49010 /* ~«Я чувствую себя ужасно».~ */
  IF ~~ THEN REPLY #49011 /* ~«Что произошло?»~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49012 /* ~«Я не уверен, но думаю, что немного отдыха пойдет мне на пользу. Ты можешь меня оставить в покое?»~ */
  IF ~~ THEN REPLY #49013 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #49014 /* ~«Пожалуйста, ты можешь дать мне отдохнуть? Возможно, мне станет лучше, если я немного отдохну».~ */
  IF ~~ THEN REPLY #49015 /* ~«Прощай».~ */ EXIT
END
