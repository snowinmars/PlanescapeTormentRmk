// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~Эта женщина не обращает на тебя внимания. Кажется, она очень увлечена тем, что торговцы выставили на продажу.~ */
  IF ~~ THEN REPLY #9353 /* ~Позволить ей заниматься своими покупками.~ */ EXIT
END
