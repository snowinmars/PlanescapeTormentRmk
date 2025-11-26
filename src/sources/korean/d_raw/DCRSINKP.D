// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSINKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSINKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3179 /* ~당신이 감옥으로 들어갈 방법을 찾는다는 소문이 시 안에 퍼졌소. 내게 대사가 부여되면 그 방법을 당신에게 알려 주리다.~ */
  IF ~~ THEN REPLY #3181 /* ~그 다음에는 내가 가서 그 음흉한 천사 트리어스를 요절을 낼 수가 있지! 이런!~ */ EXIT
  IF ~~ THEN EXIT
END
