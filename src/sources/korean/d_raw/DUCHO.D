// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUCHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUCHO~

IF ~  True()
True()
~ THEN BEGIN 0 // from:
  SAY #49968 /* ~이 고혹적인 옷차림의 아름다운 창녀는 당신이 벌통에서 본 창녀들과는 질적으로 다르다. 그녀로부터는 값비싼 향수의 냄새가 나며, 그녀의 미모는 얇은 화장으로 한층 강조되어 있다. 당신이 다가가자 그녀는 미소를 지으며 우아하게 인사를 한다. "안녕하세요. 그레이스 여사의 매음굴에서는 충족시킬 수 없는 욕구를 해결하려고 오셨나요?"~ */
  IF ~  Global("AR0605_Visited","GLOBAL",0)
~ THEN REPLY #61436 /* ~"난 '매음굴'에 대해서는 아는 바가 없소, 하지만 당신이 하자는 건 뭐든지 기꺼이 할 용의가 있소." ~ */ GOTO 4
  IF ~  Global("AR0605_Visited","GLOBAL",1)
~ THEN REPLY #61437 /* ~"그렇소."~ */ GOTO 4
  IF ~  Global("Morte_UCHO","GLOBAL",1)
~ THEN REPLY #61438 /* ~"나는 아니지만 여기 있는 모트라면..."~ */ GOTO 9
  IF ~~ THEN REPLY #61439 /* ~"아니오... 하지만 질문할 것들이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #61440 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.3
  SAY #49972 /* ~그녀는 손가락을 당신 입술에 가져다 대고는 조용히 하라고 속삭인다. "내가 답할 수 있는 질문은 한 가지밖에 없어요, 그리고 그 답은: 네, 동전 오백 닢만 내신다면."~ */
  IF ~~ THEN REPLY #49973 /* ~"오백? 그건 상당한 액수요..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61441 /* ~"괜찮을 것 같군. 좋소, 갑시다."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61442 /* ~"괜찮을 것 같군. 좋소, 갑시다."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61443 /* ~"괜찮을 것 같군. 좋소, 갑시다."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61444 /* ~"실은 그만한 돈이 없소."~ */ GOTO 7
  IF ~~ THEN REPLY #61445 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.4 1.5 3.7 4.5
  SAY #49975 /* ~"애석하군요. 마음이 바뀌면 돌아오세요. 기다리고 있을 테니. 안녕히 가세요."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #49976 /* ~떠난다.~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61446 /* ~떠난다.~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61447 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #49977 /* ~그녀는 미소짓는다. "오, 제가 보증해 드릴 수가 있어요..." 그녀는 가까이 다가와 상냥하게 속삭인다. "그 액수에 상응하는 가치가 있다는 것을."~ */
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #49978 /* ~"괜찮을 것 같군. 좋소, 갑시다."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61448 /* ~"괜찮을 것 같군. 좋소, 갑시다."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61449 /* ~"괜찮을 것 같군. 좋소, 갑시다."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61450 /* ~"실은 그만한 돈이 없소."~ */ GOTO 7
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61451 /* ~"그만한 가치가 있을 것 같지 않소. 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61452 /* ~"그만한 가치가 있을 것 같지 않소. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61453 /* ~"그만한 가치가 있을 것 같지 않소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #61454 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 4 // from: 0.0 0.1
  SAY #61401 /* ~"오백 닢만 내세요... 그럼 제가 당신을 천 가지 방법으로 즐겁게 해드리지요..." 그녀는 수줍은 듯 고개를 기울기고는 짓궂은 미소를 짓는다. "그럼 절 따라오실 건가요?"~ */
  IF ~~ THEN REPLY #61459 /* ~"오백? 그건 상당한 액수요..."~ */ GOTO 3
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #61455 /* ~"그거 좋지. 갑시다."~ */ DO ~TakePartyGold(500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  PartyGoldGT(499)
NearbyDialog("Dannah")
~ THEN REPLY #61456 /* ~"그거 좋지. 갑시다."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 281
  IF ~  PartyGoldGT(499)
!NearbyDialog("Dannah")
NearbyDialog("Dgrace")
~ THEN REPLY #61457 /* ~"그거 좋지. 갑시다."~ */ DO ~TakePartyGold(500)
MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 202
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61458 /* ~"실은 그만한 돈이 없소."~ */ GOTO 7
  IF ~~ THEN REPLY #61460 /* ~"사양하겠소. 안녕히 계시오."~ */ GOTO 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #61402 /* ~고급 창녀는 억지 웃음을 웃으며 인사를 한다. "당신... 친구가 없을 때 다시 오시는 것이 좋을 것 같군요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #61461 /* ~"빌어먹을, 안나... 좋소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #61462 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #61403 /* ~고급 창녀는 공포에 질려 뒤로 물러선다. 일단 안나의 공격 범위에서 벗어나자, 그녀는 자세를 가다듬고는 티플링을 조소한다. "여기는 네가 자란 벌통이 아니야, 잡종... 만약 내게 한 걸음이라도 더 다가오면, 하모니움을 시켜 네가 이 구역에서 꼬리가 빠지게 도망치도록 만들겠어!"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 286
END

IF ~~ THEN BEGIN 7 // from: 1.4 3.3 4.4
  SAY #61404 /* ~"애석하군요. 상황이... 나아지면 꼭 다시 오세요. 가다리고 있겠어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #61463 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 3.0 4.1
  SAY #61405 /* ~"그럼... 당신이 즐기셨기를 바라겠어요."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #61464 /* ~"걱정하지 마시오. 난 즐거웠으니까. 안녕히 계시오."~ */ EXIT
  IF ~  NearbyDialog("Dmorte")
Global("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61465 /* ~"걱정하지 마시오. 난 즐거웠으니까. 안녕히 계시오."~ */ DO ~SetGlobal("Morte_UCHO","GLOBAL",1)
~ EXTERN ~DMORTE~ 600
  IF ~  NearbyDialog("Dmorte")
GlobalGT("Morte_UCHO","GLOBAL",0)
~ THEN REPLY #61466 /* ~"걱정하지 마시오. 난 즐거웠으니까. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.2
  SAY #61406 /* ~고급 창녀는 모트를 한동안 심각하게 살핀다, 그리고 고개를 끄덕인다. "그래요... 할 수 있을 것 같아요. 뭔가... 방법을 생각해 낼 수 있겠죠. 요금은 물론 통상 코스와 마찬가지로 단돈 오백 닢이에요."~ */
  IF ~  PartyGoldGT(499)
~ THEN REPLY #61467 /* ~"물론이오. 여기..."~ */ DO ~TakePartyGold(500)
IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
~ EXTERN ~DMORTE~ 601
  IF ~  PartyGoldLT(500)
~ THEN REPLY #61468 /* ~"미안, 모트. 하지만 우리에겐 그만한 돈이 없네. 가세."~ */ EXIT
  IF ~~ THEN REPLY #61469 /* ~"실은 우리는 이만 가야만 하네, 모트. 안녕히 계시오, 아가씨."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #61407 /* ~고급 창녀는 마침내 돌아온다, 그리고 그 옆에서 모트는 현기증이 나는 듯 머리를 흔들고 있다. 그는 왁스를 바르고 광을 낸 듯 반짝이고 있으며, 그의 정수리에는 한 쌍의 입술 자국으로 보이는 빨간 얼룩이 있다. "당신의... 미미르는 즐거워하는 것 같았어요."~ */
  IF ~~ THEN REPLY #61470 /* ~"모트?"~ */ EXTERN ~DMORTE~ 602
  IF ~~ THEN REPLY #61471 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END
