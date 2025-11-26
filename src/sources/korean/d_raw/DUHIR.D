// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~당신은 남루한 옷을 입은 수집자가 돌아서서 도망치기 전에 공포에 질린 그의 표정을 간신히 볼 수 있었다.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~"아마 다음 기회에..."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~"우허, 기다리시오... 빌어먹을."~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~"어... 지하에서 주어다가 팔 물건을 찾다가 굴에게 물렸소."~ */
  IF ~~ THEN REPLY #23337 /* ~"아래에?"~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~"당신에게 다른 질문들을 하고 싶소."~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~"내 이름은 우허요." 그는 침을 뱉는다. "하지만 여기서 그런 게 무슨 소용이겠소."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~"여기 이 '우허'라고 새겨긴 나이프가 당신 나이프 맞소?"~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~"좋소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~그는 고개를 끄덕이나 말은 하지 않는다. ~ */
  IF ~~ THEN REPLY #23350 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~"당신은 온몸이 붕대로 감겨 있소. 대체 어떤 일을 당한 거요?"~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~"다시 지하로 내려가기 위해 내 상처가 낫기만 기다리고 있소. 나는 지하에서 찾은 물건을 파는 일을 하고 있소."~ */
  IF ~~ THEN REPLY #23355 /* ~"아래에?"~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~그는 고개를 끄덕인다. "죽은 자들이 잠들어 있는 지하 묘지요. 혹시... 그 곳으로 내려갈 예정은 없소?"~ */
  IF ~~ THEN REPLY #23368 /* ~"아마 그럴지도. 왜 물어보는 거요?"~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~"그것에 대해선 신경 쓰지 마시오. 다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~우허는 고개를 끄덕여 인사한다. "내 행운의 나이프를 찾아 준 데 대해 다시 한 번 감사하오, 친구."~ */
  IF ~~ THEN REPLY #23373 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~우허는 누가 자신의 먹이를 훔칠까 두려워하는 개처럼 당신을 경계하는 눈초리로 쳐다본다. "어? 또 왔소? 뭘 원하는 거요?"~ */
  IF ~~ THEN REPLY #23375 /* ~"난 내 질문에 대한 답을 원하오."~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~부루퉁한 얼굴을 하고 있는 이 중년 남자는 당신이 다가가자 깜짝 놀란다, 그리고 허리띠에 손을 뻗는다... 그 곳에 아무런 무기도 없다는 사실을 깨닫자 그는 그냥 뒤로 물러선다. 그의 팔뚝과 다리 아래쪽에 더러운 붕대가 감겨져 있다. "뭘 원하오?"~ */
  IF ~~ THEN REPLY #23378 /* ~"질문에나 답해주시오..."~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~"내 행운의 나이프를 잃어버렸기 때문이오!" 그는 성나서 투덜거리며 발로 땅을 세게 밟는다. "그놈은 나랑 오래 함께 지냈소..." 그는 자신의 허리띠에 걸린 빈 칼집을 가리킨다." ~ */
  IF ~~ THEN REPLY #23381 /* ~"그래서 그 나이프는 어떻게 되었소?"~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~"안됐군. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~"당신이 그것을 찾게 되길 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~"나는 지하 묘지를 뒤지다가 굴을 한 마리 만나고 말았소! 아마 낙오자였을 거요, 놈들은 대개 혼자서는 다니지 않으니까. 놈은 내 얼굴을 물려고 했소, 그래서 나는 팔로 막고 놈의 눈을 칼로 찔렀소. 그러자 놈은 쓰러졌으나, 놈은 내 다리를 물고서는 놓아주려고 하지 않았어. 나는 한참 동안 애쓴 후에야 놈을 뿌리치고 이 곳으로 도망쳐 올 수 있었소."~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~여기 이 '우허'라고 새겨긴 나이프가 당신 나이프 맞소?"~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~"흥미로운 이야기요. 지하에서 당신 나이프를 발견하면 가지고 돌아오리다."~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~우허는 그의 '행운의 나이프'를 지하 묘지에서 잃어버렸다. 그는 굴의 눈을 그 나이프로 찌르고 도망쳤다고 한다. 만약 발견하게 되면 그에게 돌려주어야겠다.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~"당신이 나이프를 찾게 되길 빌겠소. 그 밖에도 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~"내가 이미 얘기했듯이 당신 나이프를 발견하게 되면 가지고 돌아오겠소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~"그 굴도 틀림없이 당신만큼이나 기분이 나쁠 거요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~"그래 주겠소? 그럼 정말 고맙겠소. 그 칼의 손잡이에는 내 이름이 새겨져 있소..."~ */
  IF ~~ THEN REPLY #23391 /* ~"내가 도움이 될 수 있어 기쁘오. 가기 전에 몇 가지만 물어봅시다..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~"알다시피 나는 보수를 원하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~우허는 눈살을 찌푸린다. "당신에게 내가 가진 돈을 주겠소, 하지만 많은 액수는 아니오. 주변을 들러보시오, 친구... 나는 당신에게 거금을 줄 능력은 없소."~ */
  IF ~~ THEN REPLY #23395 /* ~"그럼 그걸로 만족해야겠군. 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~"내가 당신 나이프를 찾은 후에 다시 얘기합시다. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~우허는 눈을 가늘게 뜨고 당신을 본다. "혹시 내 나이프를 찾았소?"~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~"그렇소... 여기 있소."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~"그렇소."~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~거짓말: "아니오... 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~"아니, 아직 아니오. 어디서 그것을 잃었는지 다시 얘기해주겠소?"~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~우허는 나이프를 받아서 사랑스럽게 어루만진다. "아, 네가 놀아왔구나! 내 행운의 나이프... 고맙소, 친구. 그리고 *너!"* 그는 나이프를 흔들며 그것에게 설교를 한다. "다시는 도망치면 안돼!" 그는 미소를 지으며 칼을 칼집에 넣는다.~ */
  IF ~~ THEN REPLY #23404 /* ~"안녕히 계시오, 우허."~ */ JOURNAL #22025 /* ~나는 우허에게 그의 '행운'의 나이프를 돌려주었다. 아마 향후에는 효험이 조금이나마 있기를 바란다... 하지만 그것이 굴로부터 그의 목숨을 구한 것은 사실이다. ~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~"내가 가진 것은 이 한 줌의 동전뿐이오." 그는 열두 닢 정도 되는 동전을 내놓는다. "충분하겠소?"~ */
  IF ~~ THEN REPLY #23406 /* ~"그래, 충분하오. 여기 당신 나이프가 있소."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~"돈은 필요없소, 우허... 여기 당신 나이프가 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~"흠... 그럼 이 나이프는 내가 가지도록 하겠소. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~나는 우허의 '행운'의 나이프를 가지기로 결심했다. 우허는 그 일에 대해 기분이 좋은 것 같지 않았다. ~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~우허는 놀라서 눈을 둥그렇게 뜬다. "그건 바로 내 행운의 나이프요!"~ */
  IF ~~ THEN REPLY #23410 /* ~"여기 있소. 그건 당연히 당신 것이오."~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~"만약 그걸 다시 가지고 싶다면 나로부터 사야 할 것이오.:~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~"이건 좋은 칼이오... 그건 내가 가지도록 하겠소, 우허. 안녕히 계시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~나는 우허의 '행운'의 나이프를 가지기로 결심했다. 우허는 그 일에 대해 기분이 좋은 것 같지 않았다. ~ */ EXIT
END
