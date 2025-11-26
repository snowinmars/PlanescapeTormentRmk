// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTHGG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTHGG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66596 /* ~정문을 지키고 서 있는 창백한 얼굴의 더스트맨이 보인다. 그는 꿈꾸는 듯한 표정으로 건물의 옥상을 바라보고 있다. 당신이 다가가자 그는 돌아서서 당신을 마주본다. "무슨 용건이오?"~ */
  IF ~~ THEN REPLY #66597 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66598 /* ~"아무 것도 아니오. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.4 4.0 5.1 6.0 7.0
  SAY #66599 /* ~그는 고개를 끄덕이고 기다린다.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66600 /* ~"시체안치소에 들어가고 싶소."~ */ GOTO 2
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #66601 /* ~"나는 더스트맨 참입자요. 시체안치소에 들어가고 싶소."~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #66602 /* ~"나는 파로드란 사람을 찾고 있소. 혹시 그가 어디 있는지 아시오?"~ */ JOURNAL #66588 /* ~어떤 더스트맨이 내게 만약 내가 파로드를 찾고 있다면, 시체안치소 남서쪽에 있는 더스트맨이 모이는 바에서 '에모릭'이라는 사람을 만나라고 말했다.~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #66603 /* ~"나는 잃어버린 일지를 찾고 있소. 혹시 본 적이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #66604 /* ~"관두시오. 난 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #66605 /* ~"시체안치소 안에 들어가려는 목적이 무엇이오?"~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #66606 /* ~"나는 북서쪽 기념 홀에 있는 데이오나라라는 여인에게 애도의 뜻을 표하러 왔소." ~ */ GOTO 3
  IF ~  GlobalGT("Dhall","GLOBAL",0)
~ THEN REPLY #66607 /* ~"나는 달을 만나러 왔소."~ */ GOTO 3
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #66608 /* ~"나는 경야를 위해 왔소. 안에 있는 더스트맨들 중에는 그것이 어디서 거행되는지를 아는 사람이 있을 거라고 생각하오."~ */ GOTO 3
  IF ~~ THEN REPLY #66609 /* ~"아무런 용무도 없지만 그래도 안에 들어가야만 하겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #66610 /* ~"실은 질문을 좀 하고 싶었소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66611 /* ~"관두시오. 그만 떠나도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #66612 /* ~그는 고개를 끄덕인다. "좋소. 날 따라오시오."~ */
  IF ~~ THEN REPLY #66613 /* ~"좋소..."~ */ DO ~TeleportParty("AR0201",[1190.2578],10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.3
  SAY #66614 /* ~그는 고개를 젓는다. "당신은 안으로 들어갈 수 없소."~ */
  IF ~~ THEN REPLY #66615 /* ~"좋소. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66616 /* ~"그럼 떠나도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.2
  SAY #66617 /* ~"파로드는 수집자요." 남자는 잠시 당신을 살펴본다. "만약 그에 대해 더 알고 싶다면, 더스트맨이 모이는 바에 있는 참입자 에모릭를 찾아가시오. 그 역시 파로드를 찾고 있다고 하니, 그가 당신에게 도움을 줄 수 있을지도 모르겠소."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66618 /* ~"더스트맨이 모이는 바는 어디에 있소?"~ */ GOTO 6
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66619 /* ~"나는 당신이 얘기하는 바를 알고 있소. 그 곳으로 가기 전에 몇 가지 질문을 더 하고 싶소..."~ */ GOTO 1
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66620 /* ~"더스트맨이 모이는 바? 그 곳은 이 곳의 남서쪽이오, 맞소? 그럼 거기로 향하도록 하겠소." ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #66621 /* ~"시체안치소 정문에서 남서쪽으로 가시오, 그 곳은 기념관 너머에 있소."~ */
  IF ~~ THEN REPLY #66622 /* ~"좋소. 가기 전에 몇 가지 질문을 더 하고 싶소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66623 /* ~"좋소. 그럼 그 곳을 찾아가도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3
  SAY #66624 /* ~그는 고개를 젓는다. "안 되오."~ */
  IF ~~ THEN REPLY #66625 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #66626 /* ~"알겠소. 고맙소."~ */ EXIT
END
