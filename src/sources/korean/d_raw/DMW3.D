// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMW3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMW3~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47965 /* ~시장 안의 모든 노동자들을 감독하고 있는 듯한 깡마른 노인이 보인다. 때때로 그는 소리를 질러 노동자들에게 명령을 내린다, 그리고 노동자들은 그 명령을 화급히 따른다. 당신이 다가가자 그는 눈살을 찌푸린다.~ */
  IF ~~ THEN REPLY #47966 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #47967 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #47968 /* ~그는 얼굴을 심하게 찡그린다. "난 당신을 아오. 당신이 바로 돌아다니면서 질문을 해대고 있는 사내군." 그는 부정할 테면 해보라는 눈빛으로 당신을 노려본다.~ */
  IF ~~ THEN REPLY #47970 /* ~"그렇소, 그리고 당신에게도 좀 질문을 해야겠소..." ~ */ GOTO 2
  IF ~~ THEN REPLY #47971 /* ~세게 나간다: "그렇다면 어쩔 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #47972 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 4.0
  SAY #47973 /* ~그는 자기 만족한 표정으로 고개를 끄덕인다. "그래, 내겐 당신에게 낭비할 시간도, 해줄 대답도 없소. 경비병을 부르기 전에 떠나는 게 좋을 거요... 그리고 내 부하들을 귀찮게 하지 마시오, 알겠소?"~ */
  IF ~~ THEN REPLY #47974 /* ~"그럼 경비들을 부르시오, 난 그들쯤은 가볍게 요리할 수 있으니까."~ */ GOTO 3
  IF ~~ THEN REPLY #47975 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #47976 /* ~그는 고개를 끄덕인다. "원하는 대로 해주지. 경비병! 여기 문제가 생겼소!"~ */
  IF ~~ THEN REPLY #47978 /* ~그들이 도착하기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #47979 /* ~그는 당신을 흘겨본다. "그렇다면 당신은 자신이 해충이며, 내겐 해충을 상대할 시간 따윈 없다는 걸 알아야 할 거요. 그거 내 부하들도 마찬가지니 그들을 그냥 내버려 두시어."~ */
  IF ~~ THEN REPLY #47980 /* ~"나는 몇 가지 질문에 대한 답을 듣고자 할 뿐이오.."~ */ GOTO 2
  IF ~~ THEN REPLY #47981 /* ~"당신 태도가 맘에 안드는군. 내가 버릇을 좀 고쳐 줄까?"~ */ GOTO 5
  IF ~~ THEN REPLY #47982 /* ~"엿이나 먹어라, 이 얼간아! 소원대로 떠나 주지."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1
  SAY #47983 /* ~그는 뭐라고 말하려다가 당신의 체구와 온몸에 난 흉터에 대해 생각해 보려고 일단 멈춘다. 그는 근처에 있는 경비병 쪽으로 고개를 돌리고 입을 연다...~ */
  IF ~~ THEN REPLY #47984 /* ~진실: "난 당신이 한 마디도 하기 전에 당신의 그 말라 비틀어진 목을 부러트릴 수가 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marketman_1","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47985 /* ~허풍: "난 당신이 한 마디도 하기 전에 당신의 그 말라 비틀어진 목을 부러트릴 수가 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marketman_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #47986 /* ~상황이 통제 불능이 되기 전에 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #47987 /* ~그는 당신을 유심히 살핀다. 당신은 그가 당신을 평가하고 있다는 인상을 받는다. "나는... 할 일이 있어 이런 데 낭비를 할 시간이 없소. 안녕히 가시오." 그는 돌아서서 자리를 뜬다.~ */
  IF ~~ THEN REPLY #47988 /* ~떠난다.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 7 // from:
  SAY #47989 /* ~시장 안의 모든 노동자들을 감독하고 있는 듯한 깡마른 노인이 보인다. 때때로 그는 소리를 질러 노동자들에게 명령을 내린다, 그리고 노동자들은 그 명령을 화급히 따른다. 당신이 다가가자 그는 눈살을 찌푸린다. "해충이 또 왔군. 난 당신과 할 말이 없소. 꺼지시오!"~ */
  IF ~~ THEN REPLY #47990 /* ~떠난다.~ */ EXIT
END
