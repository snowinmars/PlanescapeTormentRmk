// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGENAM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGENAM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #63563 /* ~지루한 표정을 하고 있는 청년이 보인다. 그는 당신이 다가오는 것을 눈치채지 못한 것 같다.~ */
  IF ~~ THEN REPLY #63564 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #63565 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63566 /* ~당신이 인사를 하자 그는 깜짝 놀라 돌아서서 당신을 본다. "뭐... 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #63567 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #63568 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #63569 /* ~"질문... 오, 안 되오. 난 바쁘오." ~ */
  IF ~~ THEN REPLY #63570 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #63571 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63572 /* ~"나하고는 상관없소." 그는 당신으로부터 고개를 돌린다.~ */
  IF ~~ THEN REPLY #63573 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #63574 /* ~청년이 보인다. 그는 자기 주변의 군중을 유심히 살펴보고 있다. 당신이 다가가자 그는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #63575 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #63576 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63577 /* ~"안녕하시오." 그는 당신을 아래위로 쳐다본다.~ */
  IF ~~ THEN REPLY #63578 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63579 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #63581 /* ~"주저하지 말고 물어보시오."~ */
  IF ~~ THEN REPLY #63582 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #63583 /* ~"뭘 하고 있는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #63584 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #63585 /* ~"이 구역에서 볼만한 건 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #63586 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63587 /* ~"전혀 중요한 사람이 아니오. 내게 물어보고 싶은 구체적인 질문이라도 있소?"~ */
  IF ~~ THEN REPLY #63588 /* ~"그렇소. 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63589 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #63590 /* ~"나는 군중을 관찰하고 있소. 나는 사람들이 흥미롭다고 생각하기 때문에 그들을 관찰하오."~ */
  IF ~~ THEN REPLY #63591 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63592 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #63593 /* ~"별로 없소. 난 그냥 군중을 구경하러 이 곳에 오는 거요. 이 곳에는 가게들이 많아 다양한 종류의 사람들이 끌어 모으고 있소... 나는 사람들을 관찰하는 게 좋소." 그는 주변을 두리번거린다.~ */
  IF ~~ THEN REPLY #63594 /* ~"이 곳에서는 어떤 것들을 살 수가 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #63595 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63597 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63598 /* ~그는 미소짓는다. "거의 뭐든지 살 수 있소.. 주변을 둘러보면서 쇼핑을 하시구려."~ */
  IF ~~ THEN REPLY #63599 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63600 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #63601 /* ~"그렇소! 사람들은 정말 흥미롭소. 종류들도 참 다양하오... 하지만 대부분의 사람들은 관심이 없소..."~ */
  IF ~~ THEN REPLY #63602 /* ~"흠... 질문할 것이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #63603 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #63604 /* ~걱정스런 표정을 하고 있는 사람이 보인다. 당신이 다가가자 그는 짜증스런 표정으로 당신을 본다."~ */
  IF ~~ THEN REPLY #63605 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #63606 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63607 /* ~그는 지루하다는 표정으로 당신을 본다. "어... 안녕하시오."~ */
  IF ~~ THEN REPLY #63608 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #63609 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63610 /* ~"그럼 가서 가이드를 구하시오." 그는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #63611 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 15
  IF ~~ THEN REPLY #63612 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63613 /* ~그는 눈살을 찌푸린다. "나하고는 상관없는 알이오..."~ */
  IF ~~ THEN REPLY #63614 /* ~"날 도와주지 않겠다는 거요?"~ */ GOTO 16
  IF ~~ THEN REPLY #63615 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63616 /* ~그는 역겹다는 표정으로 당신을 보면서 코방귀를 뀐다, 그리고 고개를 돌린다. "무지한 얼간이 같으니..."~ */
  IF ~~ THEN REPLY #63617 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #63618 /* ~경매 입찰자가 보인다. 당신이 다시 말을 걸려고 하자 그는 가라고 손짓한다.~ */
  IF ~~ THEN REPLY #63619 /* ~떠난다.~ */ EXIT
END
