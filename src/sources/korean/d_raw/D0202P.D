// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D0202P.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D0202P~

IF ~  !PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 0 // from:
  SAY #36382 /* ~당신 앞에 있는 아치에는 뭔가가 있다... 당신의 뇌리를 떠나지 않는 낯익은 무엇인가가. 마치 아치가 다른, 보다 차가운 공간과의 점점이라도 되는 듯, 이 두 개의 검은 기둥들 사이의 공간에는 뼈조차 얼어붙게 만들 정도의 냉기가 감돌고 있다. 어떤 이유에서인지 당신은 이것이 후회의 요새로 통하는 전이문이라는 사실을 알고 있다... 이제 당신은 그 문을 열기만 하면 된다.~ */
  IF ~~ THEN REPLY #36383 /* ~이를 갈고 오른쪽 팔뚝으로부터 피부를 벗긴다..~ */ DO ~GiveItemCreate("SkScrap",Protagonist,1,0,0)
~ GOTO 1
  IF ~~ THEN REPLY #36384 /* ~전이문을 그냥 내버려 둔다... 지금으로선.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53637 /* ~당신은 이를 악물고 왼쪽 팔뚝을 손톱으로 깊숙이 찌른다, 그리고 마치 말린 가죽을 찢는 듯한 소리와 함께 피부를 한 조각 찢어 낸다. 기둥 사이의 공간의 냉기는 마치 공간의 문에 틈새라도 생긴 듯 더욱 강렬해진다...~ */
  IF ~  !PartyHasItem("SkScrap")
~ THEN GOTO 14
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66928 /* ~피부조각을 살펴본다...~ */ GOTO 3
  IF ~  PartyHasItem("SkScrap")
~ THEN REPLY #66929 /* ~전이문을 그냥 내버려 둔다... 지금으로선.~ */ EXIT
END

IF ~  PartyHasItem("SkScrap")
!PartyHasItem("SkRegret")
~ THEN BEGIN 2 // from:
  SAY #53640 /* ~당신은 아치 앞에 다시 서 있다. 마치 아치가 다른, 보다 차가운 공간과의 점점이라도 되는 듯, 이 두 개의 검은 기둥들 사이의 공간에는 뼈조차 얼어붙게 만들 정도의 냉기가 감돌고 있다. 이것은 후회의 요새로 통하는 전이문이라는 사실을 알고 있다... 이제 당신은 팔에서 떼어낸 피부 조각에 후회를 하나 쓰기만 하면 된다.~ */
  IF ~~ THEN REPLY #53641 /* ~왼쪽 집게손가락을 찔러 나오는 피로 피부조각에 후회라고 쓴다.~ */ GOTO 4
  IF ~~ THEN REPLY #53642 /* ~전이문을 그냥 내버려 둔다... 지금으로선.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #53643 /* ~이 피부 조각은 당신은 왼쪽 팔뚝의 뒤쪽에서 벗겨낸 것이다. 상처 자국투성이의 회색 표면은 좀비의 가죽을 연상시킨다. 피부 조각이라기 보다는 보존 처리를 한 가죽이라는 느낌이 든다. ~ */
  IF ~~ THEN REPLY #53644 /* ~왼쪽 집게손가락을 찔러 나오는 피로 피부조각에 후회라고 쓴다.~ */ GOTO 4
  IF ~~ THEN REPLY #53645 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #53646 /* ~당신은 집게손가락의 끝을 찌른다. 상처가 다 낫기 전에 당신은 여러 방울의 피를 짜낸다. 당신이 당신의 후회를 갈겨 쓰려고 하자, 일련의 이미지들이 당신 정신 속에 떠오른다...~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53647 /* ~후회: "내 동료들에게 일어난 일을 후회한다..."~ */ GOTO 5
  IF ~~ THEN REPLY #53648 /* ~후회: "내가 한 행동을 후회한다..."~ */ GOTO 6
  IF ~~ THEN REPLY #53649 /* ~후회: "내 과거를 후회한다..."~ */ GOTO 7
  IF ~~ THEN REPLY #53650 /* ~후회: "이 시점에까지 이르게 만든 사건들을 후화한다..."~ */ GOTO 8
  IF ~~ THEN REPLY #53651 /* ~피부조각에 아무 것도 쓰지 않고서 상처가 그냥 아물도록 한 후, 피부조각을 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 13.0
  SAY #53653 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53655 /* ~"내가 이 곳에 오기까지 내 동료들이 겪어야 했던 고통..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53869 /* ~"모트를 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53870 /* ~"안나를 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53871 /* ~"다콘을 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Grace","GLOBAL",1)
