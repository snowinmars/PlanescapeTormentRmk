// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2837 /* ~(Простой сборщик-разбойник еще не готов.)~ */
  IF ~~ THEN REPLY #2838 /* ~Ну хорошо. Я вернусь, когда тебе будет что мне сказать... или что-нибудь отдать.~ */ EXIT
END
