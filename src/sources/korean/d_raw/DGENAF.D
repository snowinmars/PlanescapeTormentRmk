// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63508 /* ~지루해 하는 듯한 여자가 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #63509 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #63510 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63511 /* ~그녀는 한숨을 쉬고 주변을 둘러본 후에야 시선을 당신에게로 돌린다. "안녕하세요... 뭘 원하시죠?"~ */
  IF ~~ THEN REPLY #63512 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #63513 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63514 /* ~그녀는 얼굴을 한층 찡그린다. "질문... 집어치워요. 난 바빠서 질문에 답할 시간이 없어요."~ */
  IF ~~ THEN REPLY #63515 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #63516 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63517 /* ~"내겐 당신에게 줄 시간이 일 초도 없어요." 그녀는 주위를 둘러보기 시작한다. "꺼지지 않으면 경비병을 부르겠어요."~ */
  IF ~~ THEN REPLY #63518 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63519 /* ~어떤 여자가 보인다. 그녀는 상당히 흥분하고 있는 것 같다. 당신이 다가가자 그녀는 당신을 흘긋 보고는 미소를 짓는다.~ */
  IF ~~ THEN REPLY #63520 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #63521 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63522 /* ~"그래요. 안녕하세요..... 뭘 원하시나요?"~ */
  IF ~~ THEN REPLY #63523 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63524 /* ~"아무 것도 아니오. 신경 쓸 것 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63525 /* ~그녀는 눈살을 찌푸리고 한숨을 쉰다. "제발 서둘러 주세요. 난 아무 것도 놓치고 싶지 않아요."~ */
  IF ~~ THEN REPLY #63526 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #63527 /* ~"뭘 하고 있는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #63528 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #63529 /* ~"이 구역에서 볼만한 건 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #63530 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63531 /* ~"뭐라고요? 왜 그런 걸 알려고 하는 거죠? 나는 단지 경매에 입찰하려는 것 뿐이에요. 왜 당신이 내 이름을 알아야 하는지 모르겠군요." 그녀는 조급한 표정으로 당신을 본다.~ */
  IF ~~ THEN REPLY #63532 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63533 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63534 /* ~"나는 경매인이 파는 물건 몇 가지에 입찰하려 하고 있어요... 당신이 빨리 본론으로 들어가 주면, 나도 그만큼 빨리 하던 일로 돌아갈 수 있을 거예요 ."~ */
  IF ~~ THEN REPLY #63535 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63536 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63537 /* ~"이 곳은 멋잔 곳이에요. 주위를 둘러보세요! 행상, 시장, 경매..." 그녀는 뭐라고 표현해야 할지 멀라 당황하는 듯하다. "이 곳엔 물건들이 많아요..."~ */
  IF ~~ THEN REPLY #63538 /* ~"이 곳에서는 어떤 것들을 살 수가 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #63539 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63540 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63541 /* ~그녀는 미소짓는다. "거의 뭐든지요... 내 시간만 빼고는. 질문은 다 했나요?"~ */
  IF ~~ THEN REPLY #63542 /* ~"아직 아니오. 질문할 것들이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63543 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63544 /* ~그녀는 눈살을 찌푸린다. "모르겠어요... 난 여기서 평생 살았기 때문에 모든 것이 당연하게 느껴져요." 그녀는 어깨를 으쓱한다. "주위를 둘러보세요. 그럼 아마 볼만한 걸 찾을 수 있을 거예요."~ */
  IF ~~ THEN REPLY #63545 /* ~"그러리다. 질문할 것들이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63546 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63547 /* ~엄하게 생긴 여인이 보인다. 당신이 다가가자 그녀는 당신을 흘긋 보더니 당신을 피하려고 한다.~ */
  IF ~~ THEN REPLY #63548 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #63549 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63550 /* ~그녀는 우려하는 표정으로 당신을 쳐다본다. "어... 안녕하세요." 그녀는 짜증이 난 듯하다.~ */
  IF ~~ THEN REPLY #63551 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #63552 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63553 /* ~"난 당신이 날 귀찮게 하는 게 싫어요. 꺼져요." 그녀는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #63554 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 15
  IF ~~ THEN REPLY #63555 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63556 /* ~그녀는 얼굴을 한층 더 찌푸린다. "난 당신이 날 귀찮게 하는 게 싫어요. 꺼져요. 내 말뜻을 알겠어요?" ~ */
  IF ~~ THEN REPLY #63557 /* ~"아니, 무슨 말인지 모르겠소."~ */ GOTO 16
  IF ~~ THEN REPLY #63558 /* ~"아니오, 하지만 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63559 /* ~그녀는 역겹다는 표정으로 당신을 보면서 코방귀를 뀐다, 그리고 고개를 돌린다.~ */
  IF ~~ THEN REPLY #63560 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63561 /* ~경매 입찰자가 보인다. 당신이 다시 말을 걸려고 하자 그녀는 가라고 손짓한다.~ */
  IF ~~ THEN REPLY #63562 /* ~떠난다.~ */ EXIT
END
