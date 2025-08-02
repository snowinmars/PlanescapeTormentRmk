// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9370 /* ~При твоем приближении этот мужчина круто разворачивается и кланяется. «Братец... вне всякого сомнения, ты ищешь лучшие товары во всем Сигиле. Ты пришел по адресу».~ */
  IF ~~ THEN REPLY #9371 /* ~«Э-э... Подожду, пока у тебя не появятся товары».~ */ EXIT
END
