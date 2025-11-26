// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~"당신은 타락자 윌리엄을 저 세상으로 보냈소. 그건 당신이 레이저 앤젤스의 영토를 공짜로 지날 수 있다는 뜻이지. ~ */
  IF ~~ THEN REPLY #34503 /* ~"고맙소. 안녕히 계시오."~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~이 골목 주민은 지나칠 정도로 공손하게 고개를 숙이며 인사를 한다. "안녕하시오, 이방인. 오늘과 같이 좋은 날 우리 영토를 지나게 된 걸 환영하오. 통행료는 단지 동전 열 닢이오."~ */
  IF ~~ THEN REPLY #34505 /* ~"열 닢? 그건 폭리요!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~"난 이미 저기 있는 친구들에게 냈단 말이오!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~"열 닢? 좋소. 여기 있소."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~"나는 이미 통행료를 지불했소."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~허풍: "나는 이미 통행료를 지불했소."~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~"그걸 받으려면 나와 싸워야 할 거요."~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~"통행료는 고작 열 닢이오. 그리고 이 곳은 우리 영토요. 당신도 여기가 약골들이 드나드는 곳이 아니란 것 정도는 알고 있었을 거요. 당신은 당신 자유의사로 이 곳에 왔소. 그러니 어떤 방법으로든 이제 그 대가를 치러야 겠소: 동전 또는 피. 어느 쪽을 택하겠소?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~"동전. 여기 있소."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~"피."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~"왜 날 잡아 보려고 하지 않소?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~"놈들은 우리 편이 아니오. 쉬브는 우리들의 숙적이오. 우리에게도 같은 액수를 지불하든지 아니면 죽을 각오를 하시오."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~"그럼 여기 있소. 돈을 가져가시오."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~"당신부터 죽을 거요, 친구."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~"왜 날 잡아 보려고 하지 않소?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~"레이저 앤젤스는 당신에게 감사하오. 안녕히 가시오, 여행자."~ */
  IF ~~ THEN REPLY #34521 /* ~"고맙소. 안녕히 계시오."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~레이저 앤젤는 그늘 쪽을 쳐다보며 손짓을 한다, 그리고 잠시 후 고개를 끄덕인다. "사실이군. 그럼 갈 길을 가시오. 하지만 다음 번에 지나갈 때는 요금을 받을 거요." ~ */
  IF ~~ THEN REPLY #34523 /* ~"나도 그렇게 생각하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~레이저 앤젤는 그늘 쪽을 쳐다보며 손짓을 한다, 그리고 잠시 후 당신을 보며 고개를 젓는다. "아니, 내지 않았소. 이건 내가 하는 마지막 경고요. 동전 열 닢을 내던지 아니면 차가운 땅바닥에 쓰러질 각오를 하시오."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~"그럼 여기 있소. 돈을 가져가시오."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~"어디 내게서 한 번 뺏어 보시지, 이 얼간아."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~"또 왔군. 지나가고 싶다면 요금은 지난번과 마찬가지요. 열 닢이오, 친구, 그러면 당신은 그 사랑스러운 흉터들을 그대로 지닌 채 지나갈 수가 있소."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~"열 닢? 그건 폭리요!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~"난 이미 저기 있는 친구들에게 냈단 말이오!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~"열 닢? 좋소. 여기 있소."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~"나는 이미 통행료를 지불했소."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~허풍: "나는 이미 통행료를 지불했소."~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~"그걸 받으려면 나와 싸워야 할 거요."~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~"당신이 크리스톨을 위해 일을 하고 있다고 들었소. 빨리 처리하시오, 알겠소? 오... 그리고 내가 잊어버리기 전에 말해 두겠는데, 통행료는 내야하오. 하지만 당신은 우릴 위해 일하고 있으니까 절반인 다섯 닢만 받겠소." ~ */
  IF ~~ THEN REPLY #34537 /* ~"하지만 난 크리스톨을 위해 일하고 있소!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~"여기 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~"난 이미 저기 있는 친구들에게 냈단 말이오!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~허풍: "나는 이미 통행료를 지불했소."~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~"당신부터 죽을 거요, 친구."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~"타락자 윌리엄을 아직 죽이지 못했군, 그렇지 않소? 크리스톨이 달리 얘기할 때까지는 다섯 닢을 내야겠소."~ */
  IF ~~ THEN REPLY #34545 /* ~"하지만 난 크리스톨을 위해 일하고 있소!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~"여기 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~"난 이미 저기 있는 친구들에게 냈단 말이오!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~"나는 이미 이번 통행료를 지불했소."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~허풍: "나는 이미 통행료를 지불했소."~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~"당신부터 죽을 거요, 친구."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~"그렇소. 하지만 그건 나도 마찬가지요. 우린 모두 먹고 살아야만 하오, 그러니 당신이 우리를 부양해 주어야겠소. 동전 다섯 닢을 내지 않겠다면 실력을 행사할 수밖에."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~"여기 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~"당신부터 죽을 거요, 친구."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~"그걸 받으려면 먼저 날 잡아야 할 거요."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~"고맙소. 타락자 윌리엄을 처치하는 일에 행운이 따르기를 빌겠소."~ */
  IF ~~ THEN REPLY #34557 /* ~"그래, 고맙소."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~"그래, 그리고 그걸 되찾으려면 그들을 죽어야 할 거요. 하지만 그건 그거고 이건 이거요. 돈을 내시오, 친구."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~"여기 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~"왜 나로부터 뺏어가려고 해보지 않소? 난 당신을 상대할 준비가 돼있소."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~"어림없소. 난 가겠소."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~레이저 앤젤은 확인을 하려고 그늘 쪽을 쳐다본다. 그는 당신 쪽으로 다시 돌아선다. "당신이 옳소. 미안하오. 그럼 갈 길을 가시오."~ */
  IF ~~ THEN REPLY #34563 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~레이저 앤젤은 확인을 하려고 그늘 쪽을 쳐다본다. 그는 당신 쪽으로 다시 돌아선다. "아니, 당신은 아직 돈을 안 냈소. 돈을 내시오, 친구, 아니면 타락자 윌리엄을 처치할 기회도 가지지 못하게 될 테니."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~"여기 있소."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~"당신을 처치하자 마자 그도 죽이겠소."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~"당신이 날 잡을 수 있을 것 같지는 않는데."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
