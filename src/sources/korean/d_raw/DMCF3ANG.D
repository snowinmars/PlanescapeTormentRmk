// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37164 /* ~좋은 옷을 입은 매력적인 아가씨가 보인다. 그녀는 특별한 목적 없이 돌아다니며 상품을 구경하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #37171 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37172 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37165 /* ~그녀는 당신을 아래위로 쳐다보더니 눈살을 찌푸린다. "나는 질이 나쁜 사람들과는 상대하지 않아요. 당신 꼴을 보니 당신은 바로 그런 부류의 인간 같군요. 내 앞에서 꺼져요."~ */
  IF ~~ THEN REPLY #37173 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37174 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37166 /* ~그녀는 얼굴을 더욱 찌푸리며 양손을 엉덩이에 얹는다. "나하곤 상관없는 일이에요. 날 그냥 내버려 두지 않겠다면 경비병들을 부르겠어요."~ */
  IF ~~ THEN REPLY #67883 /* ~"어디 그들을 데려와 보시오..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #67884 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37167 /* ~그녀는 무례한 손짓을 한다. "그럼 할 수 없군요... 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #37178 /* ~그들이 도착하기 전에 떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37168 /* ~여자는 당신을 마주보려고 돌아선다, 그리고 당신을 즉각 알아본다. 그녀는 당신을 노려본다. "대체 어떻게 하면 날 귀찮게 하지 않을 건가요?"~ */
  IF ~~ THEN REPLY #37179 /* ~"몇 가지 질문에 대답해 줄 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #37180 /* ~"미안하오, 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37169 /* ~그녀는 무례한 손짓을 한다. "난 당신의 미친 질문에 대답할 생각이 없어요. 현자라도 찾아서 물어보라고요." 그녀는 당신에게 다른 데로 가라고 손짓한다. "날 그냥 내버려 두지 않겠다면 경비병들을 부르겠어요."~ */
  IF ~~ THEN REPLY #37181 /* ~"어디 그들을 불러와 보시오..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37182 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_1","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37170 /* ~여자는 당신을 마주보려고 돌아선다, 그리고 당신을 즉각 알아본다. 그녀는 당신을 노려본다. "대체 어떻게 하면 날 귀찮게 하지 않을 건가요?" 그녀는 한숨을 쉰다, 그리고 역겨움에 질려 양손을 든다. "나는 벌써 경비병을 한 번 불렀고, 언제든지 다시 부를 수도 있어요... 하지만 소용이 없을 것 같군요."~ */
  IF ~~ THEN REPLY #37183 /* ~"어디 그들을 불러와 보시오..."~ */ DO ~SetGlobal("Called_Market_Guards_1","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37184 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
