// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGP2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGP2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #25998 /* ~Этот небольшой, жилистый головорез закутан в черно-красные лохмотья. При твоем приближении он таращится на тебя.~ */
  IF ~~ THEN REPLY #26001 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #26002 /* ~Оставить головореза в покое. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25999 /* ~Мужчина не отвечает, продолжая таращиться на тебя. Не похоже, что он — главарь этой небольшой банды.~ */
  IF ~~ THEN REPLY #26000 /* ~«Тогда прощай». ~ */ EXIT
END
