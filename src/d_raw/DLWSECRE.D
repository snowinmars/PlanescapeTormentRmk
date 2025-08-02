// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSECRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSECRE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3036 /* ~Я замкнутый житель Нижнего района. Небеса запретили воровать у меня секреты!~ */
  IF ~~ THEN REPLY #3037 /* ~Чертова хитрая задница...~ */ EXIT
END
