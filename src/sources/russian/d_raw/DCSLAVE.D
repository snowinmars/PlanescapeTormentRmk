// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~Перед тобой испуганный житель Проклятого. «Спасибо тебе за помощь... Не знаю, что бы я натворил... они бы меня просто убили...» Некоторое время он бормочет свои благодарности, потом произносит: «Мне нужно помочь другим. Этот город не в том состоянии, чтобы я позволил себе быть эгоистом. Спасибо тебе еще раз. Прощай».~ */
  IF ~~ THEN REPLY #53238 /* ~«Не стоит благодарности. Прощай».~ */ DO ~EscapeArea()
~ EXIT
END
