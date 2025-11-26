// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3400 /* ~Я покупательница из Нижнего района. Как и мужчины моего вида, я брожу по лавкам, смотрю товары и решаю, что мне купить. Я тебе не какая-нибудь пустышка.~ */
  IF ~~ THEN REPLY #3401 /* ~Как интересно... то есть, насчет пустышки. Спасибо, что уделила мне время, дорогуша.~ */ EXIT
END