~ THEN REPLY #53872 /* ~"훨-후럼-그레이스를 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53873 /* ~"노돔을 브리스치카에게 팔려고 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",1)
~ THEN REPLY #53874 /* ~"모트를 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",1)
~ THEN REPLY #53875 /* ~"안나를 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",1)
~ THEN REPLY #53878 /* ~"다콘을 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",1)
~ THEN REPLY #53879 /* ~"노돔을 브리스치카에게 팔지 않은 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-2)
~ GOTO 9
  IF ~  Global("Sell_Morte","GLOBAL",2)
~ THEN REPLY #53880 /* ~"모트를 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Annah","GLOBAL",2)
~ THEN REPLY #53881 /* ~"안나를 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Dakkon","GLOBAL",2)
~ THEN REPLY #53882 /* ~"다콘을 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  Global("Sell_Nordom","GLOBAL",2)
~ THEN REPLY #53883 /* ~"노돔을 브리스치카에게 판 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~  GlobalGT("Dakkon_Slave","GLOBAL",0)
~ THEN REPLY #53884 /* ~"다콘을 오랜 세월동안 노예로 만든 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",2)
~ THEN REPLY #53885 /* ~"이그너스에게 다른 이들을 해칠 마법을 가르친 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Global("Evil_Pillar_2","GLOBAL",1)
~ THEN REPLY #53886 /* ~"모트를 배신하여 그를 해골들의 기둥에 남겨 둔 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  Dead("Dakkon")
~ THEN REPLY #53887 /* ~"다콘의 죽음..."~ */ GOTO 9
  IF ~  Dead("Annah")
~ THEN REPLY #53888 /* ~"안나의 죽음..."~ */ GOTO 9
  IF ~  Dead("Morte")
~ THEN REPLY #53889 /* ~"모트의 죽음..."~ */ GOTO 9
  IF ~  Dead("Grace")
~ THEN REPLY #53890 /* ~"훨-후럼-그레이스의 죽음..."~ */ GOTO 9
  IF ~  Dead("Ignus")
~ THEN REPLY #53891 /* ~"이그너스의 죽음..."~ */ GOTO 9
  IF ~  Dead("Nordom")
~ THEN REPLY #53892 /* ~"노돔의 죽음..."~ */ GOTO 9
  IF ~  Dead("Vhail")
~ THEN REPLY #53893 /* ~"베일로의 죽음..."~ */ GOTO 9
  IF ~~ THEN REPLY #53894 /* ~다른 후회에 대해 생각한다...~ */ GOTO 13
  IF ~~ THEN REPLY #53895 /* ~피부조각에 아무 것도 쓰지 않고서 상처가 그냥 아물도록 한 후, 피부조각을 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 13.1
  SAY #53896 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~  GlobalGT("Murder","GLOBAL",20)
~ THEN REPLY #53897 /* ~"사람들을 더 죽이지 못한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Skin_Regret_1","GLOBALGood",-3)
~ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53898 /* ~"코우크스메탈을 공성탑에서 해방시키지 않은 일..."~ */ GOTO 9
  IF ~  Global("Lawful_Coaxmetal_1","GLOBAL",0)
Global("Evil_Coaxmetal_4","GLOBAL",1)
~ THEN REPLY #53899 /* ~"코우크스메탈을 공성탑에서 해방시키지 않은 일..."~ */ GOTO 9
  IF ~  Global("Chaotic_Coaxmetal_1","GLOBAL",1)
~ THEN REPLY #53900 /* ~"코우크스메탈을 공성탑에서 해방시킨 일..."~ */ GOTO 9
  IF ~~ THEN REPLY #53903 /* ~"래벌을 죽여야만 했던 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53904 /* ~"염병할 전이문이 내가 처음 깨어난 곳 바로 옆에 있었는데도 온갓 차원들을 헤매고 다닌 일..."~ */ GOTO 9
  IF ~~ THEN REPLY #53905 /* ~다른 후회에 대해 생각한다...~ */ GOTO 13
  IF ~~ THEN REPLY #53906 /* ~피부조각에 아무 것도 쓰지 않고서 상처가 그냥 아물도록 한 후, 피부조각을 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 13.2
  SAY #53907 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~~ THEN REPLY #53908 /* ~"애초에 불사신으로 만들어 달라고 부탁했던 일..."~ */ GOTO 9
  IF ~  Global("Murdered_Fin","GLOBAL",1)
