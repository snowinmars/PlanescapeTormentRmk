// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3341 /* ~Я один из «гнилого народа» зомби, что населяют катакомбы. Я волочусь с работы и на работу также, как и Крис Авелон.~ */
  IF ~~ THEN REPLY #3342 /* ~«Что делаешь вечером?»~ */ EXIT
END
