// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTGENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTGENM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #64432 /* ~걱정스런 표정을 하고 있는 남자가 보인다. 당신이 다가가자 그는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #64433 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #64434 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64435 /* ~그는 한숨을 쉬고 시선을 당신에게로 돌린다. "안녕하시오... 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #64436 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #64437 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64438 /* ~그는 눈살을 찌푸린다. "질문 따윈 집어치우시오... 꺼지시오."~ */
  IF ~~ THEN REPLY #64439 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #64440 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64441 /* ~"내겐 당신에게 줄 시간이 일 초도 없소." 그는 잠시 멈춘다, 그리고 벨트에서 대거를 꺼낸다. "대신 내가 당신에게 따끔한 베이터산 강철의 맛을 보여주는 건 어떻겠소?"~ */
  IF ~~ THEN REPLY #64442 /* ~그를 공격한다. ~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #64443 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #64444 /* ~청년이 보인다. 당신이 다가가자 그는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #64445 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #64446 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64447 /* ~그는 당신에게 미소를 짓는다, 그러나 불안한 듯 주변을 두리번거린다. "그래, 안녕하시오... 뭐 원하는 거라도 있소?"~ */
  IF ~~ THEN REPLY #64448 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #64449 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #64450 /* ~그는 눈살을 찌푸리고 한숨을 쉰다. "꼭 그래야만 하겠다면."~ */
  IF ~~ THEN REPLY #64451 /* ~"당신은 누구요?"~ */ GOTO 7
  IF ~~ THEN REPLY #64452 /* ~"뭘 하고 있는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #64453 /* ~"커스트에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #64454 /* ~"디바에 대해 혹시 아는 것이 없소?"~ */ GOTO 11
  IF ~~ THEN REPLY #64455 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64456 /* ~"내가 누구인지는 중요하지 않소. 그냥 질문만 하시오." 그는 초조한 표정으로 당신을 바라본다.~ */
  IF ~~ THEN REPLY #64457 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #64458 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #64459 /* ~"내가 무엇을 하는가는 당신이 알 바가 아니오. 그냥 질문이나 하시오."~ */
  IF ~~ THEN REPLY #64460 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #64461 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #64462 /* ~"커스트..." 그는 잠시 멈추고 주변을 둘러본다. "아무도 믿지 마시오. 커스트에 대해선 그것만 알면 되오. 아무도 믿지 마시오..."~ */
  IF ~~ THEN REPLY #64463 /* ~"거기에는 당신도 포함되오?"~ */ GOTO 10
  IF ~~ THEN REPLY #64464 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #64465 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #64466 /* ~그는 미소짓는다. "물론이오..."~ */
  IF ~~ THEN REPLY #64467 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #64468 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #64469 /* ~그는 생각을 하느라 눈살을 찌푸린다. "디바에 대해서는 아는 게 없소." 그는 어깨를 으쓱한다. "이 도시의 중심에 있는 행정부 사무실에 가서 물어보시오."~ */
  IF ~~ THEN REPLY #64470 /* ~"그러리다. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #64471 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 17 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #64472 /* ~화난 사람이 보인다. 당신이 다가가자 그는 당신을 흘긋 보고 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #64473 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #64474 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #64475 /* ~그는 우려하는 표정으로 당신을 쳐다본다. "어... 안녕하시오. 당신이 뭘 원하든 내겐 없소. 당신이 뭘 팔려고 하든 난 관심없소. 날 그냥 내버려 두시오." 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #64476 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #64477 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #64478 /* ~"흠... 멋지군. 질문이라... 어쨌든 난 당신이 날 귀찮게 하는 게 싫소. 꺼지시오." 그는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #64479 /* ~"잠깐만 시간을 내주면 되오."~ */ GOTO 15
  IF ~~ THEN REPLY #64480 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #64481 /* ~그는 한숨을 쉰다, 그리고 화난 듯 팔을 들어 올린다. "좋소. 내가 점잖게 '노'라고 하는 걸 알아듣지 못하겠다면... 거칠게 나와야 알아듣겠소?"~ */
  IF ~~ THEN REPLY #64482 /* ~"그렇소."~ */ GOTO 16
  IF ~~ THEN REPLY #64483 /* ~"아니, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #64484 /* ~그는 미소짓는다. "그럼 좋소... 질문은 네 녀석 엉덩이에다 대고 하라고!" 그는 무례한 손짓을 한다. "꺼져!"~ */
  IF ~~ THEN REPLY #64485 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 17 // from:
  SAY #64486 /* ~지루해 하는 듯한 남자가 보인다. 당신이 다가가자 그는 당신을 흘긋 보고 눈살을 찌푸린다. "당신한테는 이미 지쳤어, 꺼져..." 그는 돌아서서 당신을 무시한다.~ */
  IF ~~ THEN REPLY #64487 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 18 // from:
  SAY #64488 /* ~이 사람은 감옥에 갇혀 있다는 사실 때문에 정신이 산란한 듯하다. 아무리 노력해도 그는 아무런 반응을 보이지 않는다.~ */
  IF ~~ THEN REPLY #64489 /* ~떠난다.~ */ EXIT
END
