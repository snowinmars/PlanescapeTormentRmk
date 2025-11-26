// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERFEM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66400 /* ~지루해 하는 듯한 여자가 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보고는 시선을 돌린다.~ */
  IF ~~ THEN REPLY #66401 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #66402 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66403 /* ~그녀는 한숨을 쉬고 시선을 당신 쪽으로 돌린다 "안녕하세요... 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #66404 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #66405 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66406 /* ~그녀는 얼굴을 한층 찡그린다. "난 바빠서 질문에 답할 시간이 없어요. 가서 가이드를 찾으세요." ~ */
  IF ~~ THEN REPLY #66407 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #66408 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66409 /* ~"나는 경매에 집중해야 하기 때문에 당신에게 할애할 시간이 일 초도 없어요." 그녀는 당신에게 등을 돌린다. ~ */
  IF ~~ THEN REPLY #66410 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66411 /* ~어떤 여자가 보인다. 그녀는 상당히 흥분하고 있는 것 같다. 당신이 다가가자 그녀는 흘긋 보고는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #66412 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #66413 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66414 /* ~"안녕하세요. 뭐 원하시는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #66415 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66416 /* ~"아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66417 /* ~그녀는 눈살을 찌푸리고 한숨을 쉰다. "제발 서둘러 주세요. 난 아무 것도 놓치고 싶지 않아요."~ */
  IF ~~ THEN REPLY #66418 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #66419 /* ~"뭘 하고 있는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #66420 /* ~"구체적으로 어떤 일이 벌어지고 있는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #66421 /* ~"이 구역에서 볼만한 건 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #66422 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66423 /* ~"경매를 지켜보려는 사람일 뿐이에요. 좀 빨리 해주세요."~ */
  IF ~~ THEN REPLY #66424 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66425 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66426 /* ~"나는 하인을 한 명 구하려고 해요. 저 남자.." 그녀는 머뭇거리면서 얼굴을 붉히기 시작한다. "관두세요. 달리 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #66427 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66429 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66430 /* ~"이 사람들은 가벼운 죄를 지었으며 채무를 안고 있어요. 그들은 그 채무를 변제하기 위해 노예로 팔리게 되는 거예요."~ */
  IF ~~ THEN REPLY #66431 /* ~"빛을 갚은 후에는 어떻게 되오?"~ */ GOTO 10
  IF ~~ THEN REPLY #66432 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66433 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66434 /* ~그녀는 미소짓는다. "그 후에는 다시 보통 시민의 지위를 되찾고 방면되죠. 그들은 삶을 다시 시작할 수 있어요."~ */
  IF ~~ THEN REPLY #66435 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66436 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66437 /* ~"내 생각으로는 경매밖에 없어요. 경매인이 한 명 더 있기는 하지만 그는 아이템류만 취급해요. 그 사람에게도 한 번 가보시죠." 그녀는 미소짓는다.~ */
  IF ~~ THEN REPLY #66438 /* ~"Je le ferai. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66440 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66439 /* ~엄하게 생긴 여인이 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보더니 당신을 피하려고 한다.~ */
  IF ~~ THEN REPLY #66441 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #66442 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66443 /* ~그녀는 짜증스러운 표정으로 당신을 본다. "무엇을 원하죠?"~ */
  IF ~~ THEN REPLY #66444 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #66445 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66446 /* ~그녀는 눈살을 찌푸린다. "난 관심없으니까 다른 사람에게 가보세요."~ */
  IF ~~ THEN REPLY #66447 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 15
  IF ~~ THEN REPLY #66448 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66449 /* ~그녀는 눈살을 더욱 찌푸린다. "관심없어요. 꺼져요."~ */
  IF ~~ THEN REPLY #66450 /* ~"남을 돕기 위해 약간의 시간도 내줄 수 없단 말이오?"~ */ GOTO 16
  IF ~~ THEN REPLY #66451 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66452 /* ~그녀는 역겹다는 표정으로 당신을 보면서 코방귀를 뀐다, 그리고 고개를 돌린다.~ */
  IF ~~ THEN REPLY #66453 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66454 /* ~경매 입찰자가 보인다. 당신이 다시 말을 걸려고 하자 그녀는 가라고 손짓한다.~ */
  IF ~~ THEN REPLY #66455 /* ~떠난다.~ */ EXIT
END
