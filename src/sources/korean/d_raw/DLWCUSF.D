// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3400 /* ~나는 마계구의 여자 손님이에요. 남자와 마찬가지로 이 가게에서 저 가게로 돌아다니며 상품을 살펴보고 무엇을 살지를 결정하죠. 나도 별로 중요한 존재는 아니에요.~ */
  IF ~~ THEN REPLY #3401 /* ~흥미롭군... 내 말은 허풍 부분 말이오. 시간을 내주어 고맙소.~ */ EXIT
END
