// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMCF1HLP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMCF1HLP~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37100 /* ~창백한 노란 피부를 지닌 젊은 여인이 보인다. 그녀는 나무상자 속의 물건을 살펴보느라 바쁜 것 같다.~ */
  IF ~~ THEN REPLY #37111 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #37112 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #37101 /* ~그녀는 어깨 너머로 당신을 흘긋 보더니 당신을 마주보기 위해 돌아선다. "당신도 안녕하신가요. 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #37113 /* ~"질문할 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37114 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.0 7.0 8.0 10.0
  SAY #37102 /* ~그녀는 약간 짜증이 난 듯하나 당신에게는 상냥한 미소를 짓는다. "도울 수 있다면 돕지요. 뭘 알고 싶으시죠?"~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37115 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #37116 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 5
  IF ~~ THEN REPLY #37117 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #37118 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #37119 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37103 /* ~그녀는 놀라서 눈을 크게 뜨고 가슴 위에 반원을 그린다. "난 당신을 도울 수가 없어요. 그가 이 구역 어진가에 있담는 얘기는 들었지만 정확히는 몰라요."~ */
  IF ~~ THEN REPLY #37120 /* ~"누구라면 알고 있을지 혹시 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #37121 /* ~"좋소. 그 밖에도 질문할 것이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37122 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #37104 /* ~그녀는 걱정을 하는 듯하다. "아뇨. 대부분의 사람들은 재난을 피하지 그것을 찾아가려고 하지는 않아요."~ */
  IF ~~ THEN REPLY #37123 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37124 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #37105 /* ~그녀는 잠시 얼굴을 찌푸리더니 걱정스러운 표정으로 당신을 본다. "그런 걸 좋아하는 사람들에 대해 들은 적은 있지만 난 당신을 도울 수가 없어요."~ */
  IF ~~ THEN REPLY #37125 /* ~"그럴 수 있는 사람은 누군지 혹시 아시오?"~ */ GOTO 6
  IF ~~ THEN REPLY #37126 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37127 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #37106 /* ~그녀는 잠시 생각을 하더니 어깨를 으쓱한다. "아궁이 옆에 있는 소년에게 물어보세요. 그 아이는 사람들과 얘기하는 걸 좋아하니까 뭔가 들은 것이 있을지도 몰라요."~ */
  IF ~~ THEN REPLY #37128 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37129 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #37107 /* ~그녀는 노점 쪽을 가리킨다. "안제가 그런 물건들을 팔아요. 그와 얘기를 해보세요."~ */
  IF ~~ THEN REPLY #37130 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37131 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.3
  SAY #37108 /* ~그녀는 노점 쪽을 가리킨다. "앨렉이 마법을 취급해요. 그와 얘기를 하세요."~ */
  IF ~~ THEN REPLY #37132 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37133 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #37109 /* ~그녀는 눈살을 찌푸린다. "결례를 범하긴 싫지만 난 그런 얘기를 할 시간이 없어요. 아궁이 옆에 있는 소년에게 물어보세요. 그 아이는 늘 알지도 못하는 사람들과 얘기를 하는 걸 좋아하니까."~ */
  IF ~~ THEN REPLY #37134 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #37110 /* ~그녀는 돌아서서 당신을 보며 미소짓는다. "다시 만나 반가워요. 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #37135 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #37136 /* ~"안녕히 계시오."~ */ EXIT
END
