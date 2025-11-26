// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKEMAK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKEMAK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57593 /* ~허름한 옷을 입은 청년이 보인다. 당신이 다가가자 그는 무례한 손짓을 한다."~ */
  IF ~~ THEN REPLY #57594 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #57595 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57596 /* ~"엿먹고 늘어져, 이 얼간아." 그는 당신을 노려본다.~ */
  IF ~~ THEN REPLY #57597 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #57598 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57599 /* ~"난 네가 무슨 개소리를 지껄이든 신경 쓰지 않아. 꺼지라고 할 때 어서 꺼져!"~ */
  IF ~~ THEN REPLY #57600 /* ~"당신에게 예절이란 걸 좀 가르쳐야겠군."~ */ GOTO 3
  IF ~~ THEN REPLY #57601 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #57602 /* ~그는 교활한 미소를 짓는다. "어디 해보시지. 난 너같은 얼간이들을 그냥 팍 죽여서 여기 오게 된 거라고..."~ */
  IF ~~ THEN REPLY #57604 /* ~"나는 내가 원해서 여기 온 것이고 떠날 때가 되면 그냥 걸어서 나갈 거요."~ */ GOTO 4
  IF ~~ THEN REPLY #57606 /* ~그를 공격한다. "난 도전을 좋아하오..."~ */ DO ~ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #57611 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #57614 /* ~그는 당신을 한동안 쳐다보며 당신이 한 말에 대해 숙고한다. 그는 당신 몸에 난 흉터들을 유심히 살핀 후 당신을 정면으로 마주본다. 잠시 후 그는 불안하게 침을 꿀꺽 삼킨다. "당신은 진지하군... 그렇지 않소?" 그는 당신 대답을 기다리다가 어깨를 으쓱한다. "그래, 뭘 원하시오 ?"~ */
  IF ~~ THEN REPLY #57615 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57617 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.0 8.0 9.1 10.0 11.0
  SAY #57618 /* ~"물어보시오..."~ */
  IF ~~ THEN REPLY #57620 /* ~"당신은 누구요?"~ */ GOTO 6
  IF ~~ THEN REPLY #57621 /* ~"이 장소에 대해 어떤 것을 아시오?"~ */ GOTO 8
  IF ~~ THEN REPLY #57622 /* ~"나는 어떤 디바를 찾고 있소. 난 그가 여기 있다고 들었소."~ */ GOTO 9
  IF ~~ THEN REPLY #57623 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #57625 /* ~그는 대답하기 전에 잠시 주저한다. "케막. 하지만 모두 다 날 켐이라고 부르오. 말해 두지만 난 그 호칭이 싫소..."~ */
  IF ~~ THEN REPLY #57626 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #57627 /* ~"질문할 것들이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57629 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #57631 /* ~"어느 날 밤 술에 취해 싸움을 벌였소. 그들은 내가 어떤 멍청이를 죽였다고 했소... 하지만 모르겠소. 기억이 나지 않소." 그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #57632 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57634 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1
  SAY #57635 /* ~"잘 모르오. 처음 들어왔을 때부터 난 여기 있었소..." 그는 잠시 멈추고 생각한다. "이 감옥은 세 개의 환상 구역으로 구성되어 있소: 바깥쪽 고리, 가운데 고리. 그리고 안쪽 고리. 죄가 무거울 수록 안쪽으로 가게 되오. 이 곳 안쪽 고리는 위험한 범죄자들이 수용된 곳이오."~ */
  IF ~~ THEN REPLY #57638 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57640 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #57642 /* ~"정말이오?" 그는 놀란 표정으로 당신을 쳐다본다. "왜 디바가 여기 있겠소? 끔찍한 죄라도 저질렀다면 모를까..." 그는 기대하는 눈빛으로 당신을 본다.~ */
  IF ~~ THEN REPLY #57644 /* ~"모르겠소. 그에 대해 뭐 들은 거라도 있소?"~ */ GOTO 10
  IF ~~ THEN REPLY #57646 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57647 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #57649 /* ~그는 고개를 젓는다. "전혀." 그는 익살스런 미소를 짓는다. "나는 별로 나갈 기회가 없소."~ */
  IF ~~ THEN REPLY #57651 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57652 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #57653 /* ~케막이 보인다. 당신이 다가오는 것을 보고 그는 눈살을 찌푸린다. "또 당신인가? 정말 죽여 주는군. 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #57655 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #57657 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
