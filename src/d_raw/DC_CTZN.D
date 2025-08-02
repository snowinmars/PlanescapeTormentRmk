// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_CTZN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_CTZN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67990 /* ~Явно раздраженный тем, что его отвлекли от разговора, человек смотрит на тебя, а затем поворачивается назад к толпе.~ */
  IF ~~ THEN REPLY #67993 /* ~«У меня всего лишь несколько вопросов...»~ */ GOTO 1
  IF ~~ THEN REPLY #67994 /* ~«Тогда прощай...» ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67991 /* ~Звучит брюзгливый ответ: «Ты отвлекаешь меня. Нет!»~ */
  IF ~~ THEN REPLY #67992 /* ~«Ну и ладно. Прощай».~ */ EXIT
END
