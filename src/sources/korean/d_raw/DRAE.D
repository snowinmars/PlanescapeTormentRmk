// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAE~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58663 /* ~나이가 든 여인이 보인다. 당신이 다가가자 그녀는 눈살을 찌푸리고 고개를 젓는다.~ */
  IF ~~ THEN REPLY #58664 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58665 /* ~그녀를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58666 /* ~그녀는 투덜거린다. "닥쳐요. 그런 인사 따윈 집어치우고 용건이나 말해요."~ */
  IF ~~ THEN REPLY #58667 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58668 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 5.1 6.0 7.1 8.1 9.1 10.0 11.0
  SAY #58669 /* ~"그럼 그들에게 물어보세요" 그녀는 당신을 째려본다.~ */
  IF ~~ THEN REPLY #58670 /* ~"당신은 누구요?"~ */ GOTO 3
  IF ~~ THEN REPLY #58671 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 4
  IF ~~ THEN REPLY #58672 /* ~"혹시 이 곳에 있는 디바에 대해 아는 것이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #58673 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58674 /* ~이런... 당신은 사교성이 없군요. 내 이름은 래예요. 내 이름을 안다고 해서 득이 될 건 없어요."~ */
  IF ~~ THEN REPLY #58675 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58676 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #58677 /* ~그녀는 주변을 둘러보더니 어깨를 으쓱한다. "여기는 감옥이에요. 세 구역으로 나뉘어져 있지요. 바깥쪽은 경범, 가운데는 장래성이 있는 범죄자들, 그리고 안쪽인 이 곳은 진짜 범죄자들이 수감되는 곳이죠." 그녀는 미소짓는다.~ */
  IF ~~ THEN REPLY #58678 /* ~"어떤 종류의 범죄를 말하는 거요?"~ */ GOTO 5
  IF ~~ THEN REPLY #58679 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58680 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58681 /* ~"바깥쪽은 주로 좀도둑, 가운데는 강도, 깡패 등의 부류들, 그리고 안쪽인 이 곳은 살인자, 반역자 등의 가장 위험한 자들이 수용되어 있죠." 그녀는 미소짓는다.~ */
  IF ~~ THEN REPLY #58682 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #58683 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58684 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58685 /* ~그녀는 웃음을 터뜨린다. "왜냐하면 죄를 지었기 때문이죠! 그 외에 무슨 이유가 있겠어요?." 그녀는 당신에게 가라고 손짓을 한다. "어차피 당신이 알 바가 아니에요."~ */
  IF ~~ THEN REPLY #58686 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58687 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #58688 /* ~그녀는 고개를 젓는다. "그는 여기 없어요. 그는 전용의 특수한 감방 안에 있어요... 적어도 얼마 전까지는 그랬어요."~ */
  IF ~~ THEN REPLY #58689 /* ~"무슨 뜻이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #58690 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58691 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58692 /* ~"바깥쪽 구역에 있는 죄수들은 감옥을 확장하는 데 동원되죠. 새 감방을 파는 것은 그들 일이에요." 그녀는 잠시 말을 멈춘다. "그러다 어느 날 그들은 어떤 방 비슷한 곳을 발굴했고 디바는 바로 그 아에 있었어요. 아마 아직도 거기 있겠죠."~ */
  IF ~~ THEN REPLY #58693 /* ~"그는 어디 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #58694 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58695 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58696 /* ~그녀는 눈살을 찌푸린다. "방금 말했잖아요! 그는 바깥쪽에 구역이 있어요!"~ */
  IF ~~ THEN REPLY #58697 /* ~"얼가나가 뭐요?"~ */ GOTO 10
  IF ~~ THEN REPLY #58698 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58699 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58700 /* ~그녀는 앙상한 손가락으로 당신 가슴을 찌른다. "당신은 내가 본 최고의 바보예요."~ */
  IF ~~ THEN REPLY #58701 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58702 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #58703 /* ~래가 보인다. 당신이 다가가자 그녀는 웃는다. "이번에는 뭘 원하죠?"~ */
  IF ~~ THEN REPLY #58704 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58705 /* ~"아무 것도 아니오. 안녕히 계시오."~ */ EXIT
END