~ THEN REPLY #53909 /* ~"휜 앤들리의 살인... 만약 내가 불사신이 되지 않았었다면 내 편집증적 화신이 그를 죽이는 일도 없었을 텐데."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #53910 /* ~"내 전신들이 자신들과 다른 이들에게 입힌 피해..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~~ THEN REPLY #53911 /* ~"이 곳과 다원 우주 전역에 걸쳐 나 때문에 죽은 이들..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",3)
~ GOTO 9
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",1)
~ THEN REPLY #53912 /* ~"데이오나라가 나와 동행하도록 그녀에게 거짓말을 한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",0)
~ THEN REPLY #53913 /* ~"후회의 요새에서 데이오나라를 살해한 일..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~  GlobalGT("Deionarra_Death_Truth","GLOBAL",1)
GlobalGT("Know_Iannis_Deionarra_Death","GLOBAL",0)
~ THEN REPLY #53914 /* ~"이언니스의 딸을 죽게 만듬으로서 내가 그에게 준 고통..."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Skin_Regret_1","GLOBALGood",2)
~ GOTO 9
  IF ~~ THEN REPLY #53915 /* ~다른 후회에 대해 생각한다...~ */ GOTO 13
  IF ~~ THEN REPLY #53916 /* ~피부조각에 아무 것도 쓰지 않고서 상처가 그냥 아물도록 한 후, 피부조각을 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 13.3
  SAY #53917 /* ~당신은 그 말을 혼자서 속삭인다, 하지만 후회는 당신의 정신 속에서 메아리친다: '나는 후회한다...'~ */
  IF ~~ THEN REPLY #53918 /* ~"내 죽음이 어디 있는지 알아내는 데 이토록 오랜 시간이 걸린 일..."~ */ GOTO 9
  IF ~  GlobalGT("Death","GLOBAL",20)
~ THEN REPLY #53919 /* ~"여기까지 오는 데 많은 목숨이 희생된 일..."~ */ GOTO 9
  IF ~  NumInParty(1)
!NearbyDialog("DNordom")
!NearbyDialog("DVhail")
!NearbyDialog("Dignus")
!NearbyDialog("DGrace")
!NearbyDialog("Dannah")
!NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
~ THEN REPLY #53920 /* ~"이 순간을 나와 함께 나눌 사람이 아무도 없다는 일..."~ */ GOTO 9
  IF ~~ THEN REPLY #53921 /* ~"이 피부조각에 적을 후회가 없다는 일..."~ */ GOTO 9
  IF ~~ THEN REPLY #53922 /* ~다른 후회에 대해 생각한다...~ */ GOTO 13
  IF ~~ THEN REPLY #53923 /* ~피부조각에 아무 것도 쓰지 않고서 상처가 그냥 아물도록 한 후, 피부조각을 치운다. ~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 5.2 5.3 5.4 5.5 5.6 5.7 5.8 5.9 5.10 5.11 5.12 5.13 5.14 5.15 5.16 5.17 5.18 5.19 5.20 5.21 5.22 5.23 6.0 6.1 6.2 6.3 6.4 6.5 7.0 7.1 7.2 7.3 7.4 7.5 7.6 8.0 8.1 8.2 8.3
  SAY #53924 /* ~당신은 피부 조각에 후회를 갈겨 쓴다... 하지만 당신의 신속한 회복력 때문에 당신은 때때로 손가락에 난 상처를 쑤셔서 피를 더 짜내야만 한다. 얼마 후 당신은 후회를 쓰는 일을 마친다, 그리고 피부 조각 위에서는 당신의 피가 반짝이고 있다... 그것은 당신의 살, 피, 그리고 후회의 결합이다. ~ */
  IF ~  Global("Regret_Experience","GLOBAL",0)
