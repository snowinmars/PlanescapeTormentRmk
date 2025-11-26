// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVHAIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVHAIL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF ~~ THEN BEGIN 0 // from:
  SAY #2848 /* ~베일로는 조용히 부동의 자세로 서 있다. 그의 눈의 깜박이는 빨간 광채만 아니라면 그를 석상으로 착각할 지경이다.~ */
  IF ~~ THEN REPLY #2849 /* ~"그럼 이 덩치 큰 갑옷이 실제로 무슨 말을 할 수 있게 되면 다시 오도록 하지."~ */ EXIT
  IF ~~ THEN REPLY #33998 /* ~"자, 베일로, 먼저를 털어버리고 힘차게 일어나시오. 손을 봐줘야 할 불의가 있소."~ */ DO ~SetGlobal("Vhailor","GLOBAL",2)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16635 /* ~베일로는 조용히 부동의 자세로 서 있다. 그의 눈의 깜박이는 빨간 광채만 아니라면 그를 석상으로 착각할 지경이다.~ */
  IF ~~ THEN REPLY #17003 /* ~"...베일로? 내 말이 들리오?"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #16636 /* ~마침내 베일로의 목소리가 그의 텅 빈 투구로부터 울려 퍼진다. *나무의 상태는 나와 상관이 없다. 그 죽음은 공평하지도 불공평하지도 않다 -- 그것은 단순한 현상일 뿐이다."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #17004 /* ~"좋소. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #17005 /* ~"좋소.안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #17006 /* ~"좋소. 고맙소. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #17007 /* ~"좋소. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #17008 /* ~"좋소. 다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #17009 /* ~"좋소. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #17010 /* ~"좋소. 노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~~ THEN REPLY #17011 /* ~"좋소. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17012 /* ~"좋소, 베일로. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #30529 /* ~당신이 이언니스의 목을 조르려고 하자 플레이트 아머가 덜커덕거리는 소리와 함께 베일로가 앞으로 나선다. 그는 도끼를 들고 당신을 공격하려고 한다. "*불의.*" ~ */
  IF ~~ THEN REPLY #30530 /* ~"빌어먹을...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #30531 /* ~당신이 고백을 하자 베일로가 꿈틀거리며 도끼를 들어 올린다. 하지만 그는 공격은 하지 않고 단지 *기다릴* 뿐이다."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 40
END

IF ~~ THEN BEGIN 5 // from:
  SAY #30532 /* ~이언니스가 소리쳐 경비병을 부르자 베일로가 꿈틀거리며 움직인다. 그는 도끼를 들고 당신에게로 다가온다. "*불의.*" ~ */
  IF ~~ THEN REPLY #30533 /* ~"빌어먹을...!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #30534 /* ~당신이 고백을 하자 베일로가 꿈틀거리며 도끼를 들어 올린다. 하지만 그는 공격은 하지 않고 단지 *기다릴* 뿐이다."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 76
END

