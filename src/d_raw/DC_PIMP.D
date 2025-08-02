// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_PIMP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_PIMP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67973 /* ~Полноватый стражник Проклятого свысока смотрит на тебя. «Не со мной надо болтать, рубака... с ними». Он кивает на привлекательных, но как-то безвкусно выглядящих женщин в комнате за ним. «И будь повежливее, рубака... не груби дамам».~ */
  IF ~~ THEN REPLY #67975 /* ~«Вообще-то, *именно* с тобой я и хотел поговорить...»~ */ GOTO 1
  IF ~~ THEN REPLY #67976 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #67974 /* ~Он качает головой. Даже сквозь узкую щель шлема заметно, как он закатывает глаза. Больше он не говорит ни слова.~ */
  IF ~~ THEN REPLY #67977 /* ~Уйти.~ */ EXIT
END
