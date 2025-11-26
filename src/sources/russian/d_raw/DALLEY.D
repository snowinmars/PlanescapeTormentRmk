// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALLEY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DALLEY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2877 /* ~Я УЛИЦА ПРОТЯЖНЫХ ВЗДОХОВ. Я ГОВОРЮ ПРОПИСНЫМИ БУКВАМИ, ВЕДЬ Я ТАКАЯ БОООЛЬШАЯ.~ */
  IF ~~ THEN REPLY #2878 /* ~Спасибо за участие. Я вернусь, когда ты закончишь.~ */ EXIT
END
