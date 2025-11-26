// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3398 /* ~나는 마계구의 남자 손님이오. 나는 돌아다니며 상품을 살펴보지만 별다른 역할은 없소.~ */
  IF ~~ THEN REPLY #3399 /* ~좋소. *시간*을 내주어 고맙소.~ */ EXIT
END