IF ~~ THEN BEGIN 7 // from:
  SAY #30535 /* ~당신이 고백을 하자 베일로가 꿈틀거리며 도끼를 들어 올린다. 하지만 그는 공격은 하지 않고 단지 *기다릴* 뿐이다."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 77
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  GlobalGT("Vhailor","GLOBAL",0)
!InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #33999 /* ~베일로는 조용히 부동의 자세로 서 있다. 그의 눈의 깜박이는 빨간 광채만 아니라면 그를 석상으로 착각할 지경이다.~ */
  IF ~  GlobalGT("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34000 /* ~"베일로, 난 당신 도움이 필요하오. 나와 함께 여행을 하겠소?"~ */ DO ~ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ GOTO 9
  IF ~  Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #34001 /* ~"베일로, 난 당신 도움이 필요하오. 나와 함께 여행을 하겠소?"~ */ GOTO 82
  IF ~~ THEN REPLY #56052 /* ~베일로를 조용히 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #34002 /* ~*그렇게 하겠다.*~ [VHA127] */
  IF ~~ THEN REPLY #34003 /* ~"갑시다, 그럼."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 16 even though they appear after this state */
~  InParty("Vhail")
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #34004 /* ~베일로는 조용히 부동의 자세로 서 있다. 그의 눈의 깜박이는 빨간 광채만 아니라면 그를 석상으로 착각할 지경이다.~ */
  IF ~~ THEN REPLY #34005 /* ~"당신에게 물어보고 싶은 것이 있소, 베일로..."~ */ GOTO 35
  IF ~~ THEN REPLY #56053 /* ~베일로를 조용히 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #54088 /* ~*너로군. 바로 너였어. 내가 얼마나 오랫동안 너를 쫓았던가, 이름 없는 자? 그리고 너의 기만이 드러날 때까지 내가 얼마나 오랫동안 네 옆에 서 있었던가?* 그가 자신의 도끼를 하늘 높이 들어 올리자, 순수한 *힘*이 그의 전신에서 흐르기 시작한다... 그의 헌신, 그리고 그의 경이적인 신념이 그를 문자 그대로 정의의 화신으로 만들고 있다. . *내가 내 곁에 그토록 가까이 있게 된 것은 숙명이다, 범죄자. 정의는 실현될 것이다. 너는 내 칼날 앞에 쓰러질 것이다, 불사신, 설령 그것이 내가 너의 꿈틀거리는 잔해를 영원히 지키고 서 있는 것을 의미할지라도.*~ */
  IF ~~ THEN REPLY #54089 /* ~자신을 방어한다.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #54090 /* ~도망치려고 시도한다.~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #54775 /* ~*네 행동에 정의는 없다, 디바. 이번에는 거짓말로 나 구속하지 못할 것이다. 이번에 너는 처형될 것이다." 베일로는 도끼를 들고 트리어스 쪽으로 다가간다.~ */
  IF ~~ THEN REPLY #54776 /* ~"베일로, 멈추시오!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54777 /* ~트리어스를 공격한다.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 13 // from:
  SAY #54778 /* ~*정의는 널 오래도록 찾고 있었다, 디바. 너는 이 범죄에 대한 벌로 처형될 것이다.* 베일로는 도끼를 들고 트리어스 쪽으로 다가간다.~ */
  IF ~~ THEN REPLY #54779 /* ~"베일로, 멈추시오!"~ */ EXTERN ~DTRIAS~ 70
  IF ~~ THEN REPLY #54780 /* ~트리어스를 공격한다.~ */ EXTERN ~DTRIAS~ 70
END

IF ~~ THEN BEGIN 14 // from:
  SAY #54781 /* ~*디바는 자유의 몸이 될 수 없다. 네가 무슨 맹세를 했던, 정의는 실현되어야만 한다.*~ */
  IF ~~ THEN REPLY #54779 /* ~"베일로, 멈추시오!"~ */ EXTERN ~DTRIAS~ 113
  IF ~~ THEN REPLY #54782 /* ~지켜본다.~ */ EXTERN ~DTRIAS~ 113
  IF ~  Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54784 /* ~당신이 한 맹세에도 불구하고 디바를 공격한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Trias_1","GLOBALLaw",-3)
~ EXTERN ~DTRIAS~ 113
  IF ~  !Global("Lawful_Trias_1","GLOBAL",1)
~ THEN REPLY #54785 /* ~디바를 공격한다.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Trias_2","GLOBALGood",-1)
~ EXTERN ~DTRIAS~ 113
END

IF ~~ THEN BEGIN 15 // from:
  SAY #54859 /* ~베일로는 침묵으로 대답한다. 당신이 그를 보려고 돌아서자, 그가 눈을 이글거리며 당신을 쳐다보고 있다. 그는 무슨 생각이라도 하듯 잠시 깜박인다, 그리고 당신은 갑자기 그가 당신의 얼굴을 살펴보고 있다는 끔찍한 느낌을 받는다... 그는 뭔가를... 당신의 약점을 찾으려고 하는 것 같다...~ */
  IF ~  NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54860 /* ~"어... 이그너스?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54861 /* ~"어... 훨-후럼-그레이스?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54862 /* ~"어... 안나?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54863 /* ~"어... 다콘?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54864 /* ~"어... 다콘?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54865 /* ~"어... 모트?~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54866 /* ~"어... 모트?~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54867 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54868 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54869 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF WEIGHT #0 ~  Global("Vhailor","GLOBAL",0)
!GlobalGT("Fortress_Vhailor","GLOBAL",2)
~ THEN BEGIN 16 // from:
  SAY #56054 /* ~당신 앞에는 거대한 빈 갑옷이 있다. 하지만 마치 어떤 투명한 옷걸이에라도 걸린 듯 철판들은 공중에서 제 위치에 떠 있다. 정강이받이 전체에 걸쳐 빨간 줄무늬가 새겨져 있으며, 손에는 양쪽에 날이 달린 사형 집행인의 도끼가 쥐어져 있다. 갑옷의 표면은 각종 문양으로 장식되어 있으며, 그 중에서도 가장 시선을 끄는 것은 레드 드래곤이 날개를 펼치고 있는 문양이다.~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56055 /* ~"베일로...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56056 /* ~갑옷을 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56057 /* ~도끼를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56058 /* ~투구를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56059 /* ~갑옷을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1 18.1 19.1 20.2 21.1
  SAY #56060 /* ~갑옷은 오래된 갑옷으로, 어깨 부분을 보호하는 철판으로부터는 날카로운 칼날들이 튀어나오고 있다. 그냥 장식용이라고 생각할 수도 있으나, 이미 가뜩이나 위협적인 갑옷의 추가적인 무기가 아니라고 하기에는 너무 무겁고 위험해 보인다. 갑옷은 전투 때문에 생긴 다른 흠이나 들어간 자국들도 적지 않으며, 그 표면은 세월과 녹에 의해 많이 손상되어 있다. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56061 /* ~"베일로...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56062 /* ~도끼를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56063 /* ~투구를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56064 /* ~갑옷을 가져간다.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56065 /* ~갑옷을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.1 19.2 20.3 21.2
  SAY #56067 /* ~양쪽에 날이 달린 이 도끼는 사형 집행인의 도끼를 연상시킨다. 도끼의 두부는 머시킬러 당파의 상징을 본 따서 만들어졌으며(레드 드래곤이 날개를 펼치고 있는 모양으로 도끼의 날은 드래곤의 펼쳐진 날개의 모습을 하고 있다). 도끼는 양손으로 쓰기에도 힘들 정도로 거대하며 이를 제대로 사용하려면 엄청난 힘을 필요로 할 것이다. 그럼에도 그것은 갑옷에서 분리된 건틀릿에 아무렇지도 않다는 듯 쥐어져 있다. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56068 /* ~"베일로...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56069 /* ~갑옷을 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56070 /* ~투구를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56071 /* ~도끼를 가져간다.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56072 /* ~갑옷을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.3 17.2 18.2 20.4 21.3
  SAY #56073 /* ~이 투구는 어떤 생명체의 해골처럼 생겼다. 안면보호용 덮개의 하단에는 구부러진 금속 이빨이 그 아래의 빈 공간을 덮고 있다. 투구는 공중에 떠 있으며, 그 속은 어두워서 보이지 않는다. ~ */
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #56074 /* ~"베일로...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 20
  IF ~~ THEN REPLY #56075 /* ~갑옷을 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56076 /* ~도끼를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56077 /* ~투구를 가져간다.~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 23
  IF ~~ THEN REPLY #56078 /* ~갑옷을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 17.0 18.0 19.0
  SAY #56079 /* ~그 이름을 어디서 들었는지는 알 수 없으나, 당신은 그 이름이 이 갑옷과 관계가 있다는 것을 알고 있다. 그 이름을 단지 속삭이기만 했는데, 그것은 방 전체에 기묘한 메아리가 되어 울려 퍼진다. 공기의 진동은, 당신의 심장을 긴장으로 팽팽하게 하고, 뒷머리에서는 뭔가가 기어가는 듯한 기묘한 감각이 느껴지게 만들기에 충분하다. ~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56080 /* ~기억을 생각해려고 노력해 그것을 표면으로 불러온다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,60000)
~ GOTO 21
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56081 /* ~기억이 다시 표면으로 떠오르도록 한다...~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 21
  IF ~~ THEN REPLY #56082 /* ~갑옷을 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56083 /* ~도끼를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56084 /* ~투구를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56085 /* ~갑옷을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #56086 /* ~당신이 갑옷을 쳐다보자, 면갑 아래의 그림자들이 형태를 갖추기 시작해... 검은 피부의 강인한 사내의 얼굴로 융합한다. 그의 눈은 불꽃과 같으며, 얼굴에 여러 개의 흉터가 나 있다... 이게 생전의 '베일로'의 모습인가? 그는 소름이 끼칠 정도로 낯이 익다... 갑옷과 피와 살이 흐르는 인간 양쪽 모두.~ */
  IF ~~ THEN REPLY #56087 /* ~"베일로... 깨어나시오."~ */ DO ~Polymorph(Vhailor)
SetAnimState("Vhail",ANIM_MIMEATTACK1)
~ GOTO 22
  IF ~~ THEN REPLY #56088 /* ~갑옷을 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 17
  IF ~~ THEN REPLY #56089 /* ~도끼를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 18
  IF ~~ THEN REPLY #56090 /* ~투구를 살펴본다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 19
  IF ~~ THEN REPLY #56091 /* ~갑옷을 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #56092 /* ~투구 아래서 눈을 멀게 할 정도로 밝은 빨간색 빛이 발산된다. 당신은 빛을 막으려고 손으로 당신 눈을 가린다. 당신이 손을 치우자 투구의 그림자 속에서 빛나는 두 개의 깜부기불 같은 눈이 보인다.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 17.3 18.3 19.3
  SAY #56093 /* ~당신이 손을 내밀자 투구 아래서 눈을 멀게 할 정도로 밝은 빨간색 빛이 발산된다. 당신은 빛을 막으려고 손으로 당신 눈을 가린다. 당신이 손을 치우자 투구의 그림자 속에서 빛나는 두 개의 깜부기불 같은 눈이 보인다.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0
  SAY #56094 /* ~*나는 깨어났다.*~ [VHA002] */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #56095 /* ~목소리는 마치 유령의 목소리처럼 공허하다, 그리고 갑옷 안에서 울려 퍼진다. 그건 인간의 목소리가 아니다... 그건 차라리 어떤 *에너지*처럼 들린다. 그것은 살아 있는, 또는 살았던 적이 있는 어떤 생명체의 목소리와도 다르다.~ */
  IF ~~ THEN REPLY #56096 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Vhailor","GLOBAL",1)
~ JOURNAL #56097 /* ~나는 커스트 감옥의 최하층에서 한 벌의 '유령' 갑옷을 만났다... 그것은 그 곳에 꽤 오래 있었던 것 같다. 그것의 이름은 베일로이며, 그것은 자신이 정의의 종인 머시킬러라고 한다. ~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #56098 /* ~"나는 베일로다."~ */
  IF ~  NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56099 /* ~"당신은 대체 *어떤* 존재요?"~ */ GOTO 27
  IF ~  NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56100 /* ~"당신은 대체 *어떤* 존재요?"~ */ GOTO 29
  IF ~  !NearbyDialog("Dmorte")
NearbyDialog("Dannah")
~ THEN REPLY #56101 /* ~"당신은 대체 *어떤* 존재요?"~ */ GOTO 28
  IF ~  !NearbyDialog("Dmorte")
!NearbyDialog("Dannah")
~ THEN REPLY #56102 /* ~"당신은 대체 *어떤* 존재요?"~ */ GOTO 30
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #56103 /* ~"나는 머시킬러다."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 31
END

IF ~~ THEN BEGIN 28 // from: 26.2
  SAY #56104 /* ~"나는 머시킬러다."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 32
END

IF ~~ THEN BEGIN 29 // from: 26.1
  SAY #56105 /* ~"나는 머시킬러다."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 26.3
  SAY #56106 /* ~"나는 머시킬러다."~ */
  IF ~~ THEN REPLY #56107 /* ~"머시킬러?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 31 // from: 27.0
  SAY #56108 /* ~베일로가 '머시킬러'란 말을 하자, 안나와 모트의 몸이 굳는다.~ */
  IF ~~ THEN REPLY #56109 /* ~"머시킬러?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 28.0
  SAY #56110 /* ~베일로가 '머시킬러'란 말을 하자, 안나가 조용한 쉿 소리로 경고한다. ~ */
  IF ~~ THEN REPLY #56111 /* ~"머시킬러?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.0
  SAY #56112 /* ~베일로가 '머시킬러'란 말을 하자, 당신 옆에서 모트가 빳빳해진다.~ */
  IF ~~ THEN REPLY #56113 /* ~"머시킬러?"~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 30.0 31.0 32.0 33.0 35.0
  SAY #56114 /* ~*머시킬러는 정의를 섬긴다. 정의는 악을 말살한다. 모든 것이 정화되면 다원 우주는 완벽의 경지에 도달한다.~ */
  IF ~~ THEN REPLY #56115 /* ~"왜 당신들은 "머시킬러"라 불리는 거요?"~ */ GOTO 36
  IF ~~ THEN REPLY #56116 /* ~"당신은 어떻게 정의를 위해 일하오?"~ */ GOTO 83
  IF ~~ THEN REPLY #56117 /* ~"당신에게 물어볼 것이 좀 있소, 베일로..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56118 /* ~"알겠소... 베일로. 우린 여기서 헤어져야겠소."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56119 /* ~"관두시오, 벵이로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 10.0 34.2 36.3 37.0 38.2 39.1 40.1 41.1 42.1 43.1 44.1 45.2 48.1 49.1 50.1 51.2 52.0 53.1 55.1 56.1 57.1 58.1 59.0 60.1 61.2 65.1 68.0 69.0 70.1 71.2 72.1 73.2 74.0 75.2 76.1 77.2 83.2 84.2 88.1 89.2 90.10 91.10 92.1 93.2 105.2 106.2 107.4 108.16 109.1 115.1 116.2 117.2 118.1 119.1 120.2 121.2 122.2 123.2 126.3 127.2 146.0 151.0
  SAY #56120 /* ~*질문하라. 대답하겠다.*~ */
  IF ~~ THEN REPLY #56121 /* ~"머시킬러란 무엇이오?"~ */ GOTO 34
  IF ~~ THEN REPLY #56122 /* ~"당신은 자신이 정의를 위해 일한다고 했소, 베일로. 어떻게?"~ */ GOTO 83
  IF ~  Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56123 /* ~"당신은 얼마나 오랫동안 갇혀 있었소?"~ */ GOTO 55
  IF ~  !Global("Current_Area","GLOBAL",702)
~ THEN REPLY #56124 /* ~"당신은 커스트 지하에 얼마나 오랫동안 갇혀 있었소?"~ */ GOTO 55
  IF ~~ THEN REPLY #56125 /* ~"당신은 어떻게 죽었소?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 70
  IF ~  Global("Vhailor_Sight","GLOBAL",1)
~ THEN REPLY #56126 /* ~"당신은 자신이 다른 이들의 가슴을 들여다 볼 수 있다고 했소, 베일로. 어떻게?"~ */ GOTO 90
  IF ~  Class(Protagonist,FIGHTER)
InParty("Vhail")
Global("Vhailor_Teach","GLOBAL",0)
~ THEN REPLY #56127 /* ~"내게 도끼를 쓰는 법을 가르칠 수 있겠소, 베일로?"~ */ GOTO 60
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56128 /* ~거짓말:"나도 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56129 /* ~거짓말:"나도 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
~ GOTO 80
  IF ~  !InParty("Vhail")
GlobalGT("Law","GLOBAL",14)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56130 /* ~진실:"나도 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 78
  IF ~  !InParty("Vhail")
GlobalLT("Law","GLOBAL",15)
Global("Vhailor_Join","GLOBAL",0)
~ THEN REPLY #56131 /* ~진실:"나도 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
~ GOTO 80
  IF ~  !InParty("Vhail")
~ THEN REPLY #56132 /* ~"나와 함께 여행을 하겠소? 우리에겐 당신 도움이 필요할지도 모르오."~ */ GOTO 82
  IF ~  !InParty("Vhail")
~ THEN REPLY #56133 /* ~"관두시오, 베일로. 우린 여기서 헤어져야겠소."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56134 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #56135 /* ~*자비(머시)는 약자들의 방패다. 자비는 약점이다. 자비는 죽음이다. 죄없는 사람은 없다. 머시킬러는 자비와 그 창녀들이 창궐할 때마다 그들을 죽인다.*~ */
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56136 /* ~진실: "나와 같은 신념을 지닌 사람을 만난것 같소. 자비는 정의를 타락시키오. 자비는 약점이오." ~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALEvil_Vhailor_1","GLOBALGood",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56137 /* ~거짓말: "나와 같은 신념을 지닌 사람을 만난것 같소. 자비는 정의를 타락시키오. 자비는 약점이오." ~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_1","GLOBALLaw",-1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",2)
~ GOTO 37
  IF ~  Global("Vhailor_Mercy_Answer","GLOBAL",0)
~ THEN REPLY #56138 /* ~진실: "찬성할 수 없소. 자비는 힘이오, 그리고 정의가 불공정 할 때도 있는 법이오, 특히 그것을 너무 극단적으로 실행하려 할 때는."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Vhailor_1","GLOBALGood",1)
SetGlobal("Vhailor_Mercy_Answer","GLOBAL",3)
~ GOTO 38
  IF ~~ THEN REPLY #56139 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56140 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56141 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0 36.1
  SAY #56142 /* ~*형벌은 영혼들을 부수어 정의를 위해 봉사할 자격이 있는 자들로 재생시킨다.*~ */
  IF ~~ THEN REPLY #56143 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56144 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56145 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.2
  SAY #56146 /* ~*자비는 정의의 심장을 파먹는다. 산 자 중에서 죄없는 사람은 없다.*~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56147 /* ~"무엇이 정의를 *규정*하는 거요, 베일로? 그건 대체 어떤 것이오?"~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56148 /* ~"당신 스스로 한 말에 의하면 당신도 결백하지는 않소. 그럼 *당신도* 처벌되어야 하는 거요?"~ */ GOTO 48
  IF ~~ THEN REPLY #56149 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56150 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56151 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #56152 /* ~*정의는 법에 의해 규정된다.*~ */
  IF ~~ THEN REPLY #56153 /* ~"그리고 법이란 무엇이오, 베일로?"~ */ GOTO 40
  IF ~~ THEN REPLY #56154 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56155 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56156 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #56157 /* ~*법은 정의를 실현하기 위한 도구다.*~ */
  IF ~~ THEN REPLY #56158 /* ~"그리고 법은 무엇이 만드오. 베일로?"~ */ GOTO 41
  IF ~~ THEN REPLY #56159 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56160 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56161 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #56162 /* ~*법은 정의에 의해 규정된다.*~ */
  IF ~~ THEN REPLY #56163 /* ~"그건 언제까지나 빙빙 도는 논쟁이오, 베일로. 그건 무의미하오. 당신은 정의는 법에 의해 규정되나 그 법을 규정하는 것은 정의라고 하고 있소."~ */ GOTO 42
  IF ~~ THEN REPLY #56164 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56165 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56166 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #56167 /* ~*법은 정의에 의해 규정된다.*~ */
  IF ~~ THEN REPLY #56168 /* ~"법을 만드는 것은 살아 있는 남자들과 여자들이오, 베일로. 그들이 만드는 법은 과연 공정하오?"~ */ GOTO 43
  IF ~~ THEN REPLY #56169 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56170 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56171 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #56172 /* ~*법은 공정하다.*~ */
  IF ~~ THEN REPLY #56173 /* ~"하지만 만약 이러한 법들이 *당신이* 말한 것처럼 결백할 수 없는 살아 있는 남자들과 여자들에 의해 만들어졌다면, 법들도 그들 손에 의하여 이미 더렵혀진 것이 아니겠소?"~ */ GOTO 44
  IF ~~ THEN REPLY #56174 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56175 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56176 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #56177 /* ~*산 자 중에서 죄없는 사람은 없다. 하지만 법은 피와 살의 한계를 초월한다. 불완전한 것으로부터 완벽한 것이 탄생할 수도 있다. 불공정한 법도 악을 씻어냄으로서 순수하게 만들 수 있다."~ */
  IF ~~ THEN REPLY #56178 /* ~"그럼 당신은 법이 항상 완벽하지는 않다는 것을 인정하는 거요. 그런데 만약 바로 이러한 법들이 정의를 규정한다면. *정의* 또한 불완전한 것이 아니겠소?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 45
  IF ~~ THEN REPLY #56179 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56180 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56181 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #56182 /* ~베일로는 아무 말도 하지 않는다.~ */
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56183 /* ~"베일로... 정의란 없소. 당신이 정의의 이름으로 행하는 행위는 아무런 의미도 없소. 당신의 삶은 의미가 없소."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ JOURNAL #56188 /* ~나는 베일로에게 만약 그의 믿음 대로 정의와 법이 서로 얽힌 밀접한 관계라면 한 쪽이 불안전한 것은 다른 한 쪽도 불완전하다는 것을 의미하고 , 따라서 그의 정의를 추구하는 행위는 무의미하다고 설득하였다. 그가 더 영리했더라면 아마 보다 효율적으로 나와 논쟁을 벌일 수 있었을 것이다. 하지만 그를 안식을 취하지 못하는 혼령으로 만든 열정이나 집념이 그 무엇이었던 간에 그것은 그가 자신의 편협한 주장 이외의 것들을 볼 수 있는 능력을 크게 손상시켰다. 내가 한 말이 마침내 그에게 크 충격을 안겨주자, 그의 회의와 망설임이 그를 죽여  유령으로서의 존재를 유지할 수 없도록 만들었다. ~ */ GOTO 46
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56184 /* ~"베일로... 정의란 없소. 당신이 정의의 이름으로 행하는 행위는 아무런 의미도 없소. 당신의 삶은 의미가 없소."~ */ GOTO 47
  IF ~~ THEN REPLY #56185 /* ~"관두시오, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56186 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56187 /* ~"당신과 이 문제에 대해 더 이상 논쟁을 벌이지 않겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #56189 /* ~당신의 말은 메아리친다, 그리고 당신이 얘기를 할 때마다 더욱 그 힘은 강해진다. 그러자 베일로의 눈이 깜박이다가 점차 그 광채를 잃는다. 그의 갑옷은 붕괴하고 철판들과 도끼가 *쿵* 소리를 내며 땅에 떨어진다. 동시에 바닥으로부터는 철판들과 도끼가 급격하게 노화되고 부식됨에 따라 나오는 재와 녹들 때문에 먼지 구름이 인다, 그리고 그것들은 마침내 당신 눈 앞에서 붕괴되어 버린다. 남은 것이라고는 움푹 배인 철판 몇 조각 뿐으로, 이것들은 베일로가 존재했었다는 것을 알리는 유일한 묘비이다. ~ */
  IF ~~ THEN REPLY #56190 /* ~"안녕히 계시오, 베일로."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #56191 /* ~베일로의 눈 속의 불꽃이 깜박인다, 그리고는 이내 이글거린다. *너의 말은 내게 아무 의미도 없다. 너는 나를 정의의 길로부터 탈선하게 하려 하고 있다. 그는 위협적으로 도끼를 치켜 든다. *나는 너를 처벌할 것이다.*~ */
  IF ~~ THEN REPLY #56192 /* ~"베일로, 기다리시오! 이러지 마시오!"~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #56193 /* ~"좋소, 베일로. 당신이 원하는 것이 싸움이라면..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 38.1
  SAY #56194 /* ~*나는 정의를 섬긴다. 만약 내가 내 임무에 실패한다면 나 역시 처벌받아야 한다.*~ */
  IF ~~ THEN REPLY #56195 /* ~"그럼 만약 당신이 단 한명의 범죄자라도 처벌을 피해 도망치는 것을 허용했다면, 당신 자신도 처벌되어야 하는 것이오?"~ */ GOTO 49
  IF ~~ THEN REPLY #56196 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56197 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56198 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #56199 /* ~*그렇다.*~ */
  IF ~~ THEN REPLY #56200 /* ~"당신이 커스트 지하에 감금되어 있는 동안 다원 우주 전역에 걸쳐 수천... 수십만... 아니 아마도 수십억의 범죄자들이 태어나서 자신들의 삶을 살다가 죽었소. 그러나 당신은 그들을 처벌할 기회를 갖지 못했소. 정말 당신은 다원 우주에 있는 모든 생명체에게 정의의 심판을 내릴 수가 있는 거요?"~ */ GOTO 50
  IF ~~ THEN REPLY #56201 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56202 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56203 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #56204 /* ~*그럼 나는 그들을 죽음 너머로 추적해 처벌할 것이다.*~ */
  IF ~~ THEN REPLY #56205 /* ~"그러면 당신은 더 이상 살아 있는 자를 처벌할 수가 없소. 어느 쪽이오, 베일로?"~ */ GOTO 51
  IF ~~ THEN REPLY #56206 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56207 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56208 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #56209 /* ~*그럼 나는 산 자들의 세계에서 정의를 추구할 것이다.*~ */
  IF ~  CheckStatLT(Protagonist,21,CHR)
~ THEN REPLY #56210 /* ~"하지만 살아 있는 범죄자들 보다는 죽은 범죄자들의 수가 더 많소... 그리고 살아 있는 자는 언젠가는 죽게 되오, 안 그렇소? 만약 당신이 죽는다면 당신은 그들 모두를 처벌할 수 있게 될 거요."~ */ GOTO 52
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56211 /* ~"하지만 살아 있는 범죄자들 보다는 죽은 범죄자들의 수가 더 많소... 그리고 살아 있는 자는 언젠가는 죽게 되오, 안 그렇소? 만약 당신이 죽는다면 당신은 그들 모두를 처벌할 수 있게 될 거요."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 53
  IF ~~ THEN REPLY #56212 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56213 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56214 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #56217 /* ~*너의 말들은 공허하다. 그들에게는 신념이 없다. 그들로부터는 거짓과 속임수의 냄새가 난다. 나는 네 말을 더 이상 듣지 않겠다.~ */
  IF ~~ THEN REPLY #56218 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56219 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56220 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1
  SAY #56221 /* ~베일로는 투구 아래로 눈을 번득이며 조용히 서 있다. ~ */
  IF ~~ THEN REPLY #56222 /* ~"그들을 죽음을 지나서까지 추적하시오, 베일로. 언젠가는 나도 그 곳에서 당신을 보게 될지도 모르오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(90000)
~ GOTO 54
  IF ~~ THEN REPLY #56223 /* ~"내가 한 말은 잊으시오, 베일로. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56224 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56225 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #56226 /* ~당신의 말은 메아리친다, 그리고 당신이 얘기를 할 때마다 더욱 그 힘은 강해진다. 그러자 베일로의 눈이 깜박이다가 점차 그 광채를 잃는다. 그의 갑옷은 붕괴하고 철판들과 도끼가 *쿵* 소리를 내며 땅에 떨어진다. 동시에 바닥으로부터는 철판들과 도끼가 급격하게 노화되고 부식됨에 따라 나오는 재와 녹들 때문에 먼지 구름이 인다, 그리고 그것들은 마침내 당신 눈 앞에서 붕괴되어 버린다. 남은 것이라고는 움푹 배인 철판 몇 조각 뿐으로, 이것들은 베일로가 존재했었다는 것을 알리는 유일한 묘비이다. ~ */
  IF ~~ THEN REPLY #56227 /* ~"편히 잠드시오, 베일로."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ JOURNAL #56228 /* ~나는 베일로에게 죄를 지은 자를 모두 처벌하려면, 그들을 처벌할 수 있도록 그도 죽어야 한다고 설득하였다. 내가 한 말은 그에게 엄청난 충격을 주었다 - 어찌나 충격이 심했던지 그는 내 앞에서 문자 그대로 두 번째 죽음을 맞이하였고, 그가 '유령으로서의 삶을 포기함'에 따라 그의 도끼와 갑옷도 소멸하였다.~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 35.2 35.3
  SAY #56229 /* ~*내가 감금된 동안 시간이 흘러갔다. 시간은 내게 아무런 의미가 없다. 오직 정의가 있을 뿐이다.*~ */
  IF ~~ THEN REPLY #56230 /* ~"당신은 자신이 *왜* 커스트로 왔는지 아시오?"~ */ GOTO 56
  IF ~~ THEN REPLY #56231 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56232 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56233 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #56234 /* ~*여행 중에 많은 것을 잃어버렸다. 나는 배신자들을 잡으러 여행하였다. 그들은 날 발견하고는 감금했다. 정의에 대한 배신 행위다.*~ */
  IF ~~ THEN REPLY #56235 /* ~"무슨 배신자들 말이오?"~ */ GOTO 57
  IF ~~ THEN REPLY #56236 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56237 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56238 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #56239 /* ~*커스트는 배신자들의 도시이다. 그 곳은 정의에게 도전하는 도시이다. 나는 그 곳을 정화할 것이다."~ */
  IF ~~ THEN REPLY #56240 /* ~"당신은 어떻게 해서 갇히게 되었소?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #56241 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56242 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56243 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #56244 /* ~베일로는 잠시 침묵한다. 그의 깜부기불 같은 눈이 번득인다.~ */
  IF ~~ THEN REPLY #56245 /* ~"베일로? 당신은 그들이 당신을 어떻게 가두었는지 기억하시오?"~ */ GOTO 59
  IF ~~ THEN REPLY #56246 /* ~"내가 한 말은 잊으시오, 베일로. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56247 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56248 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #56249 /* ~*나는 알지 못한다.*~ */
  IF ~~ THEN REPLY #56250 /* ~"알겠소. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56251 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56252 /* ~"그럼 관두시오. 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 35.6
  SAY #56253 /* ~*내가 너에게 가르칠 건 없다. 무기를 사용하는 것은 손이 아니라 의지이다.*~ */
  IF ~~ THEN REPLY #56254 /* ~"무슨 뜻이오?"~ */ GOTO 61
  IF ~~ THEN REPLY #56255 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~~ THEN REPLY #56256 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #56257 /* ~*의지가 강하면 칼 역시 강해진다. 이유가 정당하면 칼은 적을 정확히 내려친다. 그러나 자비가 마음을 침식하면 의심, 주저, 그리고 동정이 뒤따른다. 그러면 칼은 먼지나 마찬가지이다.*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56258 /* ~"내 의지는 강인하오, 베일로. 그리고 내 신념이 내게 힘을 주오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 62
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56259 /* ~"내 의지는 강인하오, 베일로. 그리고 내 신념이 내게 힘을 주오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 69
  IF ~~ THEN REPLY #56260 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~~ THEN REPLY #56261 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #56262 /* ~베일로의 깜부기불 같은 눈이 당신을 노려본다. 무거운 정적이 감돈다.~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #56263 /* ~*너의 의지는 강하다. 너의 자제력 역시 강하다. 너의 의지는 바로 법의 의지이다.*~ */
  IF ~~ THEN REPLY #56264 /* ~"그럼 어떻게-?"~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #56265 /* ~*이것을 알라: 다원 우주의 그 누구도 정의의 심판을 피할 수는 없다. 그것은 대군을 전멸시키고, 신들의 옥좌조차 부술 수 있다. 정의를 위해 일하는 자에게는 정의가 자신의 힘을 빌려준다.*~ */
  IF ~~ THEN REPLY #56266 /* ~"알겠소."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #56267 /* ~*너는 아직 보지 못한다. 아직은. 네 눈을 내게 열어라, 그러면 다원 우주를 정의의 눈으로 볼 수 있게 될 것이다.*~ */
  IF ~~ THEN REPLY #56268 /* ~"좋소... 당신이 보는 것을 내게도 보여주시오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 66
  IF ~~ THEN REPLY #56269 /* ~"아니오, 베일로... 나는 보고 싶지 않소. 대신 질문한 것들이 있소..."~ */ GOTO 35
  IF ~~ THEN REPLY #56270 /* ~"나는 당신이 내게 보여주고자 하는 것을 볼 준비기 되어 있지 않은 것 같소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #56271 /* ~당신은 베일로의 두 눈을 쳐다본다, 그러자 한 쌍의 불꽃과도 같은 그의 두 눈이 확 타오른다...~ */
  IF ~  GlobalLT("Law","GLOBAL",25)
~ THEN REPLY #56272 /* ~"뭐..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",1)
PermanentStatChange(Protagonist,STR,RAISE,1)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,1)
GiveExperience(Protagonist,90000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",24)
GlobalLT("Law","GLOBAL",35)
~ THEN REPLY #56273 /* ~"뭐..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",2)
PermanentStatChange(Protagonist,STR,RAISE,2)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,2)
GiveExperience(Protagonist,120000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
  IF ~  GlobalGT("Law","GLOBAL",34)
~ THEN REPLY #56274 /* ~"뭐..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Vhailor_Teach","GLOBAL",3)
PermanentStatChange(Protagonist,STR,RAISE,3)
PermanentStatChange(Protagonist,DAMAGEBONUS,RAISE,3)
GiveExperience(Protagonist,150000)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0 66.1 66.2
  SAY #56275 /* ~섬광은 당신의 눈을 잠시 멀게 한다. 당신이 다시 두 눈을 뜨자 모든 것이 더 날카로워 보인다. 왠지 당신은 자신이 더 예리해졌다는 생각이 든다, 보기만 해도 물체를 둘로 쪼갤 수 있을 정도로.~ */
  IF ~~ THEN REPLY #56276 /* ~"베일로... 이건...?"~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #56277 /* ~*모든 것을 보라. 그들의 힘을 보라. 그들의 약점을 보라. 모든 것을 심판하라. 만약 자비가 그들의 심장울 침식했다면 그들은 정의 앞에 쓰러질 것이다. 너의 의지가 너에게 권한을 준다. ~ */
  IF ~~ THEN REPLY #56278 /* ~"알겠소... 그 밖에도... 당신에게 질문할 것들이 있소."~ */ GOTO 35
  IF ~~ THEN REPLY #56279 /* ~"이제... 알겠소. 그만... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 61.1
  SAY #56280 /* ~*너의 의지는 강하다. 그러나 너에겐 자제력이 없다. 너의 의지는 너의 의지지 법의 의지가 아니다. 너는 내가 보여주는 것을 볼 수도 이해할 수도 없다.*~ */
  IF ~~ THEN REPLY #56281 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~~ THEN REPLY #56282 /* ~"그럼 관두시오. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 35.4
  SAY #56283 /* ~베일로의 깜부기불 같은 눈이 당신을 노려본다. 무거운 정적이 감돈다.~ */
  IF ~~ THEN REPLY #56284 /* ~"베일로? 당신은 어떻게 죽었소?"~ */ GOTO 71
  IF ~~ THEN REPLY #56285 /* ~"관두시오, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56286 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56287 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #56288 /* ~*나는 살아 있다.*~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #56289 /* ~"말하자면... 당신의 물리적인 육신은 어떻게 되었소?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #56290 /* ~"말하자면... 당신의 물리적인 육신은 어떻게 되었소?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 72
  IF ~~ THEN REPLY #56291 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56292 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56293 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 71.1
  SAY #56294 /* ~당신은 말을 하려다가 뒷머리에서는 뭔가가 기어가는 듯한 기묘한 감각을 느낀다. 그리고 갑자기 당신은 베일로가 자신이 죽었다는 사실을 깨닫고 있지 못하다는 사실을 안다. 왠지 이 사실을 그에게 알리는 것은 매우 위험할 것 같다.~ */
  IF ~~ THEN REPLY #56295 /* ~"베일로? 당신의 물리적인 육신은 어떻게 되었소?"~ */ GOTO 73
  IF ~~ THEN REPLY #56296 /* ~"관두시오, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56297 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56298 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 71.0 72.0
  SAY #56299 /* ~*나는 살아 있다. 벌을 받아야 할 죄인들이 있는 한 나는 살 것이다. ~ */
  IF ~~ THEN REPLY #56300 /* ~"베일로, 당신은 *정말로* 살아 있는 것이 아니오... 당신은 혼령, 망령 - 즉 유령이 된 거요."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 74
  IF ~  CheckStatGT(Protagonist,20,CHR)
~ THEN REPLY #56301 /* ~"살아 있다는 걸 느낄 수가 있소, 베일로? 장갑을 벗고 당신 눈으로 피부를 볼 수 있는지 보시오. 당신 팔을 도끼로 살짝 건드려 보시오. 피가 나오? 그리고 당신의 두 눈... 그것들은 불처럼 타오르고 있으나 눈물을 흘릴 수는 있소? 당신의 혼백은 아직도 남아 있소, 베일로, 하지만 당신은 이미 산 사람이 아니오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 75
  IF ~~ THEN REPLY #56302 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56303 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56304 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #56305 /* ~무겁고 위험한 적막감이 감돈다; 베일로는 대답하지 않는다.~ */
  IF ~~ THEN REPLY #56306 /* ~"관두시오, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56307 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56308 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 73.1
  SAY #56309 /* ~잠시... 잠시 베일로의 눈이 깜박인다.~ */
  IF ~  Global("Memory_Vhailor","GLOBAL",0)
~ THEN REPLY #56310 /* ~"갑옷을 벗은 당신 모습이 어떻게 생겼는지 기억이나 하시오, 베일로? 한때 당신은 살과 피로 이루어진 살아 있는 인간이었으며, 또한 정의의 탐구자이기도 했소. 하지만 그 사나이는 죽었소. 고통에 신음하는 그의 빈 껍데기만 남았을 뿐이오."~ */ GOTO 76
  IF ~  Global("Memory_Vhailor","GLOBAL",1)
~ THEN REPLY #56311 /* ~"갑옷을 벗은 당신 모습이 어떻게 생겼는지 기억이나 하시오, 베일로? 나는 기억하오. 한때 당신은 살과 피로 이루어진 살아 있는 인간이었소, 검은 피부와 이글거리는 눈을 지닌. 당신 몸에는 수많은 흉터가 있었고, 당신의 이름으로 많은 정의의 심판을 내렸소. 하지만 그 사나이는 죽었소. 고통에 신음하는 그의 빈 껍데기만 남았을 뿐이오."~ */ GOTO 76
  IF ~~ THEN REPLY #56312 /* ~"내가 한 말은 잊으시오, 베일로. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56313 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56314 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #56315 /* ~*나는... 기억한다.* 베일로의 눈이 전보다 더 불규칙하게 깜박인다. 그의 도끼가 그의 옆으로 떨어진다. *기억은... 잘 생각나지 않는다. 죽음이 있었다... 그리고 나는 변했다. 나는 더 이상 그가 아니다. 나는 무엇인가?*~ */
  IF ~~ THEN REPLY #56316 /* ~"나도 모르겠소, 베일로. 베일로였던 사나이는 죽었소... 이젠 당신은 다른 존재요."~ */ GOTO 77
  IF ~~ THEN REPLY #56317 /* ~"내가 한 말은 잊으시오, 베일로. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56318 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56319 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #56320 /* ~*정의는 내 대의였다. 육신... 육신은 남아 있을 수 없었다. 하지만 정의는 실현되어야만 했다. 육신은 죽었으나 의지는 포기할 수 없었다... 벌받아야 할 자들이 더 있었다. 늘 더 있다. 정의는... 내가 죽으면 실현될 수 없었다...*~ */
  IF ~~ THEN REPLY #56321 /* ~"하지만 당신은 죽었소, 베일로, 그것도 오래 전에. 그리고 이제는 집착을 버릴 때요."~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56677 /* ~나는 베일로에게 그는 이미 죽었다고 설득했다. 내가 한 말은 그에게 엄청난 충격을 주었다 - 어찌나 충격이 심했던지 그는 내 앞에서 문자 그대로 두 번째 죽음을 맞이하였고, 그가 '유령으로서의 삶을 포기함'에 따라 그의 도끼와 갑옷도 소멸하였다.~ */ GOTO 152
  IF ~~ THEN REPLY #56322 /* ~"그렇다면 당신은 자신이 살아 있다고 생각함으로서 스스로를 기만하는 것에 불과하오. 당신은 죽었소, 베일로. 정의의 종이 스스로에게 거짓말을 했을 경우 어떤 벌을 받아야 하오?~ */ DO ~SetAnimState("Vhail",ANIM_MIMEDIE)
AddexperienceParty(12000)
~ JOURNAL #56326 /* ~나는 베일로에게 그는 이미 죽었으며, 따라서 정의를 위한 성전을 포기하고 안식을 취하라고 설득했다. 내가 한 말은 그에게 엄청난 충격을 주었다 - 어찌나 충격이 심했던지 그는 내 앞에서 문자 그대로 두 번째 죽음을 맞이하였고, 그가 '유령으로서의 삶을 포기함'에 따라 그의 도끼와 갑옷도 소멸하였다.~ */ GOTO 152
  IF ~~ THEN REPLY #56323 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56324 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56325 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 35.7 35.9 82.0 82.2 82.4
  SAY #56327 /* ~베일로의 깜부기불 같은 눈이 당신을 노려본다. 무거운 정적이 감돈다.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #56328 /* ~*나는 너와 함께 여행을 하겠다. 우리는 함께 정의를 추구할 것이다. 우리는 자비를 찾아 그것을 죽일 것이다.*~ */
  IF ~~ THEN REPLY #56329 /* ~"알겠소."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",1)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 80 // from: 35.8 35.10 82.1 82.3 82.5
  SAY #56330 /* ~베일로의 깜부기불 같은 눈이 당신을 노려본다. 무거운 정적이 감돈다.~ */
  IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #56331 /* ~*나는 너와 함께 여행을 하겠다. 너의 의지는 견고하지 못하다., 그러나 내가 네게 정의에 대해 가르치겠다. 내가 자비를 죽이는 법에 대해 가르치겠다. *~ */
  IF ~~ THEN REPLY #56332 /* ~"알겠소."~ */ DO ~SetGlobal("Vhailor_Join","GLOBAL",2)
AddexperienceParty(90000)
ChangeAIScript("pcvhail",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 82 // from: 8.1 35.11
  SAY #56333 /* ~*너의 마음은 정의를 추구하는가? 아니면 네 여행에는 목적이 없는가?"*~ */
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56334 /* ~진실: "나는 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56335 /* ~진실: "나는 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_2","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Vhailor_2","GLOBALGood",1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56336 /* ~거짓말: "나는 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56337 /* ~거짓말: "나는 정의를 추구하오, 베일로. 나와 합류하겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_2","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
  IF ~  GlobalGT("Law","GLOBAL",14)
~ THEN REPLY #56339 /* ~"나는 내 자신에 대해 알고자 하오, 베일로, 그리고 만약 그것을 앎에 정의가 있다면, 그것 또한 찾고자 하오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 78
  IF ~  GlobalLT("Law","GLOBAL",15)
~ THEN REPLY #56340 /* ~"나는 내 자신에 대해 알고자 하오, 베일로, 그리고 만약 그것을 앎에 정의가 있다면, 그것 또한 찾고자 하오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 80
END

IF ~~ THEN BEGIN 83 // from: 34.1 35.1
  SAY #56338 /* ~*정의는 머시킬러를 그녀의 눈으로 이용한다. 정의는 머시킬러를 통해 그녀의 의지를 실현한다. 형이 내려지면 그녀는 우리에게 힘을 빌려준다.*~ */
  IF ~~ THEN REPLY #56347 /* ~"그리고 당신은 언제 정의를 시행해야 할지 어떻게 아오?"~ */ GOTO 89
  IF ~~ THEN REPLY #56348 /* ~"힘? 어떻게?"~ */ GOTO 84
  IF ~~ THEN REPLY #56349 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56350 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56351 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.1 89.1
  SAY #56341 /* ~*정의의 힘은 불의 때문에 발생한 피해의 크기에 비례한다.*~ */
  IF ~~ THEN REPLY #56342 /* ~"그럼... 불의가 더 크고 범죄가 더 심각할 수록 '정의'가 당신에게 더 큰 힘을 빌려준단 말이오?"~ */ GOTO 85
  IF ~~ THEN REPLY #56343 /* ~"그리고 당신은 언제 정의를 시행해야 할지 어떻게 아오?"~ */ GOTO 89
  IF ~~ THEN REPLY #56344 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56345 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56346 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #56352 /* ~*불의의 힘이 강대하면 정의는 내게 그것을 시정하는 데 필요한 힘을 빌려줄 것이다. 아무도 그녀에게 대적할 수는 없다. 그녀는 어떠한 벽도 깨트리고, 어떤 방패도 부수며, 어떤 마법도 해제하고, 그녀의 종에게 형을 내릴 힘을 부여한다.*~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ JOURNAL #56353 /* ~베일로는 단순히 안식을 취하지 못하고 있는 혼령이 아니다. 그는 정의의 화신인 것 같다. 그는 정의가 그에게 불의를 시정할 힘을 준다고 했다. 불의가 크면 클수록 이를 시정하기 위해 그가 얻든 힘도 따라서 커진다. 베일로는 정의가 그에게 군대를 섬멸시키거나 신들을 그들의 옥좌에서 물리칠 수 있을 정도의 힘조차 줄 수 있다고 주장한다. 어떤 이유에선지 그의 말은 내 안에 있는 희미한 기억을 되살렸다. 난 내가 그 말을 이전에 들은 적이 있다는 것을 안다, 그리고 그 말이 절대 불가능한 일처럼 들릴지도 모르나, 나는 그것이 진실이라고 알고 있다. ~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #56354 /* ~베일로가 얘기를 할 때 당신은 전신을 뭔가가 기어서 지나가는 듯한 기묘한 감각을 느낀다 - 그 감각은 얼마나 강렬한지 온몸이 떨릴 정도이다. 당신은 전에 그 말을 들은 적이 있다, 그리고 당신은 그 말이 *사실*이라는 것을 알고 있다. ~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #56355 /* ~*이것을 알라: 다원 우주의 그 누구도 정의의 심판을 피할 수는 없다. 그것은 대군을 전멸시키고, 신들의 옥좌조차 부술 수 있다. 정의를 배반하는 자들에게 있어서는 내가 그들의 운명이란 것을 알라. 그리고 그 운명은 처형자의 도끼와 함께 찾아온다.*~ */
  IF ~~ THEN REPLY #56356 /* ~"알겠소."~ */ DO ~SetGlobal("Vhailor_Kill_Nameless","GLOBAL",1)
~ GOTO 88
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #56357 /* ~*아니, 너는 보지 못한다. * 베일로의 두 눈이 투구의 그림자 속에서 두 개의 횃불처럼 타오른다. "결코 그럴 일이 없기를 기도하라.*~ */
  IF ~~ THEN REPLY #56358 /* ~"그리고 당신은 언제 정의를 시행해야 할지 어떻게 아오?"~ */ GOTO 89
  IF ~~ THEN REPLY #56359 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56360 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56361 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 83.0 84.1 88.0
  SAY #56362 /* ~*정의는 내 눈을 통해서 본다. 머시킬러의 눈은 마음 속의 약점의 틈새와 자비의 상처를 볼 수가 있다. 그리고 나는 내가 본 것을 통해 그들의 공포와 유죄 여부를 판단할 수 있다. ~ */
  IF ~~ THEN REPLY #56363 /* ~"다른 이들을 쳐다볼 때 무엇이 보이오?"~ */ DO ~SetGlobal("Vhailor_Sight","GLOBAL",1)
~ GOTO 90
  IF ~~ THEN REPLY #56364 /* ~"당신이 정의가 당신에게 그녀의 '힘'을 빌려준다고 한 건 구체적으로 어떤 뜻이오?"~ */ GOTO 84
  IF ~~ THEN REPLY #56365 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56366 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56367 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 35.5 89.0
  SAY #56368 /* ~*내가 보는 모든 것은 심판된다. 나는 다른 자들의 정신과 마음을 읽음으로서 그들을 알 수가 있다. 정의는 내 눈을 통해서 본다.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56369 /* ~"모트를 보면 무엇이 보이오?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56370 /* ~"안나를 보면 무엇이 보이오?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56371 /* ~"다콘을 보면 무엇이 보이오?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56372 /* ~"훨-후럼-그레이스를 보면 무엇이 보이오?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56373 /* ~"훨-후럼-그레이스를 보면 무엇이 보이오?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56374 /* ~"노돔을 보면 무엇이 보이오?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56375 /* ~"이그너스를 보면 무엇이 보이오?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56376 /* ~"당신 자신을 보면 무엇이 보이오?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56377 /* ~"당신 자신을 보면 무엇이 보이오?"~ */ GOTO 120
  IF ~~ THEN REPLY #56378 /* ~"나를 보면 무엇이 보이오?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56379 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56380 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56381 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 92.0 93.1 105.1 106.1 107.0 108.15 109.0 115.0 116.1 117.1 118.0 119.0 120.1 121.1 122.1 123.1 126.2 127.1
  SAY #56382 /* ~*질문하라.*~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #56383 /* ~"모트를 보면 무엇이 보이오?"~ */ GOTO 92
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #56384 /* ~"안나를 보면 무엇이 보이오?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Annah","GLOBAL",1)
~ GOTO 93
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #56385 /* ~"다콘을 보면 무엇이 보이오?"~ */ GOTO 105
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56386 /* ~"훨-후럼-그레이스를 보면 무엇이 보이오?"~ */ DO ~SetGlobal("Vhailor_Prejudice_Grace","GLOBAL",1)
~ GOTO 110
  IF ~  NearbyDialog("Dgrace")
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56387 /* ~"훨-후럼-그레이스를 보면 무엇이 보이오?"~ */ GOTO 115
  IF ~  NearbyDialog("Dnordom")
~ THEN REPLY #56388 /* ~"노돔을 보면 무엇이 보이오?"~ */ GOTO 119
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #56389 /* ~"이그너스를 보면 무엇이 보이오?"~ */ GOTO 116
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #56390 /* ~"당신 자신을 보면 무엇이 보이오?"~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #56391 /* ~"당신 자신을 보면 무엇이 보이오?"~ */ GOTO 120
  IF ~~ THEN REPLY #56392 /* ~"나를 보면 무엇이 보이오?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
  IF ~~ THEN REPLY #56393 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56394 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56395 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.0 91.0
  SAY #56396 /* ~*해골은 많은 것을 안다, 하지만 정의에 대해서는 알지 못한다. 그 해골과 같은 마음을 지녔던 많은 자들이 지금은 감옥과 무덤 속에 들어가 있다.~ */
  IF ~~ THEN REPLY #56397 /* ~"다른 사람에 대해 물어보겠소..."~ */ GOTO 91
  IF ~~ THEN REPLY #56398 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56399 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56400 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 90.1 91.1
  SAY #56401 /* ~*티플링은 마계에 의해 더럽혀져 있다. 그녀의 혈통에 충성심이나 정의의 여지는 없다. 그녀는 정의를 아나, 그것을 무시한다.* 베일로의 눈이 횃불처럼 타오른다. "그녀는 나를 무시하지는 못할 것이다."~ */
  IF ~  Global("Annah_Accuse","GLOBAL",0)
~ THEN DO ~SetGlobal("Annah_Accuse","GLOBAL",1)
~ EXTERN ~DANNAH~ 274
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56402 /* ~"다른 사람에 대해 물어보겠소..."~ */ GOTO 91
  IF ~  Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56403 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56404 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
Global("Annah_Accuse","GLOBAL",1)
~ THEN REPLY #56405 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56406 /* ~*베일로의 눈이 타오른다. *티플링, 대답하라: 불의를 행한 적이 있는가?*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 275
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56407 /* ~*정의가 내게 그럴 권한을 준다.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 276
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56408 /* ~*머시킬러는 정의다. 우리의 행동에 대해 이의를 제기하는 것은 용납되지 않는다.*~ */
  IF ~~ THEN EXTERN ~DANNAH~ 277
END

IF ~~ THEN BEGIN 97 // from:
  SAY #56410 /* ~*마지막으로 묻겠다, 티플링. 너는 불의를 행한 적이 있는가? 대답을 거부하는 것은 유죄를 인정하는 것이다."~ */
  IF ~~ THEN REPLY #56411 /* ~"베일로, 멈추시오. 당장. 당신이 그녀를 심문하게 할 수는 없소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ GOTO 99
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #56412 /* ~기다리며 안나가 뭐라고 하는지 본다.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
MoraleDec("Grace",1)
~ EXTERN ~DGRACE~ 200
  IF ~  !NearbyDialog("Dgrace")
~ THEN REPLY #56413 /* ~기다리며 안나가 뭐라고 하는지 본다.~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ EXTERN ~DANNAH~ 278
END

IF ~~ THEN BEGIN 98 // from:
  SAY #56414 /* ~*너는 정의의 질문에 대답하는 것을 거부했다. 나는 너를 처벌하겠다.*~ */
  IF ~~ THEN REPLY #56415 /* ~"아니, 베일로, 그러도록 내버려둘 수는 없소. 당신에겐 그럴 권리가 없소."~ */ GOTO 99
  IF ~~ THEN REPLY #56416 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ DO ~LeaveParty()
Enemy()
Attack("Annah")
ChangeAIScript("MDKAnnah",DEFAULT)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 97.0 98.0 102.0
  SAY #56418 /* ~*정의가 내게 권한을 주었다. 죄가 그녀를 마치 또 다른 피부처럼 감싸고 있다.*~ */
  IF ~~ THEN REPLY #56419 /* ~"난 당신에게 멈추라고 했소, 베일로, 그리고 그건 빈말이 아니오."~ */ GOTO 103
END

IF ~~ THEN BEGIN 100 // from:
  SAY #56420 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #56421 /* ~*그녀는 불의를 행했다. 나는 그녀를 처벌하겠다.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 201
END

IF ~~ THEN BEGIN 102 // from:
  SAY #56423 /* ~*정의를 방해하는 자는 모두 처형될 것이다. 너는 파멸을 자초했다, 서큐버스.*~ */
  IF ~~ THEN REPLY #56424 /* ~"아니, 베일로, 그러도록 내버려둘 수는 없소. 당신에겐 그럴 권리가 없소."~ */ GOTO 99
  IF ~~ THEN REPLY #56425 /* ~기다리며 어떤 일이 일어나는지 지켜본다. ~ */ DO ~LeaveParty()
Enemy()
Attack("Grace")
ChangeAIScript("MDKGrace",DEFAULT)
ForceAttack("Grace",Myself)
ForceAttack("Annah",Myself)
~ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.0
  SAY #56426 /* ~*그래, 자비라는 창녀가 모습을 드러냈군. 너의 심장은 나약함에 중독되었다.*~ */
  IF ~~ THEN REPLY #56427 /* ~"그것은 자비가 아니오. 그건 내 *명령*이오. 내 약점을 한 번 시험해보고 싶소, 베일로?"~ */ GOTO 104
  IF ~~ THEN REPLY #56428 /* ~"자비는 약점이 아니오, 베일로. 그녀를 그냥 내버려두지 않으면 날 상대해야 할 거요."~ */ GOTO 104
  IF ~~ THEN REPLY #56429 /* ~"그랬소? 그럼 나를 심판하시오, 베일로. 만약 내가 부족하다고 생각한다면 *내*게 형을 선고하시오."~ */ GOTO 129
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #56430 /* ~*정의를 방해하는 자는 모두 처형될 것이다.* 베일로의 눈이 타오른다, 그리고 그는 도끼를 쳐든다. *너는 파멸을 자초했다.*~ */
  IF ~~ THEN REPLY #56431 /* ~"두 번째 죽음을 맞이할 준비를 하시오, 베일로..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 105 // from: 90.2 91.2
  SAY #56432 /* ~*이 기스저라이의 마음에는 그의 동족들의 가슴을 물들이고 있는 편견이 없다. 하지만 그는 그 자신과 대립하고 있다, 그것은 그의 말이 곧 그의 의지이고 법이기 때문이다. 다른 기스저라이들이 혼돈 속에서 번창할 때 그는 홀로 고통을 받고 있다.*~ */
  IF ~~ THEN REPLY #56433 /* ~"편견? 그게 무슨 뜻이오?"~ */ GOTO 106
  IF ~~ THEN REPLY #56434 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56435 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56436 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56437 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #56438 /* ~*기스저라이란 종족은 편견으로 불타고 있다. 정의의 눈 앞에 편견이 설 자리는 없다.*~ */
  IF ~~ THEN REPLY #56439 /* ~"무슨 편견 말이오?"~ */ GOTO 107
  IF ~~ THEN REPLY #56440 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56441 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56442 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56443 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #56444 /* ~*편견은 본질적으로 정의를 더럽힌다. 기스저라이는 사촌 격인 기스양키와, 양 기스 종족의 과거의 소유주였던 일리티드에 대해 편견을 가지고 있다. 기스저라이의 가슴은 기스양키와 일리티드에 대한 증오로 불타고 있다.*~ */
  IF ~~ THEN REPLY #56445 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",1)
Global("Vhailor_Prejudice_Grace","GLOBAL",0)
~ THEN REPLY #56446 /* ~"편견이 정의를 더럽힌다? 그럼 당신이 안나에 대해 한 말은 어떻소?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
Global("Vhailor_Prejudice_Grace","GLOBAL",1)
~ THEN REPLY #56447 /* ~"편견이 정의를 더럽힌다? 그럼 당신이 훨-후럼-그레이스에 대해 한 말은 어떻소?"~ */ GOTO 108
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
~ THEN REPLY #56448 /* ~"편견이 정의를 더럽힌다? 그럼 당신이 안나와 훨-후럼-그레이스에 대해 한 말은 어떻소?"~ */ GOTO 108
  IF ~~ THEN REPLY #56449 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56450 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56451 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.1 107.2 107.3
  SAY #56452 /* ~*내 말들은 편견으로부터 나온 것이 아니다. 그것들은 관찰과 기억으로부터 나온 것이다.*~ */
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56453 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
NearbyDialog("Dannah")
GlobalGT("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56454 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",0)
!NearbyDialog("Dannah")
~ THEN REPLY #56455 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56456 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
NearbyDialog("Dgrace")
GlobalGT("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56457 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Annah","GLOBAL",0)
!NearbyDialog("Dgrace")
~ THEN REPLY #56458 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
!NearbyDialog("Dgrace")
~ THEN REPLY #56459 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56460 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
MoraleInc("Grace",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56461 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("Dgrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56462 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56463 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56464 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Grace_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
!NearbyDialog("Dannah")
NearbyDialog("DGrace")
Global("Grace_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56465 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",0)
~ THEN REPLY #56466 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
SetGlobal("Annah_Prejudice_Morale","GLOBAL",1)
~ GOTO 109
  IF ~  Global("Vhailor_Prejudice_Grace","GLOBAL",1)
Global("Vhailor_Prejudice_Annah","GLOBAL",1)
NearbyDialog("Dannah")
!NearbyDialog("DGrace")
Global("Annah_Prejudice_Morale","GLOBAL",1)
~ THEN REPLY #56467 /* ~"내가 생각하기에 당신의 '관찰'은 당신의 편견을 드러내보이고 있소, 베일로. 당신은 성급하게 모든 마족을 일률적으로 매도하고 있소. 당신의 관찰에 대해 다시 숙고하는 것이 좋을 것 같소."~ */ GOTO 109
  IF ~~ THEN REPLY #56468 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56469 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56470 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56471 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 108.0 108.1 108.2 108.3 108.4 108.5 108.6 108.7 108.8 108.9 108.10 108.11 108.12 108.13 108.14
  SAY #56472 /* ~*내 관찰은 정의의 눈을 통해 이루어졌다. 나는 관찰한 후 행동한다. 모든 것을 망각하더라도 이 사실만은 기억하라.*~ */
  IF ~~ THEN REPLY #56473 /* ~"다른 사람에 대해 물어보겠소..."~ */ GOTO 91
  IF ~~ THEN REPLY #56474 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56475 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56476 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 90.3 91.3
  SAY #56504 /* ~*타나리는 혼돈으로부터 태어났다. 그들은 정의에는 일체의 신경을 쓰지 않는다. 이 서큐버스는 정의에 대해 아나, 그것에 등을 돌렸다. 자비가 그녀의 가슴을 독으로 물들였다.*~ */
  IF ~~ THEN REPLY #56505 /* ~"다른 사람에 대해 물어-"~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56506 /* ~"알겠소, 베일로. 다른 질문..."~ */ EXTERN ~DGRACE~ 196
  IF ~~ THEN REPLY #56507 /* ~"관두시오, 베일로. 그만-"~ */ EXTERN ~DGRACE~ 196
END

IF ~~ THEN BEGIN 111 // from:
  SAY #56508 /* ~베일로의 눈이 타오른다. *자비는 정의의 심장을 침식한다. 자비는 완벽을 모두 탐식한다. 동정과 용서는 자비의 독이다.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 197
END

IF ~~ THEN BEGIN 112 // from:
  SAY #56509 /* ~*너는 약하다, 서큐버스... 너의 동족들과 마찬가지로 약하다. 네 동족은 육신으로 유혹을 하나, 너는 자비에 유혹당했다. 너는 자비의 창녀다. 너는 아무 것도 아니다.* ~ */
  IF ~~ THEN EXTERN ~DGRACE~ 198
END

IF ~~ THEN BEGIN 113 // from:
  SAY #56510 /* ~훨-후럼-그레이스를 보면서 베일로의 눈이 두 개의 횃불처럼 타오른다. 훨-후럼-그레이스는 그의 시선을 단호한 결의를 지닌 수정과 같은 눈으로 마주본다.~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #56511 /* ~*약점의 뿌리는 바로 거기에 있다. 너는 자신이 강하다고 생각한다, 자비가 그 뿌리를 갉아 먹을 것이다. 그것은 네 의지를 침식할 것이다." 베일로는 잠시 멈춘다, 그러나 그의 다음 말은 망치처럼 그녀를 내려친다. *하지만... 네 가슴에는 다른 약점들이 있다. 서큐버스. 내 눈에는 그렇게 보인다. 너는 관심을 가지고 있다. 관심을 가짐으로서 너는 약해졌다.*~ */
  IF ~~ THEN EXTERN ~DGRACE~ 199
END

IF ~~ THEN BEGIN 115 // from: 90.4 91.4
  SAY #56512 /* ~*타나리는 혼돈으로부터 태어났다. 그들은 정의에는 일체의 신경을 쓰지 않는다. 이 서큐버스는 정의에 대해 아나, 그것에 등을 돌렸다. 자비가 그녀의 가슴에 뿌리를 내렸다. 그녀는 관심을 가지고 있다. 관심을 가짐으로서 그녀는 약해졌다.*~ */
  IF ~~ THEN REPLY #56513 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56514 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56515 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56516 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 90.6 91.6
  SAY #56517 /* ~*나는 요술사에게 정의의 낙인을 본다.*~ */
  IF ~~ THEN REPLY #56518 /* ~"당신은 이그너스가 이미 심판을 받았다는 거요?"~ */ GOTO 117
  IF ~~ THEN REPLY #56519 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56520 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56521 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56522 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #56523 /* ~*그의 주변에서 타는 화염은 정의에 대해 말해주고 있다. 요술사는 처벌받았다. 그는 더 이상 살아 있지 않다. 그는 다원 우주의 일부가 되었다. 그는 차원간의 통로이다. 그에게 마음은 없다. 그는 이미 처형을 당했다.*~ */
  IF ~~ THEN REPLY #56524 /* ~"당신은 이그너스가 왜 죽지 않았는지 아오? 그 정도의 화염이면 그를 죽이기에 충분하지 않았겠소?"~ */ GOTO 118
  IF ~~ THEN REPLY #56525 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56526 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56527 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56528 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #56529 /* ~*그는 살아 있지 않다. 단지 존재할 뿐이다. 그 두 가지는 다르다."~ */
  IF ~~ THEN REPLY #56530 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56531 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56532 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56533 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 90.5 91.5
  SAY #56534 /* ~*모드론은 아무런 의미가 없다. 그는 정의를 정의할 수 있을 뿐, 이해할 수는 없다. 만족스럽지는 않으나 그걸로 충분하다.*~ */
  IF ~~ THEN REPLY #56535 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56536 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56537 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56538 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 90.7 90.8 91.7 91.8
  SAY #56539 /* ~*나는 베일로다. 나는 머시킬러다. 내 행동이 내 의중을 말해준다.*~ */
  IF ~~ THEN REPLY #56540 /* ~"그건 내가 질문한 것에 대한 답이 아니오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 121
  IF ~~ THEN REPLY #56541 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56542 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56543 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56544 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #56545 /* ~무거운 침묵이 흐른다... 하지만 베일로는 아무 말도 하지 않는다. 그는 눈 한 번 깜박이지 않으며 신을 마주본다.~ */
  IF ~~ THEN REPLY #56546 /* ~"나는 당신에게 스스로를 볼 때 무엇을 보느냐고 물었소. 당신이 스스로를 심판할 때 어떤 것이 보이시오, 베일로?"~ */ GOTO 122
  IF ~~ THEN REPLY #56547 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56548 /* ~"관두시오, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56549 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56550 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #56551 /* ~*나는 내 자신을 심판하지 않는다. 나는 머시킬러다. 내 행동이 내 의중을 말해준다. 내 의지는 정의의 의지이다.*~ */
  IF ~~ THEN REPLY #56552 /* ~"그럼 당신은 정의의 범주 밖의 존재요?"~ */ GOTO 123
  IF ~~ THEN REPLY #56553 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56554 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56555 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56556 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #56557 /* ~*나는 정의를 섬긴다.나는 정의를 초월한 존재가 아니다. 그 무엇도 정의를 초월할 수는 없다.*~ */
  IF ~~ THEN REPLY #56558 /* ~"그럼 스스로를 한 번 보시오, 베일로. 정의의 눈에는 그 종의 모습이 어떻게 비치오?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 124
  IF ~~ THEN REPLY #56559 /* ~"다른 사람에 대해 물어보겠소."~ */ GOTO 91
  IF ~~ THEN REPLY #56560 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56561 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56562 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #56563 /* ~베일로의 눈에서 갑자기 불빛이 사라진다, 그리고 주위에는 끔찍한 적막감이 감돈다.~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #56564 /* ~당신이 베일로의 눈에 불이 언제 다시 들어올지 궁금해하기 시작할 때, 그의 눈이 타오른다, 그리고 당신은 눈을 가린다.~ */
  IF ~~ THEN REPLY #56565 /* ~"베일로..."~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #56566 /* ~*나는 베일로다. 나는 머시킬러다. 내 행동이 내 의중을 말해준다. 나는 정의의 종이다.*~ */
  IF ~  CheckStatLT(Protagonist,15,WIS)
~ THEN REPLY #56567 /* ~"하지만... 베일로, 무엇을 보았소..."~ */ GOTO 128
  IF ~  CheckStatGT(Protagonist,14,WIS)
~ THEN REPLY #56568 /* ~"하지만... 베일로, 무엇을 보았소..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 127
  IF ~~ THEN REPLY #56569 /* ~"알겠소. 당신에게 다른 사람들에 대해 물어보고 싶소..."~ */ GOTO 91
  IF ~~ THEN REPLY #56570 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56571 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56572 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.1
  SAY #56573 /* ~당신이 말을 하려고 할 때, 당신은 뭔가가 뒤통수를 기어다니는 것과 같은 기묘한 감각을 느낀다, 그리고 당신은 혀 끝에서 말을 멈춘다... 이 문제를 계속 밀어붙이면 베일로의 안에서 뭔가가 위험한 것이 각성할 것이라는 사실을 당신은 안다.~ */
  IF ~~ THEN REPLY #56574 /* ~"하지만... 베일로, 스스로의 내면을 살폈을 때 무엇을 보았소?"~ */ GOTO 128
  IF ~~ THEN REPLY #56575 /* ~"관두시오, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 91
  IF ~~ THEN REPLY #56576 /* ~"알겠소, 베일로. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56577 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56578 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 128 // from: 126.0 127.0
  SAY #56579 /* ~*나는 결코 능력이 모자라지 않다. 나는 자비가 있는 곳이라면 어디든지 가서 그것을 죽일 것이다. 동정이 사람의 가슴을 독으로 물들이면, 나는 그 희생자의 가슴에서 그것을 뽑아낼 것이다. 사기꾼과 배신자들이 거짓말을 하려고 하면, 나는 그들의 기만을 정의의 칼로 맞받아 칠 것이다.*~ */
  IF ~~ THEN REPLY #56580 /* ~"하지만 내가 질문한 것은..."~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 103.2 128.0
  SAY #56581 /* ~*네가 누구이기에 감히 정의의 사도에게 이의를 제기하는가? 너는 아무 것도 아니다. 너는 껍질에 불과하다. 나는 너의 마음을 읽을 것이다. 우리는 네가 부족한 존재인지 볼 것이다.*~ */
  IF ~~ THEN REPLY #56582 /* ~"하지만..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 90.9 91.9 129.0
  SAY #56583 /* ~베일로의 불타는 빨간 눈이 당신을 노려보자, 당신은 그것들이 당신의 피부를 찢고, 태우고, 벗기고 있는 듯한 착각에 빠진다 - 그러나 고통은 없다, 단지 현기증과 *익사*하는 듯한 감각만이 엄습할 뿐이다. 그의 눈이 당신을 태울 듯이 노려보자 당신 안에서 어떤 기억이 요동을 친다...~ */
  IF ~~ THEN REPLY #56584 /* ~기억에게 자신을 맡긴다.~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
PlaySoundNotRanged("SPTR_01")
~ GOTO 131
  IF ~~ THEN REPLY #56585 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #56586 /* ~불타는 붉은 눈은 눈을 뜰 수 없을 정도로 밝아진다, 그리고 다음 순간 당신은 베일로를 마주보고 있다. 하지만 전에는 빈 공간 밖에 없었던 곳에 이제는 육신이 존재한다 - 얼굴에 여러 개의 흉터가 난 검은 피부의 사내가 투구 속에서 당신을 불타는 듯한 눈으로 노려보고 있다, 그리고 그의 얼굴은 분노로 가득 차 있다. 그는 당신을 처단하려고 왔다.~ */
  IF ~~ THEN REPLY #56587 /* ~메아리: "나를 찾아냈군, 베일로. 당신은 먼 길을 왔소... 날 찾는 일은 쉽지 않았으리라 생각하오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 132
  IF ~~ THEN REPLY #56588 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #56589 /* ~"정의가 나를 너에게 인도했다. 너는 가는 곳마다 고통의 자취를 남기고 있다." 그의 목소리는 울리기는 하나 메아리치지는 않는다. 베일로의 유령과도 같은 목소리는 느껴지지 않고, 단지 육신을 지닌 자의 분노가 느껴질 뿐이다... 그는 위험하다, 하지만 유령이 아니라 단지 인간일 뿐이다, 그리고 그런 정도의 적이라면 당신은 이미 수도 없이 물리쳤다. "나는 너를 시길의 법정에 세워 처벌받도록 하겠다. 만약 거부하겠다면 말을 해라. 그럼 내가 직접 너를 심판하겠다."~ */
  IF ~~ THEN REPLY #56590 /* ~메아리: "거부하겠소. 날 심판하시오... 그럼 나도 당신을 심판할 테니."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 133
  IF ~~ THEN REPLY #56591 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #56592 /* ~"나를 심판해?" 베일로의 눈이 타오른다, 그리고 그는 자신의 도끼를 꽉 쥔다. 그가 도끼를 천천히, 위협적으로 휘두르기 시작하자, 그의 목과 팔의 힘줄이 팽팽해진다. "네게는 나를 심판할 권리가 없다."~ */
  IF ~~ THEN REPLY #56593 /* ~메아리: "내겐 그럴 권한이 있소, 베일로. 나는 당신의 심중을 알고 있소, 그리고 내 힘이 당신을 심판할 권리를 내게 주고 있소. 하지만 당신을 지금 심판하지는 않겠소. 당신은 내가 당신이 다시 차원을 활보할 수 있도록 풀어주는 날까지 이 감옥에 남아있어야만 하오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 134
  IF ~~ THEN REPLY #56594 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #56595 /* ~당신의 화신이 '감옥'이라는 말을 꺼내자, 베일로는 갑자기 시선을 돌려 주변의 벽들을 바라본다 - 그 곳은 당신이 커스트에서 베일로를 발견한 바로 그 감옥이다. 그러나 이 기억은 현재로부터 상당히 오래 전의 일인 듯하다, 그것도 사람이 여러 번 - 또는 한 번 - 죽고도 남을 만큼 오래 전의. ~ */
  IF ~~ THEN REPLY #56596 /* ~메아리: "나는 이 시점까지 당신을 회피했소, 베일로. 당신은 내가 왜 당신을 *이 곳*에서 만나자고 했다고 생각하오? 내가 항복할 거라고 생각했소? 아니... 이 곳은 관문 도시 커스트요. 이 곳은 *신들*조차 죄수로서 갇혀 있는 *감옥* 차원 카케리와 경계를 이루고 있소. 당신은 강하오, 베일로, 하지만 이 곳의 에너지는 가장 강대한 자들조차도 가둘 수 있게 해주오..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 135
  IF ~~ THEN REPLY #56597 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #56598 /* ~베일로는 돌아선다, 그러나 그의 눈은 전처럼 타오르지는 않고 있다. "이건 *음모*다."~ */
  IF ~~ THEN REPLY #56599 /* ~메아리: "배반은 마치 정맥처럼 이 곳 곳곳에 뻗쳐 있소, 그리고 이 마법이 성립될 수 있도록 힘을 부여하는 것도 바로 그 배신이오. 그게 내가 당신과 커스트에서 만나고자 한 이유요. 나는 이 감방에서 나갈 수가 있으나, 베일로 당신은 내가 당신을 해방하러 올 때까지 그럴 수가 없소. 정의를 위한 당신의 성전은 가히 놀랍소, 하지만 그것은 잊혀질 것이고 시간이 흐르면 정의조차 당신을 잊을 것이오."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 136
  IF ~~ THEN REPLY #56600 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #56601 /* ~"너는 정의의 심판을 피하려고 할 뿐만 아니라, 내 *성전*마저도 부정하려 하는군..."~ */
  IF ~~ THEN REPLY #56602 /* ~메아리: "나는 당신의 사명을 아오. 하지만 그건 내가 *내* 사명을 완수할 때까지 기다려야 할 것이오. 그리고 당신이 날 찾아내서 심판하려 한 것은 이번이 두 번째요. 나는 그와 같은 일이 다시 일어나도록 할 수는 없소."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 137
  IF ~~ THEN REPLY #56603 /* ~기억을 떨쳐버리고 현재에 남으려 힘쓴다. ~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #56604 /* ~베일로는 아무 말도 하지 않는다... 당신은 일찍이 자신이 그토록 결정적인 말을 하는 것을 들은 적이 없다. 당신은 그에게 끔찍한 판결을 내리고 있다, 그것도 아무런 정의라고는 없는 판결을.. ~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",0)
~ THEN REPLY #56605 /* ~메아리: "나는 불사신이오, 베일로. 하지만 당신은 기묘한 존재요. 당신에게는 정의의 손길이 닿았고, 그 정의는 나를 유지시키는 것보다 더 강할지도 모르오. 하지만 기운을 내시오, 난 당신이 죽길 원하지 않소... 아마 언젠가는 내게도 날 죽일 힘을 지닌 사람이 필요할지 모르오. 그래서 당신은 내가 당신을 다시 찾아올 때까지 이 곳에 남아있어야만 하오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
SetGlobal("Memory_Caging_Vhailor","GLOBAL",1)
GiveExperience(Protagonist,90000)
~ JOURNAL #56607 /* ~머나먼 과거의 기억이 되살아 났다... 내가 베일로를 커스트 지하에 가둔 기억이. 그는 나를 찾아 그 곳에 갔고, 나는 그가 다시는 날 방해하지 못하도록 그를 영구히 가둘 감옥을 준비해 놓고 있었다. 그 일의 음흉함은 일단 접어두더라도, 내 전신이 한 얘기는 기묘했다. 그는 정의가 베일로의 도끼를 인도하는 한 베일로는 그를 죽일 수 있다고 믿었다고 했다. 어떤 이유에서인지 나는 그것이 진실이라는 생각이 든다. 하지만 왜 내 전신은 그를 그냥 죽이지 않았을까? 그를 살려둔 데는 무슨 특별한 목적이라도 있었을까?~ */ GOTO 138
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56606 /* ~메아리: "나는 불사신이오, 베일로. 하지만 당신은 기묘한 존재요. 당신에게는 정의의 손길이 닿았고, 그 정의는 나를 유지시키는 것보다 더 강할지도 모르오. 하지만 기운을 내시오, 난 당신이 죽길 원하지 않소... 아마 언젠가는 내게도 날 죽일 힘을 지닌 사람이 필요할지 모르오. 그래서 당신은 내가 당신을 다시 찾아올 때까지 이 곳에 남아있어야만 하오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 138
END

IF ~~ THEN BEGIN 138 // from: 130.1 131.1 132.1 133.1 134.1 135.1 136.1 137.0 137.1
  SAY #56608 /* ~기억이 어두워지기 시작하면서 당신의 의식은 다시 어둠 속으로 빠져 든다, 그리고 눈을 뜨자 당신은 다시 베일로의 망령을 마주보고 있다. 그의 투구 안에서는 두 개의 눈만 타오르고 있을 뿐, 피와 살은 찾아볼 수가 없다.~ */
  IF ~~ THEN REPLY #56609 /* ~"베일로...?"~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #56610 /* ~*너는 심판을 받을 것이다.*~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #56611 /* ~"좋소..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 140
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #56612 /* ~"좋소..."~ */ DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 141
END

IF ~~ THEN BEGIN 140 // from: 139.0
  SAY #56614 /* ~베일로의 이글거리는 시선이 당신을 향하자, 당신은 자신의 의식이 육체 밖으로 나가는 것과 같은 기묘한 감각을 느낀다. 당신 머릿속에서 희미한 속삭임, 뭔가가 기어 가는 것과 같은 근질거리는 감각이 느껴진다. 그러자 당신은 갑자기 베일로가 뭐라고 주장하든 간에 그는 당신이 보여주고자 하는 것밖에 볼 수 없다는 사실을 깨닫는다. 당신은 그가 당신의 가장 간단한 속임수에조차 걸릴 것이라는 사실을 안다. 그에게 있어 당신은 닫힌 책이나 마찬가지다.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 139.1 140.0
  SAY #56618 /* ~*너는 타인을 죽인 적이 있는가?*~ */
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56619 /* ~거짓말: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_3","GLOBALLaw",-1)
~ GOTO 147
  IF ~  Global("Murder","GLOBAL",0)
~ THEN REPLY #56620 /* ~진실: "아니오."~ */ GOTO 147
  IF ~  GlobalGT("Murder","GLOBAL",0)
~ THEN REPLY #56621 /* ~진실: "있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #56622 /* ~진실: "있소... 그건 내 손이 한 일이지 내 정신이 한 일은 아니오, 베일로. 내 전신들 중 하나가 휜 앤들리라는 사람을 그가 지닌 지식 때문에 죽였소."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56623 /* ~진실: "베일로, 나 때문에 다원 우주 전역에 걸쳐 수천 명의... 아니 무수한 수의 사람들의 죽은 것 같소. 해골들의 기둥은 내가 죽을 때마다 내 대신 다른 사람이 죽는다고 했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_3","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56624 /* ~"나는 당신 질문에 답하지 않을 것이오, 베일로, 그리고 당신이 날 심판하도록 내버려두지도 않겠소."~ */ GOTO 142
END

IF ~~ THEN BEGIN 142 // from: 141.5 147.5 148.15
  SAY #56625 /* ~*정의의 질문에 응답하지 않는 자는 처벌될 것이다*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56626 /* ~"어디 해보시오, 베일로. 하지만 두 번째 죽음을 맞이할 준비를 해야 할 거요..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56627 /* ~"어디 해보시오, 베일로. 하지만 두 번째 죽음을 맞이할 준비를 해야 할 거요..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56628 /* ~"하지만 이미 난 벌을 *받았소*, 베일로."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56629 /* ~"하지만 이미 난 벌을 *받았소*, 베일로."~ */ GOTO 143
END

IF ~~ THEN BEGIN 143 // from: 142.2 142.3 149.2 149.3
  SAY #56630 /* ~베일로는 멈춘다. *너의 형벌에 대해 듣도록 하겠다.*~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56631 /* ~"관두시오, 베일로. 난 이제 당신을 말로 설득하는 데 지쳤소. 무력으로 해결을 보는 편이 나을 것 같소."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56632 /* ~"관두시오, 베일로. 난 이제 당신을 말로 설득하는 데 지쳤소. 무력으로 해결을 보는 편이 나을 것 같소."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #56633 /* ~"나는 죽을 때마다 기억을 잃어왔소. 내겐 자신에 대한 인식도 없고, 내가 누구거나 누구였는지도 모르며, 내 몸과 마음에는 기억조차 못하는 무수한 흉터들이 있소. 저승도 나를 거부하며 나는 영원히 안식을 찾지 못할 것 같소."~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.2
  SAY #56634 /* ~베일로는 밝게 타오르는 눈으로 당신을 쳐다본다. 당신은 전과 같은 *시선*을 느낀다 - 베일로가 당신을 해부하듯 살펴봄에 따라 당신 피부가 찢어지고 벗겨지는 것 같은 바로 그 감각을. 메스꺼움이 파도처럼 당신을 엄습한다, 그리고 이전보다 한층 더 깊은 물 속으로 빠져 드는 것 같은 감각을 느낀다... 당신의 시야는 점차 어두워져 아무 것도 보이지 않게 된다...~ */
  IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145 // from: 144.0
  SAY #56635 /* ~*너는 처벌받았다. 너에게는 정의의 낙인이 찍혀 있다. 나는 네 육신에서 그것을 볼 수 있다. ~ */
  IF ~~ THEN REPLY #56636 /* ~"그럼..."~ */ GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #56637 /* ~*이것을 알라: 네 안에는 보이지 않는 것들이 많다. 나는 널 지켜볼 것이다. 너는 처벌받았다. 하지만 그것이 네가 앞으로 지을지도 모르는 죄에 대한 형벌로부터 널 면제해 주지는 못할 것이다."~ */
  IF ~~ THEN REPLY #56638 /* ~"알겠소, 베일로. 그럼 이 건은... 지금으로서는 해결된 것으로 생각하겠소. 당신에게 질문할 것들이 좀 있소."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56639 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56640 /* ~"알겠소, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 147 // from: 141.0 141.1
  SAY #56641 /* ~*너는 타인에게 불의를 행한 적이 있는가?*~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56642 /* ~거짓말: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_4","GLOBALLaw",-1)
~ GOTO 148
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #56643 /* ~진실: "아니오."~ */ GOTO 148
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #56644 /* ~진실: "있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56645 /* ~진실: "있소... 그건 내 손이 한 일이지 내 정신이 한 일은 아니오, 베일로. 다른 사람이 내 몸을 차지하고 있었소."~ */ GOTO 149
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #56646 /* ~진실: 진실: "베일로, 나 때문에 다원 우주 전역에 걸쳐 수천 명의... 아니 무수한 수의 사람들의 죽은 것 같소. 해골들의 기둥은 내가 죽을 때마다 내 대신 다른 사람이 죽는다고 했소. 내가 아는 한 그보다 더 큰 불의는 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_4","GLOBALLaw",2)
~ GOTO 149
  IF ~~ THEN REPLY #56647 /* ~"나는 당신 질문에 답하지 않을 것이오, 베일로, 그리고 당신이 날 심판하도록 내버려두지도 않겠소."~ */ GOTO 142
END

IF ~~ THEN BEGIN 148 // from: 147.0 147.1
  SAY #56648 /* ~*너는 타인에게 해를 끼진 적이 있는가?*~ */
  IF ~~ THEN REPLY #56649 /* ~거짓말: "아니, 그런 적이 없소. 내 모든 생에 걸쳐 난 한 번도 남을 해친 적이 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Vhailor_5","GLOBALLaw",-1)
SetAnimState("Vhail",ANIM_MIMESTAND)
~ GOTO 150
  IF ~~ THEN REPLY #56650 /* ~진실: "있소... 나는 많은 과오를 저질렀소, 베일로. 하지만 그건 다른 사람이 내 몸을 차지하고 있었을 때의 일이오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("AR1900_Visited","GLOBAL",1)
~ THEN REPLY #56651 /* ~진실: "나는 레이디 오브 페인에게 도전했고 그녀는 날 미로에 가두었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #56652 /* ~진실: "내 전신들 중 하나가 데이오나라라는 여자에게 사랑하지도 않으면서 사랑한다고 거짓말을 했소. 그가 그 말을 했을 때 그녀는 죽을 때까지 그를 따랐소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #56653 /* ~진실: "나는 변호사 이언니스의 무남독녀인 데이오나라의 죽음에 책임이 있는 것 같소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #56654 /* ~진실: "나는 변호사 이언니스의 무남독녀인 데이오나라의 죽음에 책임이 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #56655 /* ~진실: "내 전신은 자신이 불사신이라는 것을 알면서도 어떤 사내에게 내가 죽을 때까지 날 섬기겠다는 맹세를 받아냈소. 나는 그가 날 위해 봉사하도록 그의 인생을 빼앗았소. 그의 이름은 다콘이었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #56656 /* ~진실: "나는 안나라는 소녀를 노예로 팔았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #56657 /* ~진실: "나는 내 동료인 다콘을 노예로 팔았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #56658 /* ~진실: "나는 내 동료인 노돔을 노예로 팔았소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #56659 /* ~진실: "내 전신들 중 하나가 이그너스에게 다른 이들을 해칠 능력을 가르쳐 주었소. 그것은 그와 다른 이들의 고통의 시발점이 되었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #56660 /* ~진실: "나는 모트를 배신하고 그를 해골들의 기둥에 남겨두었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #56661 /* ~진실: "나는 다원 우주 그 자체에 해를 끼쳤소... 나는 코우크스메탈이라는 위험한 존재를 공성탑으로부터 해방시켰소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Chaotic_Fhjull_1","GLOBAL",1)
~ THEN REPLY #56662 /* ~진실: "나는 사리사욕을 위해 흐줄을 해골들의 기둥에게 배신했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #56663 /* ~진실: "나는 당신에게 잘못을 저질렀소, 베일로, 당신을 커스트 지하에 가둔 건 바로 나였소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Vhailor_5","GLOBALLaw",1)
~ GOTO 149
  IF ~~ THEN REPLY #56664 /* ~"나는 당신 질문에 답하지 않을 것이오, 베일로, 그리고 당신이 날 심판하도록 내버려두지도 않겠소."~ */ GOTO 142
END

IF ~~ THEN BEGIN 149 // from: 141.2 141.3 141.4 147.2 147.3 147.4 148.1 148.2 148.3 148.4 148.5 148.6 148.7 148.8 148.9 148.10 148.11 148.12 148.13 148.14
  SAY #56665 /* ~*너는 범죄를 시인했다." 베일로의 눈이 그의 투구 속에서 타오른다, 그리고 당신은 갑자기 그의 망령 갑옷 속에 숨어 있는 엄청난 *힘*을 느낀다. "죄인은 처벌받을 것이다."~ */
  IF ~  InParty("Vhail")
~ THEN REPLY #56666 /* ~"어디 해보시오, 베일로. 하지만 두 번째 죽음을 맞이할 준비를 해야 할 거요..."~ */ DO ~LeaveParty()
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  !InParty("Vhail")
~ THEN REPLY #56667 /* ~"어디 해보시오, 베일로. 하지만 두 번째 죽음을 맞이할 준비를 해야 할 거요..."~ */ DO ~Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #56668 /* ~"하지만 이미 난 벌을 *받았소*, 베일로."~ */ GOTO 143
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #56669 /* ~"하지만 이미 난 벌을 *받았소*, 베일로."~ */ GOTO 143
END

IF ~~ THEN BEGIN 150 // from: 148.0
  SAY #56670 /* ~베일로는 밝게 타오르는 눈으로 당신을 쳐다본다. 당신은 전과 같은 *시선*을 느낀다 - 베일로가 당신을 해부하듯 살펴봄에 따라 당신 피부가 찢어지고 벗겨지는 것 같은 바로 그 감각을. 메스꺼움이 파도처럼 당신을 엄습한다, 그리고 이전보다 한층 더 깊은 물 속으로 빠져 드는 것 같은 감각을 느낀다... 당신의 시야는 점차 어두워져 아무 것도 보이지 않게 된다...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #56671 /* ~*이것을 알라: 네 안에는 보이지 않는 것들이 많다. 나는 널 지켜볼 것이다. 너는 네가 앞으로 지을지도 모르는 죄에 대한 형벌을 피할 수는 없다."~ */
  IF ~~ THEN REPLY #56672 /* ~"알겠소, 베일로. 그럼 이 건은... 지금으로서는 해결된 것으로 생각하겠소. 당신에게 질문할 것들이 좀 있소."~ */ GOTO 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56673 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56674 /* ~"알겠소, 베일로. 그만 갑시다. ~ */ EXIT
END

IF ~~ THEN BEGIN 152 // from: 77.0 77.1
  SAY #56675 /* ~당신의 말은 메아리친다, 그리고 당신이 얘기를 할 때마다 더욱 그 힘은 강해진다. 그러자 베일로의 눈이 깜박이다가 점차 그 광채를 잃는다. 그의 갑옷은 붕괴하고 철판들과 도끼가 *쿵* 소리를 내며 땅에 떨어진다. 동시에 바닥으로부터는 철판들과 도끼가 급격하게 노화되고 부식됨에 따라 나오는 재와 녹들 때문에 먼지 구름이 인다, 그리고 그것들은 마침내 당신 눈 앞에서 붕괴되어 버린다. 남은 것이라고는 움푹 배인 철판 몇 조각 뿐으로, 이것들은 베일로가 존재했었다는 것을 알리는 유일한 묘비이다. ~ */
  IF ~~ THEN REPLY #56676 /* ~"편히 쉬시오, 베일로."~ */ DO ~LeaveParty()
Kill(Myself)
SetGlobal("Belief_Kill_Vhailor","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56883 /* ~*어리석음은 나약함의 증후이다. 남을 이용하려는 자를 이용하는 것은 불의가 아니다.*~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 42
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56892 /* ~*마족도 정의의 심판에 있어 예외는 될 수 없다.*~ */
  IF ~~ THEN REPLY #56894 /* ~"옳소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 155 // from:
  SAY #57391 /* ~베일로는 눈을 이글거리며 갑자기 앞으로 나선다. "이것은 정의가 아니라, 애들 장난에 불과하다. 처형은 없을 것이다, '판사'... 내가 직접 정의를 실현하도록 만들고 싶지 않다면."~ */
  IF ~~ THEN EXTERN ~DJUDGE~ 2
END

IF ~~ THEN BEGIN 156 // from:
  SAY #57392 /* ~"앞으로는 바른 태도로 직무에 임하도록 하라, 판사. 그렇지 않다는 소식이 내 귀에 들어오도록 하지 말라... 아니면 내가 여기서 수만 리 떨어진 곳에 있더라도 직접 너를 심판하려고 돌아오겠다. 정의를 가슴 속에 간직하도록 노력하라, 그러면 너는 안전할 것이다. 잘 있거라. ~ */
  IF ~~ THEN REPLY #57393 /* ~"고맙소, 베일로. 안녕히 계시오, 치안관."~ */ DO ~IncrementGlobal("Curst_Counter","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from:
  SAY #63704 /* ~"정의는 장님이 *아니다.* *내*가 그녀의 눈이다."~ [VHA255] */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 ~  Global("Fortress_Vhailor","GLOBAL",3)
~ THEN BEGIN 158 // from:
  SAY #68222 /* ~당신의 힘이 약간 닿은 것만으로도 베일로의 갑옷에 다시 힘을 불어 넣기에는 충분한 것 같다. 그것은 공중으로 뜨더니 사람의 형상을 갖춘다. 갑옷이 재결합되자, 그의 두 눈이 투구 안에서 활활 타오른다.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68223 /* ~"베일로?"~ */ DO ~SetGlobal("Fortress_Vhailor","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 159
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68398 /* ~일어나시오, 베일로.~ */ GOTO 164
END

IF ~~ THEN BEGIN 159 // from: 158.0
  SAY #68225 /* ~*나는 깨어났다.*~ [VHA002] */
  IF ~~ THEN REPLY #68226 /* ~"베일로, 내 말을 들으시오. 거대한 불의가 행해졌소. 내가 죽을 때마다 다원 우주 어딘가에서 다른 사람이 내 대신 죽음을 당하오. 그런 일은 지금까지 수백, 수천, 아니 아마 수십만 번 이상 일어났소. 내가 살기 위해 다원 우주가 죽고 있소."~ */ DO ~PermanentStatChange("Vhail",STR,RAISE,3)
PermanentStatChange("Vhail",DEX,SET,25)
PermanentStatChange("Vhail",CON,SET,25)
GiveExperience("Vhail",2000000)
~ GOTO 160
  IF ~~ THEN REPLY #68263 /* ~"베일로, 내겐 당신 도움이 필요하오 - 내 죽음이 우리를 죽이려 하고 있소."~ */ GOTO 163
END

IF ~~ THEN BEGIN 160 // from: 159.0
  SAY #68227 /* ~당신이 말을 하자 베일로는 *팽창*하는 듯하다, 그리고 그는 단순한 갑옷이 아닌 보다 거대한 존재가 된다.~ */
  IF ~~ THEN REPLY #68228 /* ~"나는 내 죄를 알고 있소, 그리고 그런 일이 다시 일어나는 것을 막으려 시도하고 있소. 하지만 이러한 불의를 종식시킬 수 있는 유일한 존재가 자신의 이기적인 이유 때문에 그러기를 거부하고 있소."~ */ DO ~FullHealEx("Vhail")
~ GOTO 161
END

IF ~~ THEN BEGIN 161 // from: 160.0
  SAY #68229 /* ~*너는 이제 죄인들 중 하나이다. 다른 하나 역시 마찬가지이다. 나는 너희들 양쪽 모두의 영혼을 정의의 칼날로 가르겠다.*~ */
  IF ~~ THEN REPLY #68230 /* ~"좋소, 베일로. 하지만 이 다른 한쪽부터 먼저 처리해야만 하겠소."~ */ GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #68231 /* ~*그럴 것이다. 그리고 그 다음에는 너를 벌하러 돌아올 것이다.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68232 /* ~"좋소, 베일로."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68233 /* ~"좋소, 베일로."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68244 /* ~"좋소, 베일로."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 163 // from: 159.1
  SAY #68264 /* ~*그렇다면 네 '죽음'은 죽을 것이다.*~ */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68265 /* ~"그럼 좋소, 베일로..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68266 /* ~"그럼 좋소, 베일로..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68267 /* ~"그럼 좋소, 베일로..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 164 // from: 158.1
  SAY #68399 /* ~베일로의 투구가 당신 쪽으로 돌아간다. 그의 눈은 두 개의 심장처럼 고동치고 있다.~ */
  IF ~~ THEN REPLY #68400 /* ~베일로, 정의의 손길은 신속하오, 그리고 그것은 이제 날 처벌하러 오고 있소. 나는 이 곳에 오래 머무르지 못할 것이오. 만약 원한다면 당신을 시길로 돌려보내 주겠소." ~ */ GOTO 165
END

IF ~~ THEN BEGIN 165 // from: 164.0
  SAY #68401 /* ~*어떤 죄가 네게 정의의 심판을 불러왔는가 ?*~ */
  IF ~~ THEN REPLY #68402 /* ~내가 살기 위해 많은 이들이 죽었소. 내가 지은 죄는 너무나도 크오... 그리고 시간과 운명은 지금도 날 향해 오고 있소.~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #68403 /* ~*내 말이 너를 인도할 것이다. 정의는 교사이다. 네 형벌 속에서 힘을 찾으라. 형벌을 통해 너는 완벽의 경지에 도달할 것이다.*~ */
  IF ~~ THEN REPLY #68404 /* ~아마 그럴지도, 베일로. 당신이 한 말에 대해 깊이 생각해 보겠소.~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #68405 /* ~*네가 형벌을 회피할 경우 내가 널 찾아낼 것이라는 사실을 알라, 이름 없는 자.*~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from: 167.0
  SAY #68406 /* ~*정의의 심판을 피할 수는 없다.*~ [VHA010] */
  IF ~~ THEN REPLY #68407 /* ~내가 생각하기에 우리가 다시 만날 일은 없을 것이오, 베일로. 나는 일정 기간 동안 정의가 관장하는 형장에서 머무르게 될 것이오, 그리고 그 기간은 영겁에 가까울 것이오.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF WEIGHT #4 ~  Global("Fortress_Vhailor","GLOBAL",4)
~ THEN BEGIN 169 // from:
  SAY #68420 /* ~*정의의 심판을 피할 수는 없다.*~ [VHA010] */
  IF ~~ THEN REPLY #68421 /* ~"계속 맹공을 퍼부으시오, 베일로. 그에게 집중할 기회를 주지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 170 // from:
  SAY #106513 /* ~트리어스의 시체에서 몸을 돌린 베일로가 당신을 똑바로 쳐다본다. *너는 자비롭지만 약하다. 질병이 퍼지기 전에 마음 단단히 먹어야 한다.*~ [VHA013] */
  IF ~~ THEN REPLY #62707 /* ~"그 일에 대해서는 나중에 얘기합시다. 그만 갑시다."~ */ EXIT
END
