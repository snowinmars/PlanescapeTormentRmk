// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLEIGHIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLEIGHIS~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58803 /* ~더러운 작업복을 입은 노인이 보인다. 당신이 다가가자 그는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #58804 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58805 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58806 /* ~그는 더욱 눈살을 찌푸린다. "안녕하시오. 왜 내게 말을 거는 거요? 난 할 일이 있소."~ */
  IF ~~ THEN REPLY #58807 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58808 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.0 6.0 7.0
  SAY #58809 /* ~그는 한숨을 쉰다. "빨리 질문을 하시오."~ */
  IF ~~ THEN REPLY #58810 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #58811 /* ~"뭘 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #58812 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #58813 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 커스트에 있다고 들었소."~ */ GOTO 6
  IF ~~ THEN REPLY #58814 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58815 /* ~"당신이 알 필요는 없지만 내 이름은 레기스요."~ */
  IF ~~ THEN REPLY #58816 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58817 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58818 /* ~그는 코방귀를 뀐다. "일해야 하는데 얼간이와 얘기를 하게 되다니..."~ */
  IF ~~ THEN REPLY #58819 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58820 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #58821 /* ~그는 주변을 흘긋 본다. "여긴 창고요. 뭘 더 알고 싶소?"~ */
  IF ~~ THEN REPLY #58822 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58823 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3
  SAY #58824 /* ~그는 단호한 표정으로 당신을 보더니 고개를 젓는다. "커스트에서 디바를 찾다니..." 그는 당신을 비웃는다. "차라리 매음굴에 가서 처녀를 찾으시오." ~ */
  IF ~~ THEN REPLY #58825 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58826 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #58827 /* ~창고 노동자 레기스가 보인다. 당신이 다가가자 그는 눈살을 찌푸린다. "또 왔군. 뭘 원하오?"~ */
  IF ~~ THEN REPLY #58828 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58829 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
