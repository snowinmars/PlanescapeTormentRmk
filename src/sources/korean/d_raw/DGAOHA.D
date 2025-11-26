// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~온몸에 다양한 현혹적인 문신을 한 노란 피부의 인간형 생물이 당신 눈에 들어온다. 그의 눈썹은 검은 석탄으로 강조되었으며, 그의 이빨은 뾰족할 정도로 연마되었다. 그는 당신을 보자 손에서 주사위를 달각거리며 당신을 부른다. ~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~그는 상어같은 이빨을 드러내며 웃는다. 그의 두 눈은 마치 빛나는 검은색 보주와도 같다. 반면 그의 목소리는 낮고 신경질적이다. "가오하도 당신에게 인사를 하겠소... 게임을 하려고 왔소?" ~ */
  IF ~~ THEN REPLY #34026 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~"그렇소. 게임을 하겠소."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~"아니오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~그는 말을 하려고 한다, 그러나 그의 보석처럼 검고 반짝이는 눈의 시야에 다콘이 들어오자 그는 말을 멈춘다. 그들은 아무 말도 없이 서로를 바라본다, 그리고 잠시 후 문신을 한 기스저라이의 시선은 다시 당신을 향한다. 그의 목소리는 낮고 신경질적이다. "가오하가 당신에게 인사를 하겠소... 게임을 하려고 왔소?" ~ */
  IF ~~ THEN REPLY #34030 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~"그렇소. 게임을 하겠소."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~"아니오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~가오하의 얼굴에서 미소가 즉시 사라진다. 그는 고개를 젓는다. "질문 따위에는 관심이 없소. 난 게임에만 관심이 있소... 주사위의 결과, 따거나 잃은 동전의 광채, 알겠소? 그는 손 안에서 뼈로 만든 주사위를 흔든다. "당신은... 이러한 것들에 관심이 없소?" ~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~"좋소... 게임을 하겠소."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~"좋소... 게임을 하겠소."~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~가오하는 자신의 튜닉 속에 손에 넣어 동전 한 닢을 꺼낸다. "이 동전은? 당신 동전이오." 그는 그것을 당신 발 앞에 놓고 동전을 하나 더 꺼낸다. "이 동전은? 가호하의 동전이오." 그는 그것을 자신의 발 앞에 놓는다, 그리고 엄지와 집게손가락 사이에 주사위 두 개를 끼운다. "주사위... 우리는 각각 하나씩 던지오, 알겠소?"~ */
  IF ~~ THEN REPLY #34038 /* ~"계속하시오..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~"당신 쪽이 더 큰 숫자가 나오면 양쪽 동전 모두..." 그는 땅바닥에서 동전들을 집어 당신에게 내미는 시늉을 한다. "...당신 것이 되는 거요. 반대로 가오하가 더 큰 숫자를 내면?" 그는 재빨리 동전들을 다시 튜닉 안에 집어넣는다. "내 것이 되오. 양쪽의 결과가 똑같으면? 동전을 땅바닥에 둔 채 다시 한 번 주사위를 굴리오. 그래, 당신 발 앞에 돈을 얼마나 놓겠소?" ~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~"동전 한 닢."~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~"동전 한 닢."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~"동전 다섯 닢"~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~"동전 다섯 닢"~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~"동전 열 닢."~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~"동전 열 닢."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~"동전 스물 다섯 닢."~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~"동전 스물 다섯 닢."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~"동전 쉰 닢"~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~"동전 쉰 닢"~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~"동전 백 닢."~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~"동전 백 닢."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~"한 푼도 걸지 않겠소. 지금은 노름을 할 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~당신들 두 사람은 가오하가 더 높은 수를 낼 때까지 계속 주사위를 굴린다. 그는 당신 동전을 낚아채 자신의 튜닉 속에 넣는다. 그는 잠시 주저하더니 말을 한다. "다시 하겠소?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~"기다리시오.. 뭔가 잘못되었소?"~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~"그렇소, 다시 하겠소."~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~가오하는 잠시 당신을 자세히 살펴본다, 그리고 고개를 끄덕인다. "나는 하쉬마의 실수는 범하지 않소 - 나는 속임수를 쓰지 않는다는 뜻이오, 인간. 하지만 나는 다른 사람들 얼굴을 보고 그들의 운세를 보고 읽고 *알* 수가 있소. 하지만 당신으로부터는 아무 것도 보이지 않소. 아무 것도 *알* 수가 없소. 당신에게 운이란 것이 없는 거요? 행운도 불운도 없소? 아니면 당신은 스스로 운명을 만들어 나가는지도. 나로선 모르겠소." 그는 주사위를 튜닉 속에 도로 집어 넣는다. ~ */
  IF ~~ THEN REPLY #60421 /* ~"알겠소... 안녕히 계시오."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~"돈을 얼마나 걸겠소?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~"동전 한 닢."~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~"동전 한 닢."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~"동전 다섯 닢"~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~"동전 다섯 닢"~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~"동전 열 닢."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~"동전 열 닢."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~"동전 스물 다섯 닢."~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~"동전 스물 다섯 닢."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~"동전 쉰 닢"~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~"동전 쉰 닢"~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~"동전 백 닢."~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~"동전 백 닢."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~"한 푼도 걸지 않겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~가오하는 날카로운 이빨을 드러내고 웃으며, 두 개의 뼈로 만든 주사위를 손 안에서 딸랑거린다. "게임을 하려고 돌아왔소, 그렇소?"~ */
  IF ~~ THEN REPLY #60437 /* ~"아니오, 하지만 물어볼 것이 좀 있소..."~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~"그렇소, 게임을 하겠소."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~"그렇소, 게임을 하겠소."~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~"아니오... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~당신들 두 사람은 가오하가 더 높은 수를 낼 때까지 계속 주사위를 굴린다. 그는 당신 동전을 낚아챈다, 그리고 잠시 눈살을 찌푸리고 그것을 바라본 후 튜닉 속에 넣는다. "지금으로선 그걸로 충분하오. 하지만 나중에 기회가 있으면 다시 합시다."~ */
  IF ~~ THEN REPLY #60442 /* ~"어째서요? 뭐가 잘못되었소?"~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~당신들 두 사람은 당신이 더 높은 수를 낼 때까지 계속 주사위를 굴린다. 당신은 동전을 집어서 다른 데로 치운다. 가오하는 얼굴을 찌푸리며 고개를 끄덕인다. "지금으로선 그걸로 충분하오. 하지만 나중에 기회가 있으면 다시 합시다."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~"기다리시오.. 뭔가 잘못되었소?"~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~"좋소. 안녕히 계시오."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~가오하는 날카로운 이빨을 드러내고 웃는다. "게임을 무척 하고 싶은 모양이오. 하지만 너무 빨리 돌아왔소. 나중에 다시 오시오."~ */
  IF ~~ THEN REPLY #60448 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
