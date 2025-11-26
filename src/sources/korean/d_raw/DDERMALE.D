// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDERMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDERMALE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #66457 /* ~지루한 표정을 하고 있는 청년이 보인다. 그는 당신이 다가오는 것을 발견하고는 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #66458 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #66459 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66460 /* ~"뭐요? 뭘 원하시오 ?"~ */
  IF ~~ THEN REPLY #66461 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #66462 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66463 /* ~"흠... 난 아는 게 별로 없는 사람이오. 다른 사람에게 물어보시오."~ */
  IF ~~ THEN REPLY #66464 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #66465 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #66466 /* ~"그래도 난 당신이 다른 사람에게 가보는 것이 좋다고 생각하오." 그는 당신으로부터 고개를 돌린다. ~ */
  IF ~~ THEN REPLY #66467 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #66468 /* ~청년이 보인다. 그는 당신이 다가오는 것을 조심스럽게 쳐다본다.~ */
  IF ~~ THEN REPLY #66469 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #66470 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #66471 /* ~"안녕하시오." 당신 흉터를 보더니 그의 얼굴에 수심이 가득 찬다.~ */
  IF ~~ THEN REPLY #66473 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66474 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #66475 /* ~"흠. 좋소..."~ */
  IF ~~ THEN REPLY #66476 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #66477 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #66478 /* ~"여기서 벌어지고 있는 일에 대해 얘기해줄 수 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #66479 /* ~"이 구역에서 볼만한 건 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #66480 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66481 /* ~"말하고 싶지 않으니 질문이나 하시오."~ */
  IF ~~ THEN REPLY #66482 /* ~"좋소. 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66483 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #66484 /* ~"그냥 경매를 구경하고 있소. 아무 것도 살 돈은 없지만, 때때로 이 곳에 와서 누가 경매 대상이 되는가를 구경하는 것은 재미가 있소."  ~ */
  IF ~~ THEN REPLY #66485 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #66486 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #66487 /* ~그는 잠시 집중을 한 후 대답한다. "이 사람들은 가벼운 죄를 지었으며 채무를 안고 있소. 갚을 돈이 없는 탓에 그 채무를 변제하기 위해 한 동안 하인으로 팔리게 되는 거요."~ */
  IF ~~ THEN REPLY #66488 /* ~"당신 얘기는 그들이 노예란 말이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #66489 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66490 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #66491 /* ~그는 어깨를 으쓱한다. "그렇다고 할 수도 있소... 하지만 대부분의 사람들은 하인이란 호칭을 선호하오..."~ */
  IF ~~ THEN REPLY #66492 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66493 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #66494 /* ~"전혀 없소. 이 구역에서의 삶은 상당히 지루하오. 그래서 나는 이 곳에 와서 경매를 구경하는 거요" 그는 한숨을 쉰다.~ */
  IF ~~ THEN REPLY #66495 /* ~"흠... 질문할 것이 더 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #66496 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #66497 /* ~열망하는 표정의 남자가 보인다. 당신이 다가가자 그는 손을 흔들면서 미소를 짓는다.~ */
  IF ~~ THEN REPLY #66498 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #66499 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #66500 /* ~"안녕하시오, 친구. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #66501 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #66502 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #66503 /* ~"질문? 오... 그럼 내게 묻지 마시고 가이드를 구하시오." 그는 돌아서기 시작한다.~ */
  IF ~~ THEN REPLY #66504 /* ~"내 질문에 좀 대답해줄 순 없겠소?"~ */ GOTO 15
  IF ~~ THEN REPLY #66505 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #66506 /* ~"아니, 무지한 자에게 지식을 공급하는 일은 내 책무가 아니오." 그는 미소짓는다. ~ */
  IF ~~ THEN REPLY #66507 /* ~"그래 날 도와주지 않겠다는 거요?"~ */ GOTO 16
  IF ~~ THEN REPLY #66508 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #66509 /* ~"물론 그럴 생각이 없소. 가서 가이드나 구하시오."~ */
  IF ~~ THEN REPLY #66510 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #66511 /* ~경매 입찰자가 보인다. 당신이 다시 말을 걸려고 하자 그는 가라고 손짓한다.~ */
  IF ~~ THEN REPLY #66512 /* ~떠난다.~ */ EXIT
END
