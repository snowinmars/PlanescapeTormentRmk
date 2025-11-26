// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM3ANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM3ANG~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37707 /* ~좋은 옷을 입은 잘생긴 청년이 보인다. 그는 특별한 목적 없이 돌아다니며 상품을 구경하고 있는 듯하다. 그는 당신이 다가오고 있다는 사실을 아나 관심을 기울이지 않는다.~ */
  IF ~~ THEN REPLY #37713 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37714 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37706 /* ~그는 당신을 아래위로 쳐다보더니 경멸하는 표정을 짓는다. "나는 질이 나쁜 사람들과는 상대하지 않소. 당신 꼴을 보니 당신은 바로 그런 부류의 인간 같군. 내 앞에서 꺼지시오."~ */
  IF ~~ THEN REPLY #37715 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37716 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #37708 /* ~그는 얼굴을 더욱 찌푸리며 어린애라도 꾸짖듯이 당신을 손가락질한다. "나하곤 상관없는 일이오. 날 그냥 내버려 두지 않겠다면 경비병들을 부르겠소!~ */
  IF ~~ THEN REPLY #37717 /* ~"어디 그들을 불러와 보시오..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37718 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0
  SAY #37709 /* ~그는 무례한 손짓을 한다. "그럼 할 수 없지... 경비병! 경비병!"~ */
  IF ~~ THEN REPLY #37719 /* ~자신을 방어할 준비를 한다...~ */ EXIT
  IF ~~ THEN REPLY #37720 /* ~그들이 도착하기 전에 떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 6 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #37710 /* ~남자는 당신을 마주보려고 돌아선다, 그리고 당신을 즉각 알아본다. 그는 당신을 노려본다. "대체 어떻게 하면 날 귀찮게 하지 않을 거요?"~ */
  IF ~~ THEN REPLY #37721 /* ~"만약 당신이 내 질문에 대답을 해주겠다면..."~ */ GOTO 5
  IF ~~ THEN REPLY #37722 /* ~"미안하오, 떠나겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #37711 /* ~그는 무례한 손짓을 한다. "난 당신의 미친 질문에 대답할 생각이 없소. 현자라도 찾아서 물어보시오." 그는 당신에게 다른 데로 가라고 손짓한다. "날 그냥 내버려 두지 않겠다면 경비병들을 부르겠소."~ */
  IF ~~ THEN REPLY #37723 /* ~"어디 그들을 불러와 보시오..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37724 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Called_Market_Guards_2","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #37712 /* ~남자는 당신을 마주보려고 돌아선다, 그리고 당신을 즉각 알아본다. 그는 당신을 노려본다. "대체 어떻게 하면 날 귀찮게 하지 않을 가요?" 그는 한숨을 쉰다, 그리고 역겨움에 질려 양손을 든다. "나는 벌써 경비병을 한 번 불렀고, 언제든지 다시 부를 수도 있소... 하지만 소용이 없을 것 같군."~ */
  IF ~~ THEN REPLY #37725 /* ~"어디 그들을 불러와 보시오..."~ */ DO ~SetGlobal("Called_Market_Guards_2","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #37726 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
