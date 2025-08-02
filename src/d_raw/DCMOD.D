// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCMOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCMOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2905 /* ~Я один из конструктов среднего уровня опасности из лабиринта модронов. Я еще даже не знаю, буду ли я существовать. Возможно, я не более чем диалог, и большим я не стану.~ */
  IF ~~ THEN REPLY #2906 /* ~На такой исход я мог лишь надеяться. Счастливо.~ */ EXIT
END
