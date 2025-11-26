// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREVLEG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DREVLEG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2978 /* ~Я один из «шаблонных» членов Революционной лиги, хотя все мы на самом деле обладаем индивидуальностью.~ */
  IF ~~ THEN REPLY #2979 /* ~Да, конечно же. Прощай.~ */ EXIT
END
