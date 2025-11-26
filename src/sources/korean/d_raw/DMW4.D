// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47991 /* ~상자들을 열심히 나르고 있는 중년 남성이 보인다. 그는 당신이 다가오자 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #47992 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #47993 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47994 /* ~그는 미소를 지우며 이마의 땀을 닦는다. "안녕하시오, 친구."~ */
  IF ~~ THEN REPLY #47995 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #47996 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 5.1 6.0 7.1 8.1 9.0 10.0
  SAY #47997 /* ~그는 고개를 끄덕인다. "좋소..."~ */
  IF ~  Global("Know_Lothar","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #47998 /* ~"나는 로타, 또는 뼈들의 지배자라고 불리는 사람을 찾고 있소..."~ */ GOTO 3
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #47999 /* ~"나는 가지고 있던 해골 하나를 도난당했소. 당신을 그런 짓을 할만한 사람을 아시오?"~ */ GOTO 4
  IF ~~ THEN REPLY #48000 /* ~"어디 가면 무기를 구입할 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #48001 /* ~"어디 가면 마법을 구입할 수 있겠소?"~ */ GOTO 7
  IF ~~ THEN REPLY #48002 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #48003 /* ~그는 고개를 젓는다. "그런 사람은 들어본 적이 없소. 아는 사람이 있을지도 모르니 다른 사람에게 물어보시구려."~ */
  IF ~~ THEN REPLY #48004 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48005 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #48006 /* ~그는 당신을 멍하니 쳐다본다. "해골을 잃어버렸다...? 나, 나는..." 그는 어깨를 으쓱한다. "그것에 대해서는 아는 바가 없소..." 그는 당신에게 뭔가 물어보려다가 그만둔다.~ */
  IF ~~ THEN REPLY #48007 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48008 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2
  SAY #48009 /* ~그는 당신이 한 말을 이해하려고 잠시 골똘히 생각한다. "무기 말이오...? 모르겠소... 상인들 중에 그런 걸 취급하는 사람이 있을지도 모르오. 하지만 그런 건 평범한 시민들이 찾을 만한 물건은 아니오."~ */
  IF ~~ THEN REPLY #48010 /* ~"무기도 없이 어떻게 자신을 방어하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #48011 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48012 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #48013 /* ~그는 믿을 수 없다는 표정으로 당신을 쳐다본다. "하모니움... 우리들 시민들을 보호하는 것이 그들의 의무요. 그들은 질서를 유지하고 죄인들을 처벌하는 등의 일을 하오. 평범한 시민을 스스로를 보호하는 일에 신경을 쓸 필요가 없소" 그는 멍한 표정으로 당신을 쳐다본다..~ */
  IF ~~ THEN REPLY #48014 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48015 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3
  SAY #48016 /* ~"마법? 나..." 그는 당혹스러운 표정을 짓는다. "상인들 중에 그런 걸 취급하는 사람이 있을지도 모르오. 하지만 마법은 널리 보급된 것이 아니지 않소?" 그는 당신 대답을 기다린다.~ */
  IF ~~ THEN REPLY #48017 /* ~"당신은 정말 멍청하군, 그렇지 않소?"~ */ GOTO 8
  IF ~~ THEN REPLY #48018 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48019 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #48020 /* ~그는 충격받은 표정으로 당신을 쳐다본다. "아니... 내 말은 그렇다는 거요... 어... 아마 아닐지도." 그는 어깨를 으쓱한다. "어떤 사람들은 날보고 순진하다고 하오, 그러나 나는 그렇지 않다고 생각하오. 나는 다른 사람들보다 덜 세속적일 뿐이오."~ */
  IF ~~ THEN REPLY #48021 /* ~"당신 우주에서는 하늘의 색이 어떤 색이오.."~ */ GOTO 9
  IF ~~ THEN REPLY #48022 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48023 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #48024 /* ~그는 시장 밖을 쳐다보면서 손으로 가리킨다. "누렇소... 공장에서 나오는 매연이나 비슷한 것들 때문이오."~ */
  IF ~~ THEN REPLY #48025 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #48026 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 10 // from:
  SAY #48027 /* ~노동자는 당신을 쳐다본다. "다시 만나 반갑소. 내게 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #48028 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #48029 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END
