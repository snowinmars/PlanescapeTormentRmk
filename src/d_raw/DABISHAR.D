// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3327 /* ~Я КРАСНЫЙ абишай, это большая разница с черными. На самом деле. Да, а еще я хочу тебя убить, как и все.~ */
  IF ~~ THEN REPLY #3328 /* ~Очаровательно.~ */ EXIT
END
