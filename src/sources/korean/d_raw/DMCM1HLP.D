// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCM1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCM1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37212 /* ~창백한 노란 피부를 지닌 젊은 남자가 보인다. 그는 나무상자 속의 물건을 살펴보느라 바쁜 것 같다.~ */
  IF ~~ THEN REPLY #37226 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37227 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37213 /* ~그는 어깨 너머로 당신을 흘긋 보더니 당신을 마주보기 위해 돌아선다. "당신도 안녕하시오? 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #37225 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37228 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37214 /* ~그는 약간 짜증이 난 듯하나 당신에게는 친절한 미소를 짓는다. "도울 수 있다면 돕겠소. 뭘 알고 싶으시오?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37229 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37230 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 5
  IF ~~ THEN REPLY #37231 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #37232 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #37233 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #37234 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37215 /* ~그는 놀라서 눈을 크게 뜨고 가슴 위에 반원을 그린다. "난 당신을 도울 수가 없소. 그가 이 구역 어딘가에 있다는 얘기는 들었지만 정확히는 모르오."~ */
  IF ~~ THEN REPLY #37235 /* ~"누구라면 알고 있을지 혹시 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #37236 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37216 /* ~그는 걱정하는 듯하다. "아니오. 대부분의 사람들은 재난을 피하지 그것을 찾아가려고 하지는 않소."~ */
  IF ~~ THEN REPLY #37237 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37238 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37217 /* ~그는 잠시 얼굴을 찌푸리더니 걱정스러운 표정으로 당신을 본다. "그런 걸 좋아하는 사람들에 대해 들은 적은 있지만 난 당신을 도울 수가 없소."~ */
  IF ~~ THEN REPLY #37239 /* ~"그럴 수 있는 사람은 누군지 혹시 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #37240 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37218 /* ~그는 잠시 생각을 하더니 어깨를 으쓱한다. "아궁이 옆에 있는 래즐로란 소년에게 물어보시오. 그 아이는 사람들과 얘기하는 걸 좋아하니까 뭔가 들은 것이 있을지도 모르오."~ */
  IF ~~ THEN REPLY #37241 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37242 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37219 /* ~그는 노점 쪽을 가리킨다. "안제가 그런 물건들을 파오. 그와 얘기를 해보시오."~ */
  IF ~~ THEN REPLY #37244 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37220 /* ~그는 노점 쪽을 가리킨다. "앨렉이 마법을 취급하오. 그와 얘기를 하시오."~ */
  IF ~~ THEN REPLY #37245 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37246 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.4
  SAY #37221 /* ~그는 눈살을 찌푸린다. "결례를 범하긴 싫지만 난 그런 얘기를 할 시간이 없소. 아궁이 옆에 있는 래즐로란 소년에게 물어보시오. 그 아이는 늘 알지도 못하는 사람들과 얘기를 하는 걸 좋아하니까."~ */
  IF ~~ THEN REPLY #37247 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37222 /* ~그는 돌아서서 당신을 보며 미소짓는다. "다시 만나 반갑소. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #37223 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37248 /* ~"안녕히 계시오."~ */ EXIT
END
