// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9352 /* ~당신이 다가가도 이 여자는 당신을 무시한다. 그녀는 판매되는 물건들에 지대한 관심이 있는 것 같다. ~ */
  IF ~~ THEN REPLY #9353 /* ~그녀가 쇼핑을 즐기도록 내버려 둔다.~ */ EXIT
END
