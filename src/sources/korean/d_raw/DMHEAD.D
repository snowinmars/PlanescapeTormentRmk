// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHEAD~

IF ~  Global("Mertwyn_Head","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #42384 /* ~이 튼튼한 강철 상자의 위쪽에는 두꺼운 가죽 손잡이가 달려 있다, 하지만 그것을 열 수있는 방법은 없는 것 같다. 용접으로 완전히 봉한 듯하다. 상자 한쪽에는 몇 개의 매우 좁은 틈새들이 있으나, 그것들을 통해서 상자 속을 들여다 보기는 어렵다. 틈새들 사이로 역겨울 정도로 단, 썩은 냄새가 흘러나온다. 당신이 상자를 자세히 살펴보자 그것이 당신 손 안에서 약간 움직인다. 그 안에서 뭔가가 움직였다! 그 안으로부터 남자의 목소리가 들린다: "여보시오... 혹시 거기 누구 없소? 내 이름은 머트윈이오... 아무도 없소?"~ */
  IF ~~ THEN REPLY #42385 /* ~"그래... 안녕하시오..."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42386 /* ~목소리를 무시하고 그 아이템을 치운다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42387 /* ~"신들이시여, 감사합니다! 혹시 내 몸을 본 적이 있소? 그건 알아보기가 쉽소... 어깨 위에 바보 같은 나무 머리를 얹고서는 비틀거리고 있으니까... 지금쯤 그는 나를 찾느라 발이 다 닳았을 거요!" ~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #42388 /* ~"그렇소... 그는 시 공회당에 있소."~ */ GOTO 2
  IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN REPLY #42389 /* ~"아니... 본 적이 없소..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42390 /* ~"다행이오! 혹시 나를 그에게 돌려 달라고 부탁할 수 있겠소?"~ */
  IF ~~ THEN REPLY #42391 /* ~"좋소, 당신을 위해 그 일을 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~나는 머트윈의 머리를 시 공회당에 있는 그의 몸에 돌려주기로 했다. .~ */ GOTO 3
  IF ~~ THEN REPLY #42392 /* ~"그래서 내가 얻을 건 뭐요?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42393 /* ~"다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0 8.0 9.0 10.0
  SAY #42394 /* ~"만세! 정말 감사하오. 괜찮으시다면 내가 내 몸과 재회를 할 때까지 대화는 미루었으면 하오."~ */
  IF ~~ THEN REPLY #42395 /* ~"하지만 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42396 /* ~"알겠소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #42397 /* ~"당연히 그럴 거요. 철제 케이스 안에 든 말하는 머리를 발견했는 데 어찌 궁금한 게 없겠소... 하지만 기다리셔야겠소. 보시다시피 내 몸과 떨어져 있는 건 매우 피곤한 일이오... 정말 미안하오."~ */
  IF ~~ THEN REPLY #42398 /* ~"그럼 좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 9.1 10.1
  SAY #42399 /* ~"에... 내 감사는?"~ */
  IF ~~ THEN REPLY #42400 /* ~"좋소. 당신을 데려다 주겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~나는 머트윈의 머리를 시 공회당에 있는 그의 몸에 돌려주기로 했다. .~ */ GOTO 3
  IF ~~ THEN REPLY #42401 /* ~"그것만 가지고는 곤란하오..."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #42402 /* ~"좋소, 나와 내 몸이 협력하면 당신 마음에 들 만한 것을 마련할 수 있을 거요. 우선 나부터 내 몸에게 돌려줄 수 있겠소?"~ */
  IF ~~ THEN REPLY #42403 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~나는 머트윈의 머리를 시 공회당에 있는 그의 몸에 돌려주기로 했다. .~ */ GOTO 3
  IF ~~ THEN REPLY #42404 /* ~"내게 당장 뭔가를 주시오."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #42405 /* ~"에... 보시다시피 지금 내게는 아무 것도 없소. 아시다시피 나는 잠긴 철상자 안의 머리일 뿐이오."~ */
  IF ~~ THEN REPLY #42406 /* ~"좋소... 하겠소."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~나는 머트윈의 머리를 시 공회당에 있는 그의 몸에 돌려주기로 했다. .~ */ GOTO 3
  IF ~~ THEN REPLY #42407 /* ~"좋소... 그럼 당신 상자 안에서 썩으시오."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #42408 /* ~"기다리시오! 기다리시오! 당신에게 *뭔가를* 드릴 수가 있소, 하지만 먼저 내 몸이 있는 곳으로 가야만 하오!"~ */
  IF ~~ THEN REPLY #42409 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42410 /* ~"나중에 다시 얘기합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #42411 /* ~"이런. 그건 기대가 좀 지나쳤던 것 같소. 어쨌든 아마 그것은 사무구 북동쪽 구석에 있는 시 공회당에서 비틀거리고 있을 거요. 혹시 당신에게 나를 그 곳에 데려다 달라고 부탁할 수 있겠소?"~ */
  IF ~~ THEN REPLY #42412 /* ~"좋소, 당신을 위해 그 일을 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~나는 머트윈의 머리를 시 공회당에 있는 그의 몸에 돌려주기로 했다. .~ */ GOTO 3
  IF ~~ THEN REPLY #42413 /* ~"내가 얻을 건 뭐요?~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42414 /* ~"나중에. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #42415 /* ~당신이 상자를 들자 머트윈의 머리가 움직인다. "오, 다시 만나 반갑소... 지금 곧 나를 내 몸에게 돌려주실 수는 없겠소? 그렇게만 해주신다면 정말 감사하겠소..."~ */
  IF ~~ THEN REPLY #42416 /* ~"좋소, 당신을 위해 그 일을 하겠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42417 /* ~"내가 얻을 건 뭐요?~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42418 /* ~"나중에. 안녕히 계시오."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #42419 /* ~당신이 상자를 들자 머트윈의 머리가 움직인다. "그 곳에 벌써 도착했소? 흠... 내 몸은 보이질 않는군..."~ */
  IF ~~ THEN REPLY #42420 /* ~"아니오, 하지만 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #42421 /* ~"아니, 아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #42422 /* ~머트윈의 목소리가 갑자기 강철 상자 안으로부터 울려 퍼진다. "오! 오! 저기 있소! 저게 내 몸이오! 저기..."~ */
  IF ~~ THEN EXTERN ~DMERTWYN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #42423 /* ~"오, 그러지 마시오... 그건 너무 심하오. 그리고 내 머리가 당신에게 대체 무슨 쓸모가 있겠소?"~ */
  IF ~~ THEN REPLY #42424 /* ~머트윈의 몸이 자신의 머리를 가져가도록 내버려 둔다. ~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GiveGoldForce(200)
~ JOURNAL #56738 /* ~나는 머트윈의 몸과 머리를 재결합시켰다. 둘은 서로를 나시 만나게 되어 기쁜 듯했다. ~ */ EXTERN ~DMERTWYN~ 8
  IF ~~ THEN REPLY #42425 /* ~"미안하지만 나와 조금 더 같이 있어야겠소. 안녕히 계시오."~ */ EXIT
END
