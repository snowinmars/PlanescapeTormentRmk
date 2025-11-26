// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3398 /* ~Я покупатель из Нижнего района. Я гуляю по округе, осматриваю товары, а вообще выполняю роль ветреной особы.~ */
  IF ~~ THEN REPLY #3399 /* ~Отлично. Спасибо за уделенное «время».~ */ EXIT
END
