// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKELCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~SKELCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3345 /* ~Я — один из скелетов-последователей Харгримма. Мы воздаем почести мертвым, и чтим их жертву.~ */
  IF ~~ THEN REPLY #3346 /* ~Я оставлю вас, славные скелеты.~ */ EXIT
END
