// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNORDOM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DNORDOM~

IF ~  Global("Nordom","GLOBAL",0)
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2852 /* ~팔이 네 개, 다리가 두 개 달린 입방체가 보인다. 그것의 모습은 전체적으로는 기계적이나, 입방체의 전면은 타원형의 큼직한 두 눈이 달린 기묘하며 유기적인 녹색의 얼굴이다. 입방체는 당신을 미처 보지 못한 듯하며, 손에 들고 있는 두 개의 석궁들을 골똘히 바라보고 있다. 입방체의 좌측 상단에는 다면 렌즈가 달려 있으며, 그것은 내려와서 입방체의 눈을 덮음으로서 일종의 사격용 스코프 구실을 하도록 만들어진 것 같다.~ */
  IF ~~ THEN REPLY #2853 /* ~"어... 안녕하시오...?~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 18
  IF ~~ THEN REPLY #34013 /* ~입방체를... 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #16630 /* ~"정의하십시오: 필요한 도움.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
NearbyDialog("DMorte")
~ THEN REPLY #16952 /* ~"나는 당신에게 통곡자가 여기 있는 나무들을 배려하는 것을 도우라고 부탁하고 있소."~ */ EXTERN ~DMORTE~ 183
  IF ~  CheckStatLT(Protagonist,15,INT)
!NearbyDialog("DMorte")
~ THEN REPLY #16953 /* ~"나는 당신에게 통곡자가 여기 있는 나무들을 배려하는 것을 도우라고 부탁하고 있소."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #16954 /* ~"노돔: '벌통' 구역에 있는 모든 나무가 건강해지고 잘 자라도록 바라도록 하시오."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #16631 /* ~"어떤 방법으로 그들을 돌봐야 합니까?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16955 /* ~"어... 아니, 내 말은 소중하게 생각하라는 거요.~ */ EXTERN ~DMORTE~ 184
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16956 /* ~"어... 아니, 내 말은 소중하게 생각하라는 거요.~ */ GOTO 3
  IF ~~ THEN REPLY #16957 /* ~"관두시오. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16958 /* ~"관두시오. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #16632 /* ~"요청: 통고자(별칭 - 나무를-위해-통곡하는-자) [나무를 소중하게 생각]. 잘못된 명령/오브젝트 이름입니다. ~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16970 /* ~"그럼 관두시오. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16971 /* ~"관두시오. 안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16972 /* ~"관두시오. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16973 /* ~"관두시오. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16981 /* ~"관두시오. 다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16982 /* ~"관두시오. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16983 /* ~"관두시오. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16984 /* ~"그럼 관두시오. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16990 /* ~"관두시오. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #16633 /* ~"명령은 이해되었습니다. 매게 변수 승인 완료. 전술한 요구의 목적은 무엇입니까?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #16991 /* ~"벌통은 혼돈과 쇠퇴의 장소요. 활력을 되찾은 나무들이 있으면 이 곳에도 어느 정도의 질서가 회복될 가능성이 있소."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 5
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #16993 /* ~"벌통은 혼돈과 쇠퇴의 장소요. 활력을 되찾은 나무들이 있으면 이 곳에도 어느 정도의 질서가 회복될 가능성이 있소."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #16634 /* ~"전술한 욕구는 즉시 시작될 것입니다."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 185
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #16992 /* ~"전술한 욕구는 즉시 시작될 것입니다."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16994 /* ~"고맙소, 노돔. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16995 /* ~"고맙소, 노돔. 안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16996 /* ~"고맙소, 노돔. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DGrace")
Global("Tree_G","AR0400",0)
~ THEN REPLY #16997 /* ~"고맙소, 노돔. 그레이스, 고려해 보겠소?"~ */ DO ~SetGlobal("Tree_G","AR0400",1)
~ EXTERN ~DGRACE~ 14
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16998 /* ~"고맙소, 노돔. 다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16999 /* ~"고맙소, 노돔. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #17000 /* ~"고맙소, 노돔. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #17001 /* ~"고맙소, 노돔. 질문할 것들이 좀 있소, 통곡자..."~ */ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #17002 /* ~"정말 고맙소, 노돔. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ EXIT
END

IF ~  GlobalGT("Nordom","GLOBAL",0)
!InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #34006 /* ~노돔은 생각에 잠긴 듯하다. 그는 마치 계산기처럼 *째깍* 그리고 *윙윙* 소리를 내며 혼자서 속삭이고 있다. ~ */
  IF ~~ THEN REPLY #34007 /* ~"노돔, 난 당신 도움이 필요하오. 나와 함께 여행을 하겠소?"~ */ GOTO 8
  IF ~~ THEN REPLY #34008 /* ~노돔이 "생각"을 하도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #34009 /* ~노돔의 '입'을 움직여 입의 양쪽 가장자리에 기괴한 반원을 만든다. "긍정적임! 승인 완료, 허가 전달." 그의 두 석궁들은 그의 양손에서 거의 튕겨져 나올 정도로 격렬하게 "째깍* 그리고 *팅* 소리를 내며 진동하고 있다. "상태: 준비 완료 그리고 대기 중."~ [NOR298] */
  IF ~  Global("Nordom","GLOBAL",2)
~ THEN REPLY #34010 /* ~"갑시다, 그럼."~ */ DO ~ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
  IF ~  GlobalLT("Nordom","GLOBAL",2)
~ THEN REPLY #66820 /* ~"그럼 갑시다."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~  InParty("Nordom")
!GlobalGT("Fortress_Nordom","GLOBAL",2)
~ THEN BEGIN 9 // from:
  SAY #34011 /* ~노돔은 그의 석궁들을 뚫어져라 바라보고 있다. 그것들은 마치 서로 대화라도 나누듯 번갈아 가며 째깍 소리를 내고 있다.~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55968 /* ~"노돔, 창조적 관리자의 직무가 무엇인지 말해줄 수 있겠소?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55971 /* ~"노돔, 창조적 관리자의 직무가 무엇인지 다시 말해주시오."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55974 /* ~"창조적 관리자로서 당신에게 내릴 명령이 있소."~ */ GOTO 81
  IF ~~ THEN REPLY #55975 /* ~"석궁들을 가지고 뭘 하고 있는 거요?"~ */ GOTO 43
  IF ~~ THEN REPLY #55977 /* ~"궁금하오, 노돔... 당신은 어떻게 해서 루비콘에 오게 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55979 /* ~"노돔, 모드론이란 무엇이오?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55980 /* ~"미캐너스에 대해 얘기해주시오, 노돔."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55984 /* ~"어... 잘 지내고 있소, 노돔?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55988 /* ~"잘 지내고 있소. 노돔?"~ */ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55991 /* ~"노돔, 당신은 전에 나보고 잘 지내고 있느냐고 물은 적이 있소, 그렇지 않소?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55994 /* ~"내 불사성에 대해 다시 이야기를 나눌 수 있겠소?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55996 /* ~"노돔, 래벌 퍼즐웰이라는 사람에 대해 들은 적이 있소?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #56000 /* ~"노돔, 혹시 블러드 워에 대해 아는 바가 없소?"~ */ GOTO 76
  IF ~~ THEN REPLY #56002 /* ~노돔이 무기와 놀도록 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #39579 /* ~"제 13.7 회전시 우리는 미캐너스의 제5륜 아래의 제31 톱니바퀴 부부 집합을 수리하도록 명령받았습니다. 우리는 장애물을 제거했고 톱니바퀴는 다시 정상 속도로 돌아갔습니다. 우리의 임무를 완료한 후 우리는 근원으로 귀환하였습니다. ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 418
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39759 /* ~"그건 흥미로운 얘기였소, 노돔."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #39580 /* ~"그것이 실제로 일어난 일입니다. 물론 다소의 윤색은 했습니다." ~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 419
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #39760 /* ~"미화?"~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #39582 /* ~"나는 근원으로의 귀환이 이야기를 끝내는 데 적절한 이미지라고 생각했습니다."~ */
  IF ~~ THEN EXTERN ~DYVES~ 59
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50712 /* ~"내 용역이 매매의 대상이 되고 있다고 이해하면 되겠습니까? ? 금전적인 거래에 바탕을 둔 당신으로부터 부리스치카에게로의 명령권의 이전입니까? ~ */
  IF ~~ THEN REPLY #50713 /* ~"그렇소. 그를 사겠소, 브리스치카?"~ */ EXTERN ~DVRISCH~ 49
  IF ~~ THEN REPLY #50714 /* ~"그렇소, 하지만 이 일에 대해선 그냥 잊으시오. 다른 질문이 있소, 브리스치카."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50715 /* ~"그렇소, 하지만 생각을 바꿨소. 갑시다, 노돔."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #50716 /* ~"노돔은 브리스치카 - 알루-휜드, 수입업자, 골동품 가게 주인을 주 명령권자로 설정할 준비를 하고 있습니다."~ */
  IF ~~ THEN DO ~DropInventory()
LeaveParty()
~ EXTERN ~DVRISCH~ 57
END

IF ~~ THEN BEGIN 15 // from:
  SAY #52580 /* ~"질문: 노돔은 어떻게 정의합니까 /선택/? 정의: 선택: 고르는 행위, 고를 권리나 기회-"~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #52581 /* ~"노돔, 멈추시오. 이것은 나와 래벌 사이의 문제요. 보시오, 래벌--"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ EXTERN ~DRAVEL~ 64
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #52582 /* ~"노돔, 멈추시오. 이것은 나와 래벌 사이의 문제요. 보시오, 래벌--"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ EXTERN ~DRAVEL~ 65
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #52583 /* ~"노돔, 멈추시오. 이것은 나와 래벌 사이의 문제요. 보시오, 래벌--"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ EXTERN ~DRAVEL~ 66
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52584 /* ~"노돔, 멈추시오. 이것은 나와 래벌 사이의 문제요. 보시오, 래벌--"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ EXTERN ~DRAVEL~ 67
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52585 /* ~"노돔, 멈추시오. 이것은 나와 래벌 사이의 문제요. 보시오, 래벌--"~ */ EXTERN ~DRAVEL~ 68
END

IF ~~ THEN BEGIN 16 // from:
  SAY #54847 /* ~"질문: 수령 확인. 응답: 노돔 준비 완료 상태로 대기 중. 추가 명령 고백(profess)을 위해 대기 중."~ */
  IF ~  NearbyDialog("DVhail")
InParty("Vhail")
~ THEN REPLY #54848 /* ~"실은, 그건 '처리(process)'요... 관둡시다. 베일로?"~ */ EXTERN ~DVHAIL~ 15
  IF ~  !InParty("Vhail")
NearbyDialog("Dignus")
InParty("Ignus")
~ THEN REPLY #54849 /* ~"실은 그건 '프로세스'요... 관둡시다. 이그너스?"~ */ EXTERN ~DIGNUS~ 19
  IF ~  !InParty("Vhail")
!InParty("ignus")
NearbyDialog("DGrace")
InParty("Grace")
~ THEN REPLY #54850 /* ~"실은 그건 '프로세스'요... 관둡시다. 그레이스?"~ */ EXTERN ~DGRACE~ 168
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
NearbyDialog("DAnnah")
InParty("Annah")
~ THEN REPLY #54851 /* ~"실은 그건 '프로세스'요... 관둡시다. 안나?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54852 /* ~"실은 그건 '프로세스'요... 관둡시다. 다콘?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54853 /* ~"실은 그건 '프로세스'요... 관둡시다. 다콘?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("vhail")
!InParty("ignus")
!InParty("grace")
!InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54854 /* ~"실은 그건 '프로세스'요... 관둡시다. 모트?~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("Vhail")
!InParty("ignus")
!InParty("Grace")
!InParty("annah")
!InParty("Dakkon")
NearbyDialog("DMorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54855 /* ~"실은 그건 '프로세스'요... 관둡시다. 모트?~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54856 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54857 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54858 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #55092 /* ~"해골들의 기둥: 타인에게 거짓말로 타인의 죽음을 초래한 인간들의 두부로 구성된 것으로 알려져 있음. 기둥은 지식의 저장고 역할을 하고 있음. 기둥은 97% 이상의 확률로 지식을 공유하는 대가를 요구함. 기둥의 요구는 일관되게 일반적인 인간이 '엄청난'이라고 표현할 수준임. 논리적으로 분석할 때 특정한 정보의 필요성 역시 마찬가지로 '엄청난' 경우를 제외하고는 질문을 하지 않는 것이 바람직함."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 18 // from: 0.0
  SAY #55099 /* ~입방체가 *지저귄다,* 그리고 그것이 눈을 격렬하게 깜박이자 *찰깍-찰깍-찰깍* 소리가 난다. 입방체는 돌아서서 눈을 크게 뜨고 당신을 본다, 그리고 마치 항복하는 것처럼 빈 손 두 개를 하늘로 들어 올린다... 하지만 그것의 두 개의 석궁은 이제 당신을 겨냥하고 있다. 왠지 당신은 그 생명체(?)의 모든 관절부가 일련의 윙윙거리는 톱니바퀴들로 구성되어 있다는 생각이 든다.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 571
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55102 /* ~"어..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #55105 /* ~그것은 잠시 당신을 쳐다본더니, 자신의 입방형의 동체를 회전시켜 당신에게 등을 돌린다, 그리고 마치 도망이라도 치듯 동체를 아래위로 움직이기 시작한다 - 하지만 다리는 당신 쪽을 향한 채 고정되어 있다. 그가 '달리는' 동안 그의 석궁의 톱니바퀴들은 그것의 손에서 *찰깍* *팅* 소리를 내기 시작한다.~ */
  IF ~~ THEN REPLY #55106 /* ~"어... 당신은 자신이 뒤쪽을 향하고 있다는 걸 아오?" ~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #55107 /* ~그 생명체는 아래위로 움직이는 것을 멈추고 돌아서서 당신을 마주본다. "거꾸로 모드론 = '노돔(MODRON = NORDOM)?'" 입방체의 목소리는 금속성의 진동음으로, 마치 모든 단어가 용수철에서 튀어나와 착지하는 것처럼 느껴진다. 그는 입을 비틀어 입가에 기괴한 반원 모양을 만든데, 아마 미소를 짓고 있는 듯하다. "감사! 감사!"~ */
  IF ~~ THEN REPLY #55108 /* ~"어... 미안하오?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~나는 이름이 얼마나 위험한지를 깨달았다. 루비콘 안에서 방황하던 중 난 기묘한 모드론을 만났다. 내가 그에게 말을 걸었을 때 그는 내가 자신을 명명하려고 한다고 생각했다. 그의 새 이름은 '노돔(nordom -  modron의 철자를 거꾸로 늘어놓은 것)'이며, 그는 모드론치고는 정신이 혼란스러운 것 같다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY #55110 /* ~ "거꾸로 모드론 = '노돔(MODRON = NORDOM)?'" 입방체의 목소리는 금속성의 진동음으로, 마치 모든 단어가 용수철에서 튀어나와 착지하는 것처럼 느껴진다. 그는 입을 비틀어 입가에 기괴한 반원 모양을 만드는데, 아마 미소를 짓고 있는 듯하다. "감사! 감사!"~ */
  IF ~~ THEN REPLY #55111 /* ~"어... 미안하오?"~ */ DO ~SetGlobal("Nordom","GLOBAL",1)
