// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLABOR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLABOR~

IF ~  !Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #9348 /* ~당신 시야에 마르고 지친 남자가 들어온다. 그의 옷으로부터는 땀과 때 냄새가 나며, 그는 숨을 헐떡이고 있다. 당신이 다가가도 그는 당신을 무시한다... 그는 시장의 평범한 노동자들 중 하나인 것 같다. ~ */
  IF ~~ THEN REPLY #9349 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~  Global("Craddock_Quest","GLOBAL",4)
~ THEN BEGIN 1 // from:
  SAY #22651 /* ~당신이 다가가자 사내는 당신을 쳐다본다... 당신이 젤라이의 대타를 뛰었을 때 함께 일했던 사람이다. "그래, 다시 만나 반갑소." 그는 목소리를 낮춘다. "크래독 옆에서는 조심하는 게 좋소. 그는 쉽게 화를 내니까."~ */
  IF ~~ THEN REPLY #22652 /* ~"주의를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END
