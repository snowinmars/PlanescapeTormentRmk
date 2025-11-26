// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~요리사의 얼굴은 분노로 빨개지기 시작한다. "내 말이 안 들렸소? 나가시오! 내 부엌에서 나가!"~ */
  IF ~~ THEN REPLY #67946 /* ~떠난다.~ */ EXIT
END
