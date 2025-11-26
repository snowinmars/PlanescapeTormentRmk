// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBINIAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBINIAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57500 /* ~누더기를 입고 있는 청년이 보인다. 그는 지루한 표정으로 먼 곳을 바라보고 있다.~ */
  IF ~~ THEN REPLY #57501 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57502 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57503 /* ~당신이 인사를 하자 청년을 놀라 팔짝 뛴다. 그는 당신을 잠시 쳐다본다. "내게 그렇게 살그머니 다가오지 마시오. 놀라서 죽을 뻔했소."~ */
  IF ~~ THEN REPLY #57505 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57506 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.0 5.1 6.1 7.0 8.2 9.1 10.1 11.0
  SAY #57504 /* ~그는 눈살을 찌푸린다. "뭐처럼 말이오..."~ */
  IF ~~ THEN REPLY #57507 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #57508 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #57509 /* ~"나는 이 곳 어딘가에 디바가 있다고 들었소."~ */ GOTO 8
  IF ~~ THEN REPLY #57510 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57511 /* ~"당신은 내 이름을 알 필요가 없소, 그냥 질문만 하고 날 그냥 내버려 두시오." 그는 반항적인 표정을 짓는다. ~ */
  IF ~~ THEN REPLY #57512 /* ~"나는 건방진 사람들이 싫소. 그런 놈들에게는 따끔한 맛을 보여주곤 하지. ~ */ GOTO 4
  IF ~~ THEN REPLY #57513 /* ~"좋소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57514 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57515 /* ~그는 어깨를 으쓱한다. "좋소, 나는 비니언이오. 이제 행복하오?"~ */
  IF ~~ THEN REPLY #57516 /* ~"그렇소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57517 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #57518 /* ~"이 곳은 거대한 똥통이고, 당신, 나, 그리고 여기 있는 모든 사람들은 이 도시가 똥통에 던져 넣은 쓰레기일 뿐이오." 그는 조롱하는 듯한 미소를 짓는다. "그 이상은 이 곳에 대해 할 말도 없소."~ */
  IF ~~ THEN REPLY #57519 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #57520 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57521 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57522 /* ~그는 어깨를 으쓱하고 주변을 불안하게 두리번거린다. "난 물건을 좀 훔쳤고... 몇 사람을 다치게 했소... 그래서 여기 있는 거요."~ */
  IF ~~ THEN REPLY #57523 /* ~"그럼 당신은 도둑이군..."~ */ GOTO 7
  IF ~~ THEN REPLY #57524 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57525 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57526 /* ~그는 고개를 젓는다. "아니, 난 전직 도둑이오. 이 쓰레기통에서 일 년을 보낸 후 나는 전직 도둑이 되었소..." 그는 한숨을 쉬고 시선을 돌린다. " 난 다시는 여기 오고 싶지 않소."~ */
  IF ~~ THEN REPLY #57527 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57528 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57529 /* ~그는 얼굴을 찌푸리고 시선을 돌린다. "이 곳에는 하나밖에 없소. 그는 새로운 발굴 장소에 있소. 최근에 발굴한 곳을 찾으면 그를 만날 수 있을 거요."~ */
  IF ~~ THEN REPLY #57530 /* ~"이 발굴장소는 어디 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #57531 /* ~"그들은 무엇을 발굴하고 있었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #57532 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57533 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.0
  SAY #57534 /* ~그는 어깨를 으쓱한다. "가본 적은 없지만 저 쪽일 거요." 그는 모호하게 손짓한다. "발굴한 흔적만 찾으면 쉽게 발견할 수 있을 거요."~ */
  IF ~~ THEN REPLY #57535 /* ~"그들은 무엇을 발굴하고 있었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #57536 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57537 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0
  SAY #57538 /* ~그는 고개를 젓는다. "아무 것도 하고 있지 않소. 그들이 감옥을 확장하기를 원할 경우에만, 경비병들이 우리에게 땅파기 작업을 시키오." 그는 코방귀를 뀐다. "그것도 형벌의 일부요 ..."~ */
  IF ~~ THEN REPLY #57539 /* ~"이 발굴장소는 어디 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #57540 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57541 /* ~"이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57542 /* ~도둑 비니언이 보인다. "또 당신이군... 이제는 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #57543 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57544 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
