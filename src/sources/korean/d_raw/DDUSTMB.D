// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2324 /* ~검은 법복을 입고 있는 침울하며 얼굴이 창백한 남자가 보인다. 그는 당신을 미처 보지 못한 듯하다.~ */
  IF ~~ THEN REPLY #2330 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #2331 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2325 /* ~검은 법복을 입고 있는 침울하며 얼굴이 창백한 더스트맨이 보인다. 그는 당신을 미처 보지 못한 듯하다.~ */
  IF ~~ THEN REPLY #2332 /* ~"안녕하시오."~ */ GOTO 2
  IF ~~ THEN REPLY #2333 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2326 /* ~그는 천천히 고개를 돌려 당신을 바라본다. "무슨 일이오?"~ */
  IF ~~ THEN REPLY #2334 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #2335 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2327 /* ~그는 팔짱을 끼고 기다린다.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2336 /* ~"어디 가면 파로드란 사람을 만날 수 있는지 혹시 아시오?"~ */ JOURNAL #66588 /* ~어떤 더스트맨이 내게 만약 내가 파로드를 찾고 있다면, 시체안치소 남서쪽에 있는 더스트맨이 모이는 바에서 '에모릭'이라는 사람을 만나라고 말했다.~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2337 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #2338 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2328 /* ~그는 고개를 젓는다.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2339 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #2340 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2329 /* ~그는 고개를 젓는다.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2341 /* ~"어디 가면 파로드란 사람을 만날 수 있는지 혹시 아시오?"~ */ JOURNAL #66588 /* ~어떤 더스트맨이 내게 만약 내가 파로드를 찾고 있다면, 시체안치소 남서쪽에 있는 더스트맨이 모이는 바에서 '에모릭'이라는 사람을 만나라고 말했다.~ */ GOTO 6
  IF ~~ THEN REPLY #2342 /* ~"어쨌든 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66581 /* ~"파로드는 수집자요." 남자는 잠시 당신을 살펴본다. "만약 그에 대해 더 알고 싶다면, 더스트맨이 모이는 바에 있는 참입자 에모릭를 찾아가시오. 그 역시 파로드를 찾고 있다고 하니, 그가 당신에게 도움을 줄 수 있을지도 모르겠소."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66582 /* ~"더스트맨이 모이는 바는 어디에 있소?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66586 /* ~"나는 당신이 얘기하는 바를 알고 있소. 그 곳으로 가기 전에 몇 가지 질문을 더 하고 싶소..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66583 /* ~"더스트맨이 모이는 바? 그 곳은 이 곳의 남서쪽이오, 맞소? 그럼 거기로 향하도록 하겠소." ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66584 /* ~"시체안치소 정문에서 남서쪽으로 가시오, 그 곳은 기념관 너머에 있소."~ */
  IF ~~ THEN REPLY #66585 /* ~"좋소. 가기 전에 몇 가지 질문을 더 하고 싶소..."~ */ GOTO 3
  IF ~~ THEN REPLY #66587 /* ~"좋소. 그럼 그 곳을 찾아가도록 하겠소."~ */ EXIT
END
