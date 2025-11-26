// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2798 /* ~Модрон-бродяга~ */
  IF ~~ THEN REPLY #2799 /* ~Скелет-торговец~ */ EXIT
END
