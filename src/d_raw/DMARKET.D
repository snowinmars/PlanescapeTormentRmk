// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARKET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARKET~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3028 /* ~Я торговец из Нижнего района. Я торгую на открытом рынке прямо перед аукционом.~ */
  IF ~~ THEN REPLY #3029 /* ~Надеюсь, что хоть когда-нибудь я смогу КУПИТЬ что-нибудь у вас, ребята.~ */ EXIT
END
