// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3402 /* ~Я — одна из девушек Погребенной деревни. Я брожу по деревне, разыскивая тела и безделушки для Фарода.~ */
  IF ~~ THEN REPLY #3403 /* ~Хороший. Плохой. Я тот, у кого пушка.~ */ EXIT
END
