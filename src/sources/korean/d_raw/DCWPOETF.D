// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~이 매력적인 젊은 아가씨는 초로의 시인이 시를 낭독하는 것을 유심히 지켜보고 있다. ~ */
  IF ~~ THEN REPLY #28197 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~그녀를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~그녀는 당신 쪽으로 고개를 돌린다, 하지만 그녀의 관심은 아직도 시인에게 쏠려 있다. 그녀는 낮은 목소리로 말한다. "목소리를 좀 낮추어 주시겠어요?" 그녀는 시인 쪽을 향해 고개를 끄덕인다. "물론 일류라고 할 수는 없지만 저 늙은 시인에게는 가능성이 있어요."~ */
  IF ~~ THEN REPLY #28199 /* ~"나는 잘 모르겠소."~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~"그렇소, 그는 형편없는 시인이오."~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~"아니, 나는 그가 실은 훌륭한 시인이라고 생각하오."~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~"관두시오... 물어볼 것들이 좀 있소..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~그녀는 천천히 고개를 끄덕인다. 그녀는 아직도 시인을 주시하고 있다. ~ */
  IF ~~ THEN REPLY #28201 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~그녀는 당신에게 눈살을 찌푸리며 낮은 목소리로 말한다. "지금은 그러실 때가 아니에요. 시인을 존중해 좀 조용히 해주세요... 안녕히 가세요."~ */
  IF ~~ THEN REPLY #28203 /* ~"몇 가지만 물어봅시다."~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~그녀는 여전히 조용한 목소리로 얘기를 하나, 그녀의 어조는 훨씬 위협적이다. "지금은 질문을 할 때와 장소가 아니에요. 날 가만히 내버려 두지 않으시겠다면 경비병을 부겠어요."~ */
  IF ~~ THEN REPLY #28205 /* ~"좋소, 그들을 부르시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~그녀는 고개를 끄덕여 인사를 한다, 그리고 당신에게 조용히 하라고 손짓한다.~ */
  IF ~~ THEN REPLY #28656 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~떠난다.~ */ EXIT
END
