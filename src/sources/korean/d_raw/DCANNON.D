// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~이 거대한 장치는 강대한 마력으로 진동하고 있다. 그것은 마치 금속 구근과 플랜지들로 장식된 거대한 조화처럼 생겼다. 무수한 손잡이, 게이지, 그리고 구멍들의 배열이 당신 눈을 어지럽게 한다.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~기계의 아래쪽에 있는 발사장치를 파괴한다.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~조종 장치를 가지고 논다.~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~그것을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~발사 장치는 위험할 정도로 불안정하게 느껴진다. 당신은 그것을 확 잡아당겨 계류 장치로부터 빼낸다. 기계의 진동 사이클의 변화는 미묘하나, 당신은 이전의 안정된 윙윙 소리하고는 다르다는 것을 느낀다. 빨리 자리를 뜨는 것이 좋을 듯하다.~ */
  IF ~~ THEN REPLY #66191 /* ~떠난다.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~지금으로서는 어떠한 설정도 제대로 변경할 수 없는 것 같다.~ */
  IF ~~ THEN REPLY #66192 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~기계의 윙윙 소리는 급속도로 커져만 간다. 기계의 폭발 때문에 산산조각이 나기 전에 빨리 자리를 떠야 할 것 같다.~ */
  IF ~~ THEN REPLY #66193 /* ~떠난다.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END
