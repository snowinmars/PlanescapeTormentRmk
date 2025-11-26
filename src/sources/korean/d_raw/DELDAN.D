// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELDAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELDAN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57545 /* ~점차 가늘어지는 하얀 머리를 한 노인이 보인다. 그의 옷은 낡았으나, 다른 죄수들이 입은 누더기하고는 질이 틀리다. 당신은 그의 주변에 책과 두루마리들이 있다는 사실을 깨닫는다. 당신이 다가가자 그는 눈썹을 치켜 올린다.~ */
  IF ~~ THEN REPLY #57546 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57547 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57548 /* ~그는 당신을 아래위로 훑어보더니 미소를 짓는다. "이런... 이게 누구요? 당신은 상태가 아주 엉망인 것 같소, 젊은이..." 그는 계속 당신을 살펴보더니, 어깨를 으쓱한다. "내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #57549 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57550 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.1 4.1 5.0 6.1 7.0 8.0 9.0
  SAY #57551 /* ~"내가 당신을 도울 수 있을지도 모르오. 질문을 하시오." 그는 미소짓는다. ~ */
  IF ~~ THEN REPLY #57552 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #57553 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #57554 /* ~"나는 디바가 여기 있다는 얘기를 들었소. 혹시 그에 대해 아는 것이 없소?"~ */ GOTO 8
  IF ~~ THEN REPLY #57555 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57556 /* ~"나는 엘단이오. 고난의 시기를 거치고 있는 별로 중요하지도 않은 사람이오..."~ */
  IF ~~ THEN REPLY #57557 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #57558 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57559 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57560 /* ~그는 눈살을 찌푸린다. "내 고용주가 날 더 이상 필요로 하지 않았소. 그는 날 죽이거나 퇴직을 시키는 대신 이 곳으로 보냈소."~ */
  IF ~~ THEN REPLY #57561 /* ~"그는 왜 그런 짓을 한 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #57562 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57563 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57564 /* ~"그는 법적으로 하자가 있는 사업을 하고 있었고, 나는 그의 경리 담당이었소. 그는 자신의 비밀을 숨기기 위해 날 이 곳으로 보냈소." 그는 한숨을 쉰다. "죽는 것보다는 낫겠지만, 실제로는 별로 나을 것도 없소."~ */
  IF ~~ THEN REPLY #57565 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57566 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #57567 /* ~그는 어깨를 으쓱한다. "나는 이 곳이 감옥이라는 것 말고는 아는 것이 없소. 나는 이 곳에 온 이래 줄곧 내 감방 안에서만 있었고, 구태여 위험한 곳을 돌아다닐 필요도 느끼지 못했소."~ */
  IF ~~ THEN REPLY #57568 /* ~"당신은 자신의 감방을 절대로 떠나지 않소?"~ */ GOTO 7
  IF ~~ THEN REPLY #57569 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57570 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57571 /* ~"아니오..." 그는 시선을 돌린다.~ */
  IF ~~ THEN REPLY #57572 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57573 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #57574 /* ~그는 눈살을 찌푸리고 의심쩍은 눈초리로 당신을 쳐다본다. "디바? 그건 상상도 할 수 없소... 디바가 왜 이런 곳에 있겠소?" 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #57576 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57577 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #57575 /* ~엘단이 보인다. 당신이 다가가자 그는 미소를 짓는다. "또 날 찾아 오셨소... 왜요?"~ */
  IF ~~ THEN REPLY #57578 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57579 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