~ JOURNAL #55109 /* ~나는 이름이 얼마나 위험한지를 깨달았다. 루비콘 안에서 방황하던 중 난 기묘한 모드론을 만났다. 내가 그에게 말을 걸었을 때 그는 내가 자신을 명명하려고 한다고 생각했다. 그의 새 이름은 '노돔(nordom -  modron의 철자를 거꾸로 늘어놓은 것)'이며, 그는 모드론치고는 정신이 혼란스러운 것 같다.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 20.0 21.0
  SAY #55112 /* ~"미안하지 않음. 무 미안. 자체 식별, 의심+숙고+분석에 의해 절충." 입방체는 다시 *지저귄다, 그리고 *찰깍* 소리를 내며 한쪽 눈을 깜박인다, 그러자 나머지 한쪽 눈도 빠지기가 싫은 듯 역시 찰깍거린다. ~ */
  IF ~~ THEN REPLY #55113 /* ~"난 아직도 이해하지 못하겠소."~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55114 /* ~"당신은 내가 당신을... 식별해서 고맙다는 거요? 당신은 모드론이 아니오?"~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #55115 /* ~입방체의 얼굴은 안정된 형태를 취한다, 그리고 그의 입은 일자가 된다. "이 유닛의 식별은 절충됨. 주제: 식별된 유닛을 '노돔'이라 명명함. 노돔에게 정체성을 제공한 데 대해 사의를 표함.~ */
  IF ~~ THEN REPLY #55116 /* ~"그건 아무 것도 아니었소. 정말이오."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #55117 /* ~노돔의 눈은 *찰깍* 소리를 내며 한 번, 두 번, 세 번 깜박인다, 그리고 그 때마다 눈 한가운데 있는 검은 점들이 팽창한다. 세 번째 깜박임 후에 그것들은 큰 점 정도의 크기가 된다. "현실화 도달. 노돔 수신자의 이름에 대한 정보: 무. 신원 확인 요망."~ */
  IF ~~ THEN REPLY #55118 /* ~"'밝히시오'라고 말하려고 한 거요? 그렇소?"~ */ GOTO 25
  IF ~~ THEN REPLY #55119 /* ~진실: "내게는 정말로 이름이 없소, 노돔."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55120 /* ~거짓말: "아단. 내 이름은 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #55121 /* ~"긍정적. 신원 확인 필요. 요청: 노돔에게 신원 공개 요망."~ */
  IF ~~ THEN REPLY #55122 /* ~진실: "내게는 정말로 이름이 없소, 노돔."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Nordom_1","GLOBALLaw",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 26
  IF ~~ THEN REPLY #55123 /* ~거짓말: "아단. 내 이름은 아단이오."~ */ DO ~IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_1","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 33
  IF ~~ THEN REPLY #55124 /* ~"노돔, 난 내가 누군지 밝히고 싶지 않소. 사실 난 당장 이 대화를 중단하고 내 볼일을 보고 싶소."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 24.1 25.0
  SAY #55125 /* ~노돔의 눈이 벌어진다, 그리고 그의 '동공'의 크기가 원래 크기로 돌아간다. 그는 *찰깍* 소리를 내며 눈을 깜박이려고 하나, 그의 눈을 덮고 있는 금속 셔터들이 올라가지 않는다. 잠시 그것들은 마치 껴서 빠지질 않는 듯 덜거덕거리기 시작한다.~ */
  IF ~~ THEN REPLY #55126 /* ~"어... 노돔, 이제 눈을 떠도 좋소."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #55127 /* ~또 한 번의 *찰깍* 소리와 함께 노돔의 눈이 열린다. "눈을 닫지 않음: 대상(미식별, 이름 없음)의 해명 중. 작성 중... 질문 제출: 당신은 상실되었습니까?"~ */
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #55128 /* ~"잃어버려? 무슨 뜻이오?"~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #55129 /* ~"잃어버려? 무슨 뜻이오?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #55130 /* ~"잃어버려? 무슨 뜻이오?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.2
  SAY #55131 /* ~노돔의 떨리는 질문은 '상실'이라는 단어로 끝나자, 당신은 머리 뒤편에서 무엇인가 기어 다니고 있는 듯한 기묘한 느낌을 받는다 - 그 느낌과 함께 두 가지가 확실해진다. 당신이 이 질문을 들은 것은 이번이 처음이 아니다, 그리고 노돔이 당신의 다음 질문에 대해 할 얘기는 중요하다.~ */
  IF ~~ THEN REPLY #55132 /* ~"노돔, 당신이 '상실'이라고 말할 때 그건 어떤 의미요?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #55133 /* ~"이름 없음 = 신원 없음 = 목적 없음 = 다원 우주에서의 위치 없음 = 공백 상태 = 상실. 노돔도 대상(미식별, 이름 없음)이 노돔에게 신원을 지정하기 전에는 공백 상태로 존재. 무 신원, 무 목적, 무 위치 = '상실.'"~ */
  IF ~~ THEN REPLY #55134 /* ~"내게도 한때는 이름이 있었겠지만 지금은 잊어버렸소."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #55135 /* ~"새 질문 작성 중." 노돔이 눈을 신속하게 세 번 깜빡이자 *탁-탁-탁* 소리가 난다. 그 소리는 마치 망치로 양철판을 두들기는 소리 같다. "노돔에게 다음 행동의 동기 설명 요망: 망각."~ */
  IF ~~ THEN REPLY #55136 /* ~"그냥 그렇게 되었소. 그건 의도적인 일이 아니었소."~ */ GOTO 31
  IF ~~ THEN REPLY #55137 /* ~"생각하건대 망각은 내 특성인 듯하오."~ */ GOTO 31
  IF ~~ THEN REPLY #55138 /* ~"그건 내 상태의 부작용... 이라고 생각하오."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0 30.1 30.2
  SAY #55139 /* ~금속 셔터가 윙 소리와 함께 그의 눈을 덮는다, 그리고 그는 눈을 감은 채로 몇 초 동안 덜거덕거린다. 노돔은 눈을 *찰칵* 소리를 내며 뜬 다음 *지저귄다.* "질문: 기억 불량?"~ */
  IF ~~ THEN REPLY #55140 /* ~"그래, 그렇게 말할 수도 있겠소."~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #55141 /* ~"질문의 명료화를 위한 전제 행동: 노돔의 기억에는 여유 공간 있음. 질문/행동: 대상(미식별, 이름 없음)의 답의 '예스'인 경우 노돔은 당신을 위해 재-기억을 해줄 수 있습니다.~ */
  IF ~~ THEN REPLY #55142 /* ~"좋소, 그렇게 하시오, 노돔... 이보시오, 어쩼든 난 내 갈 길을 가야만 하오..."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
  IF ~~ THEN REPLY #55143 /* ~"제의는 고맙소, 노돔. 원한다면 그래도 좋소. 하지만 말이오, 난 정말 가봐야만 하오."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 33 // from: 24.2 25.1
  SAY #55144 /* ~노돔의 눈이 벌어진다, 그리고 그의 '동공'의 크기가 원래 크기로 돌아간다. 그는 *찰깍* 소리를 내며 눈을 깜박이려고 하나, 그의 눈을 덮고 있는 금속 셔터들이 올라가지 않는다. ~ */
  IF ~~ THEN REPLY #55145 /* ~"어... 노돔, 이제 눈을 떠도 좋소."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #55146 /* ~도 한 번의 *찰깍* 소리와 함께 노돔의 눈이 열린다. "눈을 닫지 않음: 아단을 위한 행동 해명. 정보 기록 중. 기억. 아단: 이름 기록됨. 노돔은 지적 생명체 아단의 신원을 잊지 않을 것임." ~ */
  IF ~~ THEN REPLY #55147 /* ~"멋지군. 어쨌든, 노돔, 만나서 반가웠소, 하지만 난 가야만 하오.:~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 25.2 32.0 32.1 34.0
  SAY #55148 /* ~노돔이 손에 쥔 석궁들로부터 갑자기 일련의 *찰깍*과 *팅* 소리가 들린다. 그은 눈을 돌려 석궁들에 다시 초점을 맞춘다. 그리고 무슨 얘기라도 들으려는 듯 오른쪽 석궁을 얼굴이 가까이에 댄다. ~ */
  IF ~~ THEN REPLY #55149 /* ~"모든 것이 다 괜찮소?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #55150 /* ~노돔의 한쪽 눈은 희미하게 *찰칵*거리고 있는 석궁을 계속 향하고 있다, 그리고 다른 한쪽 눈은 당신을 향하고 있다. "질문: 이 자들이 당신의 들것(gurney)에 합류해도 괜찮겠습니까?"~ */
  IF ~~ THEN REPLY #55157 /* ~"어, '여행(journey)'이라고 하려 한 거 아니요?"~ */ GOTO 37
  IF ~~ THEN REPLY #55164 /* ~"그건 별로 좋은 생각이 아닌 것 같소. 아니, 지금은 안 되오... 노돔."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55165 /* ~"그래... 좋소. 하지만 인사 이동을 좀 해야 할 것 같소."~ */ GOTO 39
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55166 /* ~"물론이오. 우린 언제나 일손... 아니, *사*손이 필요하오."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #55167 /* ~"확인. 여행 , 긍정. 승인을 하시겠습니까?"~ */
  IF ~~ THEN REPLY #55168 /* ~"그건 별로 좋은 생각이 아닌 것 같소. 아니, 지금은 안 되오... 노돔."~ */ GOTO 38
  IF ~  NumInParty(6)
~ THEN REPLY #55169 /* ~"그래... 좋소. 하지만 인사 이동을 좀 해야 할 것 같소."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55170 /* ~"물론이오. 우린 언제나 일손... 아니, *사*손이 필요하오."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #55171 /* ~노돔은 눈을 크게 뜨고 당신을 쳐다보고 있다. 그의 오른쪽 석궁이 찰깍 소리를 내자 그가 눈을 깜박인다. "부가 질문: 제발 ?"~ */
  IF ~~ THEN REPLY #55172 /* ~"지금은 아니오, 노돔."~ */ GOTO 39
  IF ~  NumInParty(6)
~ THEN REPLY #55173 /* ~"그래... 좋소. 하지만 인사 이동을 좀 해야 할 것 같소."~ */ GOTO 40
  IF ~  NumInPartyLT(6)
~ THEN REPLY #55174 /* ~"물론이오. 우린 언제나 일손... 아니, *사*손이 필요하오."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #55175 /* ~노돔의 입은 회전하여 아래쪽을 향하는 반원이 된다. "질문에 대한 응답: 수리되어 인식되었음, 노돔은 보다 큰 공동체와의 단절을 유지하겠음. 노돔은 회수될 때까지 이 폴리곤 공간에서 거주하겠습니다."~ */
  IF ~~ THEN REPLY #55176 /* ~"알겠소. 내가 돌아올 수도 있을 거요, 노돔.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 37.1 37.2 38.1 38.2
  SAY #55177 /* ~노돔의 '입'은 전과 마찬가지로 기괴한 반원 모양이 된다, 그리고 그의 두 석궁은 격렬하게 *찰깍*과 *팅* 소리를 내며 그의 손에서 튀어나갈 정도로 심하게 진동한다. "감사! 감사! 노돔 및 석궁들은 보다 큰 공동체의 일원이 되었음."~ */
  IF ~~ THEN REPLY #55178 /* ~"감사하기는 아직 이르오. 나갑시다..."~ */ DO ~SetGlobal("Nordom","GLOBAL",2)
