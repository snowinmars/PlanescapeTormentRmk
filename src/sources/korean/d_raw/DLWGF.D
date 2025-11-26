// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGF~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65087 /* ~창백한 노란 피부의 젊은 여자가 보인다. 그녀에게 가까이 다가가자 당신은 그녀의 피부 중 노출된 부분이 발진으로 뒤덮여 있다는 사실을 눈치챈다.~ */
  IF ~~ THEN REPLY #65088 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #65089 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65090 /* ~그녀는 당신을 흘긋 보고 눈살을 찌푸린다. "안녕하세요. 뭘 원하시죠 ?"~ */
  IF ~~ THEN REPLY #65091 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #65092 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65093 /* ~그녀는 얼굴을 한층 찌푸린다. "미안하지만 나는 바빠서 당신과 이야기할 시간이 없어요." 그녀는 돌아서기 시작한다.~ */
  IF ~~ THEN REPLY #65094 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #65095 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65096 /* ~"당신에게 줄 시간은 일 초도 없어요. 제발 다른 사람에게 물어보세요..." 그녀는 돌아선다.~ */
  IF ~~ THEN REPLY #65097 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65098 /* ~창백한 노란 피부를 지닌 여자가 보인다. 그녀는 계속 기침을 하고 있다. 당신이 다가가자 그녀는 당신을 흘긋 본다 . ~ */
  IF ~~ THEN REPLY #65099 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #65100 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65101 /* ~그녀는 미소를 짓고 당신 질문에 대답을 하려고 하나, 기침이 방해를 한다. "그래..." 그녀는 기침을 한다. "안녕하세요... 뭐 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #65102 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65103 /* ~"아니, 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65104 /* ~"기꺼이 돕지요, 하지만 서둘러 주세요~ */
  IF ~~ THEN REPLY #65105 /* ~"괜찮소?"~ */ GOTO 7
  IF ~~ THEN REPLY #65106 /* ~"왜 당신 피부는 노랗소?"~ */ GOTO 8
  IF ~~ THEN REPLY #65107 /* ~"이 구역에 대해 얘기해줄 수 있겠소?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65108 /* ~"나는 해골을 하나 잃어버렸소. 나는 그를 데려간 자를 찾으려 하고 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #65109 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65110 /* ~그녀는 미소짓는다. "걱정해 주어서 고마워요." ~ */
  IF ~~ THEN REPLY #65111 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65112 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65113 /* ~"그건..." 그녀는 곤혹스러워 한다. "이 구역의 공기 탓이에요. 주조소에서 나오는 매연 때문에 공기가 좋지 않아 많은 사람들이 고생을 하고 있어요..." 그녀는 다시 기침을 하면서 당신에게 빨리 질문을 하라고 손짓한다.~ */
  IF ~~ THEN REPLY #65114 /* ~"알겠소. 질문할 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65115 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65116 /* ~"이런..." 그녀는 기침한다. "많은 가게, 시장, 행상, ..." 그녀는 또다시 심하게 기침한다. "...그리고 그런 종류의..." 그녀는 침묵하고 가슴을 움켜 쥔다.~ */
  IF ~~ THEN REPLY #65117 /* ~"정말 괜찮소?"~ */ GOTO 10
  IF ~~ THEN REPLY #65118 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65119 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65120 /* ~그녀는 미소짓는다. "물론이죠.." 그녀는 가슴을 두드리기 시작한다. ~ */
  IF ~~ THEN REPLY #65121 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65122 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65123 /* ~그녀는 생각을 하느라 눈살을 찌푸린다. "아니, 누가 그런 걸 원할지 모르겠어요..." 그녀는 또 다시 기침을 할 것처럼 보였으나 무사히 넘어간다. "나로서는 그 일에 대해 당신이 누구에게 물어봐야 할지도 모르겠어요."~ */
  IF ~~ THEN REPLY #65124 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65125 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65126 /* ~누런 피부의 중년 여자가 보인다. 당신이 다가가자 그녀는 손을 흔들어 당신에게 다른 데로 가라고 손짓한다.~ */
  IF ~~ THEN REPLY #65127 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #65128 /* ~그녀를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65129 /* ~그녀는 우려하는 표정으로 당신을 쳐다본다. "어... 안녕하세요..." 그녀는 주변을 두리번거리며 숨을 곳이라도 찾는 것 같다. "뭐 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #65130 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #65131 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65132 /* ~"예를 들어?"~ */
  IF ~~ THEN REPLY #65133 /* ~"이 구역에 대해 얘기해줄 수 있겠소?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65134 /* ~"누군가가 내가 가지고 있던 해골을 훔쳤소. 그래서 난 그것을 찾으려 하고 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #65135 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65136 /* ~"여긴 마계구예요. 나같은 보통 사람들이 사는 곳이지요. 그것 말고는 할 말이 없군요. 돌아다니면서 당신 눈으로 직접 보세요."~ */
  IF ~~ THEN REPLY #65137 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #65138 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65139 /* ~그녀는 눈살을 찌푸리며 자기 가슴 위에서 흥미로운 손짓을 한다. "나는 얘기를 들었어요..." 그녀는 잠시 멈춘다. "사람들 얘기로는 이 구역에는 사령술사 또는 죽음의 신의 신관이 있다고 하는군요. 그는 나로선 알 수 없는 이유로 해골을 모은다고 해요..." ~ */
  IF ~~ THEN REPLY #65140 /* ~"그가 어디에 있는지 혹시 아시오?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65141 /* ~그녀는 고개를 천천히 젓는다. "이야기일 뿐이에요. 그뿐이에요... 이 곳에 그런 건 없어요. 그냥 이야기..."~ */
  IF ~~ THEN REPLY #65142 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65143 /* ~여자에게 다가가다가 당신은 전에 그녀와 얘기한 적이 있다는 사실을 깨닫는다.. "다시 만나 반가워요. 뭐 원하는 거라도 있나요?"~ */
  IF ~~ THEN REPLY #65144 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END
