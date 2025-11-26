// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARKET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARKET~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3028 /* ~나는 마계구의 상인이오. 나는 경매 구획 바로 옆에 있는 개방 시장에서 장사를 하오.~ */
  IF ~~ THEN REPLY #3029 /* ~빨리 당신들부터 실제로 물건을 살 수 있었으면 좋겠소.~ */ EXIT
END
