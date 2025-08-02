// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOULM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOULM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3337 /* ~Ключ к комнате в Фестхолле~ */
  IF ~~ THEN REPLY #3338 /* ~Записки Фина Эндли~ */ EXIT
END