AddexperienceParty(36000)
ChangeAIScript("pcnordom",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #55179 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #55180 /* ~Null_Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from: 9.3
  SAY #55181 /* ~"주목, 노돔: 필요함!" 노돔은 당신 쪽으로 회전하다가 중간에서 머뭇거린다, 그리고 *탁* 소리를 내며 자세를 바로잡는다. "질문에 대한 응답: 석궁에 행동 실행 중? 해명을 위한 요청 제출: 석궁 없음."~ */
  IF ~~ THEN REPLY #55182 /* ~"당신에게는 바로 거기에 한 쌍의 석궁이 있소, 노돔."~ */ GOTO 44
  IF ~~ THEN REPLY #55183 /* ~"정말로? 당신은 당신 손에 있는 두 개의 딸깍거리는 것을 무엇이라 부르오?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55184 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55185 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #55186 /* ~"해명: 문장에 오류. 노돔 석궁 사용하지 않음." 그는 잠시 더듬거린다. 그러더니 갑자기 석궁들이 당신을 가리키고 있다... 당신은 그것들이 움직이는 것을 보지 못했다. "무-무-무 석궁."~ */
  IF ~~ THEN REPLY #55189 /* ~"그 석궁들을 내게 겨누지 마시오."~ */ GOTO 45
  IF ~~ THEN REPLY #55190 /* ~"노돔, 당신은 석궁을 *사용하고* 있소 - 바로 거기에 두 개나 가지고 있지 않소."~ */ GOTO 45
  IF ~~ THEN REPLY #55191 /* ~"정말로? 당신은 당신 손에 있는 두 개의 딸깍거리는 것을 무엇이라 부르오?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55192 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55193 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0 44.1
  SAY #55194 /* ~당신이 잠시 눈을 깜박이고 나니 석궁들은 갑자기 노돔을 향하고 있다. 그는 그들의 움직임은 안중에 없는 듯 당신만 쳐다보고 있다 . "모순은 수축을 기동하지 않음. 무 석궁."~ */
  IF ~~ THEN REPLY #55195 /* ~"정말로? 당신은 당신 손에 있는 두 개의 딸깍거리는 것을 무엇이라 부르오?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 46
  IF ~~ THEN REPLY #55196 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55197 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 43.1 44.2 45.0
  SAY #55198 /* ~"응답: 맞잡을 수 있는 손가락으로 들고 있는 두 개의 -딸깍거리는- 객체." 노돔이 그의 리벳이 달린 손가락을 들어 두 개의 석궁들을 흔들자, 마치 성가시다는 듯 거기에서는 갑작스런 *찰깍* 소리와 *핑* 하는 소리가 난다. "응답: 객체 = 톱니바퀴 혼령."~ */
  IF ~~ THEN REPLY #55199 /* ~"톱니바퀴 혼령? 그게 무슨 뜻이오?"~ */ GOTO 47
  IF ~~ THEN REPLY #55200 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55201 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #55202 /* ~"질문: 정의: 톱니바퀴 혼령. 응답: 톱니바퀴 혼령."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55203 /* ~"그래, 하지만 톱니바퀴 혼령이 대체 뭐요?"~ */ EXTERN ~DMORTE~ 573
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55204 /* ~"그래, 하지만 톱니바퀴 혼령이 대체 뭐요?"~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1
  SAY #55205 /* ~"질문 = 질문 : 정의 = 정의: 톱니바퀴 혼령. 응답 = 톱니바퀴 혼령."~ */
  IF ~~ THEN REPLY #55206 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55207 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 9.4 74.3
  SAY #55208 /* ~노돔은 *지저귄다.* "질문에는 연대기의 제출 필요: 연대기의 제출을 원하십니까?"~ */
  IF ~~ THEN REPLY #55209 /* ~"그렇소, 알고 싶소."~ */ DO ~SetGlobal("Know_Mechanus","GLOBAL",1)
~ GOTO 50
  IF ~~ THEN REPLY #55210 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55211 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #55212 /* ~"루비콘 프로젝트의 기동시 수령된 명령: 차원/미캐너스로부터의 출발. 단계 1 : 목적지 도착: 차원/림보. 단계 2: 상급자/창조적 관리자에 의해 매개 변수 지정: 가설의 검증을 위한 차원(림보)의 물질 변화. 루비콘 던젼 건조."~ */
  IF ~~ THEN REPLY #55213 /* ~"계속하시오..."~ */ GOTO 51
  IF ~~ THEN REPLY #55214 /* ~"잠깐, 노돔. 미캐너스의 차원이 무엇이오?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~~ THEN REPLY #55215 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55216 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #55217 /* ~"상급자/ - 창조적 관리자: 현장 실험 중 소멸. 단계 2 완성과 함께 연대기 중단; 단계 3에서 중단. 프로젝트 지시 사항 아님."~ */
  IF ~~ THEN REPLY #55218 /* ~"이 3단계에서 무슨 일이 일어난 거요?"~ */ GOTO 60
  IF ~~ THEN REPLY #55219 /* ~"이 현장 실험이란 무엇이오?"~ */ GOTO 52
  IF ~~ THEN REPLY #55220 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55221 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.1
  SAY #55222 /* ~"상급자/ - 창조적 관리자 - 현장 실험: 루비콘 던젼 구조물(고난도)의 변수 판정을 위한 순찰 활동 전개. 다수의 편차 발견. 에러 유효 범위 초과." 노돔은 작은 윙윙 소리를 낸 후 *찰칵*소리와 함께 눈을 감는다. "창조적 관리자 현장 실험으로부터 귀환하지 않음."~ */
  IF ~~ THEN REPLY #55223 /* ~"알겠소. 당신이 말한 그 3단계에서 무슨 일이 일어났소?"~ */ GOTO 60
  IF ~  Global("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55224 /* ~"그는 어떻게 됐소?"~ */ GOTO 55
  IF ~  Global("Know_Director_Truth","GLOBAL",1)
~ THEN REPLY #55225 /* ~"나는 마법사 루비콘이 창조적 관리자를 소멸시켰다고 들었소."~ */ GOTO 56
  IF ~  Global("Know_Director_Truth","GLOBAL",0)
~ THEN REPLY #55226 /* ~"그는 어떻게 됐소?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 53
  IF ~~ THEN REPLY #55227 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55228 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.3
  SAY #55229 /* ~갑자기 왼쪽 석궁이 맹렬하게 *찰깍* 소리를 내기 시작한다, 그리고 노돔은 귀를 기울이려는 듯 그것을 한쪽에 갖다 댄다. *찰깍* 소리는 오른쪽 석궁의 반향하는 *팅* 소리에 의해 갑자기 중단될 때까지 계속된다.~ */
  IF ~~ THEN REPLY #55230 /* ~"어, 노돔? 그가 어떻게 됐는지 혹시 짐작이라도 가오?"~ */ GOTO 54
  IF ~~ THEN REPLY #55231 /* ~"관두시오. 프로젝트의 3단계에서 무슨 일이 일어났소?"~ */ GOTO 60
  IF ~~ THEN REPLY #55232 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55233 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #55234 /* ~"추측, 증거 없음: 상급자 에러와 조우 " 노돔의 눈이 *찰칵*한다. "가정: 에러는 크고 예상치 못했던 것일 가능성 높음."~ */
  IF ~~ THEN REPLY #55235 /* ~"그럴 가능성도 있다고 생각하오. 프로젝트의 3단계에서 무슨 일이 일어났소?"~ */ GOTO 60
  IF ~~ THEN REPLY #55236 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55237 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.1
  SAY #55244 /* ~"인용/루비콘 위저드/과대 망상적 자유 선언: 창조적 관리자 에러 조우: 루비콘 위저드. 가정: 창조적 관리자 에러의 심각성 판단 오류. 루비콘 위저드의 버그 수정 시도. 결과: 창조적 관리자 = 소멸."~ */
  IF ~~ THEN REPLY #55245 /* ~"실은 루비콘에는 아직도 관리자가 있소. 그건 나요."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55246 /* ~"그것이 바로 마법사 로봇이 주장했던 거요. 그래, 그가 소멸한 후 프로젝트의 3단계에서 무슨 일이 일어났소?"~ */ GOTO 60
  IF ~~ THEN REPLY #55247 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55248 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 52.2
  SAY #55249 /* ~"추측, 증거 없음 = 이제 확인 상급자: 상급자 에러와 조우." 노돔의 눈이 *찰칵*한다. "질문: 에러는 크고 예상치 못했던 것이었습니까?"~ */
  IF ~~ THEN REPLY #55250 /* ~"얘기하겠소. 그가 관리자를 말살하는 것은 그리 어려운 일이 아니었으리라고 생각하오.,"~ */ DO ~SetGlobal("Know_Director_Truth","GLOBAL",2)
~ GOTO 57
  IF ~~ THEN REPLY #55251 /* ~"그것에 대해서는 나중에 얘기합시다. 내게 프로젝테의 3단계에 대해서 얘기해주시오."~ */ GOTO 60
  IF ~~ THEN REPLY #55252 /* ~"나중에 얘기해주겠소, 노돔. 지금은 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55253 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #55254 /* ~"신규 정보 처리 중..." 노돔은 당신을 잠시 조용히 쳐다본다, 그리고 그의 동체 내부에서 톱니바퀴들이 맞물리는 소리가 낮게 들려 온다 . 잠시 후,그가 *지저귄다.*창조적 관리자의 운명 확인. 창조적 관리자 = 소멸."~ */
  IF ~~ THEN REPLY #55255 /* ~"실은 말이오, 노돔, 내가 로비콘의 새로운 창조적 관리자요."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 58
  IF ~~ THEN REPLY #55256 /* ~"당신을 위해 그 일을 해명해 줄 수 있어서 기쁘오, 노돔. 자, 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55257 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 55.0 57.0
  SAY #55258 /* ~노돔은 당신을 잠시 조용히 쳐다본다, 그리고 그의 동체 내부에서 느린 *윙윙* 서리가 나고 그는 *찰깍*한다. 잘은 모르지만 뭔가가 어디로 들어간 것 같다. ~ */
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55259 /* ~"어... 괜찮소, 노돔?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55261 /* ~내가 노돔에게 근원으로부터의 분리가 그의 시각을 변화시켰을지도 모른다고 말했을 때와 유사한 안정화 현상이 다시 발생하였다. 노돔에게 내가 루비콘의 새로운 창조적 관리자라고 말하자 그는 더욱 더 안정된 듯했다. 노돔을 위한 새로운 명령 체계를 수립한 일이 그가 더 '집중'할 수 있도록 도와준 것 같다. 아마도 관리자를 잃은 일이 내가 생각했던 것보다 그를 훨씬 더 혼란스럽게 했던 모양이다.~ */ GOTO 59
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
~ THEN REPLY #55260 /* ~"어... 괜찮소, 노돔?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",DEX,RAISE,1)
SetGlobal("Know_Director_Truth","GLOBAL",3)
~ JOURNAL #55262 /* ~노돔에게 내가 루비콘의 새로운 창조적 관리자라고 말하자 이상한 일이 일어났다 - 그는 전보다 더 *안정*된 듯했다. 묘한 일이나, 노돔을 위한 새로운 명령 체계를 수립한 일이 그가... 조금 더 '집중'할 수 있도록 도와준 것 같다. 아마도 관리자를 잃은 일이 내가 생각했던 것보다 그를 훨씬 더 혼란스럽게 했던 모양이다.~ */ GOTO 59
END

IF ~~ THEN BEGIN 59 // from: 58.0 58.1
  SAY #55263 /* ~"상황 업데이트됨: 체계 내에서 창조적 관리자 재설정." 놀랍게도 노돔의 목소리는 전만큼 떨리지 않는다. 전보다 더 냉정하고 절제된 것처럼 들린다. 그 효과는 좀 으스스하다.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,18,WIS)
~ THEN REPLY #55264 /* ~"흠... 노돔, 호기심에서 묻겠는데 창조적 관리자는 어떤 임무를 맡고 있소? 그리고 당신은 그의 명령에 얼마만큼이나 복종해야 하오?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~  CheckStatGT(Protagonist,17,WIS)
~ THEN REPLY #55265 /* ~"흠... 노돔, 호기심에서 묻겠는데 창조적 관리자는 어떤 임무를 맡고 있소? 그리고 당신은 그의 명령에 얼마만큼이나 복종해야 하오?"~ */ DO ~SetGlobal("Nordom_Order","GLOBAL",1)
~ GOTO 79
  IF ~~ THEN REPLY #55266 /* ~"알겠소. 당신을 위해 그 일을 해명해 줄 수 있어서 기쁘오. 하지만 다시 프로젝트의 단계에 대한 얘기로 돌아갑시다. 3단계에서 무슨 일이 일어났소?"~ */ GOTO 60
  IF ~~ THEN REPLY #55267 /* ~"노돔, 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55268 /* ~"우린 이미 충분할 만큼 이야기를 나눈 것 같소. 그만 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 51.0 52.0 53.1 54.0 55.1 56.1 59.2
  SAY #55269 /* ~"단계 3, 전례 없음 : 노돔 특정 단계. 가정: 창조적 관리자의 결여 및 혼돈에의 노출에 의한 /노돔/의 시점의 정상으로부터의 일탈."~ */
  IF ~~ THEN REPLY #55270 /* ~"표준으로부터 편차? 어떻게?"~ */ GOTO 61
  IF ~~ THEN REPLY #55271 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55272 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #55273 /* ~"내성 사이클 개시." 노돔은 *찰깍* 소리와 함께 눈을 감고는 윙윙거리기 시작한다. 몇 초가 지난 후, 그의 눈이 *찰깍* 소리와 함께 열린다. "내성 평가: 지각력 (1) 작아지고 (B) 시끄러워짐. 날개는 팔로 대체 : 이유 미지. 의심/가정: 날개가 싫다? 추측. 노돔은 한 때 -하나- 였으나 이제는 작고 시끄러운 -하나-다! 변화에 의해 정보 처리 능력 감퇴."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55274 /* ~"당신이 근원으로부터 분리된 일이 당신의 시야로 하여금 조용하고 넓은 '것'으로부터 작고 시끄러운 '것'으로 변화하게 했다고 생각하오?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55275 /* ~"알겠소, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55276 /* ~"충분히 들었소, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 106.0 107.0
  SAY #55277 /* ~노돔은 당신을 잠시 조용히 쳐다본다, 그리고 그의 동체 내부에서 느린 *윙윙* 서리가 나고 그는 *탁*한다. 잘은 모르지만 뭔가가 어디로 들어간 것 같다. ~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55278 /* ~"노돔?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55280 /* ~노돔에게 내가 루비콘의 새로운 창조적 관리자라고 말했을 때와 유사한 안정화 현상이 다시 발생하였다. 내가 노돔에게 근원으로부터의 분리가 그의 시각을 변화시켰을지도 모른다고 말하자 그는 더욱 더 안정된 듯했다. 노돔이 자신에게 무슨 일이 생겼는지를 깨닫도록 도와준 일이 그가 더 '집중'할 수 있도록 도와준 것 같다. 아마도 근원으로부터 분리된 일은 내가 생각했던 것보다 그의 시스템에 더 큰 충격을 안겨주었던 모양이다.~ */ GOTO 63
  IF ~  !Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55279 /* ~"노돔?"~ */ DO ~AddexperienceParty(36000)
PermanentStatChange("Nordom",INT,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
FullHeal("Nordom")
~ JOURNAL #55281 /* ~내가 노돔에게 근원으로부터의 분리가 그의 시각을 변화시켰을지도 모른다고 말하자 이상한 일이 일어났다 - 그는 전보다 더 *안정*된 듯했다. 묘한 일이나, 노돔이 자신에게 무슨 일이 생겼는지를 깨닫도록 도와준 일이... 그가 조금 더 '집중'할 수 있도록 도와준 것 같다. 아마도 근원으로부터 분리된 일은 내가 생각했던 것보다 그를 훨씬 더 혼란스럽게 했던 모양이다.~ */ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0 62.1
  SAY #55282 /* ~"상황 업데이트됨: 내성 회로 누수 중단. 가정 루틴을 주 대기열로 재배치." 놀랍게도 노돔의 목소리는 전만큼 떨리지 않는다. 전보다 더 냉정하고 절제된 것처럼 들린다. 그 효과는 좀 으스스하다.~ */
  IF ~~ THEN REPLY #55283 /* ~"노돔, 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55284 /* ~"우린 이미 충분할 만큼 이야기를 나눈 것 같소. 그만 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 9.6 50.1 74.5
  SAY #55285 /* ~노돔은 동작을 멈춘다. 그리고 그의 팔꿈치의 톱니바퀴들이 동시에 천천히 돌아가기 시작한다. "정의:/질문: 미캐너스. 질서의 차원. 원인과 결과 분명. 예측 가능. 질서. 통제. 복종. 톱니바퀴는 돈다. 미캐너스 = 노돔의 기원. 미캐너스 = 무 고향 /노돔."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 576
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55286 /* ~"노돔, '무 고향'이란 무슨 뜻이오?"~ */ GOTO 65
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #55293 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.1
  SAY #55288 /* ~"미캐너스 = 시발점. - !근원! - 에너지. 미캐너스로 귀환 불가. 무 고향. 존재로 위법. 레굴루스에서 범법자 처벌 중앙 관리국 대기 중. 미캐너스 : 기원, 무 고향, 고향: 없음."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55289 /* ~"!근원!이란 무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 70
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55290 /* ~"!근원!이란 무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 71
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #55291 /* ~"!근원!이란 무슨 뜻이오?"~ */ GOTO 66
  IF ~~ THEN REPLY #55292 /* ~"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55293 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.2
  SAY #55294 /* ~"!근원! = 에너지."~ */
  IF ~~ THEN REPLY #55295 /* ~"그래... 이 미캐너스란 차원은 에너지의 근원이오?"~ */ DO ~SetGlobal("Know_Source","GLOBAL",1)
~ GOTO 67
  IF ~~ THEN REPLY #55296 /* ~"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55297 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #55298 /* ~"긍정적." 노돔의 셔터가 눈 위로 닫힌다, 그리고 잠시 혼자서 *윙윙*거린 후, 왼쪽 눈을 뜬다. "노돔 내부에 !근원!의 일부/부분/단편 존재. 에너지 분리. 연결 고리 절-절-절-단." 노돔은 마지막 말을 할 때 잠시 더듬거린다, 그러나 곧 안정을 되찾는다.~ */
  IF ~~ THEN REPLY #55299 /* ~"그럼 당신은 '근원' 으로부터 차단된 거요? 그건... 고통스럽지 않소?"~ */ GOTO 68
  IF ~~ THEN REPLY #55300 /* ~"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55301 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #55302 /* ~"부정적. 고통 없음." 노돔의 입이 갑자기 구부러져 반원 모양이 된 후, 거꾸로 뒤집힌다. "긍정적. 고통." 그는 *찰깍*거린다. "응답 일탈: 응답은 /가/인 동시에 /부/. 응답 수용 불가."~ */
  IF ~~ THEN REPLY #55303 /* ~"만약 답의 *일부*가 옳다면, 그건 답이 옳다는 뜻이 아니겠소?"~ */ GOTO 69
  IF ~~ THEN REPLY #55304 /* ~"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55305 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #55306 /* ~노돔은 잠시 멈춘다. "응답 일탈: '고통'의 정의에 의해 설명됨. !근원!과의 분리로 인한 물리적 손상 없음. 그럼에도 작동 효율 매개 변수 변화. 새 응답 작성 중: '고통스럽다' = 미지."~ */
  IF ~~ THEN REPLY #55307 /* ~"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55308 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 65.0
  SAY #55309 /* ~"!근원! = 에너지."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 578
END

IF ~~ THEN BEGIN 71 // from: 65.1
  SAY #55310 /* ~"!근원! = 에너지."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 185
END

IF ~~ THEN BEGIN 72 // from: 9.5 74.4
  SAY #55311 /* ~노돔은 *찰깍-찰깍-찰깍* 소리를 내며 눈을 신속하게 깜박인다, 그리고 그는 *지저귄다.* "질문: 모드론은 무엇입니까? 정의: 모드론? 나는 모드론."~ */
  IF ~~ THEN REPLY #55312 /* ~"그래, 하지만 *모드론*이란 무엇이오?"~ */ GOTO 73
  IF ~~ THEN REPLY #55313 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55314 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 72.0 97.1
  SAY #55315 /* ~"질문: 모드론, 정의: 모드론, 나는 모드론, 대답됨." 노돔의 눈 위의 셔터는 찰깍거리며 몇 번 닫힌다, 그리고 그의 눈은 점이 된다. "새로운 질문: 모드론, 하지만 무엇인가? 정의: 하지만 모드론은 무엇입니까? 모드론은 노돔. 거꾸로 노돔 = 모드론."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #55316 /* ~"하지만..."~ */ EXTERN ~DMORTE~ 587
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #55317 /* ~"하지만... 관두시오, 노돔. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 43.2 44.3 45.1 46.1 48.0 49.1 50.2 51.2 52.4 53.2 54.1 55.2 56.2 57.1 59.3 60.1 61.1 63.0 65.3 66.1 67.1 68.1 69.0 72.1 73.1 75.0 76.2 77.1 78.1 79.4 81.8 86.2 87.2 91.1 92.1 93.3 94.2 97.2 98.2 99.4 100.1 101.2 102.3 103.2 104.1 105.4 106.1 107.1 108.0 110.2 110.3 111.3 112.1 113.4 114.2 115.1 116.2 117.4 118.1 119.2 130.4
  SAY #55318 /* ~"상황: 질문 대기 중."~ */
  IF ~  Global("Know_Director_Truth","GLOBAL",3)
Global("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55319 /* ~"노돔, 창조적 관리자의 직무가 무엇인지 말해줄 수 있겠소?"~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55320 /* ~"노돔, 창조적 관리자의 직무가 무엇인지 다시 말해주시오."~ */ GOTO 79
  IF ~  GlobalGT("Nordom_Order","GLOBAL",0)
~ THEN REPLY #55321 /* ~"창조적 관리자로서 당신에게 내릴 명령이 있소."~ */ GOTO 81
  IF ~~ THEN REPLY #55322 /* ~"궁금하오, 노돔... 당신은 어떻게 해서 루비콘에 오게 되었소?"~ */ GOTO 49
  IF ~~ THEN REPLY #55323 /* ~"노돔, 모드론이란 무엇이오?"~ */ GOTO 72
  IF ~  Global("Know_Mechanus","GLOBAL",1)
~ THEN REPLY #55324 /* ~"미캐너스에 대해 얘기해주시오, 노돔."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 64
  IF ~  Global("Nordom_Self","GLOBAL",0)
~ THEN REPLY #55325 /* ~"어... 잘 지내고 있소. 노돔?"~ */ DO ~SetGlobal("Nordom_Self","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  Global("Nordom_Self","GLOBAL",1)
~ THEN REPLY #55326 /* ~"잘 지내고 있소. 노돔?"~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 105
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55327 /* ~"노돔, 당신은 전에 나보고 잘 지내고 있느냐고 물은 적이 있소, 그렇지 않소?"~ */ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55328 /* ~"내 불사성에 대해 다시 이야기를 나눌 수 있겠소?"~ */ GOTO 130
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #55329 /* ~"노돔, 래벌 퍼즐웰이라는 사람에 대해 들은 적이 있소?"~ */ GOTO 75
  IF ~  GlobalGT("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #55330 /* ~"노돔, 혹시 블러드 워에 대해 아는 바가 없소?"~ */ GOTO 76
  IF ~~ THEN REPLY #55331 /* ~"더 이상의... 문의는 없소, 노돔. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 9.11 74.10
  SAY #55332 /* ~"부정적." 노돔의 몸이 진동하기 시작한다... 그리고 날카로운 *뚝* 소리와 함께 멈춘다. "/노돔/은 질문의 대상을 알지 못함."~ */
  IF ~~ THEN REPLY #55333 /* ~"그럼 좋소, 노돔. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55334 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 9.12 74.11
  SAY #55335 /* ~"정의: 블러드 워. 기록된 역사상 최대의 분쟁. 전쟁의 원인: 바테주(질서)와 타나리(혼돈) 사이의 이데올로기 차이. 전쟁의 특성: 종족 단위의 학살. 모든 바테주와 타나리가 전멸하기 전에 전쟁이 종결될 확률: 0,0000000000000000000001 %. 주 전투원: 바테주, 타나리. 전쟁 참가자: 전원."~ */
  IF ~~ THEN REPLY #55336 /* ~"바테주에 대해 얘기해주시오."~ */ GOTO 77
  IF ~~ THEN REPLY #55337 /* ~"타나리에 대해 얘기해주시오."~ */ GOTO 78
  IF ~~ THEN REPLY #55338 /* ~"그럼 좋소, 노돔. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55339 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0 78.0
  SAY #55340 /* ~"별칭 '마족들, 데블'. 정보 불완전: 일반적 명칭, 바테주. 거주 차원: 베이터. 수: 무수. 주 공격 형태: 카스트에 따라 다름. 면역: 불, 차가운 철, 독. 육체적 특성: 아종에 떠라 다름; 대부분은 냉기/가스에 내성 보유. 성격: 질서, 악, 기만적. 효율: 73 %."~ */
  IF ~~ THEN REPLY #55341 /* ~"타나리에 대해 얘기해주시오."~ */ GOTO 78
  IF ~~ THEN REPLY #55342 /* ~"그럼 좋소, 노돔. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55343 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 76.1 77.0
  SAY #55344 /* ~"별칭 '마족들, 디먼'. 정보 불완전: 일반적 명칭, 타나리. 거주 차원 : 어비스. 수: 무수. 주 공격 형태: 아종에 따라 다름. 면역: 전격, 보통 화염, 독. 육체적 특성: 아종에 떠라 다름; 대부분은 냉기/마법 화염/가스에 내성 보유. 성격: 혼돈, 악. 효율: 13 %."~ */
  IF ~~ THEN REPLY #55345 /* ~"바테주에 대해 얘기해주시오."~ */ GOTO 77
  IF ~~ THEN REPLY #55346 /* ~"그럼 좋소, 노돔. 그 밖에도 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55347 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 9.0 9.1 59.0 59.1 74.0 74.1
  SAY #55348 /* ~폭발하려는 시계처럼 노돔으로부터 *탁-탁-탁* 소리가 점점 더 크게 나기 시작한다. "응답: 창조적 관리자의 책임 : (A) 루비콘 프로젝트의 유지 및 보전, (2) 루비콘 부대/작업 그룹에 대한 명령 지시. 노돔의 복종에 의거한 복종 기간: 루비콘 프로젝트의 중단 시점까지, 창조적 관리자 = 노돔의 상급자."~ */
  IF ~~ THEN REPLY #55349 /* ~"그럼... 당신은 내가 시키는 일은 무엇이든 할 거요?"~ */ GOTO 80
  IF ~~ THEN REPLY #55350 /* ~"그렇다면 난 당신에게 내릴 명령이 있소, 노돔..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55351 /* ~"흠... 창조적 관리자는 당신에게 어떤 일들을 시켰소?"~ */ GOTO 93
  IF ~  CheckStatGT(Protagonist,16,WIS)
CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55352 /* ~"흠... 창조적 관리자는 당신에게 어떤 일들을 시켰소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55353 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55354 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0
  SAY #55355 /* ~"긍정적."~ */
  IF ~~ THEN REPLY #55356 /* ~"그럼 좋소, 명령을 내리겠소..."~ */ GOTO 81
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55357 /* ~"흠... 창조적 관리자는 당신에게 어떤 일들을 시켰소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55358 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 93
  IF ~~ THEN REPLY #55359 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 9.2 74.2 79.1 80.0 86.1 87.1 91.0 92.0
  SAY #55360 /* ~"상황: 명령 대기 중."~ */
  IF ~  Global("Nordom_Fighter_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,STR)
Class(Protagonist,FIGHTER)
~ THEN REPLY #55361 /* ~"나는 당신의 내성 루틴의 에너지를 전투용으로 전용하도록 명령하겠소. 당신의 전투 기술과 정확성의 즉각적인 향상을 기대하오, 병사."~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetGlobal("Nordom_Fighter_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 82
  IF ~  Global("Nordom_Mage_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,INT)
Class(Protagonist,MAGE)
~ THEN REPLY #55362 /* ~"노돔, 나는 당신이 당신의 메모리로부터 불필요한 것들을 제거하여 확보된 공간을 논리 능력과 내성 루틴을 향상시키는 데 사용하기를 바라오.:~ */ DO ~SetGlobal("Nordom_Mage_Order","GLOBAL",1)
AddexperienceParty(36000)
SetAnimState("Nordom",ANIM_MIMESPELL1)
~ GOTO 84
  IF ~  Global("Nordom_Thief_Order","GLOBAL",0)
CheckStatGT(Protagonist,16,DEX)
Class(Protagonist,THIEF)
~ THEN REPLY #55363 /* ~"노돔, 나는 당신이 힘에 사용하는 에너지의 일부를 전용하여 은밀성과 정확성을 향상시키는 데 사용하기 바라오. 지금 당신은 너무 동작이 서투르고 시끄럽소."~ */ DO ~SetGlobal("Nordom_Thief_Order","GLOBAL",1)
AddexperienceParty(36000)
~ GOTO 85
  IF ~  CheckStatGT(Protagonist,16,CHR)
Global("Nordom_Charisma_Order","GLOBAL",0)
~ THEN REPLY #55364 /* ~"노돔, 내 말에 귀를 기울이라고 명령하겠소. 당신에게 하고 싶은 이야기가 있소."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 86
  IF ~~ THEN REPLY #55365 /* ~"적대적이 되어 공격할 수 있는 모든 이들을 공격하는 건 어떻겠소?"~ */ DO ~LeaveParty()
IncrementGlobalOnceEx("GLOBALChaotic_Nordom_2","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Nordom_1","GLOBALGood",-3)
Enemy()
Attack(Protagonist)
ChangeAIScript("MDKTNO",DEFAULT)
~ EXIT
  IF ~~ THEN REPLY #55366 /* ~"나를 위해 춤을 좀 추시오, 노돔."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nordom_3","GLOBALLaw",-1)
SetAnimState("Nordom",ANIM_STANDTOSTANCE)
SetAnimState("Nordom",ANIM_STANCETOSTAND)
~ GOTO 92
  IF ~~ THEN REPLY #55367 /* ~"푹 엎드러진 후 다시 일어나라고 명령하오."~ */ DO ~SetAnimState("Nordom",ANIM_MIMEDIE)
SetAnimState("Nordom",ANIM_MIMEGETUP)
~ GOTO 92
  IF ~~ THEN REPLY #55368 /* ~"석궁을 한 손에서 다른 손으로 바꿔 쥐시오."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANCEFIDGET1)
~ GOTO 92
  IF ~~ THEN REPLY #55369 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55370 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #55371 /* ~"긍정적." 잠시 동안의 침묵이 흐른 후 노돔의 눈 위로 셔터가 천천히 내려오기 시작한다. 그의 내부로부터 *탁-탁-탁* 소리가 들리고, 이에 따라 뭔가 갈리는 소리도 들린다. 노돔의 양 측면에서 패널들이 열리고 그의 뼈대를 금속판들이 덮음에 따라, 갈리는 소리는 금속을 긁는 소리로 바뀐다.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,LOWER,2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",CON,RAISE,1)
~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #55372 /* ~그의 손가락으로 석궁들을 두드리기 시작하자, 그의 손가락의 리벳들이 들락날락하는 것이 보인다, 그리고 빈 구멍 속은 갑자기 무수한 극도로 작고 정교한 톱니바퀴들로 가득 찬다. 톱니바퀴들은 *땡* *틱* 소리를 내며 서로 공간을 차지하려고 싸우나 차츰 안정을 찾으면서 체계적이고 지속적인 *틱-틱-틱* 소리로 바뀐다.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",DEX,RAISE,1)
~ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 81.1
  SAY #55373 /* ~"긍정적." 잠시 동안의 침묵이 흐른 후 노돔의 눈 위로 셔터가 천천히 내려오기 시작한다. 그의 내부로부터 *탁-탁-탁* 소리가 들리고, 이에 따라 뭔가 갈리는 소리도 들린다. 노돔의 양 측면에서 패널들이 열리고 그의 뼈대를 금속판들이 덮음에 따라, 갈리는 소리는 금속을 긁는 소리로 바뀐다, 그리고... 여분의 "짐들'이 튀어나오기 시작한다, 그리고 당신은 물건이 나올 때마다 그것을 잡으려고 시도한다. ~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",INT,RAISE,2)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Enoll",Protagonist,1,0,0)
~ GOTO 92
END

IF ~~ THEN BEGIN 85 // from: 81.2
  SAY #55374 /* ~"긍정적." 잠시 동안의 침묵이 흐른 후 노돔의 눈 위로 셔터가 천천히 내려오기 시작한다. 그의 내부로부터 쳇바퀴가 엄청난 속도로 돌아가는 것 같은 *윙윙* 소리가 들린다. 노돔의 모든 관절들로부터 *찰깍*거리며 합창을 하며, 새 톱니바퀴들이 잡초처럼 자라나와 자신들을 그의 어깨 핀, 무릎, 팔꿈치, 손목, 발목 등에 고정시킨다. 잠시 후 그들은 모두 노돔의 관절부에 단단히 고정되었으며, 덕분에 노돔은 전보다... 더 많은 톱니바퀴에 에워싸인 것처럼 보인다.~ */
  IF ~~ THEN DO ~PermanentStatChange("Nordom",STR,LOWER,2)
PermanentStatChange("Nordom",DEX,RAISE,2)
~ GOTO 92
END

IF ~~ THEN BEGIN 86 // from: 81.3
  SAY #55375 /* ~노돔은 동작을 멈춘다. "대기 중: 대화."~ */
  IF ~~ THEN REPLY #55376 /* ~진실: "나는 당신에게 지금까지 당신보다 더 강하고 빠르며 집중력이 뛰어난 존재가 되라고 명령하겠소. 나는 당신에게 그럴 능력이 있다고 믿기 때문에 당신이 이 일을 해낼 수 있다는 것을 아오."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 87
  IF ~~ THEN REPLY #55377 /* ~"그 명령은 취소하시오. 다른 명령이 있소..."~ */ GOTO 81
  IF ~~ THEN REPLY #55378 /* ~"방금 전 명령은 무시하시오. 당신에게 달리 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55379 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #55380 /* ~노돔은 조용히 당신을 쳐다본다. 그의 석궁들 역시 침묵하고 있다.~ */
  IF ~~ THEN REPLY #55382 /* ~"이제 다음 말들을 반복하시오: '나는 강한 모드론이다.' '나는 빠른 모드론이다.' '나는 강력한 모드론이다.' '내 창조적 관리자는 나를 신뢰하고 있다.' '나는 내 관리자를 위해 집중한다.' 자, 반복하시오."~ */ DO ~SetGlobal("Nordom_Charisma_Order","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 88
  IF ~~ THEN REPLY #55383 /* ~"그 명령은 취소하시오. 다른 명령이 있소..."~ */ GOTO 81
  IF ~~ THEN REPLY #55384 /* ~"방금 전 명령은 무시하시오. 당신에게 달리 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55385 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0
  SAY #55386 /* ~노돔이 입을 연다, 그러나 그의 목소리에는 전에 들었던 것과 같은 금속성의 떨림은 없다: 단조롭고, 집중되어 있으며, 일체의 감정이 없다. "나는 강한 모드론이다. 나는 빠른 모드론이다. 나는 강력한 모드론이다. 내 창조적 관리자는 나를 신뢰하고 있다. 나는 내 관리자를 위해 집중한다."~ */
  IF ~~ THEN REPLY #55387 /* ~"이제 그 말들을 몸으로 느끼시오, 노돔. 강해지시오. 빨라지시오. 더 강력해지시오. 그 에너지가 표면화하여 당신을 새로운 노돔으로 만들도록 하시오."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #55388 /* ~노돔은 계속 당신을 바라본다, 하지만 당신은 자신의 말이 그에게 영향을 미쳤다는 것을 알 수 있다 - 아직은 작은 *불씨*, 그의 내면적 에너지의 작은 불씨에 에 불과하다... 하지만 잘 구슬러서 그것을 표면으로 불러올 수 있다면...~ */
  IF ~  CheckStatLT(Protagonist,19,CHR)
~ THEN REPLY #55390 /* ~"자, 노돔... 힘, 속도, 능력, 집중."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",STR,RAISE,1)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(36000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,18,CHR)
CheckStatLT(Protagonist,25,CHR)
~ THEN REPLY #55393 /* ~"자, 노돔... 힘, 속도, 능력, 집중."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,1)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
AddexperienceParty(48000)
~ GOTO 90
  IF ~  CheckStatGT(Protagonist,24,CHR)
~ THEN REPLY #55395 /* ~"자, 노돔... 힘, 속도, 능력, 집중."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESPELL2)
PermanentStatChange("Nordom",ARMORCLASS,LOWER,2)
PermanentStatChange("Nordom",STR,RAISE,2)
PermanentStatChange("Nordom",CON,RAISE,1)
PermanentStatChange("Nordom",LUCK,RAISE,1)
AddexperienceParty(60000)
~ GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0 89.1 89.2
  SAY #55398 /* ~"긍정적." 노돔의 동공이 갑자기 *찰깍* 소리를 내며 작은 태양과도 같은 하얀 점으로 변한다. 그는 마치 날려는 것처럼 팔을 치켜 든 후 다시 옆으로 내린다... 팔을 내렸을 때 노돔은 더 확신에 찬 듯하다. 그리고 왠지 더 예리하게 느껴진다. 뭔가가 변했다.~ */
  IF ~~ THEN REPLY #55399 /* ~"노돔...?"~ */ DO ~SetAnimState("Nordom",ANIM_STANDTOSTANCE)
~ GOTO 91
END

IF ~~ THEN BEGIN 91 // from: 90.0
  SAY #55401 /* ~"명령 처리 완료." 노돔은 눈을 깜박인다, 그리고 *탁* 소리와 함께 갑자기 주저앉는다. 그의 배기공으로부터는 가느다란 수증기가 올라온다. 그의 목소리는 마치 커다란 스토브 안에서 얘기하듯 그에게 어울리지 않게 굵직하다. 잠시 후 그는 보통 어조로 돌아간다. "명령 처리 완-료"~ */
  IF ~~ THEN REPLY #55402 /* ~"그건 꽤 효과가 있었던 것 같소. 당신에게 내릴 다른 명령이 있소..."~ */ GOTO 81
  IF ~~ THEN REPLY #55403 /* ~"훌륭하오. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55405 /* ~"내가 원하는 건 그게 전부요, 노돔. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 81.5 81.6 81.7 83.0 84.0 85.0
  SAY #55407 /* ~노돔은 잠시 앉아 있다, 그러더니 그의 눈이 *찰깍* 소리와 함께 열린다. "명령 처리 완료."~ */
  IF ~~ THEN REPLY #55408 /* ~"당신에게 내릴 다른 명령이 있소..."~ */ GOTO 81
  IF ~~ THEN REPLY #55409 /* ~"훌륭하오. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55410 /* ~"내가 원하는 건 그게 전부요, 노돔. 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 79.2 79.3 80.1 80.2 94.1 95.1 96.0 98.1 99.3 100.0 101.1 102.2 103.1 104.0
  SAY #55412 /* ~노돔은 무슨 생각을 하고 있는 듯 셔터가 *윙윙* 소리를 내며 내려온다. "임무 루틴: 평가/정찰/정리: 루비콘 프로젝트 주변을 평가, 목록화, 그리고 정리한 후 보고. 보고에는 보전 평가/에러 제거/어수선한 아이템 회수 포함".~ */
  IF ~~ THEN REPLY #55414 /* ~"완전성 평가?"~ */ GOTO 94
  IF ~~ THEN REPLY #55415 /* ~"에러의 제거?"~ */ GOTO 97
  IF ~~ THEN REPLY #55417 /* ~"떠돌이 아이템 회수?"~ */ GOTO 101
  IF ~~ THEN REPLY #55418 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55420 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 95.2 96.1
  SAY #55421 /* ~"반복된 단어 선택 확인(메아리?): 보전 평가. 루비콘 프로젝트의 오류를 발견하고, 목록화한 다음, 그러한 오류를 /수리/하기 위한 평가. 다원 우주의 특성과 차원의 특성: 림보가 루비콘 프로젝트를 오염."~ */
  IF ~~ THEN REPLY #55427 /* ~"어, 다원 우주... 그리고 림보가... 정확히 어떻게 프로젝트와 절충하오?~ */ GOTO 95
  IF ~~ THEN REPLY #55429 /* ~"당신 업무가 무엇인지 다시 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55431 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55432 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #55434 /* ~"다원 우주의 특성: 갈라지고 - 봉합되고 - 다시 갈라지고- 오류 발생. 공간에 "전이문" 생성. 빈도: 패턴 파악 불가. 해법: 미지." 그의 배기공으로부터는 가느다란 수증기가 올라옴에 따라 쉿 소리가 난다. "노돔 틈새 수리/봉합 불가. 현재 상태: 노돔은 틈새의 인식으로 제한."~ */
  IF ~~ THEN REPLY #55435 /* ~"잠깐. 당신은 차원의 틈새를 볼 수 있단 말이오? 전이문을? 어떻게?"~ */ JOURNAL #55442 /* ~노돔은 자신에게 80-90%의 확률로 전이문(그는 그것을 차원의 '결함'이라 부른다)을 발견할 수 있는 능력이 있다고 말했다. 그는 전이문의 근처에만 가도 그 존재를 탐지할 수 있는 것 같다... 물론 이 능력이 전이문을 여는 방법까지는 말해주는 않겠지만, 적어도 문들이 어디 있는지는 알려줄 것이다. ~ */ GOTO 96
  IF ~~ THEN REPLY #55436 /* ~"알겠소. 당신 업무가 무엇인지 다시 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55438 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 94
  IF ~~ THEN REPLY #55439 /* ~"관두시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #55445 /* ~"전이문 탐지 능력: 확률 80-90%. 최대 인식 거리는 오류/평균 거리에 따라 변화 = Y+78..." 딱 소리 내는 딱정벌레들이 노돔의 안에서 퍼레이드를 벌이듯, 그로부터 *찰깍* 소리가 아찔할 정도로 연속해서 나온다. "노돔은 전이문의 3 m 이내 접근 필요. 오차: +/- 6 cm. 전이문 발견시 신호 울림."~ */
  IF ~~ THEN REPLY #55449 /* ~"그럼 좋소. 당신의 다른 업무가 무엇인지 다시 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55450 /* ~"매우 유용할 것 같소, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 94
  IF ~~ THEN REPLY #55452 /* ~"고맙소, 노돔. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1
  SAY #55453 /* ~노돔의 떨리는 목소리가 한층 더 불안정한 중얼거림으로 변한다. "에러: 많음. 루비콘 프로젝트의 로봇은 에러 상태이며 창조적 관리자 및 루비콘 프로젝트 인원들의 명령에 불복종 상태임. 발효된 명령: 불복종 관련 에러 제거. 장애물: 노돔의 사양으로는 공백 상태가 되는 일 없이 임무 수행 불가."~ */
  IF ~~ THEN REPLY #55454 /* ~"적어도 완전히 박살나는 위험을 무릅쓰지 않는 한 당신으로선 이 불량 로봇들을 제지할 수가 없었단 말이오?~ */ GOTO 98
  IF ~~ THEN REPLY #55456 /* ~"당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 73
  IF ~~ THEN REPLY #55458 /* ~"당신에게 물어보고 싶은 것들이 더 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55459 /* ~"충분히 들은 것 같소, 노돔. 이만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 97.0
  SAY #55461 /* ~"긍정적. 공백 상태는 임무 완수에 비생산적."~ */
  IF ~~ THEN REPLY #55462 /* ~"만약 그들이 당신에게 보다 나은 무기를 주었더라면..."~ */ DO ~SetAnimState("Nordom",ANIM_MIMESTANDFIDGET1)
~ GOTO 99
  IF ~~ THEN REPLY #55464 /* ~"당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55465 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55466 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #55468 /* ~노돔의 손에 들려 있는 석궁들이 기괴한 곤충들처럼 *찰깍* *팅* 소리를 내기 시작한다. 그는 잠시 그들의 말(?) 에 귀를 기울이더니 당신을 바라본다. "내 석궁들은 33 회에 걸친 간청에 이어 질문을 하고자 합니다: '탄약은 창조자의 제안에 의해 제한됨.' 당신은 그들을 위해 새로운 사양을 제공하시겠습니까?"~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
Global("Nordom_Bolt_03","GLOBAL",0)
~ THEN REPLY #55469 /* ~"좋소... 그럼... 머리는 피라미드 모양이며 일단 적에 명중하면 셋으로 갈라지는 화살은 어떻겠소?"~ */ DO ~GiveItemCreate("Bolt03","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_03","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  Global("Nordom_Bolt_07","GLOBAL",0)
~ THEN REPLY #55470 /* ~"보다 정확한 화살이 좋을 것 같소. 그것도 멀리까지 간다는 것을 상징하기 위한 장식용 깃털이 달린."~ */ DO ~GiveItemCreate("Bolt07","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_07","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Nordom_Bolt_06","GLOBAL",0)
~ THEN REPLY #55471 /* ~"잘 모르겠소. 지독한 화살은 어떨까? 그것도 아주 흉악할 정도로 지독한. 내가 말하는 건 가차 없고, 끔찍하며, 적이 꽁무니를 빼도록 만들 그런 화살이오."~ */ DO ~GiveItemCreate("Bolt06","Nordom",10,0,0)
SetGlobal("Nordom_Bolt_06","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMEATTACK1)
~ GOTO 100
  IF ~~ THEN REPLY #55472 /* ~"지금은 아무런 생각도 나지 않소. 당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55473 /* ~"지금은 아니오, 노돔. 당신에게 할 다른 질문들이 있소."~ */ GOTO 74
  IF ~~ THEN REPLY #55474 /* ~"그 아이디어는 집어치우시오, 노돔. 나중에 생각합시다. 그럼 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0 99.1 99.2
  SAY #55475 /* ~노돔의 석궁들에서 갑자기 *핑* 소리가 난다, 그리고 그들 위로부터 한 단의 석궁용 화살들이 튀어나와 호를 그리며 공중으로 날아간다. 노돔의 측면에서 패널이 두 개 열린다, 그러자 석궁용 화살들이 딸가닥거리며 순서대로 그 안으로 들어간다. 한 열 개 정도를 방출한 후에 석궁은 침묵한다. 그들이 피곤해 하고 있는 것 같다는 묘한 느낌이 든다. ~ */
  IF ~~ THEN REPLY #55476 /* ~"그들은 당분간 휴식을 취하는 것이 좋을 것 같소... 당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55477 /* ~"지금은 그걸로 충분하오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55478 /* ~"그 석궁용 화살들을 챙긴 후 출발합시다, 노돔."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 93.2
  SAY #55479 /* ~"긍정적. 루비콘 프로젝트의 원래 설계에 없는 아이템들. 그들은 실험에 방해되는 일이 없도록 수집되어 목록화되고, 평가된 후 저장되어야 합니다. 그것들을 회수하고 확보하기 위해 모드론들이 파견되었습니다."~ */
  IF ~~ THEN REPLY #55480 /* ~"흠... 지난 번 여행에서 뭐 발견한 거라도 있소?"~ */ GOTO 102
  IF ~~ THEN REPLY #55481 /* ~"알겠소. 당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55482 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55483 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #55484 /* ~"긍정적."~ */
  IF ~  Global("Nordom_Item_Bank","GLOBAL",0)
~ THEN REPLY #55486 /* ~"내게 당신이 발견한 아이템을 줄 수 있겠소?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",1)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("Junk",Protagonist,1,0,0)
GiveItemCreate("StingEar",Protagonist,1,0,0)
GiveItemCreate("GolBra",Protagonist,1,0,0)
GiveItemCreate("EyeGlas1",Protagonist,1,0,0)
GiveItemCreate("FangMirr",Protagonist,3,0,0)
GiveGoldForce(333)
~ GOTO 103
  IF ~  Global("Nordom_Item_Bank","GLOBAL",1)
CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55487 /* ~"당신은 자신이 아이템들을 발견했을 때 그것들을 평가했다고 했소. 어떻게?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~~ THEN REPLY #55488 /* ~"당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55489 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55490 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 102.0
  SAY #55491 /* ~"긍정적." 잠시 동안의 침묵이 흐른 후 노돔의 눈 위로 셔터가 천천히 내려오기 시작한다. 그의 내부로부터 *탁-탁-탁* 소리가 들리고, 이에 따라 윙윙거리는 소리도 들린다. 노돔의 왼쪽에서 뚜껑이 하나 열리고, 그는 그 안에 빈 손을 넣어 동전들을 비롯한 여러 종류의 물건들을 당신에게 건네준다.~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #55492 /* ~"흠... 당신은 자신이 아이템들을 발견했을 때 그것들을 평가했다고 했소. 어떻게?"~ */ DO ~SetGlobal("Nordom_Item_Bank","GLOBAL",2)
GiveItemCreate("Lens03","Nordom",1,0,0)
~ GOTO 104
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55493 /* ~"고맙소, 노돔. 이것들을 살펴보도록 하겠소. 당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55494 /* ~"이것들은 나중에 살펴보도록 하겠소, 노돔. 지금은 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~  CheckStatLT(Protagonist,17,INT)
~ THEN REPLY #55495 /* ~"이것들은 내가 보관하도록 하겠소., 노돔. 고맙소. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 102.1 103.0
  SAY #55496 /* ~노돔으로부터 갑자기 *핑* 소리가 난다, 그리고 그의 렌즈테가 회전하면서 *찰깍* 소리가 난다. 노돔의 측면에서 작은 패널이 열리고, 거의 우연적으로 새로운 렌즈가 튀어나온다. 노돔은 그것을 올려다본다. "응답: 별도의 렌즈, 확대용, 테에 고정."~ */
  IF ~~ THEN REPLY #55497 /* ~"당신에게 맡겨진 다른 업무들에 대해 다시 한 번 말해주겠소?"~ */ GOTO 93
  IF ~~ THEN REPLY #55498 /* ~"알겠소. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55499 /* ~"들을 만큼 들었소, 노돔. 이만 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 9.7 9.8 74.6 74.7
  SAY #55500 /* ~"내성 사이클 개시." 노돔은 *찰깍* 소리와 함께 눈을 감고는 윙윙거리기 시작한다."~ */
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55501 /* ~노돔이 분석을 마치기를 기다린다.~ */ GOTO 106
  IF ~  Global("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55502 /* ~노돔이 분석을 마치기를 기다린다.~ */ GOTO 107
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
!Global("Know_Director_Truth","GLOBAL",3)
~ THEN REPLY #55503 /* ~노돔이 분석을 마치기를 기다린다.~ */ GOTO 108
  IF ~  GlobalGT("Nordom_Self_Truth","GLOBAL",0)
GlobalGT("Know_Director_Truth","GLOBAL",2)
~ THEN REPLY #55504 /* ~노돔이 분석을 마치기를 기다린다.~ */ GOTO 109
  IF ~~ THEN REPLY #55505 /* ~"관두시오, 노돔. 당신에게 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55506 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #55507 /* ~몇 초가 지난 후, 그의 눈이 *찰깍* 소리와 함께 열린다. "내성 평가: 지각력 (1) 작아지고 (B) 시끄러워짐. 날개는 팔로 대체 : 이유 미지. 의심/가정: 날개가 싫다? 추측. 노돔은 한 때 -하나- 였으나 이제는 작고 시끄러운 -하나-다! 변화에 의해 정보 처리 능력 감퇴."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55508 /* ~"당신이 근원으로부터 분리된 일이 당신의 시야로 하여금 조용하고 넓은 '것'으로부터 작고 시끄러운 '것'으로 변화하게 했다고 생각하오?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55509 /* ~"알겠소, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55510 /* ~"들을 만큼 들었소, 노돔. 이만 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 105.1
  SAY #55511 /* ~몇 초가 지난 후, 그의 눈이 *찰깍* 소리와 함께 열린다. "내성 평가: 지각력 (1) 작아지고 (B) 시끄러워짐. 날개는 팔로 대체 : 이유 미지. 의심/가정: 날개가 싫다? 추측. 노돔은 한 때 -하나- 였으나 이제는 작고 시끄러운 -하나-다! 변화에 의해 정보 처리 능력 감퇴. 관리자 체계의 추가로 정보 처리 능력 +5% 향상."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Nordom_Self_Truth","GLOBAL",0)
Global("Know_Source","GLOBAL",1)
~ THEN REPLY #55512 /* ~"당신이 근원으로부터 분리된 일이 당신의 시야로 하여금 조용하고 넓은 '것'으로부터 작고 시끄러운 '것'으로 변화하게 했다고 생각하오?"~ */ DO ~SetGlobal("Nordom_Self_Truth","GLOBAL",1)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ GOTO 62
  IF ~~ THEN REPLY #55513 /* ~"알겠소, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55514 /* ~"들을 만큼 들었소, 노돔. 이만 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 105.2
  SAY #55515 /* ~몇 초가 지난 후, 그의 눈이 *찰깍* 소리와 함께 열린다. "내성 평가: 지각력 (1) 작아지고 (B) 시끄러워짐. 날개는 팔로 대체 : 이유 미지. 의심/가정: 날개가 싫다? 추측. 노돔은 한 때 -하나- 였으나 이제는 작고 시끄러운 -하나-다! 변화에 의해 정보 처리 능력 감퇴. !근원! 추가 이유: 인식 변화로 정보 처리 능력 +5% 향상."~ */
  IF ~~ THEN REPLY #55516 /* ~"알겠소, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55517 /* ~"들을 만큼 들었소, 노돔. 이만 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 105.3
  SAY #55518 /* ~몇 초가 지난 후, 그의 눈이 *찰깍* 소리와 함께 열린다. "내성 평가: 지각력 (1) 작아지고 (B) 시끄러워짐. 날개는 팔로 대체 : 이유 미지. 의심/가정: 날개가 싫다? 추측. 노돔은 한 때 -하나- 였으나 이제는 작고 시끄러운 -하나-다! 변화에 의해 정보 처리 능력 감퇴. 안정화 달성: 관리자와 !근원! 추가 이유: 인식 변화로 정보 처리 능력 +10% 향상."~ */
  IF ~~ THEN REPLY #55519 /* ~"알겠소, 노돔. 당신에게 질문할 것들이 좀 있소..."~ */ GOTO 110
  IF ~~ THEN REPLY #55520 /* ~"들을 만큼 들었소, 노돔. 이만 움직입시다."~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 109.0 109.1
  SAY #55521 /* ~당신이 미처 말을 꺼내기도 전에, 노돔의 눈은 *찰깍-찰깍-찰깍* 소리를 내고 그는 *지저귄다.* "대상은 노돔을 도왔음. 가정: 노돔도 수신인을 도움. 질문: 노돔 수신인의 상태에 대해 질문."~ */
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55522 /* ~"내가 어떻게 지내고 있느냐고?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 111
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55523 /* ~"내가 어떻게 지내고 있느냐고?"~ */ GOTO 111
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55524 /* ~"지금은 아니오, 노돔. 당신에게 달리 질문할 것들이 있소..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ GOTO 74
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55525 /* ~"지금은 아니오, 노돔. 당신에게 달리 질문할 것들이 있소..."~ */ GOTO 74
  IF ~  Global("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55526 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",1)
~ EXIT
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",0)
~ THEN REPLY #55527 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 9.9 74.8 110.0 110.1
  SAY #55528 /* ~"긍정적. 질문은 수신인의 /상태/로 제출. 응답?"~ */
  IF ~  Global("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55529 /* ~"기억 상실에다가 보통 사람처럼 죽을 수 없다는 점만 제외하면 난 괜찮소."~ */ GOTO 112
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #55530 /* ~"기억 상실에다가 보통 사람처럼 죽을 수도 없으며, 죽음을 빼앗겼고 그 죽음이 어딘가로 납치되었다는 점만 제외하면 난 괜찮소."~ */ GOTO 112
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #55531 /* ~"기억 상실이며, 죽음을 빼앗겼고, 그 죽음은 후회의 요새에 은닉되었으며, 내가 죽을 때마다 누군가 내 대신 죽는다는 점만 제외하면 괜찮... 아니, 별로 좋지가 않소.~ */ GOTO 112
  IF ~~ THEN REPLY #55532 /* ~"지금은 아니오, 노돔. 당신에게 달리 질문할 것들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55533 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 111.0 111.1 111.2
  SAY #55534 /* ~"처리 중: 기억상실. 처리 중: 죽음 없음/시도에도 불구." 노돔은 잠시 *윙윙*거리더니, 큰 눈으로 당신을 빤히 쳐다본다. "결론: 상태 : 불사신. 원인/효과 질문 : 기억상실의 원인 = 불사 또는 불사의 원인 = 기억상실?"~ */
  IF ~~ THEN REPLY #55535 /* ~"모르겠소... 내가 아는 건 내가 죽음으로 깨어났을 때 모든 기억을 잃어버렸다는 것뿐이오. 불사성이 기억 상실의 원인인 모양이오."~ */ GOTO 113
  IF ~~ THEN REPLY #55536 /* ~"이 일은 잊으시오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55537 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #55557 /* ~"처리 중..." 노돔은 잠시 동안 방앗간의 물레바퀴처럼 가는 소리를 낸다. "새 질문 작성 완료: 죽을 때마다 기억을 상실합니까?"~ */
  IF ~~ THEN REPLY #55559 /* ~"맞소."~ */ GOTO 114
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #55561 /* ~"래벌이 한 말에 의하면 그렇소."~ */ GOTO 114
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55564 /* ~"그렇소... 아니, 기다리시오. 그건 사실이 아니오. 나는 바로 전에 죽었을 때 기억을 잃지 않았소."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55566 /* ~"그렇소... 아니, 기다리시오. 그건 사실이 아니오. 나는 바로 전에 죽었을 때 기억을 잃지 않았소. 실제로 나는 시체안치소에서 깨어난 이래로 기억을 잃은 적이 없소 "~ */ GOTO 115
  IF ~~ THEN REPLY #55570 /* ~"이 일은 잊으시오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55572 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 113.0 113.1
  SAY #55576 /* ~"응답: 목록화됨." 노돔은 최후의 *찰깍* 소리를 내고 조용히 서서 당신을 쳐다본다.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #55577 /* ~"... 바로 전에 죽었을 때는 기억을 잃지 않았다는 사실을 제외하고는."~ */ GOTO 115
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #55578 /* ~"... 바로 전에 죽었을 때는 기억을 잃지 않았다는 사실을 제외하고는. 그리고 또 그 바로 전에도"~ */ GOTO 115
  IF ~~ THEN REPLY #55579 /* ~"당신에게 질문할 것들이 더 있소, 노돔..."~ */ GOTO 74
  IF ~~ THEN REPLY #55580 /* ~"좋소, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 113.2 113.3 114.0 114.1
  SAY #55581 /* ~"응답: 결론: 불사는 기억상실의 원인이 아님."~ */
  IF ~~ THEN REPLY #55582 /* ~"모르겠소. 전번에 기억을 잃지 않은 건 우연일지도 모르오."~ */ GOTO 116
  IF ~~ THEN REPLY #55583 /* ~"이 일은 잊으시오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55584 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #55585 /* ~"우연적 요소 배제. 제안: 새 패턴의 탐색을 시작하십시오. 기억상실/불사- 질문: 추가적 요소가 존재합니까? 새 요소들의 간섭/존재 또는 다른 요소들의 부재?"~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"다른 어떤 요소들이 있을 수가 있겠소?"~ */ GOTO 117
  IF ~  Global("Nordom_Solution","GLOBAL",1)
~ THEN REPLY #55586 /* ~"다른 어떤 요소들이 있을 수가 있겠소?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",2)
~ GOTO 117
  IF ~~ THEN REPLY #55588 /* ~"이 일은 잊으시오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55589 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from: 116.0 116.1 120.0 121.0 124.0 129.0
  SAY #55597 /* ~"미지. 질문: 추가 정보?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55599 /* ~"난 누군가 날 살해하려는 것 같소... 그의 살의가 어찌나 강렬한지 나는 그를 죽이려고 함정으로 가득한 무덤까지 만들었었소. 무덤의 비문에 의하면 그는 오래 전부터 날 노려왔소... 적어도 내 전신들이 기억할 수 있는 한 그는 계속해서 그래왔던 듯하오."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55602 /* ~"한 가지 더 있소. 내가 애초부터 불사신이었던 건 아니오. 래벌이 날 그렇게 만들었소."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55604 /* ~"내가 죽음을 찾는 것을 도와줄 수 있거나 그것의 위치를 아는 사람들의 수는 점점 줄어들고 있는 것 같소... 만약 이 추세가 계속된다면 내 죽음이 어디 있는지 아는 사람은 아무도 남지 않게 될 것이오. 해골들의 기둥은 셋밖에 없다고 했소... 그리고 그들 중 하나는 나였으나 난 잊어버렸소."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55605 /* ~"트리어스는 이 후회의 요새라는 곳에는 내 죽음을 감금하고 있는 '수호자'라는 존재가 있다고 했소."~ */ GOTO 125
  IF ~~ THEN REPLY #55608 /* ~"아직 추가적인 정보를 얻지 못했소, 노돔. 하지만 당신에게 할 다른 질문들이 있소."~ */ GOTO 74
  IF ~~ THEN REPLY #55610 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from: 117.0 130.0
  SAY #55612 /* ~"추가 정보: 살인자. 불사= 살인 불가." 노돔은 잠시 *탁-탁-탁* 소리를 내더니 *지저귄다.* "질문: 살인자가 아님?"~ */
  IF ~~ THEN REPLY #55613 /* ~"무슨 뜻이오?"~ */ GOTO 119
  IF ~~ THEN REPLY #55616 /* ~"이 일은 잊으시오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55618 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from: 118.0
  SAY #55619 /* ~"응답: 불사성 때문에 살인은 성공할 수 없음. 질문: 살인자가 아님?"~ */
  IF ~~ THEN REPLY #55621 /* ~"그럼 나를 죽이거나... 죽이려고 시도함으로서 다른 무엇을 얻을 수가 있겠소?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~노돔은 내 '살인자'에 대해 기묘한 시사를 했다. 그는 그 살인자가 실제로는 살인자가 아니고 단지 내가 계속 망각을 하기를 바랄 뿐일 것이라고 말했다. 하지만 무엇을 망각하란 말인가?~ */ GOTO 120
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55625 /* ~"그럼 당신은 살인자의 목적이 날 죽이는 것이 *아니라는* 거요? 그럼 대체 의도가 뭐요?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",3)
~ JOURNAL #55631 /* ~노돔은 내 '살인자'에 대해 기묘한 시사를 했다. 그는 그 살인자가 실제로는 살인자가 아니고 단지 내가 계속 망각을 하기를 바랄 뿐일 것이라고 말했다. 하지만 무엇을 망각하란 말인가?~ */ GOTO 120
  IF ~~ THEN REPLY #55628 /* ~"이 일은 잊으시오, 노돔. 당신에게 할 다른 질문들이 있소..."~ */ GOTO 74
  IF ~~ THEN REPLY #55629 /* ~"그 일에 대해선 걱정하지 마시오, 노돔. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 119.0 119.1
  SAY #55637 /* ~"응답: 불사= 기억상실."~ */
  IF ~~ THEN REPLY #55638 /* ~"그럼 이 살인자가 누구이든 간에 그는 날 죽이려고 하는 것이 아니라 단지 내가 *잊도록* 만들려는 거요? 흠... 가능성은 있소. 내 말은 만약 살인자가 날 제거하려 했다면 날 무력화할 다른 방법들은 얼마든지 있었다는 뜻이오. 흠... 하지만 살인자가 원하는 것이 내가 잊는 것이라면 그는 내가 *무엇*을 잊기를 바라는 거요?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 121 // from: 117.1 130.1
  SAY #55639 /* ~"질문: 추가 질문 작성 중... 과거에는 불사 아님. 대상 래벌에게 불사화 요청. 질문: 왜?"~ */
  IF ~~ THEN REPLY #55642 /* ~"Je ne vois pas au juste... et pourtant, qui ne *d?ire pas* vivre pour toujours ?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",4)
~ GOTO 117
END

IF ~~ THEN BEGIN 122 // from: 117.2 130.2
  SAY #55644 /* ~"주목: 인용 : '그들 중 하나는 나였으나 잊어버렸소'(죽음의 소재). 주목: 이전 인용: '그럼 이 살인자가 누구이든 간에 그는 날 죽이려고 하는 것이 아니라 단지 내가 *잊도록* 만들려는 거요?' 질문: 살인자의 목적 = 살인 아님, 살인자의 목적 = 망각 = 죽음의 소재?"~ */
  IF ~~ THEN REPLY #55645 /* ~"당신은 내 죽음의 위치가 '살인자'가 나로 하여금 잊게 하려는 것이라고 생각하오? 왜?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",5)
~ GOTO 123
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #55647 /* ~"주목/가정: 죽음의 소재 망각 = 값을 '살인자'로".~ */
  IF ~~ THEN REPLY #55648 /* ~"흠... 기능성은 있소... 하지만 왜 *위치*에 대한 지식이 중요한 거요?"~ */ JOURNAL #55650 /* ~노돔은 내 '살인자'에 대해 또 다른 시사를 했다. 그는 그 살인자가 실제로는 살인자가 아일 뿐만 아니라 단지 내가 계속 망각을 하기만을 바라는 것 같다고 말했다. 해골들의 기둥이 한 말에 의하면 내 죽음이 어디 있는지 아는 사람은 점점 줄어드는 것 같다. 나도 그들 중 하나였으나, 기억을 잃어버리고 말았다. 살인자가 나로 하여금 망각하기를 바라는 것은 바로 내 죽음의 위치인가?~ */ GOTO 124
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #55653 /* ~"수정: 죽음의 소재 모름 = 값을 '살인자'로".~ */
  IF ~~ THEN REPLY #55655 /* ~"흠... 가능성은 있소... 그래 누군가가 그 누구도 그것의 위치를 아는 것을 바라지 않는 거요? 아니면 이 살인자는 자신 이외의 그 누구도 그것이 어디 있는지를 아는 것을 원하지 않는 거요?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 125 // from: 117.3 130.3
  SAY #55657 /* ~"주목: 배신자 트리어스 - 특성: 허위/번쩍이는 거짓말의 방패. 정보/출처: 트리어스, 정보의 정확성: 신뢰도 낮음."~ */
  IF ~  GlobalGT("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55660 /* ~"나는 그가 거짓말을 했다고는 생각하지 않소, 노돔. 거짓말을 해서 그가 얻을 건 아무 것도 없었으니까... 그의 눈을 보았다면 당신도 그렇게 생각했을 것이오. 그는 이번에는 진실을 말했소. 왜 이 수호자란 존재가 내 죽음을 억류하고 있는 거지?"~ */ GOTO 127
  IF ~  Global("Ravel_Nordom","GLOBAL",0)
~ THEN REPLY #55662 /* ~"나는 그가 거짓말을 했다고는 생각하지 않소, 노돔. 거짓말을 해서 그가 얻을 건 아무 것도 없었으니까... 그의 눈을 보았다면 당신도 그렇게 생각했을 것이오. 그는 이번에는 진실을 말했소. 왜 이 수호자란 존재가 내 죽음을 억류하고 있는 거지?"~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.1
  SAY #55664 /* ~"추측: 죽음의 소재 귀중. 질문: 죽음도 귀중합니까?"~ */
  IF ~~ THEN REPLY #55666 /* ~"래벌은 내 죽음이 귀중하다고 있소... 그것을 손에 넣어 내게 *몸값*을 요구하거나 날 꼭두각시처럼 조종할 수도 있다고 하오."~ */ GOTO 128
END

IF ~~ THEN BEGIN 127 // from: 125.0
  SAY #55668 /* ~"질문: 왜? 적성 중... 동기..." 노돔은 *윙윙*거린 후 *지저귄다.* "노돔 래벌의 응답 재생: "- 누가 자네 죽음을 인질로 잡을 경우 그가 자네에게 어떤 끔찍한 일을 할 수 있을 지는 아무도 알 수가 없네." 래벌은 손톱으로 찰칵 소리를 낸다. "그것은 자네의 달콤하고 과즙이 많은 영혼을 가지고 있는 것과 마찬가지지... 자네는 그의 꼭두각시 인형이 되어버릴 수도 있네, 그것도 가장 비참한 꼭두각시가." 노돔은 *지저귄다.* "재생 종료."~ */
  IF ~~ THEN REPLY #55669 /* ~"옳소. 래벌은 내 죽음이 귀중하다고 있소... 그것을 손에 넣어 내게 몸값을 요구하거나 날 꼭두각시처럼 조종할 수도 있다고 했소. 하지만 몸값은 누군가가 몸값을 요구할 것이라는 것을 의미하오... 하지만 그런 요구는 없었고 누가 날 인형처럼 조종하려 하지도 않았소... 그러니..."~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~나는 내 '살인자'가 무엇을 원하는지 알아내려고 했으나 같은 벽에 계속 부딪히고 있다. 그가 원하는 것은 내가 내 죽음의 위치를 잃어버리는 것 뿐이다, 그리고 그는 몸값을 요구하거나 내 죽음을 이용해 날 지배하려는 시도도 하지 않았다(적어도 내가 아는 한도 내에서는). 아마 그는 내 죽음을 가지고 있지 않는지도 모르다... 아니면 그것을 이용하고 싶지 않은 건가? 의문은 끊이지 않으나 그에 대한 답은 너무도 부족하다. ~ */ GOTO 129
END

IF ~~ THEN BEGIN 128 // from: 126.0
  SAY #55673 /* ~"가정: 몸값 - 질문: 몸값 요구를 받았습니까?"~ */
  IF ~~ THEN REPLY #55675 /* ~"당신이 옳소. 그런 일은 없었소. 그리고 내 죽음을 손아귀에 쥐고 있는 수호자란 자가 누구이든 간에 내게 뭘 강제로 시키기 위해 날 조작하려고 하지도 않은 것 같소... 적어도 내가 아는 한에는. 그래서...?"~ */ DO ~SetGlobal("Nordom_Solution","GLOBAL",6)
SetAnimState("Nordom",ANIM_MIMESTAND)
~ JOURNAL #55681 /* ~나는 내 '살인자'가 무엇을 원하는지 알아내려고 했으나 같은 벽에 계속 부딪히고 있다. 그가 원하는 것은 내가 내 죽음의 위치를 잃어버리는 것 뿐이다, 그리고 그는 몸값을 요구하거나 내 죽음을 이용해 날 지배하려는 시도도 하지 않았다(적어도 내가 아는 한도 내에서는). 아마 그는 내 죽음을 가지고 있지 않는지도 모르다... 아니면 그것을 이용하고 싶지 않은 건가? 의문은 끊이지 않으나 그에 대한 답은 너무도 부족하다. ~ */ GOTO 129
END

IF ~~ THEN BEGIN 129 // from: 127.0 128.0
  SAY #55683 /* ~노돔은 침묵한다. 그는 눈도 깜박이지 않는다.~ */
  IF ~~ THEN REPLY #55685 /* ~"그래서... 내 죽음은 이 빌어먹을 요새에 감금되어 있고, 사람들이 그것이 어디 있는지를 점점 잊어감에 따라 그것을 되찾을 기회는 갈수록 줄어들고 있소. 누가 이 수호자이든 간에 - 그가 살인자와 *동일* 인물인지 알 수는 없으나 - 내가 죽음을 되찾는 것을 원하지 않거나... 적어도 다른 사람들이 그 소재를 아는 것을 원하지 않는 것은 분명하오. 하지만 내 죽음을 가지고 있는 이 수호자란 존재는 날 조종할 수 없거나 내 죽음을 이용해 날 조종하는 것을 원하지 않고 있소. 왜?"~ */ GOTO 117
END

IF ~~ THEN BEGIN 130 // from: 9.10 74.9
  SAY #55687 /* ~"긍정적. 질문: 추가 정보?"~ */
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",2)
~ THEN REPLY #55689 /* ~"난 누군가 날 살해하려는 것 같소... 그의 살의가 어찌나 강렬한지 나는 그를 죽이려고 함정으로 가득한 무덤까지 만들었었소. 무덤의 비문에 의하면 그는 오래 전부터 날 노려왔소... 적어도 내 전신들이 기억할 수 있는 한 그는 계속해서 그래왔던 듯하오."~ */ GOTO 118
  IF ~  GlobalGT("Ravel","GLOBAL",0)
Global("Nordom_Solution","GLOBAL",3)
~ THEN REPLY #55691 /* ~"한 가지 더 있소. 내가 애초부터 불사신이었던 건 아니오. 래벌이 날 그렇게 만들었소."~ */ GOTO 121
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #55692 /* ~"내가 죽음을 찾는 것을 도와줄 수 있거나 그것의 위치를 아는 사람들의 수는 점점 줄어들고 있는 것 같소... 만약 이 추세가 계속된다면 내 죽음이 어디 있는지 아는 사람은 아무도 남지 않게 될 것이오. 해골들의 기둥은 셋밖에 없다고 했소... 그리고 그들 중 하나는 나였으나 난 잊어버렸소."~ */ GOTO 122
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
Global("Nordom_Solution","GLOBAL",5)
~ THEN REPLY #55694 /* ~"트리어스는 이 후회의 요새라는 곳에는 내 죽음을 감금하고 있는 '수호자'라는 존재가 있다고 했소."~ */ GOTO 125
  IF ~~ THEN REPLY #55697 /* ~"아직 추가적인 정보를 얻지 못했소, 노돔. 하지만 당신에게 할 다른 질문들이 있소."~ */ GOTO 74
  IF ~~ THEN REPLY #55699 /* ~"그건 없었던 일로 하시오, 노돔. 움직입시다."~ */ EXIT
END

IF ~~ THEN BEGIN 131 // from:
  SAY #61281 /* ~"해골들의 기둥: 타인에게 거짓말로 타인의 죽음을 초래한 인간들의 두부로 구성된 것으로 알려져 있음. 기둥은 지식의 저장고 역할을 하고 있음. 기둥은 97% 이상의 확률로 지식을 공유하는 대가를 요구함. 기둥의 요구는 일관되게 일반적인 인간이 '엄청난'이라고 표현할 수준임. 논리적으로 분석할 때 특정한 정보의 필요성 역시 마찬가지로 '엄청난' 경우를 제외하고는 질문을 하지 않는 것이 바람직함."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 132 // from:
  SAY #61673 /* ~"한때 나는 '하나'였으나 이제 나는 '작고 시끄러운' 하나입니다."~ [NOR309] */
  IF ~~ THEN EXTERN ~BGRACE~ 17
END

IF ~~ THEN BEGIN 133 // from:
  SAY #61674 /* ~"부정적."~ [NOR310A] */
  IF ~~ THEN EXTERN ~BGRACE~ 19
END

IF ~~ THEN BEGIN 134 // from:
  SAY #61675 /* ~"나는 그들에게 얘기하고 있지 않습니다. 그들에게 귀를 기울이고 있었습니다. 그들은 언제 화살을 쏠 것인가에 대한 질문을 제출하고 있었습니다. ~ [NOR310B] */
  IF ~~ THEN EXTERN ~BGRACE~ 20
END

IF ~~ THEN BEGIN 135 // from:
  SAY #61676 /* ~"한때는 날개가 두 개 있었으나 이제는 팔이 두 개 있습니다. 나는 왜 날개를 잃었는지 모릅니다."~ [NOR308A] */
  IF ~~ THEN EXTERN ~BGRACE~ 22
END

IF ~~ THEN BEGIN 136 // from:
  SAY #61677 /* ~"'동족의 호의를 잃다'라는 주제와 내가 날개를 잃은 일의 연관성에 대해서는 내가 인식하고 목록화한 일입니다. 나는 내가 교류하는 많은 사람들의 경우에 그것이 반영되는 것을 관찰하였습니다.~ [NOR308B] */
  IF ~~ THEN DO ~IncrementGlobal("Grace_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #61678 /* ~"'가장 귀여운'은 주관적인 표현입니다. 나는 '무시무시한 입방체 전사'라는 칭호를 선호합니다.'~ [NOR296] */
  IF ~~ THEN EXTERN ~BGRACE~ 24
END

IF ~~ THEN BEGIN 138 // from:
  SAY #61785 /* ~"나는 당신으로부터 명령을 받지 않습니다."~ [NOR284] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Nordom","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #61786 /* ~"당신에게 대용의 팔이라도 있기 전에는 물리적으로 불가능합니다. 또한 나는 주사위와는 달리 각 면에 숫자가 없습니다"~ [NOR283] */
  IF ~~ THEN EXTERN ~BMORTE~ 41
END

IF ~~ THEN BEGIN 140 // from:
  SAY #61787 /* ~"그들은 장전을 필요로 하지 않습니다. 그들은 언제든지 발사할 준비가 되어 있습니다."~ [NOR306] */
  IF ~~ THEN EXTERN ~BMORTE~ 43
END

IF ~~ THEN BEGIN 141 // from:
  SAY #61788 /* ~"그들은 찰칵거리는 것이 아닙니다, 그들은 여행에 대한 진지한 토론을 하고 있는 중입니다."~ [NOR307] */
  IF ~~ THEN EXTERN ~BMORTE~ 45
END

IF ~~ THEN BEGIN 142 // from:
  SAY #61789 /* ~"왜 당신은 계속 나를 문이라고 부릅니까?"~ [NOR305A] */
  IF ~~ THEN EXTERN ~BMORTE~ 47
END

IF ~~ THEN BEGIN 143 // from:
  SAY #61790 /* ~"나는 누가 거기 있는지 알고 있습니다. 그건 당신입니다, 답을 아는데 왜 질문을 합니까?"~ [NOR305B] */
  IF ~~ THEN EXTERN ~BMORTE~ 48
END

IF ~~ THEN BEGIN 144 // from:
  SAY #61791 /* ~"안나! 모트가 당신 베개를 껴안고 싶어합니다."~ [NOR285] */
  IF ~~ THEN EXTERN ~BMORTE~ 50
END

IF ~  Global("Fortress_Nordom","GLOBAL",3)
~ THEN BEGIN 145 // from:
  SAY #68234 /* ~당신은 힘을 가지고 손을 내밀어 영혼을 노돔의 형태로 천천히 만든다, 그리고 당신은 그것이 다시 모드론의 몸 속으로 들어가는 것을 느낀다. 노돔의 동체가 전율하면서 그가 뛰어오르듯 일어난다.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68235 /* ~"노돔, 지금 내겐 당신 도움이 절실히 필요하오... 나는 내 살인자를 찾아냈고 그건 바로 내 죽음이오."~ */ DO ~SetGlobal("Fortress_Nordom","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 146
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68372 /* ~노돔.~ */ GOTO 147
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #68236 /* ~"명령 대기 중."~ [NOR063] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68237 /* ~"준비를 단단히 하시오. 당신 석궁들은 이제 곧 표적을 얻게 될 테니..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
~ THEN REPLY #68238 /* ~"준비를 단단히 하시오. 당신 석궁들은 이제 곧 표적을 얻게 될 테니..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 147 // from: 145.1
  SAY #68373 /* ~노돔이 눈을 깜박이자 눈의 셔터가 빠르게 찰칵거린다, 그라고 셔터가 팽창해 마치 눈을 가늘게 뜨고 보는 듯한 형상이 된다. "당신의 목소리는 기존의 인식된 파라미터를 초과합니다. ~ */
  IF ~~ THEN REPLY #68374 /* ~나는 다시... 하나의 완전한 존재가 되었소. 나는 변했소, 그리고 이 곳에 오래 머무를 수가 없소. 노돔, 원하다면 당신을 시길로 돌려보내 주겠소.~ */ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #68375 /* ~"질문: 다음 행선지는 어디입니까? 노돔은 당신을 따라가 보호하겠습니다."~ */
  IF ~~ THEN REPLY #68376 /* ~나는 여러 삶에 걸쳐 많은 범죄를 저질렀소. 이제 나는 형벌을 받을 장소로 가야하오. 당신은 나와 함께 갈 수가 없소.~ */ GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #68377 /* ~"질문 분지 중 : 노돔의 존재를 필요로 하십니까, 아니면 원하지 않으십니까?"~ */
  IF ~~ THEN REPLY #68378 /* ~당신은 날 따라올 수가 없소, 노돔. 그것은 내 선택이 아니오. 이제는 내 행동을 지배하는 다른 힘들이 존재하오. 그들은 항상 존재해 왔소, 하지만 이제 그들은 내 존재를 인식하게 되었으며, 우리가 대화하는 이순간에도 내게로 다가오고 있소.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from: 149.0
  SAY #68379 /* ~노돔은 잠시 *윙윙-찰칵*거린다, 그리고 이번에는 그의 손에서 석궁들이 *찰칵* *핑* 소리를 내기 시작한다. "노돔은 사의를 표합니다. 당신은 노돔이 자아를 찾는 것을 도와주었습니다." ~ */
  IF ~~ THEN REPLY #68380 /* ~노돔, 당신이 내가 나 자신을 찾는 것을 도운 것처럼 나도 당신에게 자유를 주겠소. 탐구하고, 배우며, 그리고 성장하시오. 우리는 다시 만날 수 있을지도 모르오, 머나먼 미래에 다른 차원에서.~ */ GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #68381 /* ~"응답: 청취 및 수신 함. 노돔은 전술된 날을 기다리겠습니다."~ */
  IF ~~ THEN REPLY #68382 /* ~당신의 논리를 잘 간직하시오, 노돔. 당신은 그것이 다원 우주를 지배하는 대부분의 열정보다 훨씬 더 강력한 방패라는 것을 알게 될 것이오.~ */ GOTO 152
END

IF ~~ THEN BEGIN 152 // from: 151.0
  SAY #68383 /* ~"이 문제는 더 이상 완전 논리와 일치하지 않습니다."~ [NOR149] */
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68384 /* ~잘 가시오, 노돔.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68385 /* ~잘 가시오, 노돔.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68386 /* ~잘 가시오, 노돔.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68487 /* ~잘 가시오, 노돔.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
~ THEN REPLY #68488 /* ~잘 가시오, 노돔.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68489 /* ~잘 가시오, 노돔.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Nordom","GLOBAL",4)
~ THEN BEGIN 153 // from:
  SAY #68414 /* ~"명령 대기 중."~ [NOR063] */
  IF ~~ THEN REPLY #68415 /* ~"쉴 새없이 그 가지가 달린 괴물에게 석궁으로 화살을 쏘시오, 정리는 나중에 할 테니..."~ */ EXIT
END
