// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSTCSER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSTCSER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9998 /* ~지친 듯한 중년 남성이 보인다. 그는 당신을 발견하고 가볍게 인사한다.~ */
  IF ~~ THEN REPLY #9999 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #10000 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #10001 /* ~그는 당신을 마주보려고 하지 않고 대신 당신 발 아래의 땅만 바라본다. "안녕하십니까. 어떻게 도와 드릴까요?"~ */
  IF ~~ THEN REPLY #10002 /* ~"내가 얘기할 때는 날 좀 쳐다보시오."~ */ GOTO 2
  IF ~~ THEN REPLY #10003 /* ~"당신에게 질문할 것들이 좀 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #10004 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #10005 /* ~그는 잠시 당신을 올려다 본 후 시선을 다시 당신 발로 돌린다. "나같은 하인은 당신을 똑바로 쳐다볼 수가 없습니다."~ */
  IF ~~ THEN REPLY #10006 /* ~"좋소. 당신은 자기 주제를 파악하고 늘 잊지 말도록 하시오.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Servant_1","GLOBALLaw",1)
~ GOTO 3
  IF ~~ THEN REPLY #10007 /* ~"글쎄, 당신은 내 하인이 아니니 날 동등한 입장에서 대하도록 하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Servant_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #10008 /* ~"뭐든 간에. 당신에 물어볼 것이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #10009 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2 4.0 6.0 7.1 8.0 10.0
  SAY #10010 /* ~그는 고개를 끄덕이나 여전히 눈은 다른 곳을 향하고 있다. "그렇습니다."~ */
  IF ~~ THEN REPLY #10011 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 커스트에 있다고 들었소. 그를 본 적이 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #10012 /* ~"커스트에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #10013 /* ~"최근에는 어떤 뉴스들이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #10014 /* ~"누가 이 곳의 실력자요?"~ */ GOTO 9
  IF ~~ THEN REPLY #10015 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #10016 /* ~"나는 디바에 대해 아무 것도 모릅니다. 나로서는 디바가 커스트 안은 고사하고 그 근처에 있는 것도 상상할 수가 없습니다." 그는 생각하려고 잠시 멈춘다. "시 광장에 있는 행정부 사무실에 가서 물어보시지요. 만약 그런 손님이 있다면 그들은 알 겁니다."~ */
  IF ~~ THEN REPLY #10017 /* ~"고맙소. 하지만 몇 가지만 더 물어봐야겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #10018 /* ~"당신은 내게 큰 도움이 되었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #10019 /* ~"별로 들려 드릴 얘기가 없습니다. 커스트는 아웃랜즈 외곽의 관문도시입니다. 커스트에는 카케리로 통하는 관문이 있는데 그것은 시 광장에 있습니다..." 그는 집중하느라 이마에 주름이 생긴다. "하지만 그 문은 더 이상 열려 있지 않을 겁니다. 역병이 번지는 것을 막기 위해서라고 합니다만..."~ */
  IF ~~ THEN REPLY #10020 /* ~"역병?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #10021 /* ~당신의 어조가 그로 하여금 급히 설명을 하도록 만든다. "그렇습니다. 하지만 신경 쓰실 필요는 없습니다. 역병이 퍼진 지역은 봉쇄되었고 이제 모든 것은 통제하에 있습니다." ~ */
  IF ~~ THEN REPLY #10022 /* ~"어... 좋소. 그럼 다른 것에 대해 좀 물어봅시다."~ */ GOTO 3
  IF ~~ THEN REPLY #10023 /* ~"당신은 내게 큰 도움이 되었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #10024 /* ~"뉴스라... 곧 처형이 거행될 것이라는 얘기가 있습니다... 하지만 그것말고는 별다른 뉴스는 없는 것 같습니다. ~ */
  IF ~~ THEN REPLY #10025 /* ~"누가 왜 처형당하는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #10026 /* ~"좋소. 당신에게 다른 것에 대해 좀 질문해야겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #10027 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #10028 /* ~그는 어깨를 으쓱한다. "모르겠습니다. 나나 당신은 아니니... 별 상관없는 일이 아닙니까?"~ */
  IF ~~ THEN REPLY #10029 /* ~"...관둡시다. 당신에게 다른 것에 대해 좀 물어보겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #10030 /* ~"알겠소. 그만 가봐야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.3
  SAY #10031 /* ~"그건 시장인 토버스 길재프입니다. 그는 시 광장에 있는 행정부 사무실에 있습니다."~ */
  IF ~~ THEN REPLY #10032 /* ~"알겠소. 내게 토버스에 대해 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 10
  IF ~~ THEN REPLY #10033 /* ~"고맙소. 당신에게 다른 것에 대해 좀 질문해야겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #10034 /* ~그는 처음으로 고개를 들고 당신을 똑바로 바라본다. "아무 것도 없습니다. 아무 것도. 만약 그의 통치에 대해 질문할 것이 있다면 그에게 직접 가서 하십시오." 그는 고개를 떨군다.~ */
  IF ~~ THEN REPLY #10035 /* ~"좋소. 그렇게 하도록 하겠소. 다른 질문을 하리다."~ */ GOTO 3
  IF ~~ THEN REPLY #10036 /* ~"알겠소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END
