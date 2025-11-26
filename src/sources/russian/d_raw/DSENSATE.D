// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~«Я один из 'типичных' чувствующих в Городском Фестхолле. Рад встрече».~ */
  IF ~~ THEN REPLY #2986 /* ~«Рад оставить тебя».~ */ EXIT
END
