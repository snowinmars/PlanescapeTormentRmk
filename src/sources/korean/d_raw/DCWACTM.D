// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~이 신사는 두 배우의 연기를 열심히 관람하고 있다. ~ */
  IF ~~ THEN REPLY #28178 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~그를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~그는 당신 쪽으로 고개를 돌린다, 하지만 그의 관심은 아직도 배우들에게 쏠려 있다. 그는 낮은 목소리로 말한다. "안녕하시오. 그래, 당신은 어떻게 생각하시오? 오른쪽 배우는 괜찮은데, 그의 상대역은 연습이 더 필요한 것 같소, 그렇지 않소?"~ */
  IF ~~ THEN REPLY #28180 /* ~"나는 잘 모르겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~"그렇소, 그는 형편없는 배우요."~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~"아니, 실은 난 그가 좋은 배우라고 생각하오."~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~"관두시오... 물어볼 것들이 좀 있소..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~"흠." 그는 고개를 돌려 다시 연기를 관람하는 데 몰두한다.~ */
  IF ~~ THEN REPLY #28182 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~그는 당신에게 눈살을 찌푸리며 낮은 목소리로 말한다. "지금은 곤란하오. 나는 연극 관람을 즐기고 있으니까. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #28184 /* ~"몇 가지만 물어봅시다."~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~그는 여전히 조용한 목소리로 얘기를 하나, 그의 어조는 훨씬 위협적이다. "아니, 더 이상 날 귀찮게 마시오. 아니면 경비병을 불러 당신을 내쫓도록 하겠소."~ */
  IF ~~ THEN REPLY #28186 /* ~"좋소, 그들을 부르시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~그는 고개를 끄덕여 인사를 한다, 그리고 당신에게 조용히 하라고 손짓한다.~ */
  IF ~~ THEN REPLY #28195 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~떠난다.~ */ EXIT
END
