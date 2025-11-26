// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~당신 앞에는 키가 크며 조용한 사람이 서 있다. 그는 조각처럼 보이기도 하나, 그의 얼굴에 깊게 파인 주름은 당신으로 하여금 조각가가 얼굴을 만들 때 너무 성급하지 않았나 하는 생각을 하게 한다.그는 50세는 훨씬 넘은 듯하나... 그의 정확한 연령을 가늠하기는 어렵다. 그는 당신을 쳐다보기 위해 고개를 돌리며, 당신은 그의 눈으로부터 구리빛 광채가 나는 것을 볼 수가 있다.~ */
  IF ~~ THEN REPLY #2475 /* ~"안녕하시오."~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~늙은 카퍼아이즈는 당신을 응시한다. 그의 눈에서 칠흑같은 안와 이외의 부분은 잘 알아보기 힘드나, 구리빛 광채가 나는 듯 하다.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~"나는 사후 계약서에 서명을 하려고 하오."~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~"나는 당신과 한 사후 계약서를 취소하고 싶소."~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~"만약 내가 서명한 사후 계약서를 돌려주지 않겠다면 힘으로 뺏아야겠소."~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~"내 실수요.., 난 당신을 다른 사람으로 착각했소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~카퍼아이즈는 가볍게 고개를 끄덕인 후 양손을 모두 법의 안에 집어넣어 뭔가를 꺼낸다. 왼손으로 그는 인간의 피부로 만든 자루를 꺼내고, 오른손으로는 손가락뼈로 만든 펜에 둘둘 감은 양피지를 꺼낸다. 그는 자루와 양피지를 당신 앞의 테이블에 천천히 내려놓는다.~ */
  IF ~~ THEN REPLY #2482 /* ~양피지를 들고서 잘 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~양피지에 서명한다.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~자루를 살펴본다.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~자루를 받는다.~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~"생각을 바꿨소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~그것은 계약자가 영원한 경계를 넘은 후에 더스트맨으로 하여금 그의 육신을 차지할 수 있도록 해주는 계약서이다. 계약자는 대신 그 대가로 계약시에 합의된 액수의 돈을 받는다. 자루 안에 들은 돈이 계약시에 수령할 돈인 것 같다.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~양피지를 다른 계약서로 바꿔친 후 서명한다. ~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~양피지를 다른 계약서로 바꿔친 후 서명한다. ~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~양피지를 다른 계약서로 바꿔친 후 서명한다. ~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~양피지를 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~양피지에 서명한다.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~자루를 살펴본다.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~자루를 받는다.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~"생각을 바꿨소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~카퍼아이즈는 계약서가 바뀐 것을 눈치채지 못한 듯하다. 당신이 서명을 마친 후, 카퍼아이즈는 고개를 끄덕여 그의 왼쪽에 있는 자루를 가리킨다. 당신이 자루를 집어서 동전 백 닢을 세고 있는 동안, 계약서는 테이블로부터 그의 법의 안으로 사라진다.~ */
  IF ~~ THEN REPLY #2498 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~카퍼아이즈는 계약서가 바뀐 것을 눈치채지 못한 듯하다. 당신이 서명을 마친 후, 카퍼아이즈는 고개를 끄덕여 그의 왼쪽에 있는 자루를 가리킨다. 그는 당신에게 계약서를 다시 한 번 확인해 보라는 듯 계약서를 테이블 위에 그대로 남겨 둔다... 그리고 당신은 자신의 속임수가 실패했다는 걸 깨닫게 된다. 이제 당신이 죽은 후 당신 시체는더스트맨의 것이다.~ */
  IF ~~ THEN REPLY #2500 /* ~"어... 잠깐 기다리시오... 그 계약서를 다시 볼 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~계약서는 카퍼아이즈의 법의 안으로 사라진다. 그는 고개를 끄덕여 자루를 가리킨다~ */
  IF ~~ THEN REPLY #2503 /* ~"그 계약서를 내놓지 않으면 당신을 죽이겠소!"~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~자루를 가지고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~카퍼아이즈는 아무런 반응도 하지 않으나 방이 갑자기 어두컴컴해진다.~ */
  IF ~~ THEN REPLY #2506 /* ~"뭐 -- ?!"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~자루는 동전으로 가득 차 있다. 그 안에는 모두 백 닢의 동전이 들은 것 같다. ~ */
  IF ~~ THEN REPLY #2508 /* ~양피지를 들고서 잘 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~양피지에 서명한다.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~자루를 다시 살펴본다.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~자루를 받는다.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~"생각을 바꿨소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~당신이 자루를 잡으려 하자 그것은 테이블에서 사라진다. 당신이 눈을 깜박이고 다시 보자 그것은 어느새 테이블 위에 다시 놓여 있다. 카퍼아이즈는 아직도 당신을 응시하고 있다.~ */
  IF ~~ THEN REPLY #2514 /* ~양피지를 들고서 잘 살펴본다.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~양피지에 서명한다.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~자루를 살펴본다.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~자루에 다시 손을 뻗는다.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~"생각을 바꿨소. 안녕히 계시오."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~카퍼아이즈는 아무 말도 하지 않는다.~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~"나는 사후 계약서에 서명을 하러 왔소."~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~당신이 서명을 마친 후, 카퍼아이즈는 고개를 끄덕여 그의 왼쪽에 있는 자루를 가리킨다. 그 사이 계약서는 테이블로부터 그의 법의 안으로 사라진다.~ */
  IF ~~ THEN REPLY #2521 /* ~"물어보고 싶은 것들이 좀 있소..."~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~카퍼아이즈는 아무런 말없이 주머니와 양피지를 다시 자신의 법의 속으로 집어 넣는다.~ */
  IF ~~ THEN REPLY #2525 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~카퍼아이즈는 아무 말도 하지 않는다.~ */
  IF ~~ THEN REPLY #12006 /* ~"이것이 당신의 마지막 기회요. 내게 그 계약서를 돌려주지 않으면 후회하게 될 거요."~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~"어... 관두시오. 안녕히 계시오."~ */ EXIT
END
