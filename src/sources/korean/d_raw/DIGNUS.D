// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DIGNUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DIGNUS~

IF ~  Global("Ignus","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2846 /* ~우지직 소리를 내며 불타는 이 생명체는 바의 바닥에 놓인 철제 그릴 위에서 몸을 뒤틀고 있다. 그는 한때 인간이었는지도 모른다, 하지만 그의 피부는 이제 알아볼 수 없을 정도로 까맣게 탔다. 그의 몸 주변에는 화염이 소용돌이치고 있으며, 그것은 그의 뼈대 위에 얼마남지 않은 살조차도 녹아 내리게 만들고 있다.~ */
  IF ~~ THEN REPLY #16198 /* ~"안녕하시오...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~~ THEN REPLY #16200 /* ~불타는 시체를 살펴본다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16201 /* ~"흠... 이 끝없는 물의 유리병이 무슨 효과가 있을지 궁금하군..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16210 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #2847 /* ~그는 아무런 응답도 하지 않는다. 그는 화염 속에서 천천히 몸을 비틀고 있다. 그는 살아 있다, 하지만 자신을 감싸고 있는 불 이외의 것은 아무 것도 인식하고 있지 못하는 듯하다. 그의 피부도 가슴도 화염이다, 그리고 당신의 기억의 어두운 한 구석으로부터 당신은 그가 *위험한* 존재하는 것을 안다. ~ */
  IF ~~ THEN REPLY #16212 /* ~그를 살펴본다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 2
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16213 /* ~"흠... 이 끝없는 물의 유리병이 무슨 효과가 있을지 궁금하군..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16214 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #16199 /* ~그를 둘러싸고 있는 열기는... 엄청나다. 놀랍게도 그의 발 아래에 놓인 철제 그릴은 열로 인해 느슨해지고 굽었다. 처음에 당신은 열이 그릴로부터 나오는 것이라고 생각했다... 하지만 이제 당신은 열이 그로부터 나오고 있다는 것을 안다. 당신이 보고 있는 중에도 그의 몸에서 나오는 재가 천천히 천장으로 올라가고 있다.~ */
  IF ~~ THEN REPLY #16215 /* ~"안녕하시오...?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 1
  IF ~  PartyHasItem("Decant2")
~ THEN REPLY #16216 /* ~"흠... 이 끝없는 물의 유리병이 무슨 효과가 있을지 궁금하군..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEGETHIT)
~ GOTO 3
  IF ~~ THEN REPLY #16217 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.1 2.1
  SAY #16202 /* ~당신은 유리병을 그릴 쪽으로 기울여 물을 붓기 시작한다. 유리병에서는 얼음처럼 푸른 색의 물줄기가 나오나, 그릴에 닿자마자 요란한 소리를 내며 증기가 되어버린다... 유리병은 마치 이 도전에 응하기라도 하려는 듯 앞쪽으로 *돌진*한다. 그리고 그릴에 떨어져 깨진다!~ */
  IF ~~ THEN REPLY #16218 /* ~"세상에...?!"~ */ DO ~DestroyPartyItem("Decant2",TRUE)
AddexperienceParty(5000)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #16203 /* ~그릴로부터 소용돌이치는 증기와 격렬한 파열음이 당신 쪽으로 몰려오는 탓에 당신은 귀를 막고 고개를 돌린다... 비명과 웃음 소리가 들린다... 그리고 수백 개의 건물이 불타고, 사람들이 비명을 지르며, 그들의 비명이 화염의 포효와 살이 타는 소리에 차단되는 듯한 끔찍한 소리가 들린다.~ */
  IF ~~ THEN REPLY #16219 /* ~귀를 막아 음을 차단한다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16204 /* ~당신은 소리를 막으려고 귀에 손을 갖다 댄다. 그런데 당신 손에서 뜨거운 치즈나 촛농처럼 끈적거리는 것의 감이 느껴진다... 소음 때문에 당신 귀에서 피가 나오고 있다! 당신은 귀에서 손을 뗀다, 그리고 양손이 피범벅이 된 녹은 살덩어리로 뒤덮여 있는 것을 본다...~ */
  IF ~~ THEN REPLY #16220 /* ~바에서 나간다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #16205 /* ~당신은 소리를 피하기 위한 최후의 수단으로 바에서 도망치려고 한다. 그런데 바로 그 때 그릴에서 불규칙하게 나오는 우지직 소리를 제외한 모든 소리가 멈춘다. 돌아보자 그릴 위에 이제는 증기와 파편만이 남은 끝없는 물의 유리병이 있다. 그 위에는 그 생명체가 떠 있으며, 그의 몸에서는 아직도 화염이 나오고 있다. 그는 마치 횃불처럼 명멸하는 두 눈으로 당신을 응시하고 있다. ~ */
  IF ~~ THEN REPLY #16221 /* ~"나는 당신을 *알고* 있소..."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #16206 /* ~그의 얼굴이 갈라진다. 그가 말을 할 수 있도록 턱 위의 불탄 살이 벗겨져 나가고 있는 것이다. *"그래..."* 그의 목소리는 그의 가슴으로부터 노호하는 기세로 불타며 나온다 , 그리고 그가 말을 한 마디씩 할 때마다 그의 입으로부터 재가 나와 공기 중으로 퍼져 나간다. 당신은 간신히 그를 쳐다볼 수가 있다 - 그를 둘러싸고 있는 타오르는 광채는 보기에 끔찍하다. ~ [IGN116] */
  IF ~~ THEN REPLY #16222 /* ~"이그너스..."~ */ DO ~SetGlobal("Ignus_Free","GLOBAL",1)
SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #16207 /* ~*"그래래..."* 그는 공중을 부유하여 당신에게 다가온다. 그의 몸에서 나오는 열 때문에 공기가 가열돼 굴절 현상이 일어난다. "난 화여엄의 꾸움을 꾸며... 오랫동안 자았어..." 마치 그 말에 응답이라도 하듯 화염이 그의 목에서 소용돌이치며, 그의 까맣게 탄 이빨 뒤에서는 불의 혀가 춤을 춘다. *"나는 우우리 둘 모두 죽을 때까아지이이 다아앙신 꺼야..."~ [IGN004C] */
  IF ~~ THEN REPLY #48406 /* ~"어디 두고 봅시다..."~ */ EXIT
END

IF ~  Global("Ignus","GLOBAL",1)
!InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #16208 /* ~당신이 다가가자 그는 쉿 소리를 낸다. 그의 몸에서 나오는 열 때문에 공기가 가열돼 굴절 현상이 일어난다. "난 화여엄의 꾸움을 꾸며... 오랫동안 자았어..." ~ [IGN004B] */
  IF ~~ THEN REPLY #16223 /* ~"안녕하시오, 이그너스... 나와 함께 여행을 하겠소?"~ */ DO ~SetGlobal("Ignus","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 10
  IF ~~ THEN REPLY #52781 /* ~"당신 꿈들을 잘 숨겨 두시오, 아그너스... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #16209 /* ~응답이라도 하듯 화염이 그의 목에서 소용돌이치며, 그의 까맣게 탄 이빨 뒤에서는 불의 혀가 춤을 춘다. *"나는 우우리 둘 모두 죽을 때까아지이이 다아앙신 꺼야..."~ [IGN248] */
  IF ~~ THEN REPLY #52782 /* ~"어디 두고 봅시다..."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #16624 /* ~이그너스는 천천히 고개를 돌려 당신을 마주본다. "뭐지?"*~ */
  IF ~  !Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16922 /* ~"관두시오. 그건 별로 좋은 생각이 아니었소. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~  Global("Evil_Mourns_2","GLOBAL",1)
~ THEN REPLY #16923 /* ~"이 나무들이 보이오, 이그너스? 당신 가슴 속에서 그들을 소중하게 생각하는 마음을 찾아낼 수 있을 것 같소?"~ */ GOTO 12
  IF ~~ THEN REPLY #16924 /* ~"아무 것도 아니오. 난 내가 무슨 생각을 했는지 모르겠소. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #16625 /* ~이그너스는 나무 쪽으로 고개를 돌린다, 그리고 주변의 공기가 순식간에 견디기 힘들 정도로 뜨거워진다. *'그래애... 불타야지..."~ */
  IF ~~ THEN EXTERN ~DMFTREE~ 52
END

IF ~~ THEN BEGIN 13 // from:
  SAY #16626 /* ~이그너스는 끔찍하게 웃는다. 그리고 그의 목구멍에서는 화염이 튀어 나온다. *"당신은 나와 불탈 것 사이를 가로막겠다는 건가아아? 당신도오 불타알 거야아..."~ */
  IF ~~ THEN REPLY #16925 /* ~"이그너스, 기다리시오..."~ */ DO ~Attack("MFTree")
~ EXIT
  IF ~~ THEN REPLY #16926 /* ~그가 하고 싶은 대로 하도록 내버려 둔다.~ */ DO ~Attack("MFTree")
IncrementGlobalOnceEx("GLOBALEvil_Mourns_3","GLOBALGood",-2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",0)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #33991 /* ~당신이 다가가자 이그너스는 쉿 소리를 낸다, 그리고 그의 몸에서 나는 열기 때문에 공기의 굴절 현상이 일어난다. *"나는 여기기 남아아서... 불에 대해 생생각했어..."*~ [IGN247] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #33992 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61855 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61856 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61857 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61858 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61859 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61860 /* ~"어... 알겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 84.0 85.0
  SAY #33994 /* ~*"나는 우우리 둘 모두 죽을 때까아지이이 다아앙신 꺼야..."*~ [IGN248] */
  IF ~~ THEN REPLY #33995 /* ~"좋소. 갑시다."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ EXIT
END

IF ~  InParty("Ignus")
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #33996 /* ~이그너스의 목구멍에서 불꽃이 춤을 춘다, 그리고 그의 타버린 이빨의 안쪽으로부터 화염의 혀가 튀어나온다. *"뭐어어지...?"*~ [IGN249] */
  IF ~~ THEN REPLY #33997 /* ~"이그너스, 당신에게 무슨 일이 있었기에 당신이 이렇게 된 거요?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57439 /* ~"이그너스... 당신이 위험한 모서리의 골목을 불태웠다는 것이 사실이오."~ */ GOTO 36
  IF ~~ THEN REPLY #57440 /* ~"불타는 시체 바에서는 뭘 하고 있었던 거요?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57441 /* ~"이그너스, 나는 벌통에서 어떤 이야기꾼과 얘기를 나눴소, 그리고 그는 누군가가 당신에게 이런 것들을 가르쳤다고 했소... 그게 누구요?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(10000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57442 /* ~"이그너스, 내가 당신의 사부였다는 것이 확실하오?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57443 /* ~"이그너스, 마법에 대한 당신의 지식... 당신의 마법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57444 /* ~"이그너스, 마법에 대한 당신의 지식... 나는 더 배우기 위해 고통을 감수할 각오가 되어 있소."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57445 /* ~"이그너스, 마법에 대한 당신의 지식... 나는 더 배우기 위해 고통을 감수할 각오가 되어 있소."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57446 /* ~"이그너스, 내가 당신에게 가르친 것, 그리고 당신에게 내가 준 고통... 그것들에 대해 사과하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57447 /* ~"아무 것도 아니오, 이그너스. 당신이 아직 우리와 함께 있는지 확인하려고 했을 뿐이오... 말하자면 말이오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #52561 /* ~*"불타라..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52562 /* ~"당신 눈에는 또 어떤 고통들이 보이오, 래벌?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ EXTERN ~DRAVEL~ 35
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52563 /* ~"당신 눈에는 또 어떤 고통들이 보이오, 래벌?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ EXTERN ~DRAVEL~ 36
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52564 /* ~"당신 눈에는 또 어떤 고통들이 보이오, 래벌?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ EXTERN ~DRAVEL~ 38
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52565 /* ~"당신 눈에는 또 어떤 고통들이 보이오, 래벌?"~ */ EXTERN ~DRAVEL~ 40
END

IF ~~ THEN BEGIN 18 // from:
  SAY #52566 /* ~*"불타라..."*~ [IGN144A] */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #52567 /* ~"당신은 이미 당신 주장을 말했소. 그러니 이제 그-"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52568 /* ~"당신은 이미 당신 주장을 말했소. 그러니 이제 그-"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52569 /* ~"당신은 이미 당신 주장을 말했소. 그러니 이제 그-"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52570 /* ~"당신은 이미 당신 주장을 말했소. 그러니 이제 그-"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 19 // from: 46.1
  SAY #54145 /* ~"*나는 우우리 둘 모두 죽을 때까아지이이 다아앙신 꺼야..."*~ */
  IF ~  NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54146 /* ~"알겠소... 그레이스?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54147 /* ~"알겠소... 안나?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54148 /* ~"알겠소... 다콘?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("grace")
!InParty("annah")
NearbyDialog("Ddakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54149 /* ~"알겠소... 다콘?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54150 /* ~"알겠소... 모트?~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54151 /* ~"알겠소... 모트?~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54152 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54153 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54154 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 31.2 33.2 34.3 35.1 39.1 40.2 45.1 46.2 47.3 48.3 49.2 51.1 63.2 64.2 65.4 68.2 72.2 73.3 77.2 81.2 82.2 83.2
  SAY #57448 /* ~*"쉿쉿쉿!"* 이그너스가 하늘로 몇 미터 치솟아 입을 벌리고 화염을 내뿜자, 당신 가슴이 마구 뛰기 시작한다. "더 이상 얘기하거나 질문하지이이마! 조용히이이해...!"~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57449 /* ~"하지만 이그너스, 나는 화염, 그리고 불타는 것에 대해서 이야기하고 싶소..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57450 /* ~"하지만 이그너스, 나는 화염, 그리고 불타는 것에 대해서 이야기하고 싶소..."~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",0)
~ THEN REPLY #57451 /* ~"하지만 이그너스, 나는 화염, 그리고 불타는 것에 대해서 이야기하고 싶소..."~ */ DO ~SetGlobal("Ignus_Coax","GLOBAL",1)
AddexperienceParty(1500)
~ GOTO 26
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,16,INT)
Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57452 /* ~"하지만 이그너스, 나는 화염, 그리고 불타는 것에 대해서 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57453 /* ~"당신은 내 질문에 답해야만 하오, 이그너스. 나는 당신을 해방시켰고, 그리고 당신을 다시 당신의 지옥으로 보낼 수도 있소."~ */ GOTO 21
  IF ~~ THEN REPLY #57454 /* ~"그럼 관두시오..."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.4
  SAY #57580 /* ~*"당신이 이그너스스를 사슬로 묶을 수 있다고 생각하나...?* 화염이 이그너스 주변에서 소용돌이치며 그를 망토처럼 감싼다, 그리고 당신을 포옹이라도 하려는 듯 바깥쪽으로 향한다. *"죽여서 재재재재로 만들 수 있어어 이그너스스는... 지금은 이그너스스가 당신 따라... 하지만 혀협박은 이그너스스 화나게 해해..."*~ */
  IF ~~ THEN REPLY #57581 /* ~"그런데 이그너스, 당신은 날 멈출 수가 없소. 당신은 날 불태울 수가 있겠지만 난 계속 부활해 당신이 불쏘시개가 될 때가지 당신을 공격할 거요. 그러니 협박할 생각은 집어치우시오.."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 22
  IF ~~ THEN REPLY #57582 /* ~"당신이 그렇게 말한다면... 나중에 얘기합시다, 이그너스."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #57583 /* ~공기 중에서 딱 소리가 난다, 그리고 이그너스는 당신을 살피려는 듯 고개를 약간 기울인 다음, 쉿 소리를 낸다. "화여염이 당신으로부터 불사성 태워워 없앨 거야... 당신은 내 화여염으로부터 안전하지 못해..."~ */
  IF ~~ THEN REPLY #57584 /* ~"아마 당신은 불사의 의미를 이해하지 못하는 것 같소, 이그너스..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL2)
~ GOTO 23
  IF ~~ THEN REPLY #57585 /* ~"어떻게 내가 불사신인 걸 알았소?"~ */ GOTO 23
  IF ~~ THEN REPLY #57586 /* ~"당신이 그렇게 말한다면... 나중에 얘기합시다, 이그너스."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #57587 /* ~*"당신 불사신 아냐... 이그너스스 당신 죽일 수 있어... 재재재를 바라람에 나리릴 수 있어..."* 당신은 그가 팔을 크게 내뻗는 것을 지켜본다, 그러자 그로부터 엄청난 열기가 나오는데, 어찌나 강렬한지 눈을 가려야 할 지경이다. 엄청난 울음 소리와 함께 공기가 이그너스를 피해 당신을 스치고 지나간다.~ */
  IF ~~ THEN REPLY #57588 /* ~"이그너스! 멈추시-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #57589 /* ~당신은 이그너스에게 멈추라고 소리치려고 하나, 열기의 파도는 방향을 돌려 당신을 엄습한다. 당신은 자신의 피부가 타서 연기가 나는 것을 느낀다, 그리고 고통이 시작된다... 이를 악물고 고통을 참는 당신 귀에 미칠 듯아 킬킬 대는 이그너스의 웃음소리가 들려 온다...~ */
  IF ~~ THEN REPLY #57590 /* ~"이그너스!"~ */ DO ~SetGlobal("Ignus_Kill_Nameless","GLOBAL",1)
~ JOURNAL #57591 /* ~내가 이그너스와 얘기를 하고 있을 때 그는 완전히 미쳐버렸다... 나는 그의 분노로부터 살아남을 수 있었으나, 그가 지닌 원소 마법의 힘은 심상치가 않다. 그는 날 영구적으로 죽일 힘이 있는 것 같다. ~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #57603 /* ~당신이 그의 이름을 다시 외치자 열기는 사라진다. 당신은 얼굴을 가리고 있던 팔을 내린다, 그리고 당신 피부가 새까맣게 탔다는 사실을 깨닫는다... 그리고 이그너스는 굶주린 눈빛으로 당신을 쳐다보고 있다. 당신이 절실하게 깨달은 것은 이그너스가 무엇이든, 어떤 힘이 그를 지배하고 있든 간에 그에게는 당신을 *파괴*할 힘이 있다는 사실이다. 만약 그의 화염이 당신을 죽인다면, 당신은 시체조차 남지 않을 것이다.~ */
  IF ~~ THEN REPLY #57605 /* ~"이그너스, 이젠 당신이라면 넌더리가 나오... 당신은 날 죽일 수 있을지도 모르오. 아니면 그렇지 않을 수도 있소. 난 그걸 시험해볼 각오가 되어 있소."~ */ GOTO 29
  IF ~~ THEN REPLY #57607 /* ~"좋소, 이그너스. 그럼 나중에 얘기합시다, 당신과 나..."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 20.0 20.2
  SAY #57608 /* ~당신의 말은 마치 기름과 같다... 그리고 당신은 그것이 이그너스의 눈을 채우며 거기서 보이는 화염을 한층 맹렬한 기세로 타오르게 하는 것을 지켜본다. "*화염?*" 이그너스는 천천히 내려온다, 그리고 마치 관심이 있다는 것을 표현이라도 하듯 그의 주변의 열기가 뜨거워진다... *"말해해해... 이그너스스는 들을게..."~ */
  IF ~~ THEN REPLY #57609 /* ~"이그너스, 당신에게 무슨 일이 있었기에 당신이 이렇게 된 거요?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57610 /* ~"이그너스... 당신이 위험한 모서리의 골목을 불태운 것이 사실이오?"~ */ GOTO 36
  IF ~~ THEN REPLY #57612 /* ~"불타는 시체 바에서는 뭘 하고 있었던 거요?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57613 /* ~"이그너스, 나는 벌통에서 어떤 이야기꾼과 얘기를 나눴소, 그리고 그는 누군가가 당신에게 이런 것들을 가르쳤다고 했소... 그게 누구요?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57616 /* ~"이그너스, 내가 당신의 사부였다는 것이 확실하오?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57619 /* ~"이그너스, 마법에 대한 당신의 지식... 당신의 마법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57624 /* ~"이그너스, 마법에 대한 당신의 지식... 나는 더 배우기 위해 고통을 감수할 각오가 되어 있소."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57628 /* ~"이그너스, 마법에 대한 당신의 지식... 나는 더 배우기 위해 고통을 감수할 각오가 되어 있소."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57630 /* ~"이그너스, 내가 당신에게 가르친 것, 그리고 당신에게 내가 준 고통... 그것들에 대해 사과하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57633 /* ~"화염에 대해서는 나중에 얘기합시다, 이그너스. 지금은 곤란하오."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 20.1 20.3 28.0 31.1 33.1 34.2 35.0 39.0 40.1 45.0 47.2 48.2 49.1 51.0 63.1 64.1 65.3 68.1 72.1 73.2 77.1 81.1 82.1 83.1
  SAY #57636 /* ~*"화여염...?"* 이그너스의 목소리가 관심이 있는 듯 장작이 타는 것처럼 딱딱거린다. *"말해해해... 이그너스스는 들을게..."~ */
  IF ~~ THEN REPLY #57637 /* ~"이그너스, 당신에게 무슨 일이 있었기에 당신이 이렇게 된 거요?"~ */ GOTO 31
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #57639 /* ~"이그너스... 당신이 위험한 모서리의 골목을 불태운 것이 사실이오?"~ */ GOTO 36
  IF ~~ THEN REPLY #57641 /* ~"불타는 시체 바에서는 뭘 하고 있었던 거요?"~ */ GOTO 40
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",1)
~ THEN REPLY #57643 /* ~"이그너스, 나는 벌통에서 어떤 이야기꾼과 얘기를 나눴소, 그리고 그는 누군가가 당신에게 이런 것들을 가르쳤다고 했소... 그게 누구요?"~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 46
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #57645 /* ~"이그너스, 내가 당신의 사부였다는 것이 확실하오?"~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57648 /* ~"이그너스, 마법에 대한 당신의 지식... 당신의 마법을 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 63
  IF ~  Class(Protagonist,MAGE)
Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57650 /* ~"이그너스, 마법에 대한 당신의 지식... 나는 더 배우기 위해 고통을 감수할 각오가 되어 있소."~ */ GOTO 65
  IF ~  Class(Protagonist,MAGE)
GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57654 /* ~"이그너스, 마법에 대한 당신의 지식... 나는 더 배우기 위해 고통을 감수할 각오가 되어 있소."~ */ GOTO 73
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57656 /* ~"이그너스, 내가 당신에게 가르친 것, 그리고 당신에게 내가 준 고통... 그것들에 대해 사과하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ignus_1","GLOBALGood",2)
~ GOTO 81
  IF ~~ THEN REPLY #57658 /* ~"더 이상 할 질문이 없소... 당신의 꿈이 화염으로 가득 차기를, 이그너스..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 26.9 27.9
  SAY #57659 /* ~*"아니! 마알해해해!"* 이그너스는 울부짖는다, 그러자 당신 주위의 공기가 전처럼 엄청난 열기에 의해 *뒤틀리기* 시작한다. "화여염에 대해 말해! 불타아아는 것에 대해 말알해해!"*~ */
  IF ~~ THEN REPLY #57660 /* ~"어... 알겠소. 화염에 대해 질문할 것이 있소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57661 /* ~"아니오, 이그너스... 다른 기회에 얘기합시다! 지금은 안 되오!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,CHR)
Global("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57662 /* ~"이그너스... 당신은 건물이 불타는 걸 *느낀* 적이 있소? 재목의 모서리를 핥으며 그 아래의 나무를 검게 그슬리는 불꽃들, 열기에 벽으로부터 벗가져 나오는 페인트, 우지직우지직 소리를 내는 이엉, 짚이 타는 냄새..."~ */ DO ~SetGlobal("Ignus_Calm_Tale","GLOBAL",1)
AddexperienceParty(1500)
SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
  IF ~  CheckStatGT(Protagonist,12,CHR)
GlobalGT("Ignus_Calm_Tale","GLOBAL",0)
~ THEN REPLY #57663 /* ~"이그너스... 당신은 건물이 불타는 걸 *느낀* 적이 있소? 재목의 모서리를 핥으며 그 아래의 나무를 검게 그슬리는 불꽃들, 열기에 벽으로부터 벗가져 나오는 페인트, 우지직우지직 소리를 내는 이엉, 짚이 타는 냄새..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 25.0 28.1 82.0
  SAY #57664 /* ~이그너스는 끔찍하게 울부짖는다, 그리고 갑자기 그의 전신이 타오르는 광채에 휩싸인다, 그리고 그의 눈은 다른 차원으로 통하는 창처럼 보인다. 그는 화염에 휩싸인 손을 들어 올린다, 그리고 화염은 점점 커져 거대한 화염 채찍이 된다. *"당신은 타아알 거어어야!"*~ */
  IF ~~ THEN REPLY #57665 /* ~"아그너스, 이건 당신 스스로가 초래한 거요..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.2 28.3
  SAY #57666 /* ~당신이 입을 열자, 이그너스 주변의 화염이 마치 당신 얘기에 귀를 기울이기라도 하듯 움츠러든다... 당신이 얘기를 마치자, 이그너스는 조용히 쉿 소리를 낸다, 그리고 마치 과거의 기억을 회상이라도 하듯 그의 눈 안의 불꽃이 희미해진다. *"그래래래..."*~ */
  IF ~~ THEN REPLY #57667 /* ~"그럼 나중에 이야기하도록 합시다, 이그너스... 그 동안은 조용히 있도록 하시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 16.0 26.0 27.0
  SAY #57668 /* ~*"이이랬어..."* 이그너스의 볼에 있던 한 조각의 살점이 터지더니 턱까지 졸졸 흘러내린다. "이그너스스는... 느늘늘... 이이랬어..."*~ */
  IF ~~ THEN REPLY #57669 /* ~"하지만 당신은 인간처럼 보이오. 적어도 한때는 인간이었던 것처럼."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 32
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57670 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57671 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57672 /* ~"알겠소. 당신과는 이야기를 더 해야 할 것 같소... 나중에."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #57673 /* ~이그너스는 몸을 뒤튼다, 그리고 그의 몸이 땅 위에서 천천히 회전함에 따라 고개를 구부린다... 그 효과는 마치 불타는 회오리 바람 같다 - 그의 몸에서 나오는 열기가 주변의 공기를 왜곡하고 있다. *"아직직 이그너스스... 느늘늘 이그너스스..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57674 /* ~"불타는 것에 대해 더 이야기하고 싶-"~ */ GOTO 33
  IF ~~ THEN REPLY #57675 /* ~"그럼 관두시오. 다른 질문들-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
  IF ~~ THEN REPLY #57676 /* ~"알겠소. 그걸로 충분-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1 32.2
  SAY #57677 /* ~당신이 말을 하려고 입을 열자, 이그너스가 갑자기 당신 쪽으로 다가온다 - 그의 몸에서 나오는 열기가 당신을 엄습함에 따라 당신은 하려던 말을 삼키게 된다. *"이그너스스는 당신일지도... 몸 속의 불불불꽃, 느늘늘 타오르려려고고..."*~ */
  IF ~~ THEN REPLY #57678 /* ~"'몸 안의 불꽃'? 그게 무슨 뜻이오?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESPELL1)
~ GOTO 34
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57679 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57680 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57681 /* ~"알겠소. 당신과는 이야기를 더 해야 할 것 같소... 나중에."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #57682 /* ~"*모든 것것들은... 아안안에서 타타..."* 이그너스는 고개를 뒤로 제치고 팔을 활짝 벌린다, 그러자 화염이 소용돌이치듯 그의 팔을 따라서 올라간다. *"불불불만 붙이면 이그너스스가 돼... 그그러니 당신도... 이그너스스였을지도..."~ */
  IF ~~ THEN REPLY #57683 /* ~"그런데 말이오, 사람들 몸 속에서 불꽃이 타오르게 하면 대부분의 경우 그들을 죽이게 되오."~ */ GOTO 35
  IF ~~ THEN REPLY #57684 /* ~"그래... 당신 말은 적절한 불꽃만 있으면 누구든지 당신처럼 될 가능성이 있다는 거요?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 35
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57685 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57686 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57688 /* ~"알겠소. 당신과는 이야기를 더 해야 할 것 같소... 나중에."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0 34.1
  SAY #57689 /* ~*"그래래..."*  이그너스는 고개를 한쪽으로 기울이고 '싱긋 웃는다," 그러자 그의 해골로부터 먼지가 쏟아져 나오고, 그것은 그의 몸을 감싸고 있는 화염에 휩싸여 사라진다.~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57690 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57691 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57693 /* ~"알겠소. 당신과는 이야기를 더 해야 할 것 같소... 나중에."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 16.1 26.1 27.1
  SAY #57694 /* ~이그너스의 얼굴이 갈라진다, 그리고 그의 입가의 살이 갈라졌다가 녹아서 탄화된 적흑색 조각들로 변한다. *"그래... 이그너스스는 꿈을 공유하겠어어..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57696 /* ~"다음 기회에 합시다. 지금은 불타는 것에 대해 더 얘기를-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57697 /* ~"어... 지금 당장은 아니오. 다른 질문-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
  IF ~~ THEN REPLY #57698 /* ~"충분히 들은 것 같소. 우린-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1 36.2
  SAY #57700 /* ~이그너스로부터 화염이 급류처럼 쏟아지자 당신은 한 걸음 물러선다. 열기 때문에 공기조차 뒤틀리고 있다. *"밤의 거리리... 너너무 추워... 이그너스스는 건물, 주우민을 태웠어어... 모두 이그너스스로부터 도망쳤어, 화여염들, 건물물들은 화여염과 같았어...주우민들은 횃불불불이 되면사 비이명을 지일렀어..."*~ */
  IF ~~ THEN REPLY #57701 /* ~"충분히 들은 것 같소. 이그너-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
  IF ~~ THEN REPLY #57703 /* ~조용히 귀를 기울이며 그의 장광설이 끝나기를 기다린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #57704 /* ~*"건물물들은 뼈대대만 남았어... 모서리리들, 시시체도 뼈만 남았어어... 빨가앙, 오렌지이, 그리고 거엄정, 불불꽃이 퍼어지면서, 감싸아고... 엄청난 빛..."*~ */
  IF ~~ THEN REPLY #57706 /* ~"이그너스, 난 충분하고 남을 만큼 들었-"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
  IF ~~ THEN REPLY #57707 /* ~조용히 귀를 기울이며 그의 장광설이 끝나기를 기다린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0 38.1
  SAY #57709 /* ~*"쉿..."* 이그너스의 분노도 가라앉은 듯 그의 주위의 화염도 그 기세가 다소 수그러진다. 그는 생각 - 아니 과거의 기억에 담겨 있는 듯하다. *"쉿... 그리고 이그너스으는 만족했어..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57710 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57712 /* ~"그 밖에도 당신에게 질문할 것들이 있소, 이그너스..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57713 /* ~"알겠소. 당신과는 이야기를 더 해야 할 것 같소... 나중에."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 16.2 26.2 27.2
  SAY #57714 /* ~잠시 당신은 이그너스가 당신 말을 듣지 못했다고 생각한다. 그러나 갑자기 그의 눈 안의 불빛이 약간 어두워지며, 그가 조용히 쉿 소리를 낸다. 그의 입가에서는 재와 타나 남은 찌꺼기가 춤추고 있다. *"한때... 이그너스으는 화염에 대해 아무 것도 몰랐었지..."*~ */
  IF ~~ THEN REPLY #57717 /* ~"그랬소?"~ */ GOTO 41
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57718 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ GOTO 27
  IF ~~ THEN REPLY #57719 /* ~"관두시오. 다른 질문이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57723 /* ~"관두시오, 이그너스. 다음 기회에 다시 이야기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #57725 /* ~*"한때... 이그너스으는 화염에 대해 아무 것도 몰랐었지... .그는 자악은 불, 조그만 불꽃이나 지폈지...."* 이그너스스는 다시 쉿 소리를 낸다, 그리고 그의 입가에서는 재와 불똥이 떠다니고 있다. *"부울은 점점 커졌고... 이그너스으는 그들의 거어리에 부울을 질렀지... 그리고 그들 가아슴 속의 분노에 부울을 질렀지..."*~ */
  IF ~~ THEN REPLY #57726 /* ~"그래서?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57727 /* ~"화염과 불타는 것에 대해 더 이야기하고 싶소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57729 /* ~"관두시오. 다른 질문이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
  IF ~~ THEN REPLY #57730 /* ~"관두시오, 이그너스. 다음 기회에 다시 이야기합시다."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0 41.1 41.2 41.3
  SAY #57733 /* ~당신이 말을 해도 이그너스는 듣지 못하는 것 같다... 그의 정신은 다른 곳에 가 있는 듯하다. 그는 마치 자신의 말을 통해 기억 속의 일을 다시 체험하고 있는 듯하다... 당신은 자신의 의지와는 상관없이 얘기를 멈추고 귀를 기울인다.~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #57734 /* ~"*벌통에서 온 파아리들이 이그너스으를 버얼하려 했지. 놈들은 이그너스으가 그들의 거어리에 부울을 지른 후 이그너스으가 불타아는 걸걸 보오고 싶어했지... 조그만 초보 마법사들, 무식한 마도사아, 룬 영창자아들... 조그만 마법의 불꽃들이 와서 이그너스으가 자신들이 사랑하는 사아람들을 해친 데 대한 버얼을 내리려고 했지... 그들은 이그너스으에게 화아형의 파안결을 내려 이그너스으를 불을 내뿌움는 인간 횃불로 만들었지, 타고 또 타는... 그들은 그것이 저엉의라고 마알했지..."*~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #57736 /* ~*"저엉의..."* 당신은 그가 불타는 시체의 그릴에서 했던 것처럼 천천히 회전하는 모습을 무엇에 홀린 듯한 표정으로 지켜본다. ...하지만 그건 파안결이 아니었어... 너무무무 화아염과 고오통이 많아서 고통이 없었어... 빛과 열, 그리고 사알이 내 뼈를 기름처럼 흘러서 지이나갔지... 그리고 처어음으로... 이그너스으는 만족했어...~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #57738 /* ~이그너스는 회전을 멈추고 당신을 쳐다본다. 동시에 그의 눈의 불꽃이 타오른다, 그리고 불이 싱긋 웃는 듯 그의 얼굴에서 번짐에 따라 살이 타고 물집이 생겨 터진다. 이그너스는 지옥의 업화와 같은 얼굴을 하고 있으며, 그가 그 다음에 내뱉은 말은 마치 사형선고처럼 들린다 - 당신뿐만이 아닌 삼라만상에 대한.  *"모든 차아원과 생생명이 불타아게 되면 이그너스으는 마침내... 마음의 평온을 얻게 될 거야..."*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57739 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57740 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57741 /* ~이그너스가 화염에 대한 생각에 잠기도록 내버려 둔다...~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 16.3 26.3 27.3
  SAY #57743 /* ~*"당신이 아는 가르르침..."* 이그너스가 끔찍한 웃음 비슷한 것을 웃자 그의 입에서 불덩이가 튀어나온다. *"당신은 느늘늘 이그너스스를 가르쳤어... 당신은 이그너스스의 사사사부였어..."*~ */
  IF ~~ THEN REPLY #57744 /* ~"나? 틀림없소..?"~ */ JOURNAL #57592 /* ~이그너스는 내가 자신에게 마법을 가르쳐준 사부라고 주장한다. 그에 의하면 그것이 그가 내게 복종하는 유일한 이유라고 한다. ~ */ GOTO 47
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57745 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 19
  IF ~~ THEN REPLY #57747 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57748 /* ~"관두시오, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 16.4 26.4 27.4 46.0
  SAY #57751 /* ~이그너스의 목소리가 낮아진다, 그리고 그에 따라 화염이 딱딱거리는 소리 역시 작아진다. *"그래래... 그건... 이그너스스가 당신에게 복복종하는 유일한 이이유야... "* 그의 주위에서 화염이 요란한 소리를 내며 나선형으로 일어난다. *"우우리 둘 모두 죽을 때까아지이이... 당신이 내게 하아아한 마알... 당신 학생생 이그너스스에게... 이그너스스는 잊지 않았어... 사사부님..."*~ */
  IF ~~ THEN REPLY #57753 /* ~"이그너스... 당신이 마법에 대해 배운 것은 무척 오래 전 일일 것이오... 내가 당신 사부였다고 확신할 수 있소?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ GOTO 48
  IF ~~ THEN REPLY #57754 /* ~"이그너스, 만약 내가 당신의 '사부'였다면... 나에 대해 기억나는 것이 있소?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57755 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57757 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57759 /* ~관두시오, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57760 /* ~*"그래래...  이그너스가 킬킬댄다. *"그래래...  얼굴은 변했지만... 당신이 이그너스스에게 준 많은 가르르침들 ..."*~ */
  IF ~~ THEN REPLY #57761 /* ~"만약 내 얼굴이 변했다면 어떻게 난지 알 수가 있소?"~ */ GOTO 49
  IF ~~ THEN REPLY #57763 /* ~"이그너스... 이건 매우 중요하오. 나에 대해 기억나는 것이 있소?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57764 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57765 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57766 /* ~관두시오, 이그너스... 이 일에 대해선 나중에 더 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #57768 /* ~*"모든 것것 안안에는... 작은 화여염이... 불불꽃이, 화여염, 같아아아... 피피부는 상관없어... 피피부는 피를 흘릴 수 있어... 피피부는 탈 수 있어... 하지만 내면의 화염은 남아아아아..."*~ */
  IF ~~ THEN REPLY #57769 /* ~"이그너스... 이건 매우 중요하오. 나에 대해 기억나는 것이 있소?"~ */ GOTO 50
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57771 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57773 /* ~알겠소... 그 밖에도 질문할 것들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57775 /* ~관두시오, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.1 48.1 49.0
  SAY #57776 /* ~이그너스는 쉿 소리를 낸다... 그리고 잠시 그의 *얼굴*이 깜박인다. 처음에 당신은 그것이 화염 때문이라고 생각하나 그게 아니다... 그것은 *기억*의 명멸이다...~ */
  IF ~~ THEN REPLY #57777 /* ~기억에 몸을 맡긴다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 52
  IF ~~ THEN REPLY #57778 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1 52.1 53.1 54.1 55.1 56.1 57.1 58.1 59.1 60.1 61.1 62.0 62.1 62.2
  SAY #57779 /* ~당신의 시야가 맑아진다, 그리고 기억이 연기처럼 사라진다. 이그너스는 당신 위를 떠다니며 미친 듯한, 불에 그을려 새까만 싱긋 웃음을 웃고 있다... *"이그너스스는 잊지 않았어... 사사부님...가르르침"*~ */
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57780 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57781 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57782 /* ~관두시오, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 50.0
  SAY #57783 /* ~이그너스의 화염의 기세가 수그러진다, 그리고 그의 탄화된 뼈들은 접혀서 그의 사지가 전혀 움직이지 않게 될 때까지 뒤틀려, 거대한 철제 난로 안의 나무 더미가 된다... 당신은 천장이 아치형인 방 안에서 환하게 불타고 있는 불을 들여다 보고 있다. 불로부터는 때때로 깜부기불이 튀어나와 석제 바닥에 떨어지고, 난로부터는 작은 불꽃들이 튀어 오르고 있다. 당신 뒤의 어둠 속으로부터 누군가가 숨을 거칠게 쉬는 소리가 들린다. ~ */
  IF ~~ THEN REPLY #57784 /* ~기억: "네 숨소리를 들을 수가 있구나... 밝은 곳으로 나오거라."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #57785 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #57786 /* ~샌들을 질질 끄는 소리가 둘리고, 나약하게 생긴 소년이 불빛의 테두리 안에 발을 디딘다. 그의 크고 검은 눈은 불빛을 받아 반짝이고 있다. 그는 불안해 하고 있다 - 당신은 그의 근육과 목소리가 떨리고 있는 것을 들을 수가 있다, 하지만 이는 당신을 더 짜증나게 할 뿐이다. "일하시는 걸 방해해서 죄송해요, 사부님. 저-"~ */
  IF ~~ THEN REPLY #57787 /* ~기억: "넌 날 이미 방해했다, 제자야. 이유가 있어서 그랬겠지. 말하거라, 그리고 그 다음에는 내가 명상을 할 수 있도록 나가도록 해라."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 54
  IF ~~ THEN REPLY #57788 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #57789 /* ~소년은 심호흡을 한 후, 불을 흘긋 본다. "사부님, 저... 지난 밤, 다시 화염의 꿈들을 꾸었어요... 그것들은 진짜 같았어요. 그리고 사부님께서는 만약 -"~ */
  IF ~~ THEN REPLY #57790 /* ~기억: "그건 *꿈*에 불과하다. 이제 가거라."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 55
  IF ~~ THEN REPLY #57791 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #57792 /* ~소년은 움직이지 않는다. 그는 눈썹을 한 데로 모으고 천천히 손을 보여준다. 손가락 주변의 살이 불에 타서 새까맣다.~ */
  IF ~~ THEN REPLY #57793 /* ~기억: "어떻게 해서 손에 화상을 입게 되었느냐, 제자야?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 56
  IF ~~ THEN REPLY #57794 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #57795 /* ~"제가 깨어나 보니 제 손이 마치 재와 같았어요." 소년은 당신을 마주본다. 그는 아직도 약간 떨고 있으나, 그의 목소리로부터는 열망이 느껴진다, 그리고 이는 당신을 화나게 한다. "저는 제가 불처럼 대지와 하늘 위를 나는 꿈을 꾸었어요. 세상 자체가 너무나도 밝아서... 쳐다보면 눈이 아플 지경이었어요, 사부님. 그리고 내가 깨어났을 때 내  손... 내 양손은 마치 손으로 화염을 만진 것처럼 데어 있었어요."~ */
  IF ~~ THEN REPLY #57796 /* ~기억: "넌 거짓말을 하고 있구나, 제자야. 넌 네가 만들어낸 이야기를 가지고 와서 이제는 날 *화나게* 만들려고 하고 있구나." ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 57
  IF ~~ THEN REPLY #57797 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #57798 /* ~"아니요, 사부님..." 소년의 땀투성이 얼굴은 두려움에 휩싸인다. "아뇨, 맹세코 아니에요!"~ */
  IF ~~ THEN REPLY #57799 /* ~기억: "너는 촛불을 가지고 스스로를 불태웠을 거다, 제자야. 아니면 유동의 동굴에 있는 장작불들 중 하나에 손을 집어 넣었던지. 그리고 나선 내게 와서 꿈이 널 불태웠다고 하는구나. 네 거짓말에는 이제 넌더리가 난다."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #57800 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #57801 /* ~소년은 침묵한다, 그리고 놀랍게도 그는 분노로 이를 악문다. "아뇨, 전 거짓말하지 않았어요. 절 태운 건 *꿈*이에요, 사부님, 힘이 요동을 치면 그럴 수도 있다고 전에 말씀하신 것처럼 말이에요."~ */
  IF ~~ THEN REPLY #57802 /* ~기억: 그의 손을 잡는다. ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 59
  IF ~~ THEN REPLY #57803 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #57804 /* ~소년이 미처 반응을 하기도 전에 당신은 소년의 손에 비할 때 엄청 큰 당신의 손을 내밀어 그의 데인 손을 바스러뜨릴 정도로 꽉 움켜쥔다. 소년은 비명을 지르고 그 소리는 방 안에 메아리친다. 당신은 호통을 치며 그를 난로 앞의 땅바닥에 내동댕이친다, 그리고 그의 무릎이 바닥에 부딪치면서 날카로운 *우두둑* 소리가 난다.~ */
  IF ~~ THEN REPLY #57805 /* ~기억: "그 불꽃들 속을 들여다 보아라, 제자야! 머리를 쳐들고 보아라!"~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 60
  IF ~~ THEN REPLY #57806 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #57807 /* ~소년은 무릎의 통증 때문에 몸을 떨고 있다... 당신은 그가 난로를 쳐다보려고 고개를 들면서 눈물을 흘리는 것을 지켜본다. 그의 얼굴은 불빛을 받아서 붉고, 섬뜩하게 빛난다.., ~ */
  IF ~~ THEN REPLY #57808 /* ~기억: "*그것이* 네가 잡고자 하는 것이냐, 제자야? 네 가슴을 휘젓고 있는 건 불꽃을 마음대로 다루고 싶다는 갈망이냐? "불꽃은 사물을 태운다는 것을 알아라, 그리고 만약 그 힘을 배우고자 한다면 그 손길이 주는 고통을 감수해야 한다."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 61
  IF ~~ THEN REPLY #57809 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #57810 /* ~소년은 아무 말도 없이 화염만 바라보고 있다. 그는 마치 무엇인가에 홀린 듯하다. 그의 눈물은 열기 때문이 다 말랐으며, 그는 더 이상 몸을 떨지 않는다. 그는 화염에 온 정신을 집중하고 있다. 그는 당신 말에 귀를 기울이지 않고 있다. 당신은 서서히 분노가 쌓이는 것을 느낀다. ~ */
  IF ~~ THEN REPLY #57811 /* ~기억: "감히 내 명상을 방해할 정도로 네가 그것에 깊숙이 빠져있다면 , 네게 불꽃을 다루는 방법을 가르쳐주마, 제자야. ~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #57812 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #57814 /* ~당신은 손을 내밀어 소년의 팔목을 잡는다. 당신이 비명을 지르는 그를 난로 쪽으로 끌고 간다, 그리고 그의 양손을 석탄 속애 쑤셔 넣는다. 바삭바삭 타는 소리와 함께 살이 타는 냄새가 난다, 그리고 그의 비명은 너무나도 끔찍스럽다, 하지만 -~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #57815 /* ~기억: "배우기 위해선 고통을 감수해야 한다, 제자야. 너는 네가 사용할 힘으로 스스로를 불태우지 않으면 안 된다. 그 고통을 알아라, 그러면 그것을 너의 적에게 어떻게 써야할지 알게 될 테니."~ */ DO ~SetGlobal("Memory_Ignus_Taught","GLOBAL",1)
GiveExperience(Protagonist,10000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ JOURNAL #57818 /* ~이그너스와 그의 '사부'에 대하여 얘기를 나눌 때 강렬한 기억이 뇌리에 떠올랐다. 이그너스에게 마법에 대해 가르친 건... 과거 어느 시점의 나였던 같다. 하지만 이그너스는 나로부터 나쁜 것만 배운 것 같다. ~ */ GOTO 51
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #57816 /* ~기억: "배우기 위해선 고통을 감수해야 한다, 제자야. 너는 네가 사용할 힘으로 스스로를 불태우지 않으면 안 된다. 그 고통을 알아라, 그러면 그것을 너의 적에게 어떻게 써야할지 알게 될 테니."~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
  IF ~~ THEN REPLY #57817 /* ~기억을 떨쳐버린다.~ */ DO ~SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 51
END

IF ~~ THEN BEGIN 63 // from: 16.5 26.5 27.5
  SAY #57819 /* ~*"쉿... 이그너스스 *한때* 많이 알았어... 더 이상 아냐... 이그너스스 불타타타... 고통통으로 이그너스스는 배워워워..."* 그의 입에서 작은 불꽃이 웃음처럼 터져 나온다, 그리고 타나 남은 재들도 함께 튀어나온다. *"고통통... 배워..."*~ */
  IF ~~ THEN REPLY #57820 /* ~"나는 그러한 지식을 위해 고통을 감수할 각오가 되어 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57821 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57822 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57823 /* ~"다음 기회로 미룹시다, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #57824 /* ~말을 하려다가 당신은 후두부에 근질거리는 감각을 느낀다... 그리고 갑자기 당신은 이그너스가 당신에게 가르쳐 줄 지식이 당신에게 영구적인 상처를 남길 것이라는 사실을 확실하게 인식한다... 하지만 당신은 자신이 *어떻게* 이 사실을 깨달았는지 알 수가 없다.~ */
  IF ~~ THEN REPLY #57825 /* ~반복: "나는 그러한 지식을 위해 고통을 감수할 각오가 되어 있소..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57826 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57827 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57828 /* ~"다음 기회로 미룹시다, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 16.6 26.6 27.6 64.0 68.0
  SAY #57829 /* ~*"고통통...?"* 이그너스의 입가에서 불꽃이 열망하듯이 흔들거리며 그의 얼굴을 따라 소용돌이 치듯 올라간다. *"불타타타? 자자신의 일부부가 타타타타... 쉿... 이그너스스... 이그너스스 아직도 *많이* 가르칠 수 있어."*~ */
  IF ~  Global("Ignus_Teach","GLOBAL",0)
~ THEN REPLY #57830 /* ~"나는 배우고자 하오, 이그너스... 내게 마법에 대해 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",1)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 66
  IF ~  Global("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57831 /* ~"나는 배우고자 하오, 이그너스... 내게 마법에 대해 더 가르쳐 줄 수 있겠소?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",2)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 69
  IF ~  GlobalGT("Ignus_Teach","GLOBAL",1)
~ THEN REPLY #57832 /* ~"나는 배우고자 하오, 이그너스... 내게 마법에 대해 더 가르쳐 줄 수 있겠소?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57833 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57834 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57835 /* ~"다음 기회로 미룹시다, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #57836 /* ~*"블불이 탔던 곳에는 그걸 다시 보보낼 수 있어..."* 당신이 미처 반응하기도 전에 이그너스는 손가락을 내밀어 당신 손가락을 잡는다, 그리고 탐욕스러운 *쉿* 소리와 함께 그것을 태운다. 당신은 눈을 감고 살이 타는 고통을 견디다가 비명을 지른다...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,1)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
GiveExperience(Protagonist,6000)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #57837 /* ~당신은 눈을 뜨고는 이그너스에 의해 새까맣게 타버린 당신 손을 본다... 그는 공중을 떠다니며 아무렇지도 않다는 듯 당신 손가락을 만지작거린다. 그리고 그는 손가락의 끝부분을 부러뜨리고 아랫부분만 남긴다. 그가 *쉿 소리를 내자,* 그의 입에서 재와 타다 남은 것들이 쏟아져 나온다, 그리고 그는 당신 손가락의 타고 남은 잔해를 당신에게 돌려준다.~ */
  IF ~~ THEN REPLY #57838 /* ~"억... 무슨... 짓을... 한... 거요...?"~ */ DO ~GiveItemCreate("Ignus01",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57839 /* ~이그너스는 내 손가락을 잘라내 살을 태워버린 후, 그것을 내게 다시 줌으로서 내게 자신이 지닌 마법의 지식의 일부를 '가르쳐' 주었다. 그는 내가 그것을 가지고 어떻게 해야 할지를 안다고 생각하는 듯했다. 그 시련을 견뎌내며 겪은 고통 때문에 내 건강은 다소의 영구적인 손상을 입은 것 같으나, 불에 대한 내 내성은 향상되었다. 시련에도 불구하고 내 손가락은 다시 자라나고 있다. 따라서 싸우거나 주문을 사용하는 데는 지장이 없을 것 같다.~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #57840 /* ~*"가르르르침..."* 이그너스가 킬킬거린다. 기묘하게도 이제 그 소리는 귀로 듣기에도 고통스럽다. *"배우려면 고통통받아야해..."*~ */
  IF ~~ THEN REPLY #57841 /* ~"더... 배우고... 싶소..."~ */ GOTO 65
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57842 /* ~"화염과... 불타는 것에... 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57843 /* ~"알겠소... 그 밖에도... 다른 질문들이... 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57844 /* ~"됐소... 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 65.1
  SAY #57845 /* ~*"그래래래..."* 당신이 미처 반응하기도 전에 이그너스는 손을 내밀어 당신 왼손을 잡는다, 그리고 탐욕스러운 *쉿* 소리와 함께 그것을 태운다. 당신은 눈을 감고 살이 타는 고통을 견디다가 비명을 지른다...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,3)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,5)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,5)
GiveExperience(Protagonist,12000)
~ GOTO 70
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #57846 /* ~당신은 눈을 뜨고는 이그너스에 의해 타버린 당신 손을 본다... 씰룩거리고 있는 새까맣게 탄 절단 부위만 남았으며, 그 곳으로부터는 피가 줄줄이 흘러나오고 있다. 이그너스는 당신 고통에는 무관심하다 - 그의 시선은 당신의 잘라진 손에 가 있다. 그는 그것을 들고는 그것이 마치 무슨 트로피나 되는 것처럼 존경스럽게 바라본다.~ */
  IF ~~ THEN REPLY #57847 /* ~"이그... 너스... 내 손을... 돌려주시오..."~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #57848 /* ~이그너스는 당신을 무시한다. 당신은 그의 손에서 나온 화염이 당신의 손을 휘감고는, 마치 조각을 하듯이 녹아서 달라붙은 뼈만 남을 때까지 남은 살점을 천천히 태우는 것을 지켜본다. 그는 길게 쉿 소리를 낸 다음 그의 '작품'을 다시 당신에게 던져 준다, 그리고 당신은 그것을 남은 한 손으로 받는다. 당신은 잘라진 손의 살이 천천히, 그리고 고통스럽게 재생하고 있다는 있다는 사실을 깨닫는다.~ */
  IF ~~ THEN REPLY #57849 /* ~"무슨 짓을 한... 거요...?"~ */ DO ~GiveItemCreate("Ignus04",Protagonist,1,0,0)
SetAnimState("Ignus",ANIM_MIMESTANCEFIDGET1)
~ JOURNAL #57850 /* ~이그너스는 내 손을 태워서 뜯어내어 살을 벗겨 낸 후, 그것을 내게 다시 줌으로서 내게 자신이 지닌 마법의 지식의 일부를 '가르쳐' 주었다. 그는 내가 그것을 가지고 어떻게 해야 할지를 안다고 생각하는 듯했다. 그 시련을 견뎌내며 겪은 고통 때문에 내 건강은 다소의 영구적인 손상을 입은 것 같으나, 불에 대한 내 내성은 향상되었다. 시련에도 불구하고 내 손은 다시 자라나고 있다. 따라서 싸우거나 주문을 사용하는 데는 지장이 없을 것 같다.~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #57851 /* ~*"가르르르침..."* 이그너스가 킬킬거린다. 기묘하게도 이제 그 소리는 귀로 듣기에도 고통스럽다. *"배우려면 고통통받아야해..."*~ */
  IF ~~ THEN REPLY #57852 /* ~"더... 배우고... 싶소..."~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57853 /* ~"화염과... 불타는 것에... 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57854 /* ~"알겠소... 그 밖에도... 다른 질문들이... 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57855 /* ~"됐소... 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 16.7 26.7 27.7 65.2 72.0 77.0 83.0
  SAY #57856 /* ~*"쉿쉿..."* 이그너스는 화염을 늘어뜨리며 공중으로 날아오른다. *"더는 없어! 자자신의 일일부부는 타버렸어... 쉿... 이그너스스... 하지만 이그너스스 더 가르르치지 않을 거야..."~ */
  IF ~  PartyHasItem("Eyeball")
Global("Ignus_Teach","GLOBAL",2)
~ THEN REPLY #57857 /* ~"나에게 가르치기 위해서는 내 신체의 일부가 필요하오? 내 눈알은 어떻겠소?"~ */ DO ~SetGlobal("Ignus_Teach","GLOBAL",3)
GiveExperience(Protagonist,12000)
SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 74
  IF ~  PartyHasItem("Intest")
~ THEN REPLY #57858 /* ~"나에게 가르치기 위해서는 내 신체의 일부가 필요하오? 내 내장의 조각은 어떻겠소?"~ */ DO ~DestroyPartyItem("Intest",TRUE)
GiveExperience(Protagonist,24000)
SetAnimState("Ignus",ANIM_MIMETALK1)
~ GOTO 78
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57859 /* ~"알겠소. 나는 화염과 불타는 것에 대해 더 이야기를 하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57860 /* ~알겠소... 그 밖에도 질문할 것들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57861 /* ~"그럼 관두시오, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #57862 /* ~이그너스는 다시 손가락으로 마치 창처럼 찌른다... 하지만 그는 당신이 교환 가능한 눈이 아니라, 멀쩡한 다른 한쪽 눈을 찌른다. 잠시 동안 당신은 놀라기만 할 뿐 아무런 고통도 느끼지 않는다, 그러나 이그너스가 당신 눈구멍 속에다 화염을 방출하자 당신은 *비명*을 지르다. 그의 화염은 해골 속까지 파고 드는 듯하다. 살이 타는 냄새가 당신 콧구멍을 가득 채우고, 연기가 당신 시야를 가린다...~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,2)
PermanentStatChange(Protagonist,RESISTMAGICFIRE,RAISE,3)
PermanentStatChange(Protagonist,RESISTFIRE,RAISE,3)
~ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.0
  SAY #57863 /* ~당신은 억지로 눈을 뜬다 - 그러나 한쪽 눈밖에 뜰 수가 없다. 이그너스는 당신 앞에서 부유하며 손으로 작은 불덩이 같은 것을 감싸고 있다. 그것은 다름 아닌 당신 눈이며, 불길에도 전혀 손상되지 않은 듯하다. 당신이 지켜보고 있자 이그너스는 손으로 당신의 눈을 감싼다, 그리고 타는 듯한 고통이 다시 당신의 눈구멍을 엄습한다.~ */
  IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #57864 /* ~그리고 갑자기 당신은 타는 듯한 고통 속에도 다시 제대로 불 수가 있다... 이그너스가 손을 펼치자 그 위에는 간신히 알아볼 수 있을 정도로 타버린 당신 눈알이 놓여져 있다... 하지만... 당신 눈은 아직도 눈구멍 속에 있다. 그는 킬킬댄다, 그리고 그가 화염을 내쉬자, 눈알은 그의 손바닥에서 떠올라 공중을 떠도는 재처럼 당신 쪽으로 날아간다. ~ */
  IF ~~ THEN REPLY #57865 /* ~눈알... 당신 눈알을 받는다...~ */ DO ~GiveItemCreate("Ignus02",Protagonist,1,0,0)
~ JOURNAL #57866 /* ~이그너스는 내 눈을 불에 데게 한 후, 그것을 내게 다시 줌으로서 내게 자신이 지닌 마법의 지식의 일부를 '가르쳐' 주었다. 그는 내가 그것을 가지고 어떻게 해야 할지를 안다고 생각하는 듯했다. 그 시련을 견뎌내며 겪은 고통 때문에 내 건강은 다소의 영구적인 손상을 입은 것 같으나, 불에 대한 내 내성은 향상되었다. 때로 나는 이그너스가 이러한 시련 대신 염병할 두루마리를 이용했으면 얼마나 좋을까 생각하곤 한다... 하지만 적어도 난 아직 눈으로 사물을 볼 수는 있다.~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #57867 /* ~이그너스의 엉망이 된 눈구멍으로부터 작은 뱀과도 같은 불길이 소용돌이처럼 치솟아 그의 타버린 해골을 따라 올라간다. *"더 가르르치려면..."* 두 마리의 불의 뱀들이 그의 뒤에서 원을 그리더니, 그의 손에서 횃불처럼 타오른다. *"더 많은 고통통..."*~ */
  IF ~~ THEN REPLY #57868 /* ~"나는 지식을 더 얻기 위해 고통을 감수할 각오가 있소... 내게 더 가르쳐 줄 수 있겠소?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57869 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57870 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57871 /* ~"고맙소, 이그너스... 나중에 다시 이야기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 73.1
  SAY #57872 /* ~당신이 자신의 창자를 내밀자 이그너스는 고개를 기울인다, 그리고 그는 갑작 달려들어 그것을 당신 손에서 낚아챈다. 그는 양손으로 그것을 밧줄처럼 팽팽히 잡아당긴다, 그리고 그는 스스로에게 *쉿쉿* 소리를 낸다... 당신은 그의 손아귀에서 연기를 내면서 새까맣게 타들어가는 당신 창자를 지켜본다... 그리고 당신은 복부에 타는 듯한 고통을 서서히 느낀다...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #57873 /* ~이그너스는 창자를 한 뼘 단위로 늘어뜨린다, 그리고 그 때마다 그의 손아귀에서 나온 창자가 나선형으로 그의 주변을 회전하며, 마치 뱀처럼 느릿한 패턴으로 꿈틀거린다. 화염은 창자가 시꺼멓게 탄 길쭉한 고기처럼 보일 때까지 천천히 태우는데, 이에는 어떤 패턴이 있는 듯하다...~ */
  IF ~~ THEN DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #57874 /* ~복부의 타는 듯한 고통은 당신으로 하여금 몸을 움츠리게 만든다, 하지만 이그너스가 당신 몸의 다른 부위를 태웠을 때의 고통에 비하면 아무 것도 아니다. 당신은 자신의 불타는 창자가 이그너스의 화염에 휩싸여 소용돌이치는 것을 지켜본다. 그러다 갑자기 불은 꺼지고 창자는 이그너스에 손에 떨어진다. 이그너스는 쉿 소리를 내며 그것을 당신에게 던진다. "*불사신신의 내장장에는 많은 힘이 있어어어..."*~ */
  IF ~~ THEN REPLY #57875 /* ~불탄 내장을 받는다...~ */ DO ~GiveItemCreate("Ignus03",Protagonist,1,0,0)
~ JOURNAL #57876 /* ~이그너스는 내 내장을 태운 후, 그것을 내게 다시 줌으로서 내게 자신이 지닌 마법의 지식의 일부를 '가르쳐' 주었다. 그는 내가 그것을 가지고 어떻게 해야할지를 안다고 생각하는 듯했다. 다른 시련과는 달리 이그너스가 내 내장을 '처리'했을  때 별다른 고통을 받지 않았다.~ */ GOTO 83
END

IF ~~ THEN BEGIN 81 // from: 16.8 26.8 27.8
  SAY #57877 /* ~*"화여여염... 아냐... 고통통..."* 이그너스는 땅 위에서 몸을 뒤틀며 천천히 회전한다. 그는 당신이 하는 말을 들었을지도 모른다. 그러나 그것이 그에게 과연 어떤 의미라도 있었는지는 당신도 알 수 없다...~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57878 /* ~"틀림없나, 제자?"~ */ DO ~SetAnimState("Ignus",ANIM_MIMEATTACK2)
~ GOTO 82
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57879 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57880 /* ~"적어도 난 시도는 했소... 당신에게 할 다른 질문들이 있소, 이그너스..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57881 /* ~"진위는 알 수가 없으나 어쨌든 당신이 이렇게 되어 미안하오, 이그너스... 나중에 다시 이야기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #57882 /* ~이그너스는 즉각 멈추고 당신에게 달려든다. 그의 가슴과 머리에서는 새로운 불길이 무서운 기세로 뻗어 나온다... 마치 이그너스 몸 속 어딘가에 감추어져 있던 불타는 뱀들의 둥지가 갑자기 터져 나오기라도 한 것만 같다. *"탄원자자자자는 더 이상 이그너스스가 아냐...! 다시 그그런 식으로 말말하면 이그너스스가 당신을 태태울 거야!"*~ */
  IF ~~ THEN REPLY #57883 /* ~"어디 해봐라, *제자야*. 아무래도 너에게 네 위치에 대해서 재인식을 시켜주어야겠군..."~ */ GOTO 29
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57884 /* ~"그럼 관두시오, 이그너스... 화염과 불타는 것에 대해 더 이야기를 하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57885 /* ~"알겠소... 그 밖에도 질문할 것들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57886 /* ~"그럼 관두시오, 이그너스... 나중에 다시 얘기합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 80.0
  SAY #57887 /* ~당신은 당신의 타버린 창자를 손에 쥐고 있다. 그것은 검은 밧줄처럼 보인다. 이그너스는 당신 위를 떠다닌다, 그리고 그의 불타는 야윈 몸으로부터는 재가 나와 바람에 날리고 있다.~ */
  IF ~~ THEN REPLY #57888 /* ~"나는 지식을 더 얻기 위해 고통을 감수할 각오가 있소... 내게 더 가르쳐 줄 수 있겠소?"~ */ GOTO 73
  IF ~  Global("Ignus_Coax","GLOBAL",1)
~ THEN REPLY #57889 /* ~"화염과 불타는 것에 대해 더 얘기하고 싶소, 이그너스..."~ */ GOTO 27
  IF ~~ THEN REPLY #57890 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ DO ~SetAnimState("Ignus",ANIM_MIMESTANDFIDGET1)
~ GOTO 20
  IF ~~ THEN REPLY #57891 /* ~"고맙소, 이그너스... 나중에 다시 이야기합시다."~ */ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",1)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 84 // from:
  SAY #61827 /* ~화염이 이그너스의 목 주위에서 소용돌이친다, 그리고 그의 해골의 테두리에서 춤을 춘다. 그는 타버린 입을 열고 뭔가 바삭바삭하게 타는 듯한 목소리로 말한다. "나... 기다려."~ [IGN148] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61828 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61829 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61830 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61831 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61832 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61833 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61834 /* ~"어... 알겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",2)
~ EXIT
END

IF ~  GlobalGT("Ignus","GLOBAL",1)
!InParty("Ignus")
Global("Party_Ignus_Waiting_VO","GLOBAL",2)
!GlobalGT("Fortress_Ignus","GLOBAL",2)
~ THEN BEGIN 85 // from:
  SAY #61835 /* ~당신이 다가가자 이그너스는 긴 쉿 소리를 낸다. "난 화여염의 길을 걷기를 기다려..."~ [IGN149] */
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ THEN REPLY #61836 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 15
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",1)
~ THEN REPLY #61837 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 86
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ THEN REPLY #61838 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 87
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ THEN REPLY #61839 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 88
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ THEN REPLY #61840 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 89
  IF ~  Global("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ THEN REPLY #61841 /* ~"이그너스, 나는 당신 도움이 필요하오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
ChangeAIScript("pcignus",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 90
  IF ~~ THEN REPLY #61842 /* ~"어... 알겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Party_Ignus_Waiting_VO","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 14.1 84.1 85.1
  SAY #61843 /* ~살이 바삭바삭 타는 소리와 함께 이그너스는 갈고 낮은  쉿 소리를 낸다. "당신신 뜻대로로."~ [IGN106] */
  IF ~~ THEN REPLY #61844 /* ~"갑시다."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 87 // from: 14.2 84.2 85.2
  SAY #61845 /* ~이그너스가 이빨을 딱딱거리자 그의 입에서 타다 남은 찌꺼기들이 유수처럼 나온다. "불불불이 거리리리를 휩쓸 거야..."~ [IGN077] */
  IF ~~ THEN REPLY #61846 /* ~"갑시다."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 88 // from: 14.3 84.3 85.3
  SAY #61847 /* ~그는 고개를 끄덕이자 구의 입에서 재가 둥둥 떠서 나온다. "이그너스는 복종해해..."~ [IGN101] */
  IF ~~ THEN REPLY #61848 /* ~"갑시다."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 89 // from: 14.4 84.4 85.4
  SAY #61849 /* ~이그너스의 목소리는 낮으며, 그가 얘기를 하자 그의 얼굴 주변의 화염의 기세가 수그러진다. "난 당신과 화여염의 길을 걷겠어..."~ [IGN151] */
  IF ~~ THEN REPLY #61850 /* ~"갑시다."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 90 // from: 14.5 84.5 85.5
  SAY #61851 /* ~이그너스의 입에서 뱀의 혀와 같은 화염의 혁 튀어나온다, 그리고 쉿 소리를 내며 약간의 재만 남긴 채 연기가 되어 사라진다. "그래래..."~ [IGN191A] */
  IF ~~ THEN REPLY #61852 /* ~"갑시다."~ */ DO ~SetGlobal("Party_Ignus_Rejoining_VO","GLOBAL",0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",3)
~ THEN BEGIN 91 // from:
  SAY #68216 /* ~이그너스가 꿈틀거린다. 그리고 그 주변의 공기가 그를 되살리기에 거의 충분할 정도로 번득이기 시작한다.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68218 /* ~"일어나시오, 이그너스. 난 당신 도움이 필요하오."~ */ DO ~SetGlobal("Fortress_Ignus","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 92
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68387 /* ~일어나시오, 이그너스.~ */ GOTO 93
END

IF ~~ THEN BEGIN 92 // from: 91.0
  SAY #68217 /* ~화염과 열기가 쇄도한다, 그리고 이그너스는 하늘로 솟아오른다. 그의 몸에서 발산되는 열기 때문에 주변의 공기가 왜곡될 정도이다. 그는 당신 쪽으로 돌아선다 - 그의 두 눈은 지옥으로 통하는 전이문과도 같다. "죽음이 우리 둘을 찾아올 때까지... 나는 당신 꺼야."~ [IGN248] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68219 /* ~"오늘이 바로 그 날일지도 모르오, 이그너스..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68220 /* ~"오늘이 바로 그 날일지도 모르오, 이그너스..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68221 /* ~"오늘이 바로 그 날일지도 모르오, 이그너스..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68243 /* ~"오늘이 바로 그 날일지도 모르오, 이그너스..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",1)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68441 /* ~"오늘이 바로 그 날일지도 모르오, 이그너스..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1
  SAY #68388 /* ~화염과 열기가 쇄도한다, 그리고 이그너스는 하늘로 솟아오른다. 그의 몸에서 발산되는 열기 때문에 주변의 공기가 왜곡될 정도이다. 그는 당신 쪽으로 돌아선다 0 그의 두 눈은 지옥으로 통하는 전이문과도 같다. 그리고 그는 길고 낮은 쉿 소리를 낸다 - 거기에는 위협은 없고, 지금까지 미처 느끼지 못했던 신중함이 있을 뿐이다. ~ */
  IF ~~ THEN REPLY #68389 /* ~나는 이 곳에 오래 머무르지 않을 것이오, 이그너스. 원한다면 당신을 시길로 돌려보내 주겠소. ~ */ GOTO 94
END

IF ~~ THEN BEGIN 94 // from: 93.0
  SAY #68390 /* ~이그너스는 당신을 쳐다본다: 그의 망가진 얼굴 아래의 표정은 읽을 수가 없다 - 그리고 갑자기 당신은 그가 무엇을 원하는 깨닫는다.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68391 /* ~나는 당신을 불의 원소계로 보내 주겠소, 이그너스. 그 곳에서 당신은 화염의 하늘을 자유로이 날아다닐 것이며, 그 곳의 모든 생명체들은 당신의 마음을 이해할 것이오. 당신의 숙명대로 당신은 영원한 화염 속에서 살게 될 것이오.~ */ GOTO 95
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #68422 /* ~나는 당신을 불의 원소계로 보내 주겠소, 이그너스. 그 곳에서 당신은 화염의 하늘을 자유로이 날아다닐 것이며, 그 곳의 모든 생명체들은 당신의 마음을 이해할 것이오. 당신의 숙명대로 당신은 영원한 화염 속에서 살게 될 것이오.~ */ GOTO 96
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #68392 /* ~이그너스는 공중을 떠다니며 잠시 침묵한다, 그리고 그가 입을 열였을 때 그의 목소리는 다른 사람의 목소리이다 - 당신의 화신들 중 하나 기억하고 있는 어린 학생의 목소리이다. "사부님, 용서해 주세요... 저는 사부님의 가르침을 저버렸어요."~ [IGN254] */
  IF ~~ THEN REPLY #68393 /* ~일찍이 나는 당신에게 고통을 가르쳤소, 이그너스, 그리고 난 당신을 배신했소. 이제 나는 당신 마음이 자유로워질 수 있는 안식의 장소로 당신을 보내겠소.~ */ GOTO 96
  IF ~~ THEN REPLY #68394 /* ~많은 배신이 있었소, 이그너스. 하지만 난 당신을 용서하오.~ */ GOTO 96
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 95.1
  SAY #68395 /* ~이그너스는 아무런 대답도 하지 않고 고개만 숙일 뿐이다. 화염은 그의 몸에서 춤추고, 재들이 작은 나뭇잎들처럼 그의 주위를 소용돌이친다.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68396 /* ~잘 가시오, 이그너스.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68397 /* ~잘 가시오, 이그너스.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
~ THEN REPLY #68467 /* ~잘 가시오, 이그너스.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Ignus","GLOBAL",4)
~ THEN BEGIN 97 // from:
  SAY #68418 /* ~아그너스는 지옥의 업화와도 같다. 불줄기가 성난 대해의 파도처럼 그의 몸으로부터 밀려나오고 있다. *"불타라...."*~ [IGN090A] */
  IF ~~ THEN REPLY #68419 /* ~"계속 맹공을 퍼부으시오, 이그너스 -- 그에게 집중할 기회를 주지 마시오."~ */ EXIT
END
