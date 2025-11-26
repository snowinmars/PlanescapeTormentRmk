// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58400 /* ~허름한 옷을 입은 노인이 보인다. 그는 당신이 다가오는 것을 지루한 표정으로 쳐다본다.~ */
  IF ~~ THEN REPLY #58402 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #58403 /* ~그를 무시한다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58405 /* ~그는 계속 당신을 지루한 표정으로 쳐다본다. 그는 마침내 고개를 끄덕인다. "안녕하시오. 왜 내게 말을 거는 거요?"~ */
  IF ~~ THEN REPLY #58407 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #58412 /* ~"아무런 이유도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58414 /* ~그는 천천히 고개를 끄덕이면 시선을 다른 곳으로 돌린다. "나는 내 것이 아닌 물건을 훔쳐서 이 똥통에 들어온 것이지 멍청한 질문에 대답했기 때문이 아니오..." 그는 당신을 노려본다. "떠나 주시오."~ */
  IF ~~ THEN REPLY #58416 /* ~"이 곳에서의 삶은 고달플 것이오. 하지만 당신이 불구가 되면 훨씬 더 힘들어질 거요."~ */ GOTO 3
  IF ~~ THEN REPLY #58417 /* ~"그럼 이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58419 /* ~그는 당신 말을 생각해보면서 눈살을 찌푸린다. 그는 당신 몸의 흉터를 살피더니 당신을 똑바로 쳐다본다. "지금 그건 협박이었소?"~ */
  IF ~~ THEN REPLY #58421 /* ~"그렇소. 내 질문에 답하지 않으면 당신 신체의 일부를 한 번에 하나씩 제거하기 시작하겠소."~ */ GOTO 4
  IF ~~ THEN REPLY #58422 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1 6.1 7.0 8.0 9.2 10.1 11.0 12.1 13.1 14.0
  SAY #58424 /* ~그는 천천히 고개를 끄덕인다. "무슨 질문 말이오?"~ */
  IF ~~ THEN REPLY #58426 /* ~"당신은 누구요?"~ */ GOTO 5
  IF ~~ THEN REPLY #58428 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #58430 /* ~"나는 어떤 디바를 찾고 있소. 나는 그가 이 곳에 있는 것으로 알고 있소."~ */ GOTO 9
  IF ~~ THEN REPLY #58432 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58433 /* ~그는 머뭇거린다. "깁... 내 아름은 깁이오."~ */
  IF ~~ THEN REPLY #58435 /* ~"왜 당신은 이 곳에 있는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #58437 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58438 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #58440 /* ~"내 말을 그냥 귀로 흘려들은 거요? 나는 내가 도둑이라고 했소. 난 잡혔기 때문에 여기 온 거요." 그는 미소짓는다. "당신이 내게서 강제로 대답을 얻어낼 생각이라면 적어도 좀 지적인 질문을 하는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #58441 /* ~"나한테 까부는 것도 별로 현명한 짓은 아니오..."~ */ GOTO 7
  IF ~~ THEN REPLY #58442 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58444 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58446 /* ~그는 어깨를 으쓱한다.~ */
  IF ~~ THEN REPLY #58447 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58449 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1
  SAY #58450 /* ~"이 감옥은 세 개의 환상 구역으로 구성되어 있소: 바깥쪽 고리, 가운데 고리. 그리고 안쪽 고리. 이 곳은 바깥쪽 고리로 비교적 죄가 가벼운 좀도둑 등이 수감되어 있소. 가운데 고리는 깡패와 같은 보다 죄가 무거운 자들, 그리고 안쪽 고리는 살인자, 반란 분자 등의 위험한 범죄자들이 수용되어 있소."~ */
  IF ~~ THEN REPLY #58451 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58452 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #58454 /* ~그는 우려하는 표정으로 당신을 본다. "그 디바... 그렇소. 그는 이 감옥에 있소. 하지만 그를 찾는 일은 재고하는 게 좋을 거요."~ */
  IF ~  Global("Know_Plague","GLOBAL",1)
~ THEN REPLY #58456 /* ~"역병 때문에?"~ */ GOTO 10
  IF ~  Global("Know_Plague","GLOBAL",0)
~ THEN REPLY #58458 /* ~"그건 왜요?"~ */ DO ~SetGlobal("Know_Plague","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #58460 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58462 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #58464 /* ~그는 고개를 끄덕인다. "그럼 당신도 알고 있군... 그렇소, 역병. 그것은 갑작스럽게 발생해 엄청난 피해를 입혔소. 그 병에 걸린 사람은 대부분 죽었소." 그는 눈살을 찌푸린다. "당신이 그를 만난 적이 있다고 하면 아무도 당신 근처에 가려고 하지 않을 것이오..."~ */
  IF ~~ THEN REPLY #58466 /* ~"그는 어디 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #58467 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58468 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 13.0
  SAY #58470 /* ~"저쪽으로 가다 보면..." 그는 대충 가리킨다. "그를 만나게 될 거요."~ */
  IF ~~ THEN REPLY #58471 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58473 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.1
  SAY #58474 /* ~"소문에 의하면 그가 병균 보유자라고 하오." 그는 당신의 반응을 보더니 어깨를 으쓱한다. "그게 사실인지는 나도 모르지만 그가 나타나자마자 역병이 발생했소."~ */
  IF ~~ THEN REPLY #58476 /* ~"이 역병에 대해 말해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #58477 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58479 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #58481 /* ~"그것은 갑작스럽게 발생해 엄청난 피해를 입혔소. 그 병에 걸린 사람은 대부분 죽었소." 그는 눈살을 찌푸린다. "당신이 그를 만난 적이 있다고 하면 아무도 당신 근처에 가려고 하지 않을 것이오..."~ */
  IF ~~ THEN REPLY #58483 /* ~"그는 어디 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #58484 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58485 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from:
  SAY #58487 /* ~도둑 깁이 보인다. 당신이 다가오는 것을 보고 그는 눈살을 찌푸린다. "또 왔군... 정말 죽겠군."~ */
  IF ~~ THEN REPLY #58490 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #58492 /* ~"안녕히 계시오."~ */ EXIT
END
