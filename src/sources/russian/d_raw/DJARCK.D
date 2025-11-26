// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARCK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARCK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3071 /* ~Я Джаркел трехликий. В теории ты сможешь пообщаться со всеми меня тремя и получить головоломки, в зависимости от того, какие напитки ты мне принесешь. Возможно, за это я дам тебе что-нибудь прикольное.~ */
  IF ~~ THEN REPLY #3368 /* ~Может быть? Может быть, если только я тебе не засвечу тебе в твою жалкую зомбифицированную рожу.~ */ EXIT
  IF ~~ THEN EXIT
END
