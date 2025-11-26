// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~이 신사는 초로의 시인이 시를 낭독하는 것을 유심히 지켜보고 있다. ~ */
  IF ~~ THEN REPLY #28211 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~그를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~그는 당신 쪽으로 고개를 돌린다, 하지만 그의 관심은 아직도 시인에게 쏠려 있다. 그는 낮은 목소리로 말한다. "안녕하시오." 그는 잠시 말을 멈춘 후 당신에게 속삭인다. "내가 들어본 것들 중 최고의 시라고 할 수는 없지만 과히 나쁘지는 않소, 그렇지 않소?"~ */
  IF ~~ THEN REPLY #28214 /* ~"나는 잘 모르겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~"그렇소, 그는 형편없는 시인이오."~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~"아니, 나는 그가 실은 훌륭한 시인이라고 생각하오."~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~"그 애기는 관두시오... 물어볼 것들이 좀 있소..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~"흠." 그는 고개를 끄덕인다, 그리고 계속해서 늙은 시인의 공연을 감상한다. ~ */
  IF ~~ THEN REPLY #28219 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~그는 당신에게 눈살을 찌푸리며 낮은 목소리로 말한다. "지금은 곤란하오. 나는 시 낭독을 듣고 있소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #28222 /* ~"몇 가지만 물어봅시다."~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~그는 여전히 조용한 목소리로 얘기를 하나, 그의 어조는 훨씬 위협적이다. "내가 경비병을 부르기 전에 조용히 하던지 아니면 이 자리를 떠나 주시오. ~ */
  IF ~~ THEN REPLY #28225 /* ~"좋소, 그들을 부르시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~그는 고개를 끄덕여 인사한다, 그리고 당신에게 조용히 하라고 손짓한다. ~ */
  IF ~~ THEN REPLY #28228 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~떠난다.~ */ EXIT
END
