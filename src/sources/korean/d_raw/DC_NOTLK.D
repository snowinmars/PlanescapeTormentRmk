// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_NOTLK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_NOTLK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67920 /* ~"난 당신이 원하는 일에는 아무런 관심도 없소. 날 그냥 내버려 두시오."~ */
  IF ~~ THEN REPLY #67921 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