~ THEN REPLY #53926 /* ~피가 마르는 걸 지켜본다...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
AddexperienceParty(250000)
SetGlobal("Regret_Experience","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Regret_Experience","GLOBAL",1)
~ THEN REPLY #53927 /* ~피가 마르는 걸 지켜본다...~ */ DO ~TransformPartyItem("SkScrap","SkRegret",1,0,0)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53928 /* ~당신이 피로 쓴 후회가 마르기를 기다릴 때, 냉기가 당신을 엄습한다. 당신은 올려다본다 - 아치 양쪽의 검은 기둥들이 부드럽게 빛나기 시작한다, 그리고 그 옆에서 나오는 티끌처럼 작은 희미한 하얀 빛들이 기둥들 사이에서 빛나는 커튼을 형성한다. 커튼 너머로 어둠 속으로 향하는 석제 둑길이 희미하게 보인다.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53929 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53930 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53931 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53932 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("Ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53934 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53935 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53936 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53937 /* ~"모두 준비는 됐소?"~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53938 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53939 /* ~"모두 준비는 됐소?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53940 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어간다.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53941 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어간다.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53942 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어간다.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53943 /* ~전이문을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~  PartyHasItem("SkRegret")
~ THEN BEGIN 11 // from:
  SAY #53947 /* ~당신이 손에 피부에 적힌 후회를 쥐고 아치에 다가가자, 당신은 한기를 느끼기 시작한다, 그리고 아치 양쪽의 검은 기둥들이 부드럽게 빛나기 시작한다. 그 옆에서 나오는 티끌처럼 작은 희미한 하얀 빛들이 기둥들 사이에서 빛나는 커튼을 형성한다. 커튼 너머로 어둠 속으로 향하는 석제 둑길이 희미하게 보인다.~ */
  IF ~  NearbyDialog("DNordom")
InParty("Nordom")
~ THEN REPLY #53948 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DNORDOM~ 16
  IF ~  !InParty("Nordom")
NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #53949 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Nordom")
!InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #53950 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #53951 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #53952 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
~ THEN REPLY #53954 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
InParty("Dakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
~ THEN REPLY #53956 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53957 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DMORTE~ 536
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53958 /* ~"모두 준비는 됐소?"~ */ EXTERN ~DMORTE~ 534
  IF ~  !InParty("nordom")
!InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("dakkon")
!InParty("Morte")
NumInPartyGT(1)
~ THEN REPLY #53959 /* ~"모두 준비는 됐소?"~ */ GOTO 12
  IF ~  PartyHasItem("SkRegret")
!NearbyDialog("DMorte")
~ THEN REPLY #53960 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어갈 준비를 한다.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53961 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어갈 준비를 한다.~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  PartyHasItem("SkRegret")
NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #53962 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어갈 준비를 한다.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53963 /* ~전이문을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.9 11.9
  SAY #53964 /* ~아무도 당신 질문에 대답하지 않는다. 당신 목소리가 들릴 만큼 가까운 곳에 있는 동료는 한 명도 없다.~ */
  IF ~  PartyHasItem("SkRegret")
~ THEN REPLY #53965 /* ~당신의 후회가 적힌 피부조각을 손에 쥐고 커튼 속으로 들어갈 준비를 한다.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #53966 /* ~가서 동료들을 찾은 후 전이문으로 돌아온다.~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.24 6.6 7.7 8.4
  SAY #53967 /* ~당신이 잠시 생각할 동안 손가락에 난 상처는 완전히 회복된다. 당신은 어쩔 수 없이 손가락 끝에 다시 상처를 내고 피를 좀더 짜낸다. 당신이 당신의 후회를 갈겨 쓰려고 하자, 일련의 이미지들이 당신 정신 속에 떠오른다.~ */
  IF ~  NumInPartyGT(1)
~ THEN REPLY #53969 /* ~후회: "내 동료들에게 일어난 일을 후회한다..."~ */ GOTO 5
  IF ~~ THEN REPLY #53970 /* ~후회: "내가 한 행동을 후회한다..."~ */ GOTO 6
  IF ~~ THEN REPLY #53971 /* ~후회: "내 과거를 후회한다..."~ */ GOTO 7
  IF ~~ THEN REPLY #53972 /* ~후회: "이 시점에까지 이르게 만든 사건들을 후화한다..."~ */ GOTO 8
  IF ~~ THEN REPLY #53973 /* ~피부조각을 치운다...~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.0
  SAY #66925 /* ~...하지만 피부 조각을 넣을 공간이 인벤토리에 없다, 그리고 그것은 바닥에 떨어진다. ~ */
  IF ~~ THEN REPLY #66926 /* ~전이문으로부터 방향를 돌리고 피부조각을 줍는다.~ */ EXIT
END
