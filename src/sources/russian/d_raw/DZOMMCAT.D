// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3343 /* ~Я один из «гнилого народа» зомби, что населяют катакомбы. Я волочусь с работы и на работу также, как и Крис Авелон. Бла-бла-бла. Бла?~ */
  IF ~~ THEN REPLY #3344 /* ~Да ты и пахнешь, как он.~ */ EXIT
END
