// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~"도와줘 고맙소. 나도 친구들과 힘을 모으겠소 ..." 그는 잠시 멈춘다. "믿을 수 있는 녀석들은 아니지만... 그만 가보시오."~ */
  IF ~~ THEN REPLY #58986 /* ~"행운을 빌겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~날카로운 초록색 눈과 햇볕에 탄 피부를 지닌 마른 사내가 보인다. "말라코 형제 증류소에 오신 것을 환영하오!" 그는 마치 당신이 세상에서 가장 반가운 사람이라도 되는 것처럼 외친다. "오늘은 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #58988 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~"나는 당신과 당신 형 사이에 작은 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~"이 도시에 있다는 디바에 대해서 뭐라도 들은 것이 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~"당신 형이 날 보냈소. 그는 당신과 당신들 부친이 남긴 유산에 대해 협상하기를 원하고 있소."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~"나는 케스터 말라코로, 말라코 형제 증류소의 운영자이자 공동 소유주요. 뭔가 사겠소?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~"공동 소유주?"~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~"다른 형제의 이름은 뭐요?~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~"지금은 아니오. 하지만 고맙소. 나는 당신과 당신 형 사이에 작은 문제가 있다고 들었소."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~"이 도시에 있다는 디바에 대해서 뭐라도 들은 것이 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~"당신 물건들을 좀 봅시다."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~"당신 형이 날 보냈소. 그는 당신과 당신들 부친이 남긴 유산에 대해 협상하기를 원하고 있소."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~그는 당신을 자세히 살펴본다. "여기는 증류소요. 우리는 여기서 음료에서 부적에 이르기까지 온갖 종류의 물건들을 판매하오. 뭔가 사겠소?"~ */
  IF ~~ THEN REPLY #59008 /* ~"그렇소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~"뭐, 커스트에서?" 그는 온화하게 웃는다. "친구, 커스트에 오래 있었다면 당신도 이 곳엔 디바 따위는 없다는 알 거요. 위대한 고리의 반대 쪽에 있는 관문 도시에나 가보시오. 자, 뭔가 사겠소?"~ */
  IF ~~ THEN REPLY #59011 /* ~"그렇소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~"그렇소. 내 형도 이 가게의 지분을 가지고 있소. 하지만 그는 이 가게에 거의 관심을 기울이지 않소. 자, 뭔가 사겠소?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~"당신 형에 대해 내게 어떤 얘기를 해줄 수가 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~"있소. 어떤 물건들을 가지고 있소?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~"당신 형이 날 보냈소. 그는 당신과 당신들 부친이 남긴 유산에 대해 협상하기를 원하고 있소."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~그의 얼굴이 어두워진다. "그의 이름은 크럼플펀치요. 그는 이 도시의 대장장이요. 그는 내 장사가 안 되도록 하는 일에 최선을 다하고 있소, 그리고... 왜 내가 당신에게 이런 얘기를 하고 있는 거지? 생판 모르는 남인데."~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~"당신을 돕고 싶소."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~"모르겠소. 어떤 물건들을 가지고 있소?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~"모르겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~"그렇게 해주겠소? 좋소. 이걸 보시오. 이건 우리 아버지가 내게 남긴 유증이오. 여기를 보시오. 우리에게 남겨진 유산을 그냥 둘로 나누지 말고 증류소를 발전시키는 데 쓰라고 분명히 적혀 있지 않소? 하지만 내 어리석은 형은 미래에 대비하기 보다는 눈 앞의 돈을 나누어 가지자고 주장하고 있소. 내게 그의 유증을 가져오든지, 아니면 그가 이해를 하도록 설득하면, 응분의 보상은 하겠소."~ */
  IF ~~ THEN REPLY #59022 /* ~"내가 자세히 검토하기 위해서는 당신이 받은 유언장이 필요하오."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~나는 증류주 제조업자 케스터와 그의 형 크럼플펀치 사이의 유산 분쟁에서 케스터 편을 들어주기로 했다. ~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~"좋소. 곧 돌아오겠소. 안녕히 계시오."~ */ JOURNAL #59024 /* ~나는 증류주 제조업자 케스터와 그의 형 크럼플펀치 사이의 유산 분쟁에서 케스터 편을 들어주기로 했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~그는 의심쩍은 눈초리로 당신을 쳐다보더니 이내 누그러진다. "만약 일을 빨리, 그리고 내게 유리하게 해결할 수 있다면 좋소. 여기 있소." 그는 그것을 당신에게 건네준다.~ */
  IF ~~ THEN REPLY #59026 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~"말라코 형제 증류소에 다시 오신 것을 환영하오! 오늘은 어떤 도움이 필요하시오?"~ */
  IF ~~ THEN REPLY #59028 /* ~"당신은 누구요?"~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~"나는 당신과 당신 형 사이에 작은 문제가 있다고 들었소. 난 당신을 돕고 싶소."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~"이 도시에 있다는 디바에 대해서 뭐라도 들은 것이 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~"당신 형이 날 보냈소. 그는 당신과 당신들 부친이 남긴 유산에 대해 협상하기를 원하고 있소."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~"무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #59035 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~"나는 당신 형제로 하여금 구속력 있는 협상안에 동의하도록 만들었소. 당신도 동의하오?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~"나는 당신 형제로 하여금 구속력 있는 협상안에 동의하도록 만들었소. 당신도 동의하오?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~"당신 형제는 자신이 원하는 대로 분쟁을 종결시키면 내게 돈을 주겠다고 했소."~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~"물건을 좀 사고 싶소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~"빌어먹을! 좋소. 여기 있소. 내 유증이오. 살펴본 후 어떻게 결정했는지를 우리 둘 중 하나에게 알려 주시오."~ */
  IF ~~ THEN REPLY #59042 /* ~"곧 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~"빌어먹을! 좋소. 우리 유증을 모두 살펴본 후 어떻게 결정했는지를 우리 둘 중 하나에게 알려 주시오."~ */
  IF ~~ THEN REPLY #59044 /* ~"곧 돌아오겠소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~"결정은 내렸소?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~"나는 당신에게 유리한 결정을 내렸소. 유서를 읽고 나니 당신이 모든 유산을 차지해야 한다는 것이 명백해졌소."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~"나는 당신 형제가 모든 돈을 받아야 한다고 결정을 내렸소. 그가 옳은 것이 명백하오."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~나는 증류주 제조업자와 대장장이 사이의 유산 분쟁에서 나는 대장장이 편을 들었다. 증류주 제조업자는 불만스러워 했다. ~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~"당신 둘은 돈을 반씩 나누어야 하오. 당신들 아버지가 그것을 원한 것이 명백하오."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~"당신들 중 어느 쪽에게도 돈을 받을 자격은 없소. 나는 당신들의 유산을 돈을 제대로 쓸 사람에게 전해주도록 하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~나는 증류주 제조업자와 대장장이 사이의 분쟁을 양쪽 모두를 속여서 해결했다. 그들은 불만스러워 했다.  ~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~"아직 아니오. 하지만 당신이 파는 물건들을 좀 보고 싶소."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~"아직 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~"오, 그가 그랬소? 그럼 만약 당신이 내 편을 들어준다면 당신에게 더 많은 보수를 주겠소... 이건 어떻소: 그로부터 유증을 받아서 연구한 후, 당신에게 중재를 맡기도록 그를 설득하시오. 그럼 당신은 두둑한 보수를 받게 될 거요. 어떻소?"~ */
  IF ~~ THEN REPLY #59022 /* ~"내가 자세히 검토하기 위해서는 당신이 받은 유언장이 필요하오."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~"거래 성립이오. 가서 그와 이야기를 하겠소. 안녕히 계시오."~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~"나는 그의 편을 들어야겠소. 그가 모든 유산을 차지할 것이오."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~"하! 하 하 하! 그럴 줄 알았소!" 그는 동전 자루를 당신 손에 쥐어 준다. "고맙소 친구. 내 가게에 오면 언제라도 환영하리다! 미안하지만 난 축배를 들러 가야겠소!"~ */
  IF ~~ THEN REPLY #59057 /* ~"물론이오. 안녕히 계시오."~ */ JOURNAL #59004 /* ~나는 증류주 제조업자와 대장장이 사이의 유산 분쟁에서 나는 증류주 제조업자 편을 들었다. 대가로 나는 동전 한 주머니를 받았다. ~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~그는 얼굴이 빨개져 고함을 지른다 "뭐?" 이 더러운 배신자 같으니! 내 가게에서 당장  나가!"~ */
  IF ~~ THEN REPLY #59059 /* ~"좋아, 좋아. 나가겠소.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~그는 흥분하여 말을 마구 내뱉는다. "하지만... 하지만... 그건... 하지만..." 그는 한숨을 쉰다. "좋소. 당신 말을 받아들이겠소. 하지만 내게 이 일로 좋은 대접을 받으리라고는 생각하지 마시오. 내 가게에서 나가시오. 그는 떫은 표정을 지으면서 당신에게 동전 자루를 던져 준다. "약속을 했으니 당신에게 이걸 주겠소. 가져가시오."~ */
  IF ~~ THEN REPLY #59061 /* ~"고맙소. 안녕히 계시오."~ */ JOURNAL #61386 /* ~나는 유산 상속 문제를 두 가게에서 나오는 이익을 두 사람이 고르게 나누어 가지라는 결정을 내려 해결했다.  ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~"다시 오신 걸 환영하오! 내게 뭘 원하시오?" 그는 기분이 매우 좋은 듯하다.~ */
  IF ~~ THEN REPLY #59063 /* ~당신이 파는 물건들을 보고자 할 뿐이오."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~"내 가게에서 나가지 않으면 경비병을 부르겠소. 당장."~ */
  IF ~~ THEN REPLY #59067 /* ~"좋소. 나가겠소."~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~"도와주시오! 그들을 멈춰 주시오 !"~ */
  IF ~~ THEN REPLY #67919 /* ~"최선을 다하리다..."~ */ EXIT
END
