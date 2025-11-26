// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Ты видишь старика, стоящего рядом с небольшой толпой. Они собрались вокруг предмета, похожего на гильотину.~ */
  IF ~~ THEN REPLY #3167 /* ~«Приветствую».~ */ EXIT
  IF ~~ THEN EXIT
END
