// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILM1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILM1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3396 /* ~Я один из сборщиков в Погребенной деревне. Я брожу вокруг, собирая вещи и трупы для Фарода.~ */
  IF ~~ THEN REPLY #3397 /* ~Звучит превосходно.~ */ EXIT
END
