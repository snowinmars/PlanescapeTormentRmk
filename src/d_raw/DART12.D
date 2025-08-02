// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~На этой картине — мрачный городской пейзаж, панорама какого-то гигантского центра цивилизации, сожженного дотла. Тем не менее, улицы этого места пусты: нет ни солдат, ни беженцев, ни даже трупов. Табличка гласит: «Глупость Удо».~ */
  IF ~~ THEN REPLY #42679 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
