// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER5~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17512 /* ~"뛰어라, 림-림, 뛰어!" 상인은 갑자기 당신을 눈치챈 것 같다. "오, 안녕하시오! 이처럼 즐겁게 뛰어 노는 림-림을 한 마리 사시는 것이 어떻겠소, 나으리?"~ */
  IF ~~ THEN REPLY #17537 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17539 /* ~"아직 아니오. 대체 이들 '림-림'은 뭐요?"~ */ GOTO 3
  IF ~~ THEN REPLY #17540 /* ~"그렇소."~ */ GOTO 4
  IF ~~ THEN REPLY #17541 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Buy_LL","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #17513 /* ~"그들이 어떻게... 오, 또 오셨소, 나으리? 림-림을 사러 오신 거요?"~ */
  IF ~~ THEN REPLY #17542 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17543 /* ~"아직 아니오. 대체 이들 '림-림'은 뭐요?"~ */ GOTO 3
  IF ~~ THEN REPLY #17544 /* ~"그렇소."~ */ GOTO 4
  IF ~~ THEN REPLY #17545 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.0 4.3 4.5 6.1 7.1 9.0
  SAY #17515 /* ~"죄송하지만 내가 대답할 수 있는 질문은 림-림에 관한 것뿐이오, 나으리."~ */
  IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN REPLY #17546 /* ~"그럼 왜 내가 산 놈이 도망갔는지 설명해 줄 수 있겠군."~ */ GOTO 7
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17547 /* ~"그들은 대체 뭐요?"~ */ GOTO 3
  IF ~  Global("Buy_LL","GLOBAL",0)
~ THEN REPLY #17548 /* ~"한 마리 사고 싶소."~ */ GOTO 4
  IF ~~ THEN REPLY #17549 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1
  SAY #17516 /* ~"림-림은 아웃랜즈에 서식하는 동물도 완전한 곤충도 동물도 아니오. 그들은 쉽게 길들며, 놀기를 좋아하고, 상당히 충성심이 강하오." 그는 림-림을 곁눈으로 흘긋 본 후, 가까이 다가와 속삭인다. "급할 때는 식용으로 먹어도 맛이 좋소."~ */
  IF ~~ THEN REPLY #17550 /* ~"흥미롭군. 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17551 /* ~"한 마리 사고 싶소."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 2.2 3.1
  SAY #17517 /* ~"림-림은 자기가 알아서 곤충이나 작은 쥐 따위를 잡아 먹기 때문에 먹이에 대해선 걱정을 하지 않으셔도 좋소. 그들은 당신이 가는 곳이면 어디나 따라갈 것이며, 몸손질을 해주기도 쉽고, 조용하며 늘 튀어 오르는 덕에 따로 운동을 시킬 필요도 없소. 그리고 정말 끝내주는 건 뜨거운 석탄으로 쑤시면 4.5 미터 이상을 뛰어오를 수 있다는 점이오. 한 마리에 고작 동전 마흔 닢이오, 나으리. 그처럼 즐거운 애완동물 겸 친구를 얻을 수 있다고 생각하면 정말 하찮은 금액이오!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #17553 /* ~"모트? 어떻게 생각하나?"~ */ EXTERN ~DMORTE~ 187
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17555 /* ~"어떻게 생각하오, 안나?"~ */ EXTERN ~DANNAH~ 107
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17556 /* ~"그럼 한 마리 사겠소."~ */ DO ~TakePartyGold(40)
~ GOTO 5
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17557 /* ~"돈을 낭비하지 않는 것이 좋을 것 같소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~  PartyGoldGT(39)
~ THEN REPLY #17559 /* ~"사지 않겠소. 안녕히 계시오."~ */ EXIT
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17560 /* ~"내겐 그만한 돈이 없소, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~  PartyGoldLT(40)
~ THEN REPLY #17562 /* ~"관두시오. 그걸 살만한 돈이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2
  SAY #17518 /* ~"잘 생각하셨소, 나으리. 여기 있소..."~ */
  IF ~~ THEN REPLY #17563 /* ~"내 림-림..."~ */ DO ~SetGlobal("Buy_LL","GLOBAL",1)
GiveItemCreate("LimLim",Protagonist,1,0,0)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",2)
~ THEN BEGIN 6 // from:
  SAY #17519 /* ~"그들이 어떻게... 오, 또 오셨소, 나으리? 당신 림-림은 어디 갔소?"~ */
  IF ~~ THEN REPLY #17565 /* ~"놈은 어느 지점에 이르자 도망쳤소. 당신은 놈이 날 어디까지라도 따라갈 것이라고 했소."~ */ GOTO 7
  IF ~~ THEN REPLY #17567 /* ~"그것에 대해 얘기하고 싶지 않소. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17568 /* ~"묻지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 6.0
  SAY #17520 /* ~"정말이오? 참으로 이상한 일이오!"~ */
  IF ~~ THEN REPLY #17569 /* ~"나는 배상을 원하오."~ */ GOTO 8
  IF ~~ THEN REPLY #17570 /* ~"그것에 대해선 신경 쓰지 마시오. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17572 /* ~"그 일에 대해서는 고민하지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17521 /* ~"하지만 나으리... 그건 내 책임이 아니오! 훈련받지 않은 림-림... 누가 훔쳐 간 건지도 모르오..."~ */
  IF ~~ THEN REPLY #17573 /* ~"내 돈 마흔 닢만 돌려주시오."~ */ GOTO 11
  IF ~~ THEN REPLY #17574 /* ~"내가 낸 마흔 닢을 돌려주고, 당신 잘못에 대한 보상으로 스무 닢을 추가로 내놓으시오."~ */ GOTO 11
  IF ~~ THEN REPLY #17575 /* ~"내가 낸 마흔 닢을 돌려주고,내 피해에 대한 보상으로 마흔 닢을 추가로 내놓으시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Buy_LL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #17522 /* ~"그들이 어떻게... 오, 또 오셨소, 나으리?~ */
  IF ~~ THEN REPLY #17730 /* ~"그렇소. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17731 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #17526 /* ~(Null Node)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 8.1 8.2
  SAY #17527 /* ~"하지만 그럴 수는 없소! 내게 책임을 물을 순 없단 말이오!"~ */
  IF ~~ THEN REPLY #17576 /* ~"난 그럴 수가 있고 또 그럴 거요. 그건 당연하오. 당신은 놈이 날 어디까지라도 따라갈 것이라고 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_LL_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #17577 /* ~진실: "내가 아니면 지옥에게 돈을 지불해야 할 거요, 그러니 선택하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_2","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17579 /* ~허풍: "내가 아니면 지옥에게 돈을 지불해야 할 거요, 그러니 선택하시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_LL_1","GLOBALLaw",-1)
~ GOTO 12
  IF ~~ THEN REPLY #17580 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #17528 /* ~"좋소! 저쪽에 있는 건 뭐요?" 그는 갑자기 도망치기 시작한다!"~ */
  IF ~~ THEN REPLY #17581 /* ~"뭐..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END

IF ~  Global("Buy_LL","GLOBAL",3)
~ THEN BEGIN 13 // from:
  SAY #17529 /* ~"뛰어라, 림-림, 으악!" 상인은 당신을 보자 도망치기 시작한다.~ */
  IF ~~ THEN REPLY #17582 /* ~"빌어먹을..."~ */ DO ~RunAwayFromEx(Protagonist,2,FALSE)
SetGlobal("cd_int_1","LOCALS",1)
SetGlobal("Buy_LL","GLOBAL",3)
~ EXIT
END
