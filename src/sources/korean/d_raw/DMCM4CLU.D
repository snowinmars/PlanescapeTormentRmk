// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM4CLU.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM4CLU~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37727 /* ~평범한 남자가 보인다. 그는 시장을 찾은 평범한 고객인 듯하다. 그는 다른 손님들 사이에서 지루한 표정으로 돌아다니고 있다. ~ */
  IF ~~ THEN REPLY #37737 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37738 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37728 /* ~당신이 인사하자 그는 돌아선다, 그리고 그는 더욱 지루한 표정을 짓는다. "그래..."~ */
  IF ~~ THEN REPLY #37739 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37740 /* ~"신경 쓸 것 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0
  SAY #37729 /* ~그는 당신을 약간 짜증스러운 표정으로 바라본다. "좋소..."~ */
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37741 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37742 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #37743 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #37744 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #37745 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #37746 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37730 /* ~"그런 사람에 대해서는 들어본 적도 없소. *뼈들의 지배자*란 이름은 한 번 들으면 쉽게 잊을 이름은 아니오." 그는 짜증스러운 표정을 하고 있다.~ */
  IF ~~ THEN REPLY #37747 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37748 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #37731 /* ~그는 잠시 당신을 빤히 쳐다본다.. "해골을 잃어버렸다... 매일 듣는 얘기는 아니군. 시길의 도둑이라면 그것보다는 더 값나가는 걸 가지고 도망치려고 할 거요. 뭐라고 말을 해야 할지 모르겠소." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #37749 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37750 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 2.3
  SAY #37732 /* ~그는 지루하다는 표정으로 당신을 쳐다본 후 시장을 흘긋 본다. "바로 여기요." 그는 대충 손짓한다. "시간을 내서 상인들에게 물어보시오. 분명히 당신이 원하는 물건을 구할 수 있을 거요."~ */
  IF ~~ THEN REPLY #37751 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37752 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.4
  SAY #37733 /* ~그는 한숨을 쉰다. "별로 대단한 곳은 아니지만... 내게 있어서는 유일한 고향이오. 이 곳을 떠날 일은 결코 없을 테니 사랑하도록 노력을 해야 할 것 같소."~ */
  IF ~~ THEN REPLY #37753 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37754 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #37734 /* ~그는 고개를 돌려 당신이 다가오는 것을 보더니 눈살을 찌푸린다. "나는 이미 당신에게 시간을 내줬소. 더 이상 할애할 시간은 없소" 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #37735 /* ~떠난다.~ */ EXIT
END
