// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~이 매력적인 젊은 아가씨는 두 배우의 연기를 열심히 관람하고 있다. ~ */
  IF ~~ THEN REPLY #28164 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~그녀를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~그녀는 당신 쪽으로 고개를 돌린다, 하지만 그녀의 관심은 아직도 배우들에게 쏠려 있다. 그녀는 낮은 목소리로 말한다. "만나서 반가워요. 오랫동안 관람을 하고 계셨나요? 왼쪽 배우는 괜찮은데, 그의 상대역은 연습이 더 필요한 것 같아요, 그렇죠?"~ */
  IF ~~ THEN REPLY #28166 /* ~"나는 잘 모르겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~"그렇소, 그는 형편없는 배우요."~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~"아니, 실은 난 그가 좋은 배우라고 생각하오."~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~"그 얘기는 관두시오... 물어볼 것들이 좀 있소..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~여자는 고개를 끄덕여 대답을 한다, 그리고 고개를 돌려 연기를 관람하는 데 몰두한다. ~ */
  IF ~~ THEN REPLY #28170 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~그녀는 당신에게 눈살을 찌푸리며 낮은 목소리로 말한다. "제발 예의를 지켜 주세요. 나는 연극 관람을 즐기고 있으니까요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #28172 /* ~"몇 가지만 물어봅시다."~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~그녀는 여전히 조용한 목소리로 얘기를 하나, 그녀의 어조는 훨씬 위협적이다. "부탁이니 조용히 해주시던지 아니면 이 곳을 떠나 주세요. 아니면 경비병을 부르겠어요."~ */
  IF ~~ THEN REPLY #28174 /* ~"좋소, 그들을 부르시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~그녀는 고개를 끄덕여 인사를 한다, 그리고 당신에게 조용히 하라고 손짓한다.~ */
  IF ~~ THEN REPLY #28176 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~떠난다.~ */ EXIT
END
