// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3194 /* ~Может быть, я расскажу тебе о туннелях. Это хорошо?~ */
  IF ~~ THEN REPLY #3195 /* ~Да, это хорошо. Пока это не станет плохо.~ */ EXIT
END
