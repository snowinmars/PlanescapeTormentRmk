// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACE~

IF ~~ THEN BEGIN 0 // from:
  SAY #2850 /* ~"안녕하세요. 나는 이 곳의 청교도 서큐버스예요. 나는 당신 파티 멤버 후보들 중 하나이기도 해요... 당신이 날 받아준다면 말이지만요."~ */
  IF ~~ THEN REPLY #2851 /* ~"그래 당신은 내 꺼야. 헤헤. 나중에 보자고, 타나리.~ */ EXIT
  IF ~~ THEN REPLY #24998 /* ~"그레이스, 난 당신과 잡담할 시간은 없으니까 좀 서둘러 주시오."~ */ DO ~ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 2.0 3.0 4.0 5.2
  SAY #6858 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "물론이에요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7013 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7014 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7015 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DDABUS~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #7016 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #7017 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #7018 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DDABUS~ 18
  IF ~~ THEN REPLY #7019 /* ~"그보고 우리에게 레이디 오브 페인에 대해 얘기해 달라고 부탁하시오." ~ */ EXTERN ~DDABUS~ 19
  IF ~~ THEN REPLY #7020 /* ~"그보고 우리에게 휄에 대해 얘기해 달라고 부탁하시오." ~ */ GOTO 5
  IF ~~ THEN REPLY #7021 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #6859 /* ~"그는 자신이 다버스라고 말하고 있어요." 그레이스는 잠시 말을 멈춘다. "나는 이름이나... 적어도 우리가 이름이라고 부를 수 있는 것을 지닌 다버스는 거의 본 적이 없어요. 그들은 그런 것보다는 심벌들로 자신을 표현하는 경향이 있는 것 같아요."~ */
  IF ~~ THEN REPLY #7022 /* ~"그에게 질문을 더 해줄 수 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #7023 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY #6860 /* ~"그는 자신의 직무를 수행하고 있다고 말하고 있어요." 그녀는 고개를 돌려 당신을 본다. "그들은 대부분의 시간을 도시의 여러 곳들을 수리하고 해체하는 데 보내요. 여러 모로 그들은 이 도시의 관리인들이라고 할 수 있어요."~ */
  IF ~~ THEN REPLY #7024 /* ~"그에게 질문을 더 해줄 수 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #7025 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #6861 /* ~"명확한 답을 기대했던 건 지나친 욕심이었던 것 같군요."~ */
  IF ~~ THEN REPLY #7026 /* ~"그에게 질문을 더 해줄 수 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #7027 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 5 // from: 1.7
  SAY #6862 /* ~그레이스는 눈살을 찌푸린다. "그런 질문을 하는 건 현명한 생각이 아닐 것 같군요. 휄은 더 이상 그들의 공동체의 일원이 아니기 때문에 그런 질문은 그를 화나게 할 수도 있어요."~ */
  IF ~~ THEN REPLY #7028 /* ~"어쨌든 질문해 줄 수 있겠소?"~ */ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7029 /* ~"강의는 그만하고 그에게 질문이나 하시오."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DDABUS~ 20
  IF ~~ THEN REPLY #7030 /* ~"그에게 질문을 더 해줄 수 있겠소?"~ */ GOTO 1
  IF ~~ THEN REPLY #7031 /* ~"관두시오, 그럼. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DDABUS~ 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY #7186 /* ~그레이스는 당신의 프라이버시를 보호해주려는 듯 고개를 끄덕인다. "잠시 후에 돌아오겠어요." 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #7482 /* ~창녀를 따라간다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DHARLOTN~ 32
END

IF ~~ THEN BEGIN 7 // from:
  SAY #6474 /* ~"그녀는 마족이 있는 곳에서는 그것에 대하여 얘기할 수가 없어요. 제가 추측하기에 그녀는 계약에 의해 구속받고 있으며, 그것은 이 프로젝트가 질서의 프로젝트라는 것을 의미해요. 그리고 그녀가 마법에 의해 그것에 묶여 있는 것으로 미루어 볼 때 바테주가 발주한 프로젝트 같군요."~ */
  IF ~~ THEN REPLY #8000 /* ~"대단한 일련의 성찰이군. 그녀가 한 말이 옳소, 켈'레라?"~ */ EXTERN ~DKELLERA~ 14
  IF ~~ THEN REPLY #8001 /* ~"흥미롭군. 염두에 두도록 하리다. 그건 그렇고, 켈'레라, 날 위해 몇 가지 질문에 대답해주시오."~ */ EXTERN ~DKELLERA~ 21
END

IF ~~ THEN BEGIN 8 // from:
  SAY #6476 /* ~"그녀는 마족이 있는 곳에서는 그것에 대하여 얘기할 수가 없어요. 제가 추측하기에 그녀는 계약에 의해 구속받고 있으며, 그것은 이 프로젝트가 질서의 프로젝트라는 것을 의미해요. 그리고 그녀가 마법에 의해 그것에 묶여 있는 것으로 미루어 볼 때 바테주가 발주한 프로젝트 같군요."~ */
  IF ~~ THEN REPLY #8002 /* ~"대단한 일련의 성찰이군. 그녀가 한 말이 옳소, 켈'레라?"~ */ EXTERN ~DKELLERA~ 31
  IF ~~ THEN REPLY #8003 /* ~"흥미롭군. 염두에 두도록 하리다. 그건 그렇고, 켈'레라, 날 위해 몇 가지 질문에 대답해주시오."~ */ EXTERN ~DKELLERA~ 23
END

IF ~~ THEN BEGIN 9 // from:
  SAY #6477 /* ~"이해해요."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 36
END

IF ~~ THEN BEGIN 10 // from:
  SAY #7997 /* ~"이해해요."~ */
  IF ~~ THEN EXTERN ~DKELLERA~ 37
END

IF ~~ THEN BEGIN 11 // from:
  SAY #11273 /* ~그레이스는 침착하게 말한다. "이퀵스, 나도 내가 잘 있고, 내가 스스로 선택한 길을 걷고 있으며, 또 내가 스스로 선택한 동료들과 여행하고 있다는 것을 내 어머니가 알면 몹시 기뻐할 거라고 생각해요. 만약 어비스로 돌아가게 되면 내가 한 말을 그녀에게 전해주실 수 있겠어요? 아마 그녀는 틀림없이 그런 기쁜 소식을 전해준 사람에게 후하게 보상을 할 거예요." 그녀는 점잖게 미소짓는다.~ */
  IF ~~ THEN REPLY #11274 /* ~"모두 흥미롭긴 하지만 다른 질문을 해야겠소..."~ */ EXTERN ~DILQUIXT~ 5
  IF ~~ THEN REPLY #11275 /* ~"그만 됐소. 안녕히 계시오, 이퀵스."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #11404 /* ~그레이스는 가벼운 인사로 답한다. "당신의 친절한 말은 그 누구의 가슴이라도 녹일 수 있을 거예요, 이퀵스. 하지만 우리는 많은 사람들이 겉보기와는 다르다는 사실을 명심해야 해요. 만약 모든 것이 그토록 빨리 드러난다면 그건 참으로 애석하고, 심지어는 매우 맥이 빠지는 일이겠지요."~ */
  IF ~~ THEN REPLY #11405 /* ~"그게 정확히 무슨 뜻이오, 그레이스?"~ */ GOTO 13
  IF ~~ THEN REPLY #11406 /* ~"됐소. 내 질문에 좀 대답해주시오, 이퀵스."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11410 /* ~"이 대화는 이제 끝났소. 안녕히 계시오, 이퀵스."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #11407 /* ~"내 말은 말을 너무 성급하게 하면 나중에 후회하게 되며, 많은 사람들에게는 다른 이들이 눈치채지 못하는 능력이나 미덕을 지니고 있다는 뜻이에요. 너무나도 많은 사람들이 결론이라는 선반 위로 뛰어오르지요, 선반이 무너져 내릴 거라는 것을 알지 못한 채. 따라서 우리는 필요 이상의 것을 밝히기 전에 반드시 숙고를 해야 해요."~ */
  IF ~~ THEN REPLY #11408 /* ~"알겠소... 이퀵스, 그 밖에도 물어보고 싶은 것들이 있소..."~ */ EXTERN ~DILQUIXN~ 2
  IF ~~ THEN REPLY #11409 /* ~"말 잘했소, 그레이스. 안녕히 계시오, 이퀵스."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #16627 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "물론이에요. 그건 참 좋은 생각 같군요."~ */
  IF ~  NearbyDialog("DMorte")
Global("Tree_M","AR0400",0)
~ THEN REPLY #16927 /* ~"고맙소. 모트? 어떻게 생각하나?"~ */ DO ~SetGlobal("Tree_M","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMORTE~ 181
  IF ~  NearbyDialog("DAnnah")
Global("Tree_A","AR0400",0)
~ THEN REPLY #16928 /* ~"고맙소. 안나? 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_A","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DANNAH~ 99
  IF ~  NearbyDialog("DIgnus")
Global("Tree_I","AR0400",0)
~ THEN REPLY #16929 /* ~"고맙소. 이그너스?"~ */ DO ~SetGlobal("Tree_I","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DIGNUS~ 11
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
~ THEN REPLY #16930 /* ~"고맙소. 다콘, 이 사람을 도울 수가 있겠소?"~ */ DO ~SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 74
  IF ~  NearbyDialog("DDakkon")
Global("Tree_D","AR0400",0)
Global("Dakkon_Slave","Global",1)
~ THEN REPLY #16931 /* ~"고맙소. 다콘: 이 사람을 도우시오."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Tree_D","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DDAKKON~ 75
  IF ~  NearbyDialog("DNordom")
Global("Tree_N","AR0400",0)
~ THEN REPLY #16932 /* ~"고맙소. 노돔, 도울 수 있겠소?"~ */ DO ~SetGlobal("Tree_N","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DNORDOM~ 1
  IF ~  NearbyDialog("DVhail")
Global("Tree_V","AR0400",0)
~ THEN REPLY #16933 /* ~"고맙소. 베일로, 도와줄 수 있겠소?"~ */ DO ~SetGlobal("Tree_V","AR0400",1)
IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DVHAIL~ 1
  IF ~~ THEN REPLY #16934 /* ~"고맙소. 질문할 것들이 좀 있소, 통곡자..."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXTERN ~DMFTREE~ 28
  IF ~~ THEN REPLY #16935 /* ~"고맙소, 그레이스. 안녕히 계시오, 나무를-위해-통곡하는-자여."~ */ DO ~IncrementGlobal("Tree_Helpers","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 16.0 17.1 18.3 19.3 20.0 21.12 22.12 23.13 24.13 25.13 26.12 27.9 28.9 29.0 30.3 31.3 32.0 32.2 33.1 34.3 35.1 36.3 37.0 38.3 39.3 40.3 41.3 42.3 43.12 44.5 45.0 46.0 46.2
  SAY #22578 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "물론이에요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25256 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25257 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",0)
~ THEN REPLY #25258 /* ~"그가 누구인지 물어봐 주시오"~ */ DO ~SetGlobal("Fell","GLOBAL",1)
~ EXTERN ~DFELL~ 16
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25259 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 17
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25260 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 18
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25261 /* ~"그에게 이 곳이 어떤 곳인지 물어봐 주시오."~ */ DO ~SetGlobal("Fell_Work","GLOBAL",1)
~ EXTERN ~DFELL~ 19
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25262 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25263 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Fell","GLOBAL",1)
~ THEN REPLY #25264 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ DO ~SetGlobal("Fell","GLOBAL",2)
~ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25265 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 20
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25266 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 21
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25267 /* ~"나는 내가 당신을 안다는 생각이 드오, 휄."~ */ EXTERN ~DFELL~ 22
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64406 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64407 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
Global("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64408 /* ~"저 커튼 뒤에는 무엇이 있소, 휄?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64409 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 80
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64410 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 81
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
GlobalGT("Fell_Floor_Trigger","GLOBAL",0)
~ THEN REPLY #64411 /* ~"안쪽 방에 있는 그 틀들은 무엇이오?"~ */ EXTERN ~DFELL~ 82
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25268 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 71
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25269 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 72
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
GlobalGT("Fell","GLOBAL",1)
~ THEN REPLY #25270 /* ~"그는 자신이 날 만난 적이 있다고 했소... 그는 내가 어떻게 죽었는지 알고 있소?"~ */ EXTERN ~DFELL~ 73
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
~ THEN REPLY #25271 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 31
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25272 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 32
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Know_Ravel","GLOBAL",0)
Global("Ravel","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25273 /* ~"그에게 래벌에 대해 들은 적이 있는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 33
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
~ THEN REPLY #25274 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 52
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25275 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 53
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
PartyHasItem("OldArm1")
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25276 /* ~"그에게 그가 내가 발견한 이 잘라진 팔에 있는 문신들을 새겼는지 물어봐 주시오."~ */ EXTERN ~DFELL~ 54
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25277 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 64
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25278 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 65
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25279 /* ~"그에게 내 몸에 있는 문신들에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 66
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
GlobalGT("Fell_Work","GLOBAL",0)
~ THEN REPLY #25280 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25281 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
GlobalGT("Fell_Work","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25282 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25283 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #22580 /* ~"그의 이름은 휄이에요." 그레이스는 그 심벌을 잠시 쳐다본 후 당신을 향해 고개를 돌린다. "그 심벌... 검은 번개가 하얀 타원을 가르는 심벌... 그것은 이 가게의 밖에도 새겨져 있어요. 내 생각에 하얀 타원은 시길을 상징하는 것 같아요, 그리고 검은 번개..." 그레이스는 침묵한다. "그건 나도 잘 모르겠어요."~ */
  IF ~~ THEN REPLY #25284 /* ~"흠... 그에게 하고 싶은 또 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25285 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #22583 /* ~그레이스는 심벌들이 실체화하기를 참을성 있게 기다린다. "이 곳은 그의 스튜디오에요. 그는 여기서 다른 사람들이 피부에 문신을 새기죠."그레이스는 당신을 향해 고개를 돌리고 미소짓는다. 그녀는 휄을 만나게 되어 기쁜 듯하다. "휄은 재능 있는 예술가로 시길 전역에 명성이 자자해요. 다른 사람들의 피부가 바로 그의 캔버스지요."~ */
  IF ~~ THEN REPLY #25286 /* ~"그가 어떤 문신들을 판매하고 있는지 볼 수 있겠소?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25287 /* ~"흠... 그에게 하고 싶은 질문이 또 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25288 /* ~"명심하겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22585 /* ~그레이스는 심벌들을 골똘히 살핀 후 이상하다는 표정으로 당신을 향해 고개를 돌린다. "휄은 당신이 이 곳에 온 것은 이번이 처음이지만 처음이 아니라고 하고 있어요." 그레이스는 당신을 살펴본다. "아마 그는 당신이 당신이기 이전의 당신을 기억하고..." 갑자기 그녀는 자신이 무슨 말을 했는지 깨닫고 가볍게 웃는다. "죄송해요... 나는 다른 사람과 얘기할 때 '당신'이란 말을 그토록 여러 번 쓰는 일이 있으리라고는 생각하지 못했어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25289 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 23
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25290 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25291 /* ~"그는 내가 누구인지 아오?"~ */ EXTERN ~DFELL~ 25
  IF ~~ THEN REPLY #25292 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25293 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22587 /* ~그레이스는 눈살을 찌푸린다, 그리고 턱을 손에다 괴고 생각에 잠긴다. "휄은 자신이 당신을 안다고 말했어요... 그리고 나서 그는 이상한 말을 하는군요. 그는 자신이 당신 이야기를 하는 것은 *용납되지* 않는다고 말하고 있어요. ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25294 /* ~"허용되지 않는다? 왜?"~ */ EXTERN ~DFELL~ 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25295 /* ~"허용되지 않는다? 왜?"~ */ EXTERN ~DFELL~ 27
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25296 /* ~"허용되지 않는다? 왜?"~ */ JOURNAL #24270 /* ~휄은 자신이 나를 알기는 하나 내 '스토리'를 말할 순 없다고 했다. 하지만 정말 이상한 건 그 이유였다. 그는 '그가 인간의 본성을 바꿀 수는 없기' 때문이라고 말했다. ~ */ EXTERN ~DFELL~ 28
  IF ~~ THEN REPLY #25297 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25298 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #22591 /* ~"그는 죄송하지만 얘기할 수는 없다는군요." 그레이스는 돌아서서 당신을 마주본다. "그가 그 다음에 하는 얘기가 좀 이상하군요: 그는 자신이 *인간의 본성*을 바꿀 수는 없다고 얘기하고 있어요." 그녀가 이 문장을 반복하자 당신은 머릿속에서 엄청난 압력을 느낀다... 그리고 그 압력은 망치로 내려치는 듯한 강렬한 기세로 축적되어 당신의 머리는 터질 지경이 된다... 그러나 그 느낌은 그녀가 말을 마치자 메아리처럼 사라진다. ~ */
  IF ~~ THEN REPLY #25299 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25300 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #23011 /* ~"휄은 그녀가 실존한다고 말하고 있어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25301 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 34
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25302 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 35
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25303 /* ~"그는 그녀가 어디 있는지 아오?"~ */ EXTERN ~DFELL~ 36
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25304 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25305 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25306 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25307 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25308 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25309 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25310 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25311 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25312 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25313 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25314 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #23012 /* ~심벌들을 읽으면서 그레이스의 목소리는 침울해진다. "휄은 그녀가 레이디의 미로들 중 한 곳에 있다고 말하고 있어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25315 /* ~"미로?"~ */ EXTERN ~DFELL~ 37
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25316 /* ~"미로?"~ */ EXTERN ~DFELL~ 38
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25317 /* ~"미로?"~ */ EXTERN ~DFELL~ 39
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25318 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25319 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25320 /* ~"그에게 그녀에 대해 아는 것이 있다면 말해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25321 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25322 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25323 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25324 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25325 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25326 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25327 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25328 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #23013 /* ~심벌들을 읽으면서 그레이스의 목소리는 침울해진다. "휄은 그녀의 생각과 레이디의 생각이 달랐기 때문에 레이디가 그녀를 벌했다고 말하고 있어요. 래벌은 레이디의 미로들 중 한 곳에 감금되었어요." 그레이스는 당신 쪽으로 고개를 돌린다. "당신은 미로에 대해 잘 아시나요?"~ */
  IF ~~ THEN REPLY #25329 /* ~"그렇지 않소. 설명을 부탁하오..."~ */ GOTO 24
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25330 /* ~"그렇소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25331 /* ~"그렇소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25332 /* ~"그렇소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25333 /* ~"그것들에 대해서는 잘 아오. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25334 /* ~"그것들에 대해서는 잘 아오. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25335 /* ~"그것들에 대해서는 잘 아오. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25336 /* ~"그렇소. 그에게 물어보고 싶은 것이 더 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25337 /* ~"그렇소. 그에게 물어보고 싶은 것이 더 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25338 /* ~"그렇소. 그에게 물어보고 싶은 것이 더 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25339 /* ~"그렇소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25340 /* ~"그렇소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25341 /* ~"그렇소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25342 /* ~"그렇소.그에게 물어보고 싶은 것이 더 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25343 /* ~"그렇소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #23014 /* ~그레이스는 손을 한 곳으로 모아 손가락으로 원을 만든다. "레이디에게는 시길의 일부를 떼어내..." 당신은 그레이스의 작은 손가락의 환영이 그녀의 손으로부터 떨어져 나와 공중을 떠다니다 작은 원을 이루는 것을 놀란 표정으로 지켜본다. "...미로를 만들 수 있는 능력이 있다고 해요."~ */
  IF ~~ THEN REPLY #25344 /* ~"계속하시오..."~ */ GOTO 25
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25345 /* ~"이해할 것 같소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25346 /* ~"이해할 것 같소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25347 /* ~"이해할 것 같소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25348 /* ~"이미 충분히 들었소. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25349 /* ~"이미 충분히 들었소. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25350 /* ~"이미 충분히 들었소. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25351 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25352 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25353 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25354 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25355 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25356 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25357 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25358 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #23015 /* ~작은 원의 환영은 공중을 떠다니다가 천천히 회전하기 시작한다. "그녀가 떼어낸 시길의 일부는 죄수를 감금하는 데 쓰여요. 미로에 갇히는 걸 피할 방법은 없어요. 그건 어느 때라도 일어날 수 있어요. 그냥 거리를 걷거나 문을 지나가다가..." 그녀는 손뼉을 친다. "...갑자기 알지 못하는 곳으로 오게 되는 것이지요." 원의 환영 안에서 뭔가 갑자기 반짝이는데, 그것은 마치 누군가가 그 안에서 걷고 있는 모습처럼 보인다.. ~ */
  IF ~~ THEN REPLY #25359 /* ~"계속하시오..."~ */ GOTO 26
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25360 /* ~"이해할 것 같소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25361 /* ~"이해할 것 같소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25362 /* ~"이해할 것 같소. 왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25363 /* ~"이미 충분히 들었소. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25364 /* ~"이미 충분히 들었소. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25365 /* ~"이미 충분히 들었소. 그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25366 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25367 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25368 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25369 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25370 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25371 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25372 /* ~"이해하오. 그에게 하고 싶은 질문이 또 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25373 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #23016 /* ~그레이스는 얘기를 계속한다. 작은 미로의 환영은 그녀의 눈에 반사되어 비친다. "각 미로에는 외부로 나갈 수 있는 전이문이 하나씩 존재한다고 해요, 하지만 그것을 찾아내는 것은 어려워요. 아마 그건 죄수에게 희망을 주기 위해 남겨진 것 같아요. 아니면 반대로 죄수를 고문하기 위해서인지도 몰라요." 미로의 환영이 사라진다. "양쪽 모두일 수도 있겠죠."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25374 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25375 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25376 /* ~"왜 래벌은 미로에 갇히게 되었소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25377 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25378 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25379 /* ~"그는 어떻게 하면 래벌의 미로에 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25380 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25381 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25382 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25383 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25384 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25385 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25386 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25387 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #23017 /* ~그레이스는 심벌들을 자세히 살핀다. "휄은 래벌이 '새장'을 열려고 했다고 말하고 있어요." 그레이스는 당신 쪽으로 고개를 돌린다. "'새장'은 시길의 별명이에요." 그레이스는 생각을 하느라 눈살을 찌푸린다. "나는 그녀가 왜 그런 짓을 하려고 했는지 모르겠어요... 래벌은 시길의 벽을 뚫으려고 했는지도 몰라요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25388 /* ~"그는 어떻게 하면 래벌이 있는 곳까지 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 43
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25389 /* ~"그는 어떻게 하면 래벌이 있는 곳까지 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 44
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("AR0610_Visited","GLOBAL",0)
~ THEN REPLY #25390 /* ~"그는 어떻게 하면 래벌이 있는 곳까지 갈 수 있는지 알고 있소?"~ */ EXTERN ~DFELL~ 45
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25391 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25392 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25393 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25394 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25395 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25396 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25397 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25398 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #23018 /* ~"휄은 그녀가 어디 있는지 몰라요. 그는 우리에게 그녀를 찾을 생각을 하지 말라고 경고하고 있어요. 왜냐하면..." 그레이스는 심벌들의 마지막 부분을 살펴본다. "휄은 래벌이 레이디의 감시하에 있다고 말하고 있어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25399 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 40
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25400 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 41
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25401 /* ~"그는 래벌에 대해 또 무엇을 알고 있소?"~ */ EXTERN ~DFELL~ 42
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25402 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 46
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25403 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 47
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25404 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ EXTERN ~DFELL~ 48
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Fell_Ravel_Warning","GLOBAL",0)
~ THEN REPLY #25405 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 49
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatLT(Protagonist,15,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25406 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 50
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",0)
CheckStatGT(Protagonist,14,INT)
Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #25407 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXTERN ~DFELL~ 51
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25408 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~  Global("Fell_Ravel_Warning","GLOBAL",1)
~ THEN REPLY #25409 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #23019 /* ~그레이스는 심벌들을 살펴보더니 걱정스러운 표정을 짓는다."휄은 우리에게 그녀를 찾을 생각을 하지 말라고 경고하고 있어요. 휄은 그녀가 사악한 마음을 지니고 있으며, 만약 그녀가 살아 있다면 당신과... 우리들을 해치려 할 것이라는군요."~ */
  IF ~~ THEN REPLY #25410 /* ~"염두에 두도록 하리다. 그에게 묻고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25411 /* ~"우리는 다시 만나게 될 것이라는 생각이 드오. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Ravel_Warning","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #23020 /* ~그레이스는 심벌들이 실체화되는 대로 읽는다. "휄은 그 팔이 당신 것이라고 해요. 그리고 문신들은 그가 새긴 것이에요." 그녀는 마지막 부분을 살펴보느라 잠시 멈춘다. "그는 문신들 중 하나가 당신이 당신의 길을 다른 네 사람과 공유했던 때에 대해 말해주고 있다는군요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25412 /* ~"다른 네 사람?"~ */ EXTERN ~DFELL~ 55
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25413 /* ~"다른 네 사람?"~ */ EXTERN ~DFELL~ 56
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25414 /* ~"다른 네 사람?"~ */ JOURNAL #24274 /* ~휄은 나를 위해 내 옛 팔에 새겨진 룬을 번역해주었다... 그는 나와 동행했던 네 사람에 대하여 말했다. 그 네 사람은 '사랑하지 않는 자를 사랑한  자를 사랑하지 않은 자', '남이 보는 것을 보지 못하고 남이 보지 못하는 것을 보는 자', '친숙하며 의무에 의해 묶인 자', 그리고 '노예이며 그를 묶는 사슬은 말인 자'이다. 그들 역시 모두 나처럼 고통받고 있으며, 내 고통이 동료들을 불러들인다고 한다.~ */ EXTERN ~DFELL~ 59
  IF ~~ THEN REPLY #25415 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25416 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #23021 /* ~소용돌이치는 심벌들을 읽으면서 그녀의 표정이 차츰 심각해진다. "문신에는 네 사람의 마음에 대해 적혀 있어요... 한 사람은 일방적인 사랑을 했으며, 또 한 사람은 장님이지만 볼 수가 있었으며, 다른 하나는... 친구였다는 것 같군요. 그리고 마지막은 노예로 그가 한 약속이 그를 묶고 있는 사슬..." 그녀는 네 심벌들이 서로 융합하여 하나의 사슬을 이루는 것을 아무 말도 하지 않고 지켜본다...~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25417 /* ~"그 심벌은 무엇이오..."~ */ EXTERN ~DFELL~ 60
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25418 /* ~"그 심벌은 무엇이오..."~ */ EXTERN ~DFELL~ 107
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25419 /* ~"그 심벌은 무엇이오..."~ */ EXTERN ~DFELL~ 61
  IF ~  False()
~ THEN REPLY #25420 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~  False()
~ THEN REPLY #25421 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #23022 /* ~그레이스는 조용히 말한다. "고통." 그녀는 그것을 살펴본 후, 그것이 고통스럽다는 표정으로 돌아선다. "휄은..." 그녀는 숨을 들이쉰다. "정신은 잊어버렸을 지라도 육신은 고통받고 있다는 사실을 알고 있다는군요." 그는 고개를 들어 당신을 마주본다. 그녀의 눈빛은 슬픔과 눈물을 나타내는 기묘한 하늘색 색조를 띠고 있다. "휄은 그 룬이 마치 자석처럼 다른 고통받는 영혼들을 당신에게로 끌어당긴다고 말하고 있어요."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25422 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25423 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52609 /* ~"그에게 물어보고 싶은 것이 하나 더 있소."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52610 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #23023 /* ~"그 팔에는 휄조차 잊어버린 오래된 문신들이 새겨져 있어요. 휄은 만약 당신이 원한다면 그것들을 다시 당신 몸에 새겨 줄 수 있다고 말하고 있어요."~ */
  IF ~~ THEN REPLY #25424 /* ~"좋소.. 그가 어떤 문신들을 판매하고 있는지 보고 싶소."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Fell_Arm","GLOBAL",1)
StartStore("Fell",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25425 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25426 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Fell_Arm","GLOBAL",1)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #23024 /* ~"휄은 그 문신들은 자신이 새긴 것이 아니라고 하는군요." 그레이스는 잠시 생각한다. "당신이 원한다면 그가 그들 중 일부에 대해 얘기해줄 수 있을지도 몰라요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25427 /* ~"좋소. 그는 그것들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ EXTERN ~DFELL~ 67
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25428 /* ~"좋소. 그는 그것들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ EXTERN ~DFELL~ 58
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25429 /* ~"좋소. 그는 그것들에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ EXTERN ~DFELL~ 68
  IF ~~ THEN REPLY #25430 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25431 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #23025 /* ~"휄은 당신 등에 새겨진 문신은 스스로를 망각하는 자를 위해 누군가가 조심스럽게 새긴 지시 사항이라고 말하고 있어요. 당신 어깨에 있는 심벌은..." 갑자기 휄 주위의 심벌들이 그것만을 남긴 채 사라진다. ~ */
  IF ~~ THEN REPLY #25432 /* ~"그건 무슨 심벌이오?"~ */ GOTO 46
  IF ~~ THEN REPLY #25433 /* ~"그럼 관두시오. 그에게 하고 싶은 질문이 또 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25434 /* ~"그럼 관두시오. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #23026 /* ~그레이스는 눈살을 찌푸린다. "휄은 '그림자들'이라고 말하고 있어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25435 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 74
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25436 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 75
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25437 /* ~"그림자들?"~ */ EXTERN ~DFELL~ 76
  IF ~~ THEN REPLY #25438 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25439 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #23027 /* ~그레이스는 눈살을 찌푸린다. "휄은 많은 그림자들이 당신이 쫓아와 기습했으며, 당신을 죽이고는 사라졌다고 말하고 있어요." 그녀는 심벌들을 다시 흘긋 본다. "그는 왜 그들이 당신을 공격했는지는 모르고 있어요."~ */
  IF ~~ THEN REPLY #25440 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25441 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY #23028 /* ~그레이스는 당신 주변에 널린, 사람 가죽을 펼쳐 놓은 틀들에 매료된 것 같다. 하지만 그녀는 정신을 차리고 심벌들을 번역하기 위해 고개를 돌린다. "이 곳은 그의 갤러리예요." 그녀의 어조에는 경의가 담겨져 있다. "그는 당신이 그의 캔버스이며, 그는 당신을 존경하지만 동시에 당신을 동정한다고 말하고 있어요." ~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25442 /* ~"나 때문에 슬프다?"~ */ EXTERN ~DFELL~ 83
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25443 /* ~"나 때문에 슬프다?"~ */ EXTERN ~DFELL~ 84
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25444 /* ~"나 때문에 슬프다?"~ */ EXTERN ~DFELL~ 85
  IF ~~ THEN REPLY #25445 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25446 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #23029 /* ~"그는 당신의 육신에 고통의 낙인이 찍혀 있다고 말하고 있어요." 그레이스는 목소리를 낮춘다. "토대 위에 돌을 쌓듯이 비극과 상실이 그것을 토대로 하여 쌓였다는군요. 그는 당신은 엄청난 고통을 견뎌 냈다고 해요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25447 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 86
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25448 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 87
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25449 /* ~"그가 한 말의 의미는 대체 무엇이오?"~ */ EXTERN ~DFELL~ 88
  IF ~~ THEN REPLY #25450 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25451 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #23030 /* ~그레이스는 거의 무의식적으로 고개를 가볍게 끄덕인다, 그리고 계속해서 번역을 한다. "휄은 당신이 지금 이 순간도 당신을 무겁게 짓누르고 있는 이러한 상실과 고통에 결코 굴복한 적이 없기 때문에 경의를 표한다고 말하고 있어요." 그레이스는 당신 쪽으로 고개를 돌린다. "그는 당신의 강인함에 경의를 표해요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25452 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 89
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25453 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 90
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25454 /* ~"그에게 계속해 달라고 부탁해 주시오."~ */ EXTERN ~DFELL~ 91
  IF ~~ THEN REPLY #25455 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25456 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from:
  SAY #23031 /* ~"휄은 상실과 고통이 당신의 현재의 삶과 그 전의 모든 삶들을 뒤덮고 있다고 말하고 있어요." 그레이스는 목소리를 낮춘다, 그리고 그녀의 눈은 흥미롭다는 듯 번득인다. "그는 당신이 뱀이 허물을 벗듯이 삶을 벗어 던지며, 인간에게 있어 가능한 모든 삶을 체험하고 있다고 말하고 있어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25457 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 92
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25458 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 106
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25459 /* ~"그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 93
  IF ~~ THEN REPLY #25460 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25461 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #23032 /* ~"휄은 당신에게 경고를 해주길 원해요..." 그녀는 그 다음의 심벌들을 살펴본다. "그는 당신에게 당신의 각 삶이 '존재에 그림자를 드리운다'는 사실을 경고하려 하고 있어요." 그녀는 이 말에 대해 잠시 생각해본 후 말을 계속한다. "그는 당신이 그림자들이 미쳤고 후회가 대지에 상처를 낸 곳으로 가게 될 곳이라고 말하고 있어요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25462 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 29
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25463 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 94
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25464 /* ~"알겠소... 그가 무슨 다른 말은 하지 않소?"~ */ EXTERN ~DFELL~ 95
  IF ~~ THEN REPLY #25465 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25466 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #23033 /* ~"휄은 당신에게 그 어떤 것에도 서명해서는 안 된다고 말하고 있어요." 그레이스는 한쪽 눈썹을 치켜 올린다. "하지만 그 이유는 말하지 않는군요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25467 /* ~"알겠소."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25468 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25469 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25470 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 96
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25471 /* ~"알겠소."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25472 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25473 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25474 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 97
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #25475 /* ~"알겠소."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",1)
~ THEN REPLY #25476 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #25477 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",1)
~ THEN REPLY #25478 /* ~"좋소. "내 말은... 내가 이미 서명한 계약서들 외에는 가급적 더 이상 그 어떤 것에도 서명하지 않도록 하겠다는 뜻이오."~ */ EXTERN ~DFELL~ 98
  IF ~~ THEN REPLY #25479 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25480 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #23034 /* ~"휄은 당신이 스스로를 온전하다고 생각하느냐고 묻고 있어요. 혹시 어딘가 불완전하다고 느끼지는 않는지 말이에요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #25481 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 99
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #25482 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 100
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #25483 /* ~진실: "아니오... 사실 내가 시체안치소에서 깨어난 이래 난 뭔가... 결여되어 있다는 느낌을 지울 수가 없었소. 내 내면으로부터 뭔가가."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Fell_1","GLOBALLaw",1)
~ EXTERN ~DFELL~ 101
  IF ~~ THEN REPLY #25484 /* ~"당신과는 상관없는 일이오."~ */ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25485 /* ~거짓말: "나는 온전하오. 그건 왜 물으시오?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Fell_1","GLOBALLaw",-1)
~ EXTERN ~DFELL~ 102
  IF ~~ THEN REPLY #25486 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25487 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #23035 /* ~"휄은 그토록 많은 고통을 견뎌 낸 당신은 참으로 강인한 사람이라고 말하고 있어요." 그녀는 당신을 향해 고개를 돌린다. "그가 그 다음에 한 말은 나도 당신에게 해주고 싶은 말이에요. 믿음을 가지세요. 그러면 당신은 다시 온전한 존재가 될 수 있을 거예요." ~ */
  IF ~~ THEN REPLY #25488 /* ~"시도해 보리다. 그에게 물어보고 싶은 것이 더 있소..."~ */ GOTO 15
  IF ~~ THEN REPLY #25489 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 35.0
  SAY #23036 /* ~그레이스는 조용히 말한다. "고통." 그녀는 그것을 살펴본 후, 그것이 고통스럽다는 표정으로 돌아선다. "휄은..." 그녀는 숨을 들이쉰다. "정신은 잊어버렸을 지라도 육신은 고통받고 있다는 사실을 알고 있다는군요." 그는 고개를 들어 당신을 마주본다. 그녀의 눈빛은 슬픔과 눈물을 나타내는 기묘한 하늘색 색조를 띠고 있다. "휄은 그 룬이 마치 자석처럼 다른 고통받는 영혼들을 당신에게로 끌어당긴다고 말하고 있어요."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25490 /* ~"그에게 물어보고 싶은 다른 질문이 있소..."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",1)
~ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #25491 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",1)
~ EXIT
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52611 /* ~"그에게 물어보고 싶은 것이 하나 더 있소."~ */ DO ~SetGlobal("Torment_Fell","GLOBAL",2)
~ GOTO 15
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52612 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
SetGlobal("Torment_Fell","GLOBAL",2)
~ EXIT
END

IF ~  Global("Grace","GLOBAL",0)
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 47 // from:
  SAY #28229 /* ~하늘색과 보라색의 드레스를 입었으며, 양 어깨를 한 쌍의 길고 우아한 날개가 덮고 있는 금발의 절세가인이 당신 앞에 서 있다. 그녀는 가볍게 미소를 지으며 방 안을 둘러보고 있다... 그녀는 당신이 지금까지 본 여자들 중에서 최고의 미인이 아닌가 싶다."~ */
  IF ~~ THEN REPLY #28230 /* ~"안녕하시오..."~ */ GOTO 50
  IF ~~ THEN REPLY #28231 /* ~날개가 달린 여인을 무시하고 건물 안을 둘러본다.~ */ EXIT
END

IF ~  Global("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 48 // from:
  SAY #28233 /* ~당신이 다가가자 훨-후럼-그레이스는 당신을 향해 고개를 돌리고 가볍게 미소를 짓는다. "어떻게 도와 드릴까요?"~ [FFG002] */
  IF ~~ THEN REPLY #28234 /* ~"당신에게 묻고 싶은 다른 질문들이 있소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28235 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0 52.4 53.0 54.1 58.2 60.2 61.2 62.1 63.3 64.2 65.1 66.2 67.2 68.1 69.1 70.0 72.1 73.1 74.0 75.1 76.1 77.0 78.5 79.4 81.1 82.3 83.1 85.1 86.1 87.2 88.2 89.1 90.4 91.3 92.2 93.0 94.4 95.3 96.3 97.3 98.4 99.5 100.5 101.5 102.4 103.4 104.2 105.1 106.1 107.2 108.1 109.3 110.3 111.2 112.2 114.1 115.1 116.0 117.4 118.5 119.4 120.5 122.4 123.3 124.3 125.2
  SAY #28236 /* ~"무슨 일이시죠?"~ */
  IF ~~ THEN REPLY #28237 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 52
  IF ~  CheckStatLT(Protagonist,15,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28238 /* ~"당신 등에 달린 날개들... 당신은 어떤 존재요?"~ */ GOTO 73
  IF ~  CheckStatLT(Protagonist,15,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28239 /* ~"당신 등에 달린 날개들... 당신은 어떤 존재요?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatLT(Protagonist,15,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28240 /* ~"당신 등에 달린 날개들... 당신은 어떤 존재요?"~ */ EXTERN ~DMORTE~ 276
  IF ~  CheckStatGT(Protagonist,14,CHR)
!InParty("Annah")
!NearbyDialog("DMorte")
~ THEN REPLY #28241 /* ~"실례가 아니라면 묻겠소, 그레이스 여사. 당신 등에 달린 날개들... 내가 보기에 당신은 인간이 아닌 듯하오만?"~ */ GOTO 73
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28242 /* ~"실례가 아니라면 묻겠소, 그레이스 여사. 당신 등에 달린 날개들... 내가 보기에 당신은 인간이 아닌 듯하오만?"~ */ EXTERN ~DANNAH~ 163
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28243 /* ~"실례가 아니라면 묻겠소, 그레이스 여사. 당신 등에 달린 날개들... 내가 보기에 당신은 인간이 아닌 듯하오만?"~ */ EXTERN ~DMORTE~ 276
  IF ~~ THEN REPLY #28244 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 58
  IF ~~ THEN REPLY #28245 /* ~"나는 이 곳에 도움을 구하러 왔소. 아마 당신이 날 도울 수 있을 것 같소."~ */ GOTO 85
  IF ~  GlobalGT("Grace_Quest","GLOBAL",0)
~ THEN REPLY #28246 /* ~"이 곳의 여인들에 대해 내게 얘기를 해줄 수 있겠소?"~ */ GOTO 67
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #28247 /* ~"내게 센세이트에 대해 얘기해줄 수 있겠소?"~ */ GOTO 75
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #28248 /* ~"혹시 래벌이라는 나이트 해그에 대해 들은 적이 있소?"~ */ GOTO 104
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28249 /* ~"당신이 래벌에 대해 아는 바를 다시 얘기해줄 수 있겠소?"~ */ GOTO 109
  IF ~  Global("Know_Blood_War","GLOBAL",1)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28250 /* ~"당신은 블러드 워에 대해 아시오?"~ */ GOTO 94
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28251 /* ~"나는 당신이 시키는 대로 아홉 명의 학생들과 얘기를 했소... 하지만 열 번째 학생은 도저히 찾을 수가 없소."~ */ GOTO 120
  IF ~  NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28252 /* ~"내 여행에 나와 동행하겠소?"~ */ EXTERN ~DANNAH~ 165
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
~ THEN REPLY #28253 /* ~"내 여행에 나와 동행하겠소?"~ */ EXTERN ~DMORTE~ 280
  IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28254 /* ~"내 여행에 나와 동행하겠소?"~ */ EXTERN ~DANNAH~ 164
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #28255 /* ~"내 여행에 나와 동행하겠소?"~ */ GOTO 78
  IF ~~ THEN REPLY #61965 /* ~"오늘은 질문할 것이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 47.0
  SAY #28256 /* ~당신이 부르자 그녀는 돌아선다. 그녀는 당신을 아래위로 훑어본 후 고개를 약간 끄덕인다... 당신은 그녀의 눈의 색이 드레스와 마찬가지로 하늘색이라는 것을 깨닫는다. "만나서 반가워요, 여행자." 그녀는 손으로 흐트러진 한 타래의 머리결을 뒤로 제낀다. "어떻게 도와 드릴까요?"~ [FFG004] */
  IF ~~ THEN REPLY #28257 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Grace","GLOBAL",1)
~ JOURNAL #27467 /* ~나는 사무구에서 훨-후럼-그레이스라는 여인을 만났다. 그녀는 내가 지금껏 본 여자들 중 가장 아름답다고 해도 과언이 아니다... 하지만 그녀는 인간이 아니다. 그녀의 등에는 서로 교차하듯이 접힌 한 쌍의 날개가 있다. ~ */ GOTO 51
  IF ~~ THEN REPLY #28258 /* ~"오늘은 아무런 용건도 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #28259 /* ~"저는 훨-후럼-그레이스예요. " 그녀는 잠시 당신을 살펴본다. "당신은 시길에 오신지 얼마되지 않았군요, 그렇지요?"~ */
  IF ~~ THEN REPLY #28260 /* ~"그렇소. 그런 티가 나오?"~ */ GOTO 55
  IF ~~ THEN REPLY #28261 /* ~"아니오, 나는 이 곳에 상당히 오래 있었던 것 같소."~ */ GOTO 113
  IF ~~ THEN REPLY #28262 /* ~"훨-후럼-그레이스(타락)... 그건 흥미로운 이름이오."~ */ GOTO 56
  IF ~~ THEN REPLY #28263 /* ~"그건 내가 지금 얘기하고 싶은 주제가 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 49.0
  SAY #28264 /* ~"저는 훨-후럼-그레이스예요." 그녀는 가볍게 미소짓는다. "혹시 벌써 잊으셨나요?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
~ THEN REPLY #28265 /* ~"그레이스 여사, 단언하겠는데 내가 당신을 잊을 우려는 하지 않아도 좋소. 당신은 *정말로* 인상적이오."~ */ EXTERN ~DANNAH~ 161
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
~ THEN REPLY #28266 /* ~"그레이스 여사, 단언하겠는데 내가 당신을 잊을 우려는 하지 않아도 좋소. 당신은 *정말로* 인상적이오."~ */ GOTO 54
  IF ~~ THEN REPLY #28267 /* ~"아니, 전혀 그렇지 않소."~ */ GOTO 54
  IF ~~ THEN REPLY #28268 /* ~"훨-후럼-그레이스(타락)... 그건 흥미로운 이름이오."~ */ GOTO 114
  IF ~~ THEN REPLY #28269 /* ~"아니, 난 잊지 않았소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28270 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #28271 /* ~당신들 두 사람을 번갈아 쳐다보면서 훨-후럼-그레이스의 표정이 어두워진다. "악의는 없었어요. 제 장난을 용서해주세요."~ */
  IF ~~ THEN REPLY #28272 /* ~"아무런 문제도 없으니 사과할 필요는 없소, 여사. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28273 /* ~"그렇지만 우리가 서로 헤어지는 것이 좋을 듯하오, 그레이스 여사."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2
  SAY #28274 /* ~그녀는 가볍게 웃고, 마음을 풀어 미소를 짓는다. "좋아요. 그럼 당신을 용서해 드리겠어요."~ */
  IF ~~ THEN REPLY #28275 /* ~"훨-후럼-그레이스(타락)... 그건 흥미로운 이름이오."~ */ GOTO 56
  IF ~~ THEN REPLY #28276 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28277 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.0
  SAY #28278 /* ~그녀는 가볍게 미소짓는다. "당신이 생각하는 것만큼은 아니에요. 당신은 몸가짐이 단정하시군요." ~ */
  IF ~~ THEN REPLY #28279 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 57
  IF ~~ THEN REPLY #28280 /* ~"실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 51.2 54.0
  SAY #28281 /* ~그녀는 고개를 끄덕인다. "마음에 드시다니 기쁘군요. 하지만 단지 제게 듣기 좋은 말을 하시려고 여기까지 오신 건 아닐 거예요. 제게 뭘 원하시나요?"~ */
  IF ~~ THEN REPLY #28282 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 57
  IF ~~ THEN REPLY #28283 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 56.0 113.0
  SAY #28284 /* ~"이 곳은 *지적인 욕망을 힐난하는 매음굴*이에요." 그녀는 당신을 잠시 살펴본다. "당신의 질문으로 미루어 볼 때 이 시설을 이용하러 오신 것은 아닌 것 같은데 그런가요?~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28285 /* ~"'지적인 욕망을 힐난하는 매음굴?' 이 곳은 대체 어떤 종류의 매음굴이오?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28286 /* ~"'지적인 욕망을 힐난하는 매음굴?' 이 곳은 대체 어떤 종류의 매음굴이오?"~ */ GOTO 61
  IF ~~ THEN REPLY #28287 /* ~"아니, 그렇게 생각하지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 49.7
  SAY #28288 /* ~"이 곳은 지적인 욕망을 힐난하는 매음굴이에요."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28289 /* ~"'지적인 욕망을 힐난하는 매음굴?' 이 곳은 대체 어떤 종류의 매음굴이오?"~ */ GOTO 59
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28290 /* ~"'지적인 욕망을 힐난하는 매음굴?' 이 곳은 대체 어떤 종류의 매음굴이오?"~ */ GOTO 61
  IF ~~ THEN REPLY #28292 /* ~"아, 알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28293 /* ~"그냥 궁금했을 뿐이오. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 57.0 58.0
  SAY #28294 /* ~"저는 사람의 마음을 흔들어 놓는 열병과도 같은 육욕을 단순한 육체적 쾌락보다 더 높은 차원에서 표현하기 위해 이 곳을 설립했어요. 다른 사람들과의 대화와 논쟁을 통해서도 많은 쾌락을 얻을 것이 가능해요."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 275
END

IF ~~ THEN BEGIN 60 // from:
  SAY #28295 /* ~"그렇지 않다는 건 제가 보장해 드릴 수 있어요. 이 곳을 둘러보시면서 직접 확인해보세요."~ */
  IF ~~ THEN REPLY #28296 /* ~"그럼 이 곳은... 성관계가 없는 매음굴이오?" ~ */ GOTO 62
  IF ~~ THEN REPLY #28297 /* ~"당신에게 묻겠소: 왜 이런 곳을 설립하였소?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28298 /* ~"그러리다. 그전에 먼저 당신에게 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28299 /* ~"좋소. 그렇게 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 57.1 58.1
  SAY #28300 /* ~"저는 사람의 마음을 흔들어 놓는 열병과도 같은 육욕을 단순한 육체적 쾌락보다 더 높은 차원에서 표현하기 위해 이 곳을 설립했어요. 다른 사람들과의 대화와 논쟁을 통해서도 많은 쾌락을 얻을 것이 가능해요."~ */
  IF ~~ THEN REPLY #28301 /* ~"그럼 이 곳은... 성관계가 없는 매음굴이오?" ~ */ GOTO 62
  IF ~~ THEN REPLY #28302 /* ~"당신에게 묻겠소: 왜 이런 곳을 설립하였소?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28303 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28304 /* ~"설명을 해주어 고맙소... 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 60.0 61.0
  SAY #28305 /* ~"정신적인 관계만 있을뿐이에요. 하지만 그럼에도 불과하고 그것은 상당히 자극적이에요."~ */
  IF ~~ THEN REPLY #28306 /* ~"당신에게 묻겠소: 왜 이런 곳을 설립하였소?"~ */ DO ~SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 63
  IF ~~ THEN REPLY #28307 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28308 /* ~"그럼 매음굴 안을 둘러보도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 60.1 61.1 62.0
  SAY #28309 /* ~그레이스는 한쪽 눈썹을 치켜 올린다. "묘한 질문이군요." 그녀는 눈살을 찌푸린다. "아직까지 누구도 제게 그런 질문을 한 적은 없었어요. 적어도 직접적으로는"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28310 /* ~"미안하오, 그레이스 여사. 난 그렇게 직설적으로 말할 생각은 아니었소. 난 다만 궁금했을 뿐이오."~ */ GOTO 64
  IF ~~ THEN REPLY #28311 /* ~"그래... 그 이유는 무엇이오?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28312 /* ~"글쎄, 서큐버스가 이런 곳을 설립한다는 건 좀 이상한 것 같소... 이 곳의 목적은 당신의 본성과 모순되는 듯하오."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28313 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28314 /* ~"그럼 매음굴 안을 둘러보도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #28315 /* ~"아, 사과하실 필요는 없어요. 원하신다면 그 이유에 대해 당신과 기꺼이 이야기를 나누겠어요."~ */
  IF ~~ THEN REPLY #28316 /* ~"그렇소, 나는 그 이유를 듣고 싶소."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #28317 /* ~"서큐버스가 이런 곳을 설립한다는 건 좀 이상한 것 같소... 이 곳의 목적은 당신의 본성과 모순되는 듯하오."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #28318 /* ~"지금은 아니오.다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28319 /* ~"다른 기회에 하는 것이 좋을 듯하오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 63.1 63.2 64.0 64.1
  SAY #28320 /* ~"당신 질문에 대한 답을 이해하시려면 우선 제가 감각의 공동체의 일원이라는 사실을 아셔야 해요. 우리 당파는 다원 우주의 모든 것을 가능한 한 많이 체험해야 한다고 믿고 있어요." ~ */
  IF ~~ THEN REPLY #28321 /* ~"그것이 당신이 이런 곳을 설립한 이유요?"~ */ GOTO 66
  IF ~~ THEN REPLY #28322 /* ~"알겠소; 더이상 설명을 할 필요는 없소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28323 /* ~"그럼 매음굴 안을 둘러보도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #28324 /* ~"이 매음굴은 가장 완고한 지성인의 육욕조차 힐난하는 것을 목적으로 하고 있어요. 따라서 이 곳은 정신을 자극하여, 자신과 타인에 대한 인식을 향상시키고 다른 사람을 *체험*하는 새로운 방법을 개발할 수 있도록 만들어졌어요. 이 곳은 벌통이나 마계구에서 얻을 수 있는 천박한 육체적인 쾌락 이상의 것을 추구하는 사람들을 위해 존재해요."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28325 /* ~"글쎄, 그런 것을 꼭 천박... 에, 내 말은, 당신 얘기를 이해할 수는 있다는 뜻이오. 이 곳에 있는 여인들은 정말 특별한 사람들이겠소."~ */ GOTO 67
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #28326 /* ~"알겠소. 그럼 이 시설은 *다른* 종류의 교류가 아닌 지적인 교류만을 장려하오? 이 곳에 있는 여인들은 정말 특별한 사람들이겠소."~ */ GOTO 67
  IF ~~ THEN REPLY #28327 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28328 /* ~"그럼 매음굴 안을 둘러보도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 49.9 66.0 66.1
  SAY #28329 /* ~"이 곳에 있는 아가씨들은 센세이트 지망생이에요. 그녀들은 당파의 일원이 될 준비를 위해 제게 교육을 받으러 왔어요. 또한 그녀들 중 여럿은 가장 완고한 사람의 심리적인 장벽조차 깨뜨릴 정도로 뛰어난 화술을 천부적으로 지니고 있어요."~ */
  IF ~~ THEN REPLY #28330 /* ~"센세이트?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 68
  IF ~~ THEN REPLY #28332 /* ~"알겠소. 그럼 이 곳에 있는 숙녀들은 말하자면 숙녀 견습생들이오?"~ */ GOTO 70
  IF ~~ THEN REPLY #28333 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28334 /* ~"그럼 매음굴 안을 둘러보도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #28335 /* ~그녀는 가볍게 고개를 숙인다. "그래요, 저는 감각의 공동체의 일원이에요. 우리 당파는 다원 우주의 모든 것을 가능한 한 많이 체험해야 한다고 믿고 있어요." ~ */
  IF ~~ THEN REPLY #28336 /* ~"여기 있는 여자들은 센세이트가 되기 위한 훈련을 받고 있소?"~ */ GOTO 70
  IF ~~ THEN REPLY #28337 /* ~"알겠소; 더이상 설명을 할 필요는 없소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28338 /* ~"그럼 매음굴 안을 둘러보도록 하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #28339 /* ~"아마 그녀들 모두 다 센세이트가 되지는 못할 거예요. 그렇지만 시도를 해서 나쁠 것은 없어요, 그리고 우리 당파의 일원이 되는 것이 그녀들이 바라는 바라면 그 기회를 부정할 생각도 없어요. 적어도 그녀들은 그 과정에서 뭔가를 배울 수 있겠지요."~ */
  IF ~~ THEN REPLY #28340 /* ~"알겠소. 그래 이 곳은 일종의 예비 학교요?"~ */ GOTO 70
  IF ~~ THEN REPLY #28341 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28342 /* ~"매음굴을 둘러보며 내 눈으로 직접 확인하는 것이 좋을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 67.1 68.0 69.0
  SAY #28343 /* ~"그래요. 나는 이 곳의 생도들과 손님들이 화술과 그 치밀함에 대해 배움으로서 그들이 스스로에 대한 이해를 향상시키기를 바라고 있어요. 사람의 가능성은 그의 언어구사 능력에 의해서만 제약을 받아요. 말을 통해 다른 이들에게 감정을 불러일으키는 것은 비범한 능력이에요.~ */
  IF ~~ THEN REPLY #28344 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28345 /* ~"매음굴을 둘러보며 내 눈으로 직접 확인하는 것이 좋을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #28346 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #28347 /* ~"당신 일행의 말이 옳아요. 저는 하급 타나리예요. 보다 정확히 말하면 서큐버스예요." 그녀는 조용히 한숨을 쉰다. "불행히도 타나리는 마계와 다른 곳들에서 너무나도 흔한데 이는 결코 바람직한 일은 아니죠. 대부분의 내 동족들은 인간들을 각종 육체적 쾌락으로 유혹하는 데 시간을 보내고 있어요."~ */
  IF ~~ THEN REPLY #28348 /* ~"그럼 당신은...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 74
  IF ~~ THEN REPLY #28349 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 49
  IF ~~ THEN REPLY #28350 /* ~"실례해야겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ EXIT
END

IF ~~ THEN BEGIN 73 // from: 49.1 49.4
  SAY #26918 /* ~"저는 하급 타나리예요. 보다 정확히 말하면 서큐버스예요." 그녀는 조용히 한숨을 쉰다. "불행히도 타나리는 마계와 다른 곳들에서 너무나도 흔한데 이는 결코 바람직한 일은 아니죠. 대부분의 내 동족들은 인간들을 각종 육체적 쾌락으로 유혹하는 데 시간을 보내고 있어요."~ */
  IF ~~ THEN REPLY #26919 /* ~"그럼 당신은...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 74
  IF ~~ THEN REPLY #26920 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 49
  IF ~~ THEN REPLY #26921 /* ~"실례해야겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 72.0 73.0
  SAY #26922 /* ~"저는 제가 그런 짓과는 이미 거리를 두었다고 생각하고 싶어요... 그건 다원 우주에서 인생을 보내는 지극히 비생산적이고 천박한 방법이니까요. 삶은 그보다 훨씬 높고 큰 가능성을 내포하고 있어요. 이에는 당신도 동의하지 않으시나요?"~ */
  IF ~~ THEN REPLY #26923 /* ~"아마 그럴지도. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28351 /* ~"그렇소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 49.10
  SAY #28352 /* ~"센세이트는 시길의 당파들 중 하나로 체험을 신봉하고 있어요. 체험과 감각없이는 우리는 다원 우주의 대부분을 인지할 수가 없어요. 따라서 센세이트는 가능한 한 많은 체험을 하려고 노력해요. 만약 모든 것을 다 체험한다면 다원 우주의 본질이 그 모습을 드러내게 될 거예요."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #28353 /* ~"흥미로운 철학이오. 내가 센세이트의 일원이 될 수 있겠소?"~ */ GOTO 76
  IF ~~ THEN REPLY #28354 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28355 /* ~"아마 그럴지도. 어쨌든 나는 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #28356 /* ~그녀는 미소짓는다. "인생을 통해 끊임없이 배우려는 의지만 있다면 누구든 센세이트가 될 수 있어요."~ */
  IF ~~ THEN REPLY #28357 /* ~"내 얘기는 나는 센세이트의 일원이 되는 데 관심이 있다는 뜻이었소."~ */ JOURNAL #27464 /* ~훨-후럼-그레이스는 내게 만약 감각의 공동체에 가입하고 싶으면 시 공회당에 가보라고 권했다. 그녀는 그 곳에 날 도울 수 있는 사람이 있을 것이라고 말했다.~ */ GOTO 77
  IF ~~ THEN REPLY #28358 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28359 /* ~"좋소. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #28360 /* ~"물론이에요... 놀려서 죄송해요." 훨-후럼-그레이스는 고개를 끄덕인다. "만약 센세이트의 일원이 되고자 하신다면 시 공회당에 가서 물어보세요. 그 것에는 당신을 도와 드릴 수 있는 사람들이 있을 거예요."~ */
  IF ~~ THEN REPLY #28361 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28362 /* ~"고맙소. 그럼 그 곳에 가보리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 78 // from: 49.18
  SAY #28363 /* ~"글쎄요..." 그녀는 가볍게 미소짓는다. "당신은 상당히 직설적이시군요."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28364 /* ~"내 의향을 솔직히 말하겠소. 당신은 매우 상냥하며 또한 다원 우주에 대한 풍부한 지식을 지니고 있는 것 같소. 그런 지식을 지닌 사람이라면 동료로서 대환영이오."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28365 /* ~"내 의향을 솔직히 말하겠소. 당신은 매우 상냥하며 또한 다원 우주에 대한 풍부한 지식을 지니고 있는 것 같소. 그런 지식을 지닌 사람이라면 동료로서 대환영이오."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28366 /* ~"난 원래 그런 사람이오."~ */ GOTO 79
  IF ~~ THEN REPLY #28367 /* ~"그래, 여기 있어 봐야 얼마나 큰 자극을 얻을 수 있겠소?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28368 /* ~"당신은 센세이트요. 당신이 이 곳에서 배울 수 있는 것에 한계가 있다는 건 분명한 사실이오."~ */ GOTO 83
  IF ~~ THEN REPLY #28369 /* ~"그럼 내 요청을 철회하겠소. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28370 /* ~"그럼 사과하리다. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 79 // from: 78.0 78.2 117.1 118.0 118.2 119.1
  SAY #28371 /* ~"솔직하게 말해주셔서 고마워요. 그럼 저도 솔직히 말하겠어요. "왜 제가 당신과 함께 여행을 해야 하는 거지요?"~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28372 /* ~"당신은 스스로를 찾아 차원들을 여행하는 기억상실증에 걸린 불사신과 함께 여행하는 일에 관심이 없단 말이오?"~ */ GOTO 80
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28373 /* ~"그레이스 여사. 나는 아무도 가본 적이 없거나 갈 수 없는 곳까지도 여행할 생각이오. 그거라면 당신도 관심을 가지겠소?"~ */ GOTO 82
  IF ~~ THEN REPLY #28374 /* ~"여기 있어 봐야 얼마나 큰 자극을 얻을 수 있겠소?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28375 /* ~"당신은 센세이트요. 당신이 이 곳에서 배울 수 있는 것에 한계가 있다는 건 분명한 사실이오."~ */ GOTO 83
  IF ~~ THEN REPLY #28376 /* ~"내 요청을 철회하겠소. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28377 /* ~"내 요청을 철회하겠소. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 79.0 82.0 83.0
  SAY #28378 /* ~"아, 물론 지대한 관심이 있어요." 그녀는 가볍게 미소짓는다. "그 제안은 몹시 흥미로워요, 그러니 그 점에 대해서는 오해하지 마세요."~ */
  IF ~~ THEN REPLY #28379 /* ~"그럼 나와 함께 여행을 할 의향이 있소?"~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #28380 /* ~"만약 당신이 제가 당신의 일행이 되기를 바라신다면 저를 위해 해주셔야 할 일이 있어요. 이 곳에는 모두 열 명의 학생이 있어요. 그들 모두와 얘기를 나눈 후 돌아오셔서 당신 생각을 말해주세요. 우리가 함께 여행할지 여부는 그 후에 결정하도록 하지요."~ */
  IF ~  Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Dolora","GLOBAL",0)
~ THEN REPLY #28381 /* ~"나는 이미 그들과 얘기를 했소. 하지만 이 곳에는 아홉 명의 학생들밖에 없소. 나는 열 번째 학생은 찾을 수가 없었소." ~ */ JOURNAL #27463 /* ~나는 동료가 되달라고 훨-후럼-그레이스를 설득하였고 그녀는 한 가지 조건을 걸고 이를 수락하였다: 나는 그녀의 학생 열 명 모두와 얘기를 나눈 후 그녀에게 돌아와 내 견해를 말해야 한다. 나는 지금까지 그들 중 아홉 명과 이야기를 나누었으나 열 번째 학생은 찾을 수가 없다. ~ */ GOTO 120
  IF ~~ THEN REPLY #28382 /* ~"좋소. 가기 전에 다른 질문을 해도 괜찮겠소?"~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~나는 동료가 되달라고 훨-후럼-그레이스를 설득하였고 그녀는 한 가지 조건을 걸고 이를 수락하였다: 나는 그녀의 학생 열 명 모두와 얘기를 나눈 후 그녀에게 돌아와 내 견해를 말해야 한다. ~ */ GOTO 49
  IF ~~ THEN REPLY #28383 /* ~"그럼 가서 그들과 얘기를 하겠소. 그들 모두와 얘기를 한 후에 돌아오리다."~ */ DO ~SetGlobal("Grace_Quest","GLOBAL",1)
~ JOURNAL #27462 /* ~나는 동료가 되달라고 훨-후럼-그레이스를 설득하였고 그녀는 한 가지 조건을 걸고 이를 수락하였다: 나는 그녀의 학생 열 명 모두와 얘기를 나눈 후 그녀에게 돌아와 내 견해를 말해야 한다. ~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 79.1
  SAY #28384 /* ~"물론 관심은 있어요." 그녀는 턱을 손에 괴고 잠시 생각을 한다. "하지만..."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28385 /* ~"당신은 스스로를 찾아 차원들을 여행하는 기억상실증에 걸린 불사신과 함께 여행하는 일에 관심이 없단 말이오?"~ */ GOTO 80
  IF ~~ THEN REPLY #28386 /* ~"여기 있어 봐야 얼마나 큰 자극을 얻을 수 있겠소?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28387 /* ~"당신은 센세이트요. 당신이 이 곳에서 배울 수 있는 것에 한계가 있다는 건 분명한 사실이오."~ */ GOTO 83
  IF ~~ THEN REPLY #28388 /* ~"관두시오. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28389 /* ~"생각해 보기 바라오, 나는 나중에 다시 들릴 테니. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 78.3 78.4 79.2 79.3 82.1 82.2 117.2 117.3 118.3 118.4 119.2 119.3
  SAY #28390 /* ~"아마 당신은 놀라게 될 거예요. 만약 당신이 제가 당신 여행에 동행하기를 바라신다면, 그것보다 더 설득력 있는 이유를 제시하셔야 할 거예요."~ */
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28391 /* ~"당신은 스스로를 찾아 차원들을 여행하는 기억상실증에 걸린 불사신과 함께 여행하는 일에 관심이 없단 말이오?"~ */ GOTO 80
  IF ~~ THEN REPLY #28392 /* ~"관두시오. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28393 /* ~"그럼 보다 설득력 있는 이유를 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #28394 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from: 49.8
  SAY #28395 /* ~"도움? 어떤 도움을 원하시나뇨?"~ */
  IF ~~ THEN REPLY #28396 /* ~"나는 내 기억을 잃어버린 것 같소. 그 때문에 나는 내 자신도 잃어버렸소."~ */ GOTO 86
  IF ~~ THEN REPLY #28397 /* ~"관두시오.다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28398 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #28399 /* ~"당신은 기억상실증에 걸렸어요?" 훨-후럼-그레이스는 괴로워하는 것 같다. "정말 끔찍하군요! 어떻게 해서 기억을 잃게 되었는지 짐작이라도 가시나요?"~ */
  IF ~~ THEN REPLY #28400 /* ~"아니오... 적어도 내가 기억할 수 있는 한에는. 나는 시체안치소의 철판 위에서 깨어났고 그 이전의 일에 대해선 전혀 기억이 없소."~ */ GOTO 87
  IF ~~ THEN REPLY #28401 /* ~"관두시오.다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28402 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #28403 /* ~"당신은 시체안치소에서 깨어났어요?"~ */
  IF ~  Global("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28404 /* ~"내가 생각하기에 더스트맨은 나를 죽은 걸로 착각했던 것 같소... 아니면 내가 실제로 죽었었거나 비슷한 상태였던지. 내가 아는 것은 내 몸에 난 상처가 급속도로 회복한다는 사실뿐이오. 난 불사신인지도 모르오, 하지만 확신할 수는 없소."~ */ DO ~SetGlobal("Grace_Companion","GLOBAL",1)
~ GOTO 88
  IF ~  GlobalGT("Grace_Companion","GLOBAL",0)
~ THEN REPLY #28405 /* ~"내가 생각하기에 더스트맨은 나를 죽은 걸로 착각했던 것 같소... 아니면 내가 실제로 죽었었거나 비슷한 상태였던지. 내가 아는 것은 내 몸에 난 상처가 급속도로 회복한다는 사실뿐이오. 난 불사신인지도 모르오, 하지만 확신할 수는 없소."~ */ GOTO 88
  IF ~~ THEN REPLY #28406 /* ~"관두시오. 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28407 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 87.0 87.1
  SAY #28408 /* ~훨-후럼-그레이스는 새로운 관심을 가지고 당신을 살펴보는 듯하다. "당신 몸의 흉터들..." 그녀는 당신 몸을 만져 보려는 듯 한쪽 손을 내민다. "제가 만져 보아도 괜찮을까요?"~ */
  IF ~~ THEN REPLY #28409 /* ~"어... 물론이오."~ */ GOTO 89
  IF ~~ THEN REPLY #28410 /* ~"그러시오."~ */ GOTO 89
  IF ~~ THEN REPLY #28411 /* ~"실은 이 일에 대해서는 더 이상 얘기하고 싶지 않소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28412 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 88.0 88.1
  SAY #28413 /* ~훨-후럼-그레이스는 당신 흉터들의 가장자리와, 그것들이 문신들 중 일부와 융합되는 지점들을 더듬으며 손가락으로 당신 가슴을 가볍게 훑는다. 그녀는 매우 흥미로워 하는 듯하다. "이 흉터들은 다 모으는 데 여러 사람의 인생에 해당하는 시간이 걸렸을 것 같군요."~ */
  IF ~~ THEN REPLY #28414 /* ~"실제로 그렇소... 하지만 일부는 비교적 새로운 것들이오."~ */ GOTO 90
  IF ~~ THEN REPLY #28415 /* ~"이 일에 대해서는 더 이상 얘기하고 싶지 않소. 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28416 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #28417 /* ~훨-후럼-그레이스는 한 걸음 물러선다. "그 상처들 중 일부는 보통 사람에게는 치명상이 되었을 만한 것들이에요." 그녀는 손가락을 턱에 갖다 대고 생각을 한다. "이제 당신은 어떻게 하실 생각이죠?"~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #28418 /* ~"나는 내 기억, 그리고 인생을 되찾아야만 하오. 나는 내가 누구이고 누가 나를 이 지경으로 만들었는지 밝혀낼 때까지 모든 차원을 샅샅이 뒤질 생각이오."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #28419 /* ~"나는 내 기억, 그리고 인생을 되찾아야만 하오. 나는 내가 누구이고 누가 나를 이 지경으로 만들었는지 밝혀낼 때까지 모든 차원을 샅샅이 뒤질 생각이오."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",1)
~ GOTO 91
  IF ~~ THEN REPLY #28420 /* ~"모르겠소. 현재 나는 내가 누구이며 내게 무슨 일이 일어났는가에 대한 단서들을 찾고 있소."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",2)
~ GOTO 91
  IF ~~ THEN REPLY #28421 /* ~"나는 아무 것도 할 생각이 없소. 만약 내 의문에 대한 답이 존재한다면 나도 알게 될 거요... 때가 되면."~ */ DO ~SetGlobal("Grace_Answer","GLOBAL",3)
~ GOTO 91
  IF ~~ THEN REPLY #28422 /* ~"이 일에 대해서는 더 이상 얘기하고 싶지 않소. 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28423 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 90.1 90.2 90.3
  SAY #28424 /* ~훨-후럼-그레이스는 아직도 손가락을 턱에 갖다 댄 채 생각에 잠겨 있다. "솔직히 전 문자 그대로 스스로를 잃어버린 사람은 지금까지 만난 적이 없어요." 그녀는 한쪽 눈썹을 치켜 올린다. "죄송해요, 하지만 당신의 상태는 흥미롭군요."~ */
  IF ~~ THEN REPLY #28425 /* ~"*당신*이 그렇게 생각한다니 반갑소."~ */ GOTO 92
  IF ~~ THEN REPLY #28426 /* ~"그건 그렇소."~ */ GOTO 93
  IF ~~ THEN REPLY #28427 /* ~"'흥미롭다고?' 두렵다는 게 더 적절한 표현일 것이오. 난 내가 누군지, 내가 무슨 짓을 했으며, 내 친구는 누구이고 또 적은 누군지를 모르는 것이 견딜 수가 없소."~ */ GOTO 92
  IF ~~ THEN REPLY #28428 /* ~"이 일에 대해서는 더 이상 얘기하고 싶지 않소. 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28429 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 91.0 91.2
  SAY #28430 /* ~"제 말이 당신 기분을 상하게 한 같군요." 훨-후럼-그레이스는 고개를 숙인다. "부디 제 용서를 받아 주세요."~ */
  IF ~~ THEN REPLY #28431 /* ~"사과를 받아들이겠소."~ */ GOTO 93
  IF ~~ THEN REPLY #28432 /* ~"걱정 마시오, 난 괜찮소."~ */ GOTO 93
  IF ~~ THEN REPLY #28433 /* ~"이 일에 대해서는 더 이상 얘기하고 싶지 않소. 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28434 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 91.1 92.0 92.1
  SAY #28435 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "괜찮으시다면 이 곳을 한 번 둘러보세요. 제 학생들 중 여러 명은 뛰어난 화술을 지니고 있어요. 아마 그녀들 중에 당신의 기억을 되살리는 데 도움을 줄 수 있는 사람이 있을지도 몰라요."~ */
  IF ~~ THEN REPLY #28436 /* ~"그러리다. 그 전에 먼저 질문을 좀 해도 괜찮겠소?"~ */ JOURNAL #27461 /* ~훨-후럼-그레이스는 내게 매음굴에 있는 그녀의 학생들과 얘기할 것을 권했는데, 이는 그들과의 교류가 내가 누구인지에 대한 기억을 되살리는 데 도움이 될 수도 있다는 이유에서였다. ~ */ GOTO 49
  IF ~~ THEN REPLY #28437 /* ~"고맙소. 가서 그들과 얘기를 하겠소. 안녕히 계시오."~ */ JOURNAL #27461 /* ~훨-후럼-그레이스는 내게 매음굴에 있는 그녀의 학생들과 얘기할 것을 권했는데, 이는 그들과의 교류가 내가 누구인지에 대한 기억을 되살리는 데 도움이 될 수도 있다는 이유에서였다. ~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 49.13
  SAY #28438 /* ~"블러드 워는 마계 전역에 걸쳐 벌어지고 있는 바테주와 타나리 사이의 전면전이에요. 그들은 악이 질서정연해야 하는가 아니면 혼돈스러워야 하는 가를 놓고 싸우고 있어요." 훨-후럼-그레이스는 잠시 말을 멈춘다. "그 전쟁에 연관이 되는 것은 무슨 일이 있어도 피해야 해요. 타나리와 바테주가 서로 치고 박도록 내버려 두면, 다원 우주의 다른 곳들은 평화를... 적어도 상대적인 평화는 유지할 수가 있어요."~ */
  IF ~~ THEN REPLY #28439 /* ~"상대적 평화?"~ */ GOTO 95
  IF ~~ THEN REPLY #28440 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28441 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28442 /* ~"당신도 그 전쟁에 참여했소?"~ */ GOTO 98
  IF ~~ THEN REPLY #28443 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28444 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 94.0 96.0 97.0 98.1 99.1 100.1 101.1 102.0 103.0
  SAY #28445 /* ~"그 전쟁은 너무나도 규모가 큰 탓에 대부분의 종족들이 스스로의 의사와는 관계없이 말려들고 있어요. 블러드 워를 무시하는 것은 때로 참가하는 것만큼 위험할 수가 있어요."~ */
  IF ~~ THEN REPLY #28446 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28447 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28448 /* ~"당신도 그 전쟁에 참여했소?"~ */ GOTO 98
  IF ~~ THEN REPLY #28449 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28450 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 96 // from: 94.1 95.0 97.1 98.2 99.2 100.2 101.2 102.1 103.1
  SAY #28451 /* ~"때로는요. 블러드 워에는 적지 않은 수의 인간 용병들이 참여하고 있어요. 그들은 군인, 대포밥, 또는 마족들을 위한 식량으로 이용돼요."~ */
  IF ~~ THEN REPLY #28452 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28453 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28454 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 98
  IF ~~ THEN REPLY #28455 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28456 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 97 // from: 94.2 95.1 96.1 98.3 99.3 100.3 101.3 102.2 103.2
  SAY #28457 /* ~"연대기에 따르면 블러드 워는 바테주가 타나리를 처음으로 만났을 때부터 시작되었다고 해요... *까마득할* 정도로 오래 전 일이죠. 그 때부터 지금까지의 시간을 표현할 수 있는 단어가 과연 인간이 쓰는 언어에 있는지 저는 모르겠어요." 훨-후럼-그레이스는 고개를 젓는다. "바테주도 타나리도 상대방을 마음에 들어한 적은 아마 한 번도 없을 거예요."~ */
  IF ~~ THEN REPLY #28458 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28459 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28460 /* ~"당신도 그 전쟁에 참여했소?"~ */ GOTO 98
  IF ~~ THEN REPLY #28461 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28462 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 94.3 95.2 96.2 97.2 103.3
  SAY #28463 /* ~"아니요. 하지만 제 어머니는 참여했어요. 서큐버스는 대개 블러드 워에서 죽어갈 타나리들을 더 많이 생산하기 위해 인간들을 유혹하여 그 영혼을 어비스로 데려오죠."~ */
  IF ~~ THEN REPLY #28464 /* ~"당신 어머니? 그녀도 블러드 워에 참여했소?"~ */ GOTO 99
  IF ~~ THEN REPLY #28465 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28466 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28467 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28468 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28469 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #28470 /* ~"네. 그녀는 최고의 서큐버스 중 하나로, 수많은 인간들을 유혹했지요. 그녀는 이제 어비스에서 살며 자신의 아이들을 노예로 팔고 있어요."~ */
  IF ~~ THEN REPLY #28471 /* ~"당신은 자신의 어머니에 의해 노예로 팔렸단 말이오?"~ */ GOTO 100
  IF ~~ THEN REPLY #28472 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28473 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28474 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28475 /* ~"혹시 이러한 질문들 때문에 마음이 괴롭지는 않소?"~ */ GOTO 103
  IF ~~ THEN REPLY #28476 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28477 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from: 99.0
  SAY #28478 /* ~"한 동안은요. 저는 즉흥 대결에서 이겨 자유를 얻었어요. 그건 벌써 매우 오래 전 일이에요."~ */
  IF ~~ THEN REPLY #28479 /* ~"그녀는 당신을 누구에게 팔았소?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~훨-후럼-그레이스는 그녀의 어머니가 자신을 다름아닌 타나리의 숙적 바테주에게 노예로 팔았다고 내게 말해주었다. 그레이스는 그녀의 주인이었던 바테주와의 즉흥적인 대결에서 이겨 자유를 얻은 것 같다. 그 자세한 내용에 대해서 그녀는 언급하지 않았다. ~ */ GOTO 101
  IF ~~ THEN REPLY #28480 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28481 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28482 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28483 /* ~"혹시 이러한 질문들 때문에 마음이 괴롭지는 않소?"~ */ GOTO 103
  IF ~~ THEN REPLY #28484 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28485 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #28486 /* ~"그녀는 저를 바테주에게 팔았어요. 제 생각에 그녀는 그들이 죽일 거라고 생각했던 것 같아요. 하지만 다른 분야에 대한 그녀의 해박한 지식에도 불구하고, 그녀는 바테주의 문화에 대해 별로 알지를 못했어요."~ */
  IF ~~ THEN REPLY #28487 /* ~"그녀는 당신을 타나리의 숙적에게 팔았단 말이오?"~ */ GOTO 102
  IF ~~ THEN REPLY #28488 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28489 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28490 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28491 /* ~"혹시 이러한 질문들 때문에 마음이 괴롭지는 않소?"~ */ GOTO 103
  IF ~~ THEN REPLY #28492 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28493 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #28494 /* ~"네." 훨-후럼-그레이스는 몸을 꼿꼿이 세운다. "그 밖에 알고 싶으신 건 없나요?"~ */
  IF ~~ THEN REPLY #28495 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28496 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28497 /* ~"그 전쟁은 얼마 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28498 /* ~"혹시 이러한 질문들 때문에 마음이 괴롭지는 않소?"~ */ GOTO 103
  IF ~~ THEN REPLY #28499 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28500 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 103 // from: 99.4 100.4 101.4 102.3
  SAY #28501 /* ~"아니, 천만에요. 이 점은 꼭 알아두세요 - 블러드 워는 다원 우주에서 일어나는 대부분의 사건들의 원인을 제공하고 있어요. 그래서 그것이 무엇이고 왜 일어나고 있는지를 이해하는 것이 중요해요.~ */
  IF ~~ THEN REPLY #28502 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적 평화'를 누릴 수 있다는 얘기요?"~ */ GOTO 95
  IF ~~ THEN REPLY #28503 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 96
  IF ~~ THEN REPLY #28504 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 97
  IF ~~ THEN REPLY #28505 /* ~"당신도 그 전쟁에 참여했소?"~ */ GOTO 98
  IF ~~ THEN REPLY #28506 /* ~"블러드 워 이외의 사안에 대한 질문을 하고 싶소..."~ */ GOTO 49
  IF ~~ THEN REPLY #28507 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 104 // from: 49.11
  SAY #28508 /* ~"저는 그 이름을 잘 알고 있어요." 훨-후럼-그레이스는 잠시 멈추고 생각을 한다. "그 이름에 대해서는 많은 소문들이 떠돌고 있으며, 그것들 중 대부분은 그녀를 그냥 전설 속의 존재로 취급해요. 하지만 저는 그녀가 실재로 존재했으며, 시길에 머무르는 동안 그녀는 강한 인상을 남겼다고 생각해요." 그녀는 의아한 표정을 짓는다. "왜 그런 질문을 하시는 거죠?"~ */
  IF ~~ THEN REPLY #28509 /* ~"나는 그녀를 찾아낼 생각이오."~ */ GOTO 105
  IF ~  Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #28510 /* ~"그녀에 대해 또 어떤 것을 아시오?"~ */ GOTO 109
  IF ~~ THEN REPLY #28511 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 49
  IF ~~ THEN REPLY #28512 /* ~"아무런 이유도 없소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #28513 /* ~그레이스는 한쪽 눈썹을 치켜 올린다. "정말인가요? 나는 왜냐고 물어보고 싶군요."~ */
  IF ~~ THEN REPLY #28514 /* ~"내겐 그녀가 지닌 정보가 필요하오."~ */ GOTO 106
  IF ~~ THEN REPLY #28515 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 49
  IF ~~ THEN REPLY #28516 /* ~"아무런 이유도 없소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 106 // from: 105.0
  SAY #28517 /* ~"그 정보는 다른 사람으로부터는 얻을 수는 없는 건가요?"~ */
  IF ~~ THEN REPLY #28518 /* ~"내 생각으로는 오직 래벌만이 내가 필요로 하는 지식을 지니고 있소." ~ */ JOURNAL #27459 /* ~훨-후럼-그레이스는 내게 래벌에 대해 경고했다... 그레이스는 래벌에 대한 이야기들 중 일부만 진실이라도 그녀는 아마 유사 이래 가장 사악하며 강대한 나이트 해그일 것이라고 말했다. ~ */ GOTO 107
  IF ~~ THEN REPLY #28519 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 49
  IF ~~ THEN REPLY #28520 /* ~"그건 나도 모르오, 하지만 알아낼 생각이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 107 // from: 106.0
  SAY #28521 /* ~그레이스는 자신의 손을 당신 팔 위에 부드럽게 얹는다. "이 점을 고려하세요. 만약 래벌이 실존한다면 그녀는 엄청난 마력과 교활함을 지니고 있을 거예요. 만약 그녀가 저지른 짓들에 대한 이야기들 중 일부만 사실이라고 해도 그녀는 악의 새로운 경지를 개척한 사악한 괴물이에요. 그녀를 찾아가려는 건 결코 함부로 시도해서는 안 될 모험이에요." ~ */
  IF ~  InParty("Grace")
~ THEN REPLY #28522 /* ~"나도 알고 있소."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 108
  IF ~  !InParty("Grace")
~ THEN REPLY #28523 /* ~"나도 알고 있소. 래벌에 대해 더 아는 건 없소?"~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 109
  IF ~  !InParty("Grace")
~ THEN REPLY #28524 /* ~"알겠소. 다른질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~  !InParty("Grace")
~ THEN REPLY #28525 /* ~"알고 있소. 그럼에도 불구하고 나는 그녀를 찾아야만 하오. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #28526 /* ~"나는 전설 속의 존재를 만난 적은 없어요. 이 여행은 참으로 대단한 여행이 되겠군요." 그녀는 미소짓는다. "당신은 지루한 일은 절대 하려고 하지 않으시는군요. 그렇지 않나요?"~ */
  IF ~~ THEN REPLY #28527 /* ~"가급적이면 안 하오. 래벌에 대해 더 아는 건 없소?"~ */ GOTO 109
  IF ~~ THEN REPLY #28528 /* ~"안 할 수만 있다면. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28529 /* ~"다른 생에서는 할지도 모르나 현생에서는 아니오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 109 // from: 49.12 104.1 107.1 108.0
  SAY #28530 /* ~"들리는 얘기로 그녀는 그레이 웨이스트의 해그들 중 하나이며, 그녀는 그녀의 자매들보다 월등히 뛰어난 마력과 교활함을 지니고 있었다고 해요. 그녀는 오래 전에 시길에 왔으며, 온갖 악행을 자행했을 뿐만 아니라 시길의 존재 그 자체를 위협했다고 전해지고 있어요. 하지만 이제 그녀는 아이들에게 들려주는 동화에나 나오는 가공의 인물이 되고 말았죠." 그레이스는 잠시 말을 멈춘다. "제 생각에 레이디 오브 페인은 시길을 위협하는 다른 존재들을 처리한 것과 마찬가지 방법으로 그녀를 처리한 것 같아요."~ */
  IF ~~ THEN REPLY #28531 /* ~"어떻게?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 110
  IF ~~ THEN REPLY #28532 /* ~"그레이 웨이스트가 무엇이오?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 111
  IF ~~ THEN REPLY #28533 /* ~"그녀에 대해 알만한 사람이 또 있소?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 112
  IF ~~ THEN REPLY #28534 /* ~"다른 질문을 해도 괜찮겠소?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 49
  IF ~~ THEN REPLY #28535 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ EXIT
END

IF ~~ THEN BEGIN 110 // from: 109.0 111.0 112.0
  SAY #28536 /* ~"아마 래벌은 레이디의 감옥인 미로들 중 한 곳으로 보내졌을 거예요."~ */
  IF ~~ THEN REPLY #28537 /* ~"미로? 그건 무엇이오?"~ */ JOURNAL #27457 /* ~훨-후럼-그레이스는 래벌이 레이디의 미로들 중 하나에 갇혀 있다고 말했다. ~ */ GOTO 123
  IF ~~ THEN REPLY #28538 /* ~"그레이 웨이스트가 무엇이오?"~ */ GOTO 111
  IF ~~ THEN REPLY #28539 /* ~"그녀에 대해 알만한 사람이 또 있소?"~ */ GOTO 112
  IF ~~ THEN REPLY #28540 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28541 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 111 // from: 109.1 110.1 112.1 123.1 124.1 125.0
  SAY #28542 /* ~"베이터와 어비스 '사이에' 있는 황폐한 차원이지요. 종종 블러드 워의 전쟁터가 되곤 해요."~ */
  IF ~~ THEN REPLY #28543 /* ~"당신은 래벌이 어떻게 되었는지 아시오?"~ */ GOTO 110
  IF ~~ THEN REPLY #28544 /* ~"그녀에 대해 알만한 사람이 또 있소?"~ */ GOTO 112
  IF ~~ THEN REPLY #28545 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28546 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 112 // from: 109.2 110.2 111.1 123.2 124.2 125.1
  SAY #28547 /* ~"아마 시 공회당에는 그녀에 더 잘 알고 있는 사람이 있을 거예요."~ */
  IF ~~ THEN REPLY #28548 /* ~"당신은 래벌이 어떻게 되었는지 아시오?"~ */ JOURNAL #27456 /* ~훨-후럼-그레이스는 시 공회당에 있는 사람들 중 누군가가 래벌에 대해 더 자세히 알 것이라고 말했다. ~ */ GOTO 110
  IF ~~ THEN REPLY #28549 /* ~"그레이 웨이스트가 무엇이오?"~ */ JOURNAL #27456 /* ~훨-후럼-그레이스는 시 공회당에 있는 사람들 중 누군가가 래벌에 대해 더 자세히 알 것이라고 말했다. ~ */ GOTO 111
  IF ~~ THEN REPLY #28550 /* ~"다른 질문을 해도 괜찮겠소?"~ */ JOURNAL #27456 /* ~훨-후럼-그레이스는 시 공회당에 있는 사람들 중 누군가가 래벌에 대해 더 자세히 알 것이라고 말했다. ~ */ GOTO 49
  IF ~~ THEN REPLY #28551 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ JOURNAL #27456 /* ~훨-후럼-그레이스는 시 공회당에 있는 사람들 중 누군가가 래벌에 대해 더 자세히 알 것이라고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 113 // from: 51.1
  SAY #28552 /* ~훨-후럼-그레이스는 한쪽 눈썹을 치켜 올린다. "정말인가요?"~ */
  IF ~~ THEN REPLY #28553 /* ~"그렇소... 하지만 그건 긴 얘기요, 아마 내가 아는 것보다 훨씬 긴. 나는 이 곳이 어떤 곳이냐에 더 관심이 있소."~ */ GOTO 57
  IF ~~ THEN REPLY #28554 /* ~"그렇소, 하지만 그 얘기는 나중에 해주겠소. 이만 실례해야 할 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 114 // from: 52.3
  SAY #28555 /* ~그녀는 고개를 끄덕인다. "마음에 드셨다니 기쁘군요. 저도 그것이 마음에 들어요."~ */
  IF ~~ THEN REPLY #28556 /* ~"그건 정확히 무슨 뜻이오?"~ */ GOTO 115
  IF ~~ THEN REPLY #28557 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28558 /* ~"오늘은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 115 // from: 114.0
  SAY #28559 /* ~"이름의 의미는 매우 복잡한 사안이에요. 그 문제에 대해서는 해야 할 얘기가 많고, 또 털어놓지 않는 편이 좋은 얘기들 역시 적지 않아요. 제 생각에는 다음 기회로 미루는 것이 좋을 것 같군요."~ */
  IF ~~ THEN REPLY #28560 /* ~"훨-후럼-그레이스가 당신의 진짜 이름이오?"~ */ GOTO 116
  IF ~~ THEN REPLY #28561 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28562 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #28563 /* ~"아마 그럴지도." 그녀는 가볍게 미소짓는다. "하지만 그렇지 않을 수도 있어요. 이름들 중에는 주어진 이름과 노력으로 얻은 이름이 있어요. 누가 감히 어느 쪽이 진짜라고 말할 수 있겠어요? 적어도 전 그러지 못하겠어요."~ */
  IF ~~ THEN REPLY #28564 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28565 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #28566 /* ~"당신과 함께 여행을요?" 훨-후럼-그레이스는 가볍게 미소짓는다. 그녀는 당신 동료들은 안중에도 없는 듯하다 "당신은 상당히 직설적이시군요."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28567 /* ~"내 의향을 솔직히 말하겠소. 당신은 매우 상냥하며 또한 다원 우주에 대한 풍부한 지식을 지니고 있는 것 같소. 그런 지식을 지닌 사람이라면 동료로서 대환영이오."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28568 /* ~"나는 원래 그런 사람이오."~ */ GOTO 79
  IF ~~ THEN REPLY #28569 /* ~"그래, 여기 있어 봐야 얼마나 큰 자극을 얻을 수 있겠소?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28570 /* ~"당신은 센세이트요. 당신이 이 곳에서 배울 수 있는 것에 한계가 있다는 건 분명한 사실이오."~ */ GOTO 83
  IF ~~ THEN REPLY #28571 /* ~"그럼 내 요청을 철회하겠소. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28572 /* ~"그럼 사과하리다. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #28573 /* ~"당신과 함께 여행을요?" 훨-후럼-그레이스는 가볍게 미소짓는다. 그녀는 안나를 무시하는 듯하다. "당신은 상당히 직설적이시군요."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DMorte")
~ THEN REPLY #28574 /* ~"내 의향을 솔직히 말하겠소. 당신은 매우 상냥하며 또한 다원 우주에 대한 풍부한 지식을 지니고 있는 것 같소. 그런 지식을 지닌 사람이라면 동료로서 대환영이오."~ */ GOTO 79
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DMorte")
~ THEN REPLY #28575 /* ~"내 의향을 솔직히 말하겠소. 당신은 매우 상냥하며 또한 다원 우주에 대한 풍부한 지식을 지니고 있는 것 같소. 그런 지식을 지닌 사람이라면 동료로서 대환영이오."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28576 /* ~"나는 원래 그런 사람이오."~ */ GOTO 79
  IF ~~ THEN REPLY #28577 /* ~"그래, 여기 있어 봐야 얼마나 큰 자극을 얻을 수 있겠소?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28578 /* ~"당신은 센세이트요. 당신이 이 곳에서 배울 수 있는 것에 한계가 있다는 건 분명한 사실이오."~ */ GOTO 83
  IF ~~ THEN REPLY #28579 /* ~"그럼 내 요청을 철회하겠소. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28580 /* ~"그럼 사과하리다. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #28581 /* ~"당신과 함께 여행을요?" 훨-후럼-그레이스는 가볍게 미소짓는다. 그녀는 모트를 무시하는 듯하다. "당신은 상당히 직설적이시군요."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28582 /* ~"내 의향을 솔직히 말하겠소. 당신은 매우 상냥하며 또한 다원 우주에 대한 풍부한 지식을 지니고 있는 것 같소. 그런 지식을 지닌 사람이라면 동료로서 대환영이오."~ */ EXTERN ~DMORTE~ 278
  IF ~~ THEN REPLY #28583 /* ~"나는 원래 그런 사람이오."~ */ GOTO 79
  IF ~~ THEN REPLY #28584 /* ~"그래, 여기 있어 봐야 얼마나 큰 자극을 얻을 수 있겠소?"~ */ GOTO 83
  IF ~  Global("Know_Grace_Sensates","GLOBAL",1)
~ THEN REPLY #28585 /* ~"당신은 센세이트요. 당신이 이 곳에서 배울 수 있는 것에 한계가 있다는 건 분명한 사실이오."~ */ GOTO 83
  IF ~~ THEN REPLY #28586 /* ~"그럼 내 요청을 철회하겠소. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28587 /* ~"그럼 사과하리다. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 120 // from: 49.14 81.0
  SAY #28588 /* ~"당신은 열 번째 학생을 찾지 못했나요? 참 이상하군요."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28589 /* ~"나는 열 번째 학생이 나라고 생각하오. 만약 그렇다면 나는 학생들 모두와 얘기를 한 셈이오."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28590 /* ~"나는 열 번째 학생이 나라고 생각하오. 만약 그렇다면 나는 학생들 모두와 얘기를 한 셈이오."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"나는 매음굴 지하에서 열 개의 감각석을 발견했고, 그것들 중 하나는 비어 있었소... 그래서 나는 이 곳에는 아홉 명의 창녀들밖에 없다고 생각하오. 그렇다면 열 번째 *학생*은 나요. 그 경우 나는 학생들 모두와 얘기를 한 셈이오."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28592 /* ~"나는 루이스가 열 번째 학생이라고 생각하오... 그 나름대로의 방식으로 말이지만."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28593 /* ~"열 번째 학생은 어디 있는지 내게 얘기해줄 수 있겠소?"~ */ GOTO 122
  IF ~~ THEN REPLY #28594 /* ~"내가 한 명을 못보고 그냥 지나친 모양이오. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28595 /* ~"그럼 열 번째 학생을 더 열심히 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 121 // from: 120.0 120.1 120.2 120.3 122.0 122.1 122.2 122.3
  SAY #28596 /* ~그녀는 고개를 끄덕인다. "좋아요. 그리고 당신 생각은?"~ */
  IF ~~ THEN REPLY #28597 /* ~"당신과 나는 이 곳을 떠나 차원들을 탐험해야 하오. 이 곳에서는 당신이나 나나 더 이상 체험할 것이 없소."~ */ GOTO 203
  IF ~~ THEN REPLY #61636 /* ~"나는 센세이트가 되기를 열망한다는 것이 어떤 것인가와 경험이 자신을 찾아오기를 기다리기 보다는 경험을 찾아나서는 것이 더 낫다는 사실을 배웠소."~ */ GOTO 203
  IF ~  Global("Luis_Student","GLOBAL",1)
~ THEN REPLY #61638 /* ~"루이스에게는 그의 리비도를 손봐줄 목수가 필요할 것 같소."~ */ GOTO 204
  IF ~  Global("Luis_Student","GLOBAL",0)
GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #61639 /* ~"매음굴의 안의 옷장이란 옷장은 모두 가져다가 불쏘시개로 쓰는 게 좋을 거요."~ */ GOTO 204
  IF ~~ THEN REPLY #61640 /* ~"안전한 장소 안에서 가르치는 것은 학생들에게 해가 될 뿐이오, 그리고 가장 좋은 스승은 바로 다원 우주 그 자체요."~ */ GOTO 203
END

IF ~~ THEN BEGIN 122 // from: 120.4
  SAY #28598 /* ~"그 학생은 분명히 존재해요... 더 열심히 찾아보시지요."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #28599 /* ~"나는 열 번째 학생이 나라고 생각하오. 만약 그렇다면 나는 학생들 모두와 얘기를 한 셈이오."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatGT(Protagonist,13,WIS)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #28600 /* ~"나는 열 번째 학생이 나라고 생각하오. 만약 그렇다면 나는 학생들 모두와 얘기를 한 셈이오."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatLT(Protagonist,15,INT)
Global("Grace_Quest_Answer","GLOBAL",1)
~ THEN REPLY #28591 /* ~"나는 매음굴 지하에서 열 개의 감각석을 발견했고, 그것들 중 하나는 비어 있었소... 그래서 나는 이 곳에는 아홉 명의 창녀들밖에 없다고 생각하오. 그렇다면 열 번째 *학생*은 나요. 그 경우 나는 학생들 모두와 얘기를 한 셈이오."~ */ DO ~AddexperienceParty(3000)
~ GOTO 121
  IF ~  GlobalGT("Armoire","GLOBAL",0)
~ THEN REPLY #28602 /* ~"나는 루이스가 열 번째 학생이라고 생각하오... 그 나름대로의 방식으로 말이지만."~ */ DO ~SetGlobal("Luis_Student","GLOBAL",1)
~ GOTO 121
  IF ~~ THEN REPLY #28603 /* ~"내가 한 명을 못보고 그냥 지나친 모양이오. 대신 질문을 좀 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28604 /* ~"그럼 열 번째 학생을 더 열심히 찾아보도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 123 // from: 110.0
  SAY #28605 /* ~그레이스는 손을 한 곳으로 모아 손가락으로 원을 만든다. "레이디에게는 시길의 일부를 떼어내..." 당신은 그레이스의 작은 손가락의 환영이 그녀의 손으로부터 떨어져 나와 공중을 떠다니다 작은 원을 이루는 것을 놀란 표정으로 지켜본다. "...미로를 만들 수 있는 능력이 있다고 해요."~ */
  IF ~~ THEN REPLY #28606 /* ~"계속하시오..."~ */ GOTO 124
  IF ~~ THEN REPLY #28607 /* ~"알겠소. 래벌의 고향 차원... 그레이 웨이스트에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 111
  IF ~~ THEN REPLY #28608 /* ~"무슨 뜻인지 알 것 같소. 혹시 래벌에 대해 더 자세히 아는 사람이 있는지 모르시오?"~ */ GOTO 112
  IF ~~ THEN REPLY #28609 /* ~"관두시오.다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28610 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 124 // from: 123.0
  SAY #28611 /* ~작은 원의 환영은 공중을 떠다니다가 천천히 회전하기 시작한다. "그녀가 떼어낸 시길의 일부는 죄수를 감금하는 데 쓰여요. 미로에 갇히는 걸 피할 방법은 없어요. 그건 어느 때라도 일어날 수 있어요. 그냥 거리를 걷거나 문을 지나가다가..." 그녀는 손뼉을 친다. "...갑자기 알지 못하는 곳으로 오게 되는 것이지요." 원의 환영 안에서 뭔가 갑자기 반짝이는데, 그것은 마치 누군가가 그 안에서 걷고 있는 모습처럼 보인다.. ~ */
  IF ~~ THEN REPLY #28612 /* ~"계속하시오..."~ */ GOTO 125
  IF ~~ THEN REPLY #28613 /* ~"알겠소. 래벌의 고향 차원... 그레이 웨이스트에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 111
  IF ~~ THEN REPLY #28614 /* ~"무슨 뜻인지 알 것 같소. 혹시 래벌에 대해 더 자세히 아는 사람이 있는지 모르시오?"~ */ GOTO 112
  IF ~~ THEN REPLY #28615 /* ~"관두시오.다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28616 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #28617 /* ~그레이스는 얘기를 계속한다. 작은 미로의 환영은 그녀의 눈에 반사되어 비친다. "각 미로에는 외부로 나갈 수 있는 전이문이 하나씩 존재한다고 해요, 하지만 그것을 찾아내는 것은 어려워요. 아마 그건 죄수에게 희망을 주기 위해 남겨진 것 같아요. 아니면 반대로 죄수를 고문하기 위해서인지도 몰라요." 미로의 환영이 사라진다. "양쪽 모두일 수도 있겠죠."~ */
  IF ~~ THEN REPLY #28618 /* ~"알겠소. 래벌의 고향 차원... 그레이 웨이스트에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 111
  IF ~~ THEN REPLY #28619 /* ~"무슨 뜻인지 알 것 같소. 혹시 래벌에 대해 더 자세히 아는 사람이 있는지 모르시오?"~ */ GOTO 112
  IF ~~ THEN REPLY #28620 /* ~"관두시오.다른 질문을 해도 괜찮겠소?"~ */ GOTO 49
  IF ~~ THEN REPLY #28621 /* ~"알겠소. 내가 알고자 했던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 126 // from:
  SAY #28896 /* ~그레이스는 미소를 지으며 고개를 끄덕여 그에게 인사한다. "칭찬해 주셔서 고마워요." ~ */
  IF ~~ THEN EXTERN ~DCWCAFEM~ 20
END

IF ~~ THEN BEGIN 127 // from:
  SAY #30528 /* ~그레이스가 조용한 목소리로 말참견을 한다. "변호사는 시길의 법정에서 변론을 하는 사람이에요. 그들은 또한 원하는 사람들에게 법적인 자문을 해주어요."~ */
  IF ~~ THEN EXTERN ~DIANNIS~ 10
END

IF ~~ THEN BEGIN 128 // from:
  SAY #30827 /* ~그녀는 가벼운 미소를 짓는다. "괜찮아요. 숙고 씨. 아마 그 문구 때문에 기분이 상할 사람은 투에니 밖에 없을 거예요, 그리고 당신도 아시다시피 그는 자신의 백성들에 의해 3세기 이상 전에 생매장되었잖아요."~ */
  IF ~~ THEN EXTERN ~DABLE~ 5
END

IF ~~ THEN BEGIN 129 // from:
  SAY #30828 /* ~그레이스는 미소를 지으며 점잖게 그의 말을 가로막는다. "왜 당신은 자신이 늘 환영받을 것이라고 생각하시는 거죠, 친애하는 숙고 씨?"~ */
  IF ~~ THEN EXTERN ~DABLE~ 40
END

IF ~~ THEN BEGIN 130 // from:
  SAY #32697 /* ~"어린 사하바? 사하바 브즈훌, 당신인가요?"~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 25
END

IF ~~ THEN BEGIN 131 // from:
  SAY #32698 /* ~훨-후럼-그레이스는 고개를 끄덕이는 시늉만 한다. "매우 정중하군요, 하지만 바로 얼마 전에 내 귀에 들린 말은 그렇지 못했어요."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 26
END

IF ~~ THEN BEGIN 132 // from:
  SAY #32699 /* ~"그러한 말은 아예 하지 말았어야 했어요." 그녀의 어조에는 별다른 변화가 없으나, 그 안에 숨겨진 질책은 사하바의 안색을 돌변시킨다. "내가 전에 가르친 학생이 그런 품위없는 행동을 하는 것을 본다는 건 가슴아픈 일이에요..."~ */
  IF ~~ THEN EXTERN ~DSARHAVA~ 27
END

IF ~~ THEN BEGIN 133 // from:
  SAY #32700 /* ~"이분들은 나와 함께 여행을 하고 있는 일행이에요. 나는 당신이 나를 대하듯 그분들도 대하기를 바라요. 그러한 태도야 말로 고귀하게 태어난 자가 져야 할 책임이자 지니고 있어야 할 성품이에요..."~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #32701 /* ~계속한다.~ */ EXTERN ~DANNAH~ 177
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #32702 /* ~계속한다.~ */ EXTERN ~DSARHAVA~ 28
END

IF ~~ THEN BEGIN 134 // from:
  SAY #33080 /* ~"한 여인이 블러드 워를 멈출 수 있다는 것은 그다지 믿기 어려운 일이 아니에요."~ */
  IF ~~ THEN REPLY #33082 /* ~"하지만 마족들은 시길에 머무르는 것이 허용되어 있소?"~ */ EXTERN ~DGHYSIS~ 25
  IF ~~ THEN REPLY #33083 /* ~"다른 것에 대해 물어봅시다..."~ */ EXTERN ~DGHYSIS~ 11
  IF ~~ THEN REPLY #33084 /* ~"더 이상 질문할 것이 없소."~ */ EXTERN ~DGHYSIS~ 9
END

IF ~~ THEN BEGIN 135 // from:
  SAY #33081 /* ~"괜찮아요. 당신 말이 옳아요."~ */
  IF ~~ THEN REPLY #33085 /* ~"블러드 워에는 어떤 종류의 병사들이 동원되오?"~ */ EXTERN ~DGHYSIS~ 48
  IF ~~ THEN REPLY #33086 /* ~"다른 것에 대해 물어봅시다..."~ */ EXIT
  IF ~~ THEN REPLY #33087 /* ~"더 이상 질문할 것이 없소."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",1)
!InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 136 // from:
  SAY #34014 /* ~당신이 다가가자 훨-후럼-그레이스는 고개를 들어 쳐다본다. "당신은 제가 다시 당신과 함께 여행을 하기를 원하시나요?"~ [FFG247] */
  IF ~~ THEN REPLY #34015 /* ~"그렇소. 만약 당신에게 그럴 의사가 있다면."~ */ GOTO 137
  IF ~~ THEN REPLY #34016 /* ~"지금 당장은 아니오... 난 단지 당신이 잘 있나 들려보았을 뿐이오."~ */ GOTO 138
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #34017 /* ~그녀는 고개를 끄덕인다. "기꺼이 함께 여행을 하겠어요."~ [FFG249] */
  IF ~~ THEN REPLY #34018 /* ~"갑시다."~ */ DO ~ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 138 // from: 136.1
  SAY #34019 /* ~그녀는 고개를 끄덕인다. "고마워요. 참 자상도 하시군요." 그녀는 가볍게 미소짓는다. "만약 향후에 제 도움이 필요하시다면 저는 여기 있을 테니 언제라도 오세요."~ */
  IF ~~ THEN REPLY #34020 /* ~"고맙소, 그레이스. 그러리다."~ */ EXIT
END

IF ~  GlobalGT("Grace","GLOBAL",0)
InParty("Grace")
!GlobalGT("Fortress_Grace","GLOBAL",2)
~ THEN BEGIN 139 // from: 205.10 206.2 213.1 214.1 215.0 216.1 217.1 218.0 239.1 240.3 248.1 249.4 250.2 251.0 267.1 268.1 270.3 271.2 272.1 273.4 274.2 276.0 279.8 280.5 281.9 284.1 286.1 287.3 288.2 289.3 290.3 291.4 292.3 293.3 294.4 295.2 296.4 297.4 298.4 299.3 300.4 301.1 302.3 303.1 304.3 305.2 307.1 308.2 309.3 310.3 311.3 312.2 313.2 314.1 316.2 317.1 319.2 320.3 321.2 322.2 323.4 324.1 325.2 326.2 327.3 328.2 329.1 330.6 331.2 332.1 333.1 334.1 335.5 336.1 337.3 338.3 339.1 343.1 344.2 345.2 346.2 347.2 357.5 359.2 360.1 361.1
  SAY #34021 /* ~"무슨 일이시죠?"~ [FFG003] */
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #34022 /* ~"내게 타나리에 대해 얘기해줄 수 있겠소?"~ */ GOTO 206
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61947 /* ~"당신 등에 달린 날개들... 당신은 어떤 존재요?"~ */ GOTO 214
  IF ~  NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61948 /* ~"당신 등에 달린 날개들... 당신은 어떤 존재요?"~ */ EXTERN ~DANNAH~ 308
  IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #61949 /* ~"당신 등에 달린 날개들... 당신은 어떤 존재요?"~ */ EXTERN ~DMORTE~ 612
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61950 /* ~"실례하지만 그레이스 여사, 당신 등에 달린 날개들... 당신은 인간이 아닌 것 같으데 내 말이 맞소?"~ */ GOTO 214
  IF ~  CheckStatGT(Protagonist,14,CHR)
NearbyDialog("DAnnah")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61951 /* ~"실례하지만 그레이스 여사, 당신 등에 달린 날개들... 당신은 인간이 아닌 것 같으데 내 말이 맞소?"~ */ EXTERN ~DANNAH~ 308
  IF ~  CheckStatGT(Protagonist,14,CHR)
!NearbyDialog("Dannah")
NearbyDialog("DMorte")
Global("Know_Grace_Succubus","GLOBAL",0)
~ THEN REPLY #61952 /* ~"실례하지만 그레이스 여사, 당신 등에 달린 날개들... 당신은 인간이 아닌 것 같으데 내 말이 맞소?"~ */ EXTERN ~DMORTE~ 612
  IF ~  Global("Grace_Name","GLOBAL",0)
~ THEN REPLY #61953 /* ~"어떻게 해서 당신은 '훨-후럼-그레이스'란 이름을 얻게 되었소?"~ */ GOTO 239
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61954 /* ~"왜 당신은 '훨-후럼-그레이스'라 불리는 거요?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61955 /* ~"왜 당신은 '훨-후럼-그레이스'라 불리는 거요?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #61956 /* ~"왜 당신은 '훨-후럼-그레이스'라 불리는 거요?"~ */ GOTO 247
  IF ~  Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #61957 /* ~"어떻게 해서 당신은 '훨-후럼-그레이스'란 이름을 얻게 되었소?"~ */ GOTO 248
  IF ~  GlobalGT("Know_Grace_Sensates","GLOBAL",0)
~ THEN REPLY #61958 /* ~"당신이 센세이트에 대해 아는 것들을 내게 얘기해줄 수 있겠소?"~ */ GOTO 216
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #61959 /* ~"내게 마법에 대해 가르쳐 줄 수가 있겠소, 그레이스?"~ */ GOTO 267
  IF ~  NumInPartyLT(3)
~ THEN REPLY #61960 /* ~"나는 우리들에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~  NumInPartyGT(2)
~ THEN REPLY #61961 /* ~"우리들의 동료에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #61962 /* ~"당신은 무기를 사용하는 일이 없소?"~ */ GOTO 349
  IF ~~ THEN REPLY #61963 /* ~"우리들의 여행에 대해 질문할 것들이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #61964 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #39578 /* ~그레이스는 이브즈에게로 시선을 돌린다. "오늘은 당신과 나눌 이야기가 없군요. 이야기 사냥꾼. 이야기를 보충하기 전에 당신이 내 레퍼토리를 깨끗하게 바닥내도록 할 수는 없어요."~ */
  IF ~~ THEN REPLY #39755 /* ~다른 동료에게 물어본다.~ */ EXTERN ~DYVES~ 20
  IF ~~ THEN REPLY #39756 /* ~"당신과 공유할 이야기가 있소, 이브즈."~ */ EXTERN ~DYVES~ 19
  IF ~~ THEN REPLY #39757 /* ~"그럼 이브즈에게 물어볼 것이 하나 있소..."~ */ EXTERN ~DYVES~ 4
  IF ~~ THEN REPLY #39758 /* ~"그럼 갑시다. 안녕히 계시오, 이브즈."~ */ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #42093 /* ~"제 생각에 그녀의 눈이 보이지 않는 건 사건이나 상황 때문이 아니라 그녀 스스로 선택한 일인 것 같아요."~ */
  IF ~~ THEN EXTERN ~DYVANA~ 14
END

IF ~~ THEN BEGIN 142 // from:
  SAY #44259 /* ~"안녕하세요, 곤캘브즈 씨."~ */
  IF ~~ THEN EXTERN ~DGONCAL~ 23
END

IF ~~ THEN BEGIN 143 // from:
  SAY #44261 /* ~"제가 부탁드린 일을 서두르실 필요는 없어요, 곤캘브즈 씨. 당신이 기량을 발휘하시려면 시간이 걸린다는 것은 저도 잘 알고 있어요, 그리고 완성된 작품이 훌륭하리라는 것은 의심할 여지도 없어요. 하지만 오늘은 그 일 때문에 온 게 아니에요. 여기 있는 남자 분이..." 훨-후럼-그레이스는 당신에게 고개를 숙인다. "...이 당신과 말씀을 나누고 싶다고 하시는군요."~ */
  IF ~~ THEN DO ~SetGlobal("Goncalves","GLOBAL",2)
~ EXTERN ~DGONCAL~ 24
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49782 /* ~그레이스는 그 남자를 유심히 바라본다. "이런 종류의 행위 예술에 대해서 들은 적이 있는 것 같아요. 주물질계의 여러 세계에서는 흔한 것이라고 해요..." 그녀는 당신만 들을 수 있을 정도로 목소리를 낮춘다. "하지만 적지 않은 수의 세계에서는 혐오의 대상이라고 하는군요."~ */
  IF ~~ THEN REPLY #49783 /* ~당신이 그를 만질 수 있는지 본다.~ */ EXTERN ~DMIME~ 2
  IF ~~ THEN REPLY #49784 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50078 /* ~"마족의 종류에 따라 다르겠지만, 그것과 협상을 하는 건 가능할 거예요. 만약 바테주라면 쾌히 자유를 되찾기 위해 협상에 응하겠지만, 타나리라면 그것이 복종하도록 논파하지 않으면 안 되요." 그녀는 부드럽게 미소짓는다. "물론 이때 당신의 무기가 곧 논리가 되는 거죠."~ */
  IF ~~ THEN REPLY #50079 /* ~"좋소. 도나 퀴쇼, 내가 무슨 알을 해야 하오?"~ */ EXTERN ~DQUISHO~ 5
  IF ~~ THEN REPLY #50080 /* ~"나는 봉인된 마족을 해방하는 일에 찬성할 수 없소."~ */ EXTERN ~DQUISHO~ 4
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50147 /* ~"명확한 답을 기대했던 건 지나친 욕심이었던 것 같군요."~ */
  IF ~~ THEN REPLY #50148 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 147
  IF ~~ THEN REPLY #50252 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 147 // from: 146.0 148.0 149.0 150.2
  SAY #50149 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "물론이에요."~ */
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50150 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 11
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50239 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 12
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50240 /* ~"그가 누구인지 물어봐 주시오"~ */ EXTERN ~DADABUS~ 13
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #50241 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 14
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #50242 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 15
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #50243 /* ~"그가 뭘 하고 있는지 물어봐 주시오."~ */ EXTERN ~DADABUS~ 16
  IF ~~ THEN REPLY #50244 /* ~"그보고 우리에게 레이디 오브 페인에 대해 얘기해 달라고 부탁하시오." ~ */ EXTERN ~DADABUS~ 10
  IF ~~ THEN REPLY #50245 /* ~"그보고 우리에게 휄에 대해 얘기해 달라고 부탁하시오." ~ */ GOTO 150
  IF ~~ THEN REPLY #50251 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50179 /* ~"그는 자신이 다버스라고 말하고 있어요." 그레이스는 잠시 말을 멈춘다. "나는 이름이나... 적어도 우리가 이름이라고 부를 수 있는 것을 지닌 다버스는 거의 본 적이 없어요. 그들은 그런 것보다는 심벌들로 자신을 표현하는 경향이 있는 것 같아요."~ */
  IF ~~ THEN REPLY #50180 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 147
  IF ~~ THEN REPLY #50181 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 149 // from:
  SAY #50193 /* ~"그는 자신의 직무를 수행하고 있다고 말하고 있어요." 그녀는 고개를 돌려 당신을 본다. "그들은 대부분의 시간을 도시의 여러 곳들을 수리하고 해체하는 데 보내요. 여러 모로 그들은 이 도시의 관리인들이라고 할 수 있어요."~ */
  IF ~~ THEN REPLY #50194 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 147
  IF ~~ THEN REPLY #50195 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 150 // from: 147.7
  SAY #50246 /* ~그레이스는 눈살을 찌푸린다. "그런 질문을 하는 건 현명한 생각이 아닐 것 같군요. 휄은 더 이상 그들의 공동체의 일원이 아니기 때문에 그런 질문은 그를 화나게 할 수도 있어요."~ */
  IF ~~ THEN REPLY #50247 /* ~"어쨌든 물어봐 줄 수 있겠소 ?"~ */ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50248 /* ~"설교는 그만 됐으니 그에게 질문이나 해주시오."~ */ DO ~MoraleDec("Grace",1)
~ EXTERN ~DADABUS~ 17
  IF ~~ THEN REPLY #50249 /* ~"그에게 다른 질문을 할 수 있겠소?"~ */ GOTO 147
  IF ~~ THEN REPLY #50250 /* ~"관두시오. 그냥 떠납시다."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXTERN ~DADABUS~ 6
END

IF ~~ THEN BEGIN 151 // from:
  SAY #50686 /* ~"당신이 얘기하는 임무란 것이 무엇인지 모르겠군요, 브리스치카, 하지만 당신이 이 곳에 있다는 사실은 많은 의문을 불러일으키는군요. 제가 지난번에 당신 소식을 들었을 때 당신은 콘도르 부대의 기수였는데, 어떻게 시길로 오게 되었죠?"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 5
END

IF ~~ THEN BEGIN 152 // from:
  SAY #50687 /* ~훨-후럼-그레이스가 당신이 지끔것 들어본 적이 없는 냉혹한 어조로 말한다. 그녀가 브리스치카를 해부하는 듯한 눈으로 바라보자 주변의 공기가 얼어붙는 것처럼 느껴진다. "그만 하세요."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 6
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50688 /* ~"그건 진실-"~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 12
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50689 /* ~"만약 계약서의 어휘에 주의하고, 바테주가 자신들이 한 약속은 절대로 지킬 수밖에 없다는 사실만 파악하고 있다면, 바테즈와의 계약에서 풀려나는 것은 가능해요. 하지만 그 뜻이 그들에게 유리하게 왜곡될 수 있는 단어들에 대해 주의할 필요가 있지요.. 다행히 저는 언어와 그 미묘한 기교에 능통해요. 그렇다 하더라도 그건 결코 쉬운 일이 아니었어요."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 13
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50690 /* ~훨-후럼-그레이스는 완벽할 정도로 냉정 침착한 태도를 계속 유지하며 고개만 끄덕인다... 하지만 당신과 눈이 마주치자 그녀는 약간 화난 듯한 기색을 드러낸 후, 다시 미소를 짓는다.~ */
  IF ~~ THEN REPLY #50691 /* ~"그녀가 첩자들을 훈련시키고 있다는 말은 무슨 뜻이오, 브리스치카?"~ */ EXTERN ~DVRISCH~ 14
  IF ~~ THEN REPLY #50692 /* ~"다른 질문이 있소, 브리스치카."~ */ EXTERN ~DVRISCH~ 7
  IF ~~ THEN REPLY #50693 /* ~"당신 상품들을 보고 싶소, 브리스치카."~ */ EXTERN ~DVRISCH~ 20
  IF ~~ THEN REPLY #50694 /* ~"내가 알고자 했던 건 그게 전부요. 잘 있으시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50695 /* ~"그건 제가 운영하는 시설의 목적이 아니에요..."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50696 /* ~"그는 왜 내가 그와 함께 여행하기로 했는지 잘 알고 있어요, 브리스치카... 그가 내게 함께 여행을 하자고 부탁했을 때부터."~ */
  IF ~~ THEN EXTERN ~DVRISCH~ 17
END

IF ~~ THEN BEGIN 158 // from:
  SAY #52554 /* ~"래벌..." 그레이스는 조용히, 그리고 매우 조심스럽게 대답한다. "저는 제-"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 37
END

IF ~~ THEN BEGIN 159 // from:
  SAY #52555 /* ~"왜냐하면 사랑은 그것을 용납하지 않기 때문이죠 - 그리고 사랑은 가장 강한 자도 굴복시킬 수가 있어요." 그레이스는 부드러우나 질문하는 어조로 말한다. "그렇지 않나요, 래벌?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 130
END

IF ~~ THEN BEGIN 160 // from:
  SAY #52556 /* ~"어떠한 생물이라도 그럴 자격은 있어요, 래벌." 그레이스는 조용히 말한다. "하지만 역사 속의 당신 이미지는 사뭇 달라요..."~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 131
END

IF ~~ THEN BEGIN 161 // from:
  SAY #52557 /* ~"레이디 오브 페인? 당신은 그녀를 *도우려* 했나요?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 188
END

IF ~~ THEN BEGIN 162 // from:
  SAY #52558 /* ~"레이디 오브 페인? 당신은 그녀를 *도우려* 했나요?"~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 187
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52559 /* ~그레이스는 아무 말도 하지 않는다. 그녀는 래벌을 골똘히 살펴보고 있다... 당신은 그레이스가 래벌의 약점을 찾아내려고 한다는 인상을 받는다.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 79
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52560 /* ~그레이스는 갑자기 발을 땅에 굳게 디디고 전투 자세를 취한다, 그리고 그녀는 손을 내밀어 손가락으로 방어하는 자세를 취한다. 하지만 그녀의 표정은 변하지 않는다. 그녀는 이러한 사태를 예상하고 있었던 것 같다.~ */
  IF ~~ THEN EXTERN ~DRAVEL~ 83
END

IF ~~ THEN BEGIN 165 // from:
  SAY #52971 /* ~그리고 갑자기 훨-후럼-그레이스가 당신 곁에 있다. 당신 안에서 비명이 터져 나오려는 순간에도 그녀는 비단처럼 부드러운 손길로 당신의 눈물을 닦아 준다. 그녀는 당신을 달래며 피눈물이 흘러내리고 있는 당신 얼굴을 쓰다듬어 준다. ~ */
  IF ~~ THEN REPLY #52972 /* ~"나는...나는... 견딜 수가... 없소... 난 그녀를 막을 수가 없었소, 그러고 싶었지만, *아무 것도* 할 수가 없었소...!~ */ GOTO 166
END

IF ~~ THEN BEGIN 166 // from: 165.0
  SAY #52973 /* ~훨-후럼-그레이스는 당신 눈을 들여다보더니, 이해를 한 듯 슬픈 표정으로 고개를 끄덕인다. "그것이 *갈망*의 본질이에요. 당신이 결코 가지거나 바꿀 수 없는 것에 대한 욕망이지요." 그녀는 이제는 피투성이가 된 자신의 손을 치우면서 당신을 살펴본다. "괜찮으시겠어요?"~ */
  IF ~~ THEN REPLY #52974 /* ~"그래... 괜찮을 거요... 잠시 시간이 필요할 뿐이오...~ */ GOTO 167
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52976 /* ~"알겠어요..." 훨-후럼-그레이스는 뒤로 물러선다. "당신이 준비가 되면 여행을 계속하도록 하지요."~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52977 /* ~숨을 들이쉬고 생각을 한데로 모으려고 노력한다. ~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ EXTERN ~DF_SS_DE~ 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52978 /* ~숨을 들이쉬고 생각을 한데로 모으려고 노력한다. ~ */ DO ~SetGlobal("Deionarra_SS_Grace","GLOBAL",1)
~ EXTERN ~DF_SS_DE~ 34
END

IF ~~ THEN BEGIN 168 // from:
  SAY #54023 /* ~"여기까지 왔는데 최후의 순간에서 물러선다면 실례가 되겠지요." 그녀는 가볍게 미소짓는다. "만약 당신이 정중하게 부탁하시더라도 받아들이지 않겠어요."~ */
  IF ~  NearbyDialog("DAnnah")
GlobalLT("BD_ANNAH_MORALE","GLOBAL",16)
InParty("Annah")
~ THEN REPLY #54024 /* ~"그럼 선택의 여지가 없군... 안나?"~ */ EXTERN ~DANNAH~ 273
  IF ~  NearbyDialog("DAnnah")
GlobalGT("BD_ANNAH_MORALE","GLOBAL",15)
InParty("Annah")
~ THEN REPLY #54025 /* ~"그럼 선택의 여지가 없군... 안나?"~ */ EXTERN ~DANNAH~ 272
  IF ~  !InParty("annah")
NearbyDialog("Ddakkon")
GlobalLT("BD_DAKKON_MORALE","GLOBAL",6)
InParty("Dakkon")
~ THEN REPLY #54026 /* ~"그럼 선택의 여지가 없군... 다콘?"~ */ EXTERN ~DDAKKON~ 173
  IF ~  !InParty("annah")
NearbyDialog("DDakkon")
GlobalGT("BD_DAKKON_MORALE","GLOBAL",5)
InParty("Dakkon")
~ THEN REPLY #54027 /* ~"그럼 선택의 여지가 없군... 다콘?"~ */ EXTERN ~DDAKKON~ 172
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54028 /* ~"그럼 선택의 여지가 없군... 모트?~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 536
  IF ~  !InParty("annah")
!InParty("dakkon")
NearbyDialog("Dmorte")
InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54029 /* ~"그럼 선택의 여지가 없군... 모트?~ */ EXTERN ~DMORTE~ 534
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #54030 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
Global("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54031 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetGlobal("Morte_Quip_Regret_Portal","GLOBAL",1)
~ EXTERN ~DMORTE~ 538
  IF ~  NearbyDialog("DMorte")
!InParty("Morte")
GlobalGT("Morte_Quip_Regret_Portal","GLOBAL",0)
~ THEN REPLY #54032 /* ~"그럼 좋소... 전이문 저편에 무엇이 있는지 보러 갑시다."~ */ DO ~SetPortalCursor("Fort_Port",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Fort_Port",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #54033 /* ~"그건 래벌이 미로에서 한 말 때문이에요." 그레이스의 목소리가 어찌나 작은지 하마터면 알아듣지 못할 뻔했다. "그렇지 않나요, 모트?~ */
  IF ~~ THEN EXTERN ~DMORTE~ 562
END

IF ~~ THEN BEGIN 170 // from:
  SAY #54034 /* ~"그건 래벌이 미로에서 한 말과 휄이 우리를 위해 설명해준 심벌 때문이에요." 그레이스의 목소리가 어찌나 작은지 하마터면 알아듣지 못할 뻔했다. "그렇지 않나요, 모트?~ */
  IF ~~ THEN EXTERN ~DMORTE~ 563
END

IF ~~ THEN BEGIN 171 // from:
  SAY #54067 /* ~"안나, 정말 미안해요..."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 268
END

IF ~~ THEN BEGIN 172 // from:
  SAY #54068 /* ~"해골들의 기둥은 거짓말로 다른 사람들을 죽게 한 자들의 살아 있는 머리들로 구성된 기둥이에요. 많은 것을 알고 있기 때문에 상당한 수의 질문에 대답해줄 수는 있으나, 그 대가로 엄청난 보수를 요구하죠. 그것에게 그런 질문은 하지 않는 게 좋아요."~ */
  IF ~~ THEN EXTERN ~DPILLAR~ 14
END

IF ~~ THEN BEGIN 173 // from:
  SAY #54069 /* ~그레이스는 당신 말에 별 영향을 받지 않은 듯 그냥 시선을 기둥에서 당신에게로 돌릴 뿐이다. "저는 무슨 일이 있더라도 해골들의 기둥이 절 가지게 하지는 않겠어요... 하지만 나는 당신도 이 사실을 알고 있으며, 단지 농담을 해본 것뿐이라고 확신해요. 기둥을 그런 식으로 도발하는 것은 현명하지 못해요..."~ */
  IF ~~ THEN REPLY #54070 /* ~진실: "진담이오. 거기로 들어가시오, 그레이스, 아니면 내가 직접 처넣을 테니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pillar_3","GLOBALGood",-1)
MoraleDec("Grace",3)
~ GOTO 174
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54071 /* ~"좋소. 다른 어떤 선물이라면 받겠소, 기둥?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54072 /* ~"좋소. 다른 어떤 선물이라면 받겠소, 기둥?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54073 /* ~"물론 농담이었소. 갑시다."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54074 /* ~"물론 농담이었소. 갑시다."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #54075 /* ~그레이스는 잠시 멈추고 당신을 조심스럽게 쳐다본다. "당신은 정말 이런 짓을 할 생각인가요. 정말 나를 해골들의 기둥에 던져 넣을 건가요 ?"~ */
  IF ~~ THEN REPLY #54076 /* ~"그렇소."~ */ GOTO 175
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #54077 /* ~"아니, 그러지 않겠소. 다른 어떤 선물이라면 받겠소, 기둥?"~ */ EXTERN ~DPILLAR~ 22
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #54078 /* ~"아니, 그러지 않겠소. 다른 어떤 선물이라면 받겠소, 기둥?"~ */ EXTERN ~DPILLAR~ 23
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #54079 /* ~"아니, 그러지 않겠소. 갑시다."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXTERN ~DPILLAR~ 50
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #54080 /* ~"아니, 그러지 않겠소. 갑시다."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
~ EXIT
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #54082 /* ~훨-후럼-그레이스의 눈이 얼음처럼 차가워진다, 그러나 그녀의 표정과 자세는 조금도 흐트러짐이 없다. "그럼 작별 인사를 해야겠군요, 이름 없는 자. 만약 당신이 무사히 베이터에서 탈출한다면 다시 만날 수도 있겠지요." 그 말이 끝나자마자 그녀는 녹색 안개가 되어 사라지기 시작한다.~ */
  IF ~~ THEN REPLY #54083 /* ~"그레이스..."~ */ DO ~SetGlobal("Pillar_Question","AR1001",0)
StartCutSceneMode()
StartCutSceneEx("1001Cut2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 176 // from:
  SAY #54765 /* ~그레이스는 탄식을 한다. "디바... 하지만 저 사슬들은 그의 육체를 구속하는 것 이상으로 그의 정신을 질식시키고 있는 것 같군요..."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 185
END

IF ~~ THEN BEGIN 177 // from:
  SAY #54766 /* ~그레이스는 탄식을 한다. "디바... 하지만 저 사슬들은 그의 육체를 구속하는 것 이상으로 그의 정신을 질식시키고 있는 것 같군요..."~ */
  IF ~~ THEN REPLY #54874 /* ~"디바, 당신에게 질문할 것들이 있소..."~ */ EXTERN ~DTRIAS~ 9
END

IF ~~ THEN BEGIN 178 // from:
  SAY #54767 /* ~"제게는 당신을 유혹하려는 생각 따위는 없었어요, 디바. 당신의 감금 생활이 당신에게 악영향을 미친 것 같군요."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 34
END

IF ~~ THEN BEGIN 179 // from:
  SAY #54768 /* ~"나는 그렇게 생각하지 않아요, 트리어스 경. 당신은 그들을 지나치게 신뢰했던 것뿐이에요."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 46
END

IF ~~ THEN BEGIN 180 // from:
  SAY #54769 /* ~훨-후럼-그레이스가 갑자기 끼어든다. "당신은 블러드 워에 대해 어떻게 생각하시죠, 트리어스 경 ?"~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 47
END

IF ~~ THEN BEGIN 181 // from:
  SAY #54770 /* ~훨-후럼-그레이스는 조용히 말한다: "정말 그를 죽일 생각이신가요? 이 디바는 당신이 기억을 되찾기 위한 유일한 열쇠를 쥐고 있을지도 몰라요. 래벌이 우리를 이곳으로 보냈는데, 당신은 그가 비밀을 밝히기도 전에 즉일 생각인가요?"~ */
  IF ~~ THEN REPLY #54875 /* ~디바를 묶은 사슬을 내려친다.~ */ EXTERN ~DTRIAS~ 50
  IF ~~ THEN REPLY #54876 /* ~디바를 내려친다.~ */ EXTERN ~DTRIAS~ 98
  IF ~~ THEN REPLY #54877 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 182 // from:
  SAY #54771 /* ~"당신은 블러드 워를 천국의 문까지 가져감으로서 그것을 종식시킬 수 있다고 생각하시나요? 마계의 악은 거의 무한해요. 베이터와 어비스의 무수한 군단들이 이를 입증하고 있어요. 스스로를 오만함으로 무장하기 전에 무한의 악이 한 가지 목적에 전념할 경우 그 힘이 얼마나 끔찍할지를 생각해보세요. 그들에게 블러드 워를 천상계까지 확산시킬 기회를 주지 마세요, 아니면 다원 우주 전체가 고통을 받을 테니까요."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 78
END

IF ~~ THEN BEGIN 183 // from:
  SAY #54772 /* ~"필요한 통찰력만 있다면 사람은 그 어떤 것으로부터도 교훈을 얻을 수가 있어요. 현명한 사람은 배울 기회를 결코 놓치지 않는다는 사실을 기억하시는 게 좋겠죠."~ */
  IF ~~ THEN EXTERN ~DTRIAS~ 79
END

IF ~~ THEN BEGIN 184 // from:
  SAY #55712 /* ~"모트의 비판을 제쳐놓는다면, 미캐너스는 상당히 흥미로운 곳이에요. 그 곳에는 하늘도 없고 허공에서 돌아가는 거대한 톱니바퀴들 뿐이에요... 그것들은 주기에 따라 빛을 내며, 그 효과는 가히 경이로워요. 그 차원의 질서와 논리는 사람에게 안도감을 줄 수 있으며, 만약 어디로, 그리고 어떻게 가야할 지만 안다면 지루함을 달랠 방법은 얼마든지 있어요."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 577
END

IF ~~ THEN BEGIN 185 // from:
  SAY #55714 /* ~"모든 모드론은 하나의 공통된 '에너지'를 공유해요. 어떤 면에서 이 에너지는 그들 사이의 연결 고리 구실을 해요. 만약 그들 중 하나가 죽으면, 그 에너지는 다시 공통의 에너지 풀로 흡수되어 그 에너지로부터 새로운 모드론이 태어나요. 하지만 어떤 모드론이... 불량이... 되면 그는 동족들과의 연결 고리가 끊어지며, 전체의 에너지 중 일부를 가져가게 되요.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55715 /* ~"그래 당신 말은 노돔은 이 근원의 일부이나 그는 그것으로부터 차단된 상태라는 거군. 그리고 모드론이 죽으면 그들은 다시 근원으로 흡수되고. 노돔도 그렇게 되오?"~ */ GOTO 188
  IF ~~ THEN REPLY #55717 /* ~"그래서... 노돔, 이 미캐너스란 차원은 에너지의 근원이오?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55719 /* ~"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55720 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #55722 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "모트가 옳아요 - :모든 모드론은 하나의 공통된 '에너지'를 공유해요. 어떤 면에서 이 에너지는 그들 사이의 연결 고리 구실을 해요. 만약 그들 중 하나가 죽으면, 그 에너지는 다시 공통의 에너지 풀로 흡수되어 그 에너지로부터 새로운 모드론이 태어나요. 하지만 어떤 모드론이... 불량이... 되면 그는 동족들과의 연결 고리가 끊어지며, 전체의 에너지 중 일부를 가져가게 되요."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 579
END

IF ~~ THEN BEGIN 187 // from:
  SAY #55723 /* ~훨-후럼-그레이스는 가볍게 고개를 끄덕인다. "미안해요, 모트. 기분 상하게 할 생각은 없었어요."~ */
  IF ~~ THEN REPLY #55725 /* ~"모트, 나는 얻을 수 있는 모든 정보를 필요로 하네, 그러니 내게 숨기려 들지 말게. 그리고 그레이스도 보탤 것이 있으면 말해주기 바라오, 이해하오?"~ */ EXTERN ~DMORTE~ 580
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #55727 /* ~"그래 당신 말은 노돔은 이 근원의 일부이나 그는 그것으로부터 차단된 상태라는 거군. 그리고 모드론이 죽으면 그들은 다시 근원으로 흡수되고. 노돔도 그렇게 되오?"~ */ EXTERN ~DMORTE~ 583
  IF ~~ THEN REPLY #55729 /* ~"그래서... 노돔, 이 미캐너스란 차원은 에너지의 근원이오?"~ */ EXTERN ~DNORDOM~ 67
  IF ~~ THEN REPLY #55730 /* ~"좋소. 노돔, 당신에게 할 다른 질문들이 있소..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55731 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #55733 /* ~"옳아요."~ */
  IF ~~ THEN REPLY #55735 /* ~"그리고 그가 죽으면... 또 다른 노돔이 태어난다."~ */ GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #55736 /* ~"노돔의 에너지는 근원으로 돌아갈 거예요. 하지만 노돔은 더 이상 존재하지 않게 돼요. 대신 그를 대체할 다른 쿼드론 모드론이 만들어지죠."~ */
  IF ~~ THEN REPLY #55738 /* ~"그래서... 불량 모드론이 됨으로서 그도 죽어야하는 존재가 되었다는 것이오?"~ */ GOTO 190
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #55739 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "내가 아는 한 순수한 에너지는 파괴될 수 없어요. 하지만 '노돔'이라는 개성과 이름을 지닌 개체는 사라지게 되죠."~ */
  IF ~~ THEN REPLY #55742 /* ~"좋소. 노돔, 당신에게 할 다른 질문들이 있소..."~ */ EXTERN ~DNORDOM~ 74
  IF ~~ THEN REPLY #55743 /* ~"내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 191 // from:
  SAY #55745 /* ~"모트..." 훨-후럼-그레이스는 조용히 얘기에 끼어든다. "솔직히 당신이 준 정보를 바탕으로 하지 않았다면, 상황을 설명하는 데 어려움을 겪었을 거예요... 때때로 당신이 사용하는 비유나 관용구는 사람들로 하여금 당신 설명을 훨씬 쉽게 이해할 수 있도록 해주어요. 그 점에서 당신은 저보다 더 뛰어난 교사인 것 같군요."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 582
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56035 /* ~"안녕하세요, 지옥의 변호사 갈라진-혀 씨." 그레이스는 고개를 가볍게 숙여 인사한다. "당신의 제안에 대해서는 생각해보기로 하지요."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 29
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56036 /* ~그레이스는 다소 곤혹스러워하는 듯하다. "지옥의 변호사 갈라진-혀 씨, 당신은 우리 타나리가 조잡하고 거친 사람들이라고 말씀하고 계신 건가요?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 61
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56037 /* ~"당신은 악의 정도가 아니라 그 실천 수단에 대해 이의를 제기하시는 것이겠죠. 그러나 타나리들 중 많은 사람들은 악의 원초에 본질에 접근하는 것이 이상적이라고 주장하고 있어요."~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 62
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56038 /* ~"바테주의 입장에서 보면 견딜 수가 없겠지요. 하지만... 변호사 님, 많은 타나리 철학자들은 바테주가 폭력과 악의 본질로부터 열정을 제거하려고 하는 것은 용납할 수 없다고 주장하고 있어요. 그들은 바테주는 격정을 냉혹하고 체계적인 잔인함으로 대체하려 하고 있다고 비판하지요. 따라서 오랜 논쟁은 계속되고 있어요: 어느 쪽이 더 큰 악이죠? 열정적인 악인가요? 아니면 효율적인 악?"~ */
  IF ~~ THEN EXTERN ~DFHJULL~ 63
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56683 /* ~"저는 정의에 대해 알아요, 베일로. 저는 그것을 체험과 지혜로 그것을 부드럽게 하죠, 그리고 정의가 그 두 가지 미덕으로 부드러워지면, 정의는 오히려 한층 *강해져요.* 저는 또한 자비와 용서에 대해서도 알아요, 왜냐하면 그들 없이는 이 다원 우주가 훨씬 잔혹한 곳이 될 테니까요."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 111
END

IF ~~ THEN BEGIN 197 // from:
  SAY #56688 /* ~"아니요, 베일로. 그것들은 영혼을 구원하고, 승화시키며, 강하게 만들기 위한 수단이에요. 그렇게 함으로서 *다원 우주* 역시 강해져요. 당신이 얘기하는 완벽은 바로 거기에 있어요."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 112
END

IF ~~ THEN BEGIN 198 // from:
  SAY #56689 /* ~훨-후럼-그레이스는 이 얘기를 듣자 몸을 꼿꼿이 세운다. "그런가요, 베일로? 그럼 당신의 눈으로 절 한 번 보세요, 그리고 과연 제가 약한지 심판해 보시죠. 당신이 저를 침식하고 있다는 주장하는 약점을 찾을 수 있는지 어디 한 번 보세요."~ */
  IF ~~ THEN DO ~SetAnimState("Vhail",ANIM_MIMESTAND)
~ EXTERN ~DVHAIL~ 113
END

IF ~~ THEN BEGIN 199 // from:
  SAY #56690 /* ~"그 점에 있어서 우리는 의견이 엇갈리는군요, 베일로."~ */
  IF ~~ THEN REPLY #56691 /* ~"베일로, 다른 사람에 대해 물어보겠소."~ */ EXTERN ~DVHAIL~ 91
  IF ~~ THEN REPLY #56692 /* ~"그만하시오, 베일로. 당신에게 할 다른 질문들이 있소..."~ */ EXTERN ~DVHAIL~ 35
  IF ~  !InParty("Vhail")
~ THEN REPLY #56693 /* ~"우린 이만 여기서 헤어져야겠소, 베일로. 안녕히 계시오."~ */ EXIT
  IF ~  InParty("Vhail")
~ THEN REPLY #56694 /* ~"관두시오, 베일로. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56695 /* ~"심문을 중단하세요, 베일로." 훨-후럼-그레이스의 말로부터 협박하는 어조는 찾아볼 수 없다, 하지만 왠지 위험하게 느껴진다. "여기는 법정이 아니에요, 그리고 내가 당신이 그녀를 심판하는 것을 허용하지 않겠어요. 그녀를 그냥 내버려 두세요."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 101
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56696 /* ~"그렇게 하려면 먼저 나를 거쳐 가야 할 거예요, 베일로. 나는 당신이 그녀를 해치는 것을 보고만 있지는 않겠어요."~ */
  IF ~~ THEN EXTERN ~DVHAIL~ 102
END

IF ~~ THEN BEGIN 202 // from:
  SAY #61423 /* ~그레이스는 당신의 프라이버시를 보호해 주려는 듯 고개를 끄덕인다. "잠시 후 돌아오겠어요." 그녀는 돌아서서 떠난다.~ */
  IF ~~ THEN REPLY #61424 /* ~창녀를 따라간다...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ EXTERN ~DUCHO~ 8
END

IF ~~ THEN BEGIN 203 // from: 121.0 121.1 121.4
  SAY #61635 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "좋아요. 만약 아직도 제가 동행하기를 원하신다면, 당신과 함께 여행하도록 하겠어요."~ */
  IF ~~ THEN REPLY #61642 /* ~"난 원하오."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 204 // from: 121.2 121.3
  SAY #61641 /* ~"아!" 훨-후럼-그레이스는 부드럽게 웃는다, 그리고 그녀의 눈이 반짝인다. "매우 실용적인 생각이군요. 좋아요. 만약 아직도 제가 동행하기를 원하신다면, 당신과 함께 여행하도록 하겠어요."~ */
  IF ~~ THEN REPLY #61643 /* ~"난 원하오."~ */ DO ~AddexperienceParty(20000)
SetGlobal("Grace_Quest","GLOBAL",2)
SetGlobal("Grace","GLOBAL",2)
ChangeAIScript("",GENERAL)
ChangeAIScript("pcgrace",DEFAULT)
JoinPartyEx(TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 205 // from: 139.17 207.3 208.3 209.2 210.1 211.2 212.1 219.4 220.3 221.3 222.3 223.4 224.5 225.5 226.5 227.4 228.4 229.1 230.1 231.1 233.1 234.3 235.3 236.3 237.2 252.3 253.3 254.2 255.4 256.2 257.2 258.2 259.2 260.2 261.1 262.3 264.2 266.0 277.1 278.0 348.0 349.1 350.0 351.1 352.1 353.1 354.1 355.1 356.0
  SAY #61781 /* ~"뭐죠?"~ */
  IF ~~ THEN REPLY #61974 /* ~"당신은 왜 이 매음굴을 세웠소?"~ */ GOTO 207
  IF ~~ THEN REPLY #61975 /* ~"당신 일기를 읽어도 괜찮겠소?"~ */ GOTO 277
  IF ~  Global("Know_Yves_Grace","GLOBAL",1)
Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61976 /* ~"이브스는 당신이 그녀와 공유하기를 원하지 않는 이야기를 지니고 있다고 했소."~ */ GOTO 351
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #61977 /* ~"나는 당신 과거에 대해 다시 듣고 싶소."~ */ GOTO 352
  IF ~  GlobalGT("Know_Grace_ExSlave","GLOBAL",0)
~ THEN REPLY #61978 /* ~"브리스치카는 당신을 좋아하지 않는 것 같소."~ */ GOTO 255
  IF ~  GlobalGT("Torment_Fell","GLOBAL",0)
~ THEN REPLY #61979 /* ~"내 팔에 새겨진 심벌에 대해 얘기해줄 수 있겠소?"~ */ GOTO 348
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",0)
~ THEN REPLY #61980 /* ~"래벌이라는 나이트 해그에 대해 들은 적이 있소?"~ */ GOTO 229
  IF ~  Global("Know_Ravel","GLOBAL",1)
Global("Ravel","GLOBAL",0)
Global("Grace_Ravel_Answer","GLOBAL",1)
~ THEN REPLY #61981 /* ~"당신이 래벌에 대해 아는 바를 다시 얘기해줄 수 있겠소?"~ */ GOTO 234
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #61982 /* ~"블러드 워에 대해 어떤 것을 아시오?"~ */ GOTO 219
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #61983 /* ~"우리가 래벌의 미로에 있었을 때 그녀는 당신의 고통을 받았다고 했소... 당신은 고통을 받고 있소?" ~ */ GOTO 263
  IF ~~ THEN REPLY #61984 /* ~"실은 그 대신 질문할 것들이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #61985 /* ~"관두시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 206 // from: 139.0
  SAY #61782 /* ~"타나리는 마족으로 '디먼'으로 불리기도 하지요. 그들은 혼돈을 위해 악을 받아들였어요. 그들은 악의로 가득 찬 차원 어비스에서 스스로의 분노를 양식으로 하여 살아가며, 다원 우주 전역에 그 마수를 뻗쳐 조우하는 모든 것들을 유린하고 있어요. 그들은 다른 이들이 악덕과 열정의 죄를 짓도록 끊임없이 유혹하고 있어요."~ */
  IF ~~ THEN REPLY #61986 /* ~"당신은 타나리요?"~ */ GOTO 213
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61987 /* ~"어떻게 해서 시길에 오게 되었소?"~ */ GOTO 352
  IF ~~ THEN REPLY #61988 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #61989 /* ~"설명을 해주어 고맙소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 207 // from: 205.0
  SAY #61783 /* ~"저는 사람의 마음을 흔들어 놓는 열병과도 같은 육욕을 단순한 육체적 쾌락보다 더 높은 차원에서 표현하기 위해 이 곳을 설립했어요. 다른 사람들과의 대화와 논쟁을 통해서도 많은 쾌락을 얻을 것이 가능해요."~ */
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",1)
~ THEN REPLY #61991 /* ~"왜 이런 장소를 설립했소?"~ */ GOTO 210
  IF ~  Global("Grace_Brothel_Answer","GLOBAL",0)
~ THEN REPLY #61992 /* ~"왜 이런 장소를 설립했소?"~ */ GOTO 208
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #61993 /* ~"만약 당신이 어비스 출신이라면 어떻게 해서 시길에 오게 되었소?"~ */ GOTO 352
  IF ~~ THEN REPLY #61994 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #61995 /* ~"설명을 해주어 고맙소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 208 // from: 207.1
  SAY #61784 /* ~훨-후럼-그레이스는 한쪽 눈썹을 치켜 올린다. "묘한 질문이군요." 그녀는 눈살을 찌푸린다. "내게 그걸 물어본 사람은 지금까지 없었어요. 적어도 직설적으로는."~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #61996 /* ~"미안하오, 그레이스 여사. 그렇게 직설적으로 말할 생각은 없었소. 난 단지 궁금했을 뿐이오."~ */ GOTO 209
  IF ~~ THEN REPLY #61997 /* ~"그래... 왜 그런 일을 한 거요?"~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #61998 /* ~"서큐버스가 그런 곳을 설립하다니 묘한 일이오... 이 장소의 목적은 당신의 본성과 모순되는 것 같소."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62000 /* ~"그럼 관두시오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62002 /* ~"설명은 관두시오... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #61990 /* ~"아, 사과하실 필요는 없어요. 원하신다면 그 이유에 대해 당신과 기꺼이 이야기를 나누겠어요."~ */
  IF ~~ THEN REPLY #62011 /* ~"그래, 듣고 싶소."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~  Global("Know_Grace_Succubus","GLOBAL",1)
~ THEN REPLY #62012 /* ~"서큐버스가 그런 곳을 설립하다니 묘한 일이오... 이 장소의 목적은 당신의 본성과 모순되는 것 같소."~ */ DO ~SetGlobal("Know_Grace_Sensates","GLOBAL",1)
SetGlobal("Grace_Brothel_Answer","GLOBAL",1)
~ GOTO 210
  IF ~~ THEN REPLY #62015 /* ~"지금은 아니오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62016 /* ~"아마 다른 기회에... 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 210 // from: 207.0 208.1 208.2 209.0 209.1
  SAY #62004 /* ~"당신 질문에 대한 답을 이해하시려면 우선 제가 감각의 공동체의 일원이라는 사실을 아셔야 해요. 우리 당파는 다원 우주의 모든 것을 가능한 한 많이 체험해야 한다고 믿고 있어요." ~ */
  IF ~~ THEN REPLY #62006 /* ~"그것이 당신이 이 매음굴을 세운 이유요?"~ */ GOTO 211
  IF ~~ THEN REPLY #62008 /* ~"알겠소; 더이상 설명을 할 필요는 없소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62010 /* ~"설명해주어 고맙소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #62017 /* ~"이 매음굴은 가장 완고한 지성인의 육욕조차 힐난하는 것을 목적으로 하고 있어요. 따라서 이 곳은 정신을 자극하여, 자신과 타인에 대한 인식을 향상시키고 다른 사람을 *체험*하는 새로운 방법을 개발할 수 있도록 만들어졌어요. 이 곳은 벌통이나 마계구에서 얻을 수 있는 천박한 육체적인 쾌락 이상의 것을 추구하는 사람들을 위해 존재해요."~ */
  IF ~  GlobalGT("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62018 /* ~"글쎄 그들을... 어, 내 말은 이해할 수 있다는 거요. 그럼 당신의 매음굴은 일종의 학교요?"~ */ GOTO 212
  IF ~  Global("Banged_Harlot","GLOBAL",0)
~ THEN REPLY #62019 /* ~"알겠소. 그래 이 장소는 *다른* 종류의 교류가 아닌 지적인 교류를 장려할 뿐이오? 그럼 당신의 매음굴은 일종의 학교요?"~ */ GOTO 212
  IF ~~ THEN REPLY #62020 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62021 /* ~"설명을 해주어 고맙소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 212 // from: 211.0 211.1
  SAY #62023 /* ~"그래요. 나는 이 곳의 생도들과 손님들이 화술과 그 치밀함에 대해 배움으로서 그들이 스스로에 대한 이해를 향상시키기를 바라고 있어요. 사람의 가능성은 그의 언어구사 능력에 의해서만 제약을 받아요. 말을 통해 다른 이들에게 감정을 불러일으키는 것은 비범한 능력이에요.~ */
  IF ~  Global("Grace_History","GLOBAL",0)
~ THEN REPLY #62024 /* ~"만약 당신이 어비스 출신이라면 어떻게 해서 시길에 오게 되었소?"~ */ GOTO 352
  IF ~~ THEN REPLY #62025 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62026 /* ~"설명을 해주어 고맙소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 213 // from: 206.0
  SAY #62027 /* ~"맞아요. 저는 하급 타나리예요. 보다 정확히 말하면 서큐버스예요." 그녀는 조용히 한숨을 쉰다. "불행히도 타나리는 마계와 다른 곳들에서 너무나도 흔한데 이는 결코 바람직한 일은 아니죠. 대부분의 내 동족들은 인간들을 각종 육체적 쾌락으로 유혹하는 데 시간을 보내고 있어요."~ */
  IF ~~ THEN REPLY #62028 /* ~"그리고 당신은...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 215
  IF ~~ THEN REPLY #62029 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 139
  IF ~~ THEN REPLY #62030 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27466 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ EXIT
END

IF ~~ THEN BEGIN 214 // from: 139.1 139.4
  SAY #62031 /* ~"저는 하급 타나리예요. 보다 정확히 말하면 서큐버스예요." 그녀는 조용히 한숨을 쉰다. "불행히도 타나리는 마계와 다른 곳들에서 너무나도 흔한데 이는 결코 바람직한 일은 아니죠. 대부분의 내 동족들은 인간들을 각종 육체적 쾌락으로 유혹하는 데 시간을 보내고 있어요."~ */
  IF ~~ THEN REPLY #62032 /* ~"그리고 당신은...?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 215
  IF ~~ THEN REPLY #62033 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ GOTO 139
  IF ~~ THEN REPLY #62034 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ JOURNAL #27465 /* ~훨-후럼-그레이스는 자신이 마계를 누비는 마족인 하급 타나리의 일종이라고 말했다. 그녀의 종족은 인간을 유혹하여 그 영혼을 어비스로 데려간다고 한다. 그것 참 매력적이군.~ */ EXIT
END

IF ~~ THEN BEGIN 215 // from: 213.0 214.0
  SAY #62035 /* ~"저는 제가 그런 짓과는 이미 거리를 두었다고 생각하고 싶어요... 그건 다원 우주에서 인생을 보내는 지극히 비생산적이고 천박한 방법이니까요. 삶은 그보다 훨씬 높고 큰 가능성을 내포하고 있어요. 이에는 당신도 동의하지 않으시나요?"~ */
  IF ~~ THEN REPLY #62036 /* ~"아마 그럴지도. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62037 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 216 // from: 139.12
  SAY #62038 /* ~"센세이트는 시길의 당파들 중 하나로 체험을 신봉하고 있어요. 체험과 감각없이는 우리는 다원 우주의 대부분을 인지할 수가 없어요. 따라서 센세이트는 가능한 한 많은 체험을 하려고 노력해요. 만약 모든 것을 다 체험한다면 다원 우주의 본질이 그 모습을 드러내게 될 거예요."~ */
  IF ~  !Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #62039 /* ~"흥미로운 철학이오. 나도 센세이트에 가입할 수 있겠소?"~ */ GOTO 217
  IF ~~ THEN REPLY #62040 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62041 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #62042 /* ~그녀는 미소짓는다. "인생을 통해 끊임없이 배우려는 의지만 있다면 누구든 센세이트가 될 수 있어요."~ */
  IF ~~ THEN REPLY #62043 /* ~"내 말은 내가 그들의 당파에 가입하는 데 관심이 있었다는 얘기요."~ */ JOURNAL #27464 /* ~훨-후럼-그레이스는 내게 만약 감각의 공동체에 가입하고 싶으면 시 공회당에 가보라고 권했다. 그녀는 그 곳에 날 도울 수 있는 사람이 있을 것이라고 말했다.~ */ GOTO 218
  IF ~~ THEN REPLY #62044 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62045 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #62046 /* ~"물론이에요... 놀려서 죄송해요." 훨-후럼-그레이스는 고개를 끄덕인다. "만약 센세이트의 일원이 되고자 하신다면 시 공회당에 가서 물어보세요. 그 것에는 당신을 도와 드릴 수 있는 사람들이 있을 거예요."~ */
  IF ~~ THEN REPLY #62047 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62048 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 219 // from: 205.8 236.1 294.0 294.1 337.0 337.1 338.0 338.1
  SAY #62049 /* ~"블러드 워는 마계 전역에 걸쳐 벌어지고 있는 바테주와 타나리 사이의 전면전이에요. 그들은 악이 질서정연해야 하는가 아니면 혼돈스러워야 하는 가를 놓고 싸우고 있어요." 훨-후럼-그레이스는 잠시 말을 멈춘다. "그 전쟁에 연관이 되는 것은 무슨 일이 있어도 피해야 해요. 타나리와 바테주가 서로 치고 박도록 내버려 두면, 다원 우주의 다른 곳들은 평화를... 적어도 상대적인 평화는 유지할 수가 있어요."~ */
  IF ~~ THEN REPLY #62050 /* ~"상대적 평화?"~ */ GOTO 220
  IF ~~ THEN REPLY #62051 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62052 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62053 /* ~"그 전쟁에 당신도 참가했었소?"~ */ GOTO 223
  IF ~~ THEN REPLY #62054 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62055 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 220 // from: 219.0 221.0 222.0 223.1 224.1 225.1 226.1 227.0 228.0
  SAY #62056 /* ~"그 전쟁은 너무나도 규모가 큰 탓에 대부분의 종족들이 스스로의 의사와는 관계없이 말려들고 있어요. 블러드 워를 무시하는 것은 때로 참가하는 것만큼 위험할 수가 있어요."~ */
  IF ~~ THEN REPLY #62057 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62058 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62059 /* ~"그 전쟁에 당신도 참가했었소?"~ */ GOTO 223
  IF ~~ THEN REPLY #62060 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62061 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 221 // from: 219.1 220.0 222.1 223.2 224.2 225.2 226.2 227.1 228.1
  SAY #62062 /* ~"때로는요. 블러드 워에는 적지 않은 수의 인간 용병들이 참여하고 있어요. 그들은 군인, 대포밥, 또는 마족들을 위한 식량으로 이용돼요."~ */
  IF ~~ THEN REPLY #62063 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62064 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62065 /* ~"그 전쟁에 당신도 참가했었소?"~ */ GOTO 223
  IF ~~ THEN REPLY #62066 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62067 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 222 // from: 219.2 220.1 221.1 223.3 224.3 225.3 226.3 227.2 228.2
  SAY #62068 /* ~"연대기에 따르면 블러드 워는 바테주가 타나리를 처음으로 만났을 때부터 시작되었다고 해요... *까마득할* 정도로 오래 전 일이죠. 그 때부터 지금까지의 시간을 표현할 수 있는 단어가 과연 인간이 쓰는 언어에 있는지 저는 모르겠어요." 훨-후럼-그레이스는 고개를 젓는다. "바테주도 타나리도 상대방을 마음에 들어한 적은 아마 한 번도 없을 거예요."~ */
  IF ~~ THEN REPLY #62069 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62070 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62071 /* ~"그 전쟁에 당신도 참가했었소?"~ */ GOTO 223
  IF ~~ THEN REPLY #62072 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62073 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 223 // from: 219.3 220.2 221.2 222.2 228.3
  SAY #62074 /* ~"아니요. 하지만 제 어머니는 참여했어요. 서큐버스는 대개 블러드 워에서 죽어갈 타나리들을 더 많이 생산하기 위해 인간들을 유혹하여 그 영혼을 어비스로 데려오죠."~ */
  IF ~~ THEN REPLY #62075 /* ~"당신 어머니? 그녀는 블러드 워에 참전했었소?"~ */ GOTO 224
  IF ~~ THEN REPLY #62076 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62077 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62078 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62079 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62080 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #62081 /* ~"네. 그녀는 최고의 서큐버스 중 하나로, 수많은 인간들을 유혹했지요. 그녀는 이제 어비스에서 살며 자신의 아이들을 노예로 팔고 있어요."~ */
  IF ~~ THEN REPLY #62082 /* ~"당신 어머니가... 당신을 노예로 팔았소?"~ */ GOTO 225
  IF ~~ THEN REPLY #62083 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62084 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62085 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62086 /* ~"혹시 이러한 질문들 때문에 거북하시오?"~ */ GOTO 228
  IF ~~ THEN REPLY #62087 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62088 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #62089 /* ~"한 동안은요. 저는 즉흥 대결에서 이겨 자유를 얻었어요. 그건 벌써 매우 오래 전 일이에요."~ */
  IF ~~ THEN REPLY #62090 /* ~"그녀는 당신을 누구에게 팔았소?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ JOURNAL #27460 /* ~훨-후럼-그레이스는 그녀의 어머니가 자신을 다름아닌 타나리의 숙적 바테주에게 노예로 팔았다고 내게 말해주었다. 그레이스는 그녀의 주인이었던 바테주와의 즉흥적인 대결에서 이겨 자유를 얻은 것 같다. 그 자세한 내용에 대해서 그녀는 언급하지 않았다. ~ */ GOTO 226
  IF ~~ THEN REPLY #62091 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62092 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62093 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62094 /* ~"혹시 이러한 질문들 때문에 거북하시오?"~ */ GOTO 228
  IF ~~ THEN REPLY #62095 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62096 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #62105 /* ~"그녀는 저를 바테주에게 팔았어요. 제 생각에 그녀는 그들이 죽일 거라고 생각했던 것 같아요. 하지만 다른 분야에 대한 그녀의 해박한 지식에도 불구하고, 그녀는 바테주의 문화에 대해 별로 알지를 못했어요."~ */
  IF ~~ THEN REPLY #62106 /* ~"그녀는 당신을 타나리의 숙적에게 판 거요?"~ */ GOTO 227
  IF ~~ THEN REPLY #62107 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62108 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62109 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62110 /* ~"혹시 이러한 질문들 때문에 거북하시오?"~ */ GOTO 228
  IF ~~ THEN REPLY #62111 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62112 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #62113 /* ~"네." 훨-후럼-그레이스는 몸을 꼿꼿이 세운다. "그 밖에 알고 싶으신 건 없나요?"~ */
  IF ~~ THEN REPLY #62114 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62115 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62116 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62117 /* ~"혹시 이러한 질문들 때문에 거북하시오?"~ */ GOTO 228
  IF ~~ THEN REPLY #62118 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62119 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 228 // from: 224.4 225.4 226.4 227.3
  SAY #62120 /* ~"아니, 천만에요. 이 점은 꼭 알아두세요 - 블러드 워는 다원 우주에서 일어나는 대부분의 사건들의 원인을 제공하고 있어요. 그래서 그것이 무엇이고 왜 일어나고 있는지를 이해하는 것이 중요해요.~ */
  IF ~~ THEN REPLY #62121 /* ~"당신 말은 그 전쟁이 계속되는 한 다른 차원들은 '상대적인 평화'를 누릴 수 있다는 거요?"~ */ GOTO 220
  IF ~~ THEN REPLY #62122 /* ~"그들은 인간도 병사로 이용하오?"~ */ GOTO 221
  IF ~~ THEN REPLY #62123 /* ~"그 전쟁은 얼마나 오랬동안 계속되어 왔소?"~ */ GOTO 222
  IF ~~ THEN REPLY #62124 /* ~"그 전쟁에 당신도 참가했었소?"~ */ GOTO 223
  IF ~~ THEN REPLY #62125 /* ~"블러드 워 이외의 사안에 대해 질문할 것들이 있소."~ */ GOTO 205
  IF ~~ THEN REPLY #62126 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 229 // from: 205.6
  SAY #62127 /* ~"저는 그 이름을 잘 알고 있어요." 훨-후럼-그레이스는 잠시 멈추고 생각을 한다. "그 이름에 대해서는 많은 소문들이 떠돌고 있으며, 그것들 중 대부분은 그녀를 그냥 전설 속의 존재로 취급해요. 하지만 저는 그녀가 실재로 존재했으며, 시길에 머무르는 동안 그녀는 강한 인상을 남겼다고 생각해요." 그녀는 의아한 표정을 짓는다. "왜 그런 질문을 하시는 거죠?"~ */
  IF ~~ THEN REPLY #62128 /* ~"나는 그녀를 만나려고 하오."~ */ GOTO 230
  IF ~~ THEN REPLY #62129 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 205
  IF ~~ THEN REPLY #62130 /* ~"아무런 이유도 없소. 충분히 들었으니 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 230 // from: 229.0
  SAY #62131 /* ~그레이스는 한쪽 눈썹을 치켜 올린다. "정말인가요? 나는 왜냐고 물어보고 싶군요."~ */
  IF ~~ THEN REPLY #62132 /* ~"내게 그녀가 가지고 있는 정보가 필요하오."~ */ GOTO 231
  IF ~~ THEN REPLY #62133 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 205
  IF ~~ THEN REPLY #62134 /* ~"아무런 이유도 없소. 충분히 들었으니 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #62135 /* ~그레이스는 한쪽 눈썹을 치켜 올린다. "정말인가요? 나는 왜냐고 물어보고 싶군요."~ */
  IF ~~ THEN REPLY #62136 /* ~"내 생각으로는 래벌만이 내가 필요로 하는 지식을 가지고 있는 것 같소."~ */ JOURNAL #27460 /* ~훨-후럼-그레이스는 그녀의 어머니가 자신을 다름아닌 타나리의 숙적 바테주에게 노예로 팔았다고 내게 말해주었다. 그레이스는 그녀의 주인이었던 바테주와의 즉흥적인 대결에서 이겨 자유를 얻은 것 같다. 그 자세한 내용에 대해서 그녀는 언급하지 않았다. ~ */ GOTO 232
  IF ~~ THEN REPLY #62137 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 205
  IF ~~ THEN REPLY #62138 /* ~"나도 모르겠소, 하지만 그 이유를 알아낼 생각이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 232 // from: 231.0
  SAY #62139 /* ~그레이스는 자신의 손을 당신 팔 위에 부드럽게 얹는다. "이 점을 고려하세요. 만약 래벌이 실존한다면 그녀는 엄청난 마력과 교활함을 지니고 있을 거예요. 만약 그녀가 저지른 짓들에 대한 이야기들 중 일부만 사실이라고 해도 그녀는 악의 새로운 경지를 개척한 사악한 괴물이에요. 그녀를 찾아가려는 건 결코 함부로 시도해서는 안 될 모험이에요." ~ */
  IF ~~ THEN REPLY #62140 /* ~"나도 알고 있소."~ */ DO ~SetGlobal("Grace_Ravel_Answer","GLOBAL",1)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 232.0
  SAY #62141 /* ~"나는 전설 속의 존재를 만난 적은 없어요. 이 여행은 참으로 대단한 여행이 되겠군요." 그녀는 미소짓는다. "당신은 지루한 일은 절대 하려고 하지 않으시는군요. 그렇지 않나요?"~ */
  IF ~~ THEN REPLY #62142 /* ~"가급적이면 아니오... 래벌에 대해 달리 아는 것은 없소?"~ */ GOTO 234
  IF ~~ THEN REPLY #62145 /* ~"가급적 하지 않으려고 하오... 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62146 /* ~"다른 화신에서라면 모르겠으나 지금은 아니오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 234 // from: 205.7 233.0
  SAY #62147 /* ~"들리는 얘기로 그녀는 그레이 웨이스트의 해그들 중 하나이며, 그녀는 그녀의 자매들보다 월등히 뛰어난 마력과 교활함을 지니고 있었다고 해요. 그녀는 오래 전에 시길에 왔으며, 온갖 악행을 자행했을 뿐만 아니라 시길의 존재 그 자체를 위협했다고 전해지고 있어요. 하지만 이제 그녀는 아이들에게 들려주는 동화에나 나오는 가공의 인물이 되고 말았죠." 그레이스는 잠시 말을 멈춘다. "제 생각에 레이디 오브 페인은 시길을 위협하는 다른 존재들을 처리한 것과 마찬가지 방법으로 그녀를 처리한 것 같아요."~ */
  IF ~~ THEN REPLY #62148 /* ~"어떻게 말이오?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 235
  IF ~~ THEN REPLY #62149 /* ~"그레이 웨이스트가 무엇이오?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 236
  IF ~~ THEN REPLY #62150 /* ~"그녀에 대해 아는 다른 사람은 없소?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 237
  IF ~~ THEN REPLY #62151 /* ~"다른 질문을 해도 괜찮겠소?"~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ GOTO 205
  IF ~~ THEN REPLY #62152 /* ~"알겠소. 갑시다."~ */ JOURNAL #27458 /* ~훨-후럼-그레이스는 래벌은 나이트 해그로 그레이 웨이스트를 누비는 회색 자매들 중 하나라고 말했다. 그녀는 자매들을 월등히 능가하는 힘을 지녔으며 오래 전에 시길로 왔다고 한다. 체재 중 그녀는 레이디 오브 페인을 화나게 해서 응징을 받았다.  ~ */ EXIT
END

IF ~~ THEN BEGIN 235 // from: 234.0 236.0 237.0
  SAY #62153 /* ~"아마 래벌은 레이디의 감옥인 미로들 중 한 곳으로 보내졌을 거예요."~ */
  IF ~~ THEN REPLY #62154 /* ~"미로? 그건 뭐요?"~ */ JOURNAL #27457 /* ~훨-후럼-그레이스는 래벌이 레이디의 미로들 중 하나에 갇혀 있다고 말했다. ~ */ GOTO 252
  IF ~~ THEN REPLY #62155 /* ~"그레이 웨이스트가 무엇이오?"~ */ GOTO 236
  IF ~~ THEN REPLY #62156 /* ~"그녀에 대해 아는 다른 사람은 없소?"~ */ GOTO 237
  IF ~~ THEN REPLY #62157 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62158 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 236 // from: 234.1 235.1 237.1 252.1 253.1 254.0
  SAY #62159 /* ~"베이터와 어비스 '사이에' 있는 황폐한 차원이지요. 종종 블러드 워의 전쟁터가 되곤 해요."~ */
  IF ~~ THEN REPLY #62160 /* ~"래벌이 어떻게 되었는지 아시오?"~ */ GOTO 235
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62161 /* ~"래벌에 대해선 그걸로 충분하오... 블러드 워란 무엇이오?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~~ THEN REPLY #62162 /* ~"그녀에 대해 아는 다른 사람은 없소?"~ */ GOTO 237
  IF ~~ THEN REPLY #62163 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62164 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 237 // from: 234.2 235.2 236.2 252.2 253.2 254.1
  SAY #62165 /* ~"아마 시 공회당에는 그녀에 더 잘 알고 있는 사람이 있을 거예요."~ */
  IF ~~ THEN REPLY #62166 /* ~"래벌이 어떻게 되었는지 아시오?"~ */ JOURNAL #27457 /* ~훨-후럼-그레이스는 래벌이 레이디의 미로들 중 하나에 갇혀 있다고 말했다. ~ */ GOTO 235
  IF ~~ THEN REPLY #62167 /* ~"그레이 웨이스트가 무엇이오?"~ */ JOURNAL #27457 /* ~훨-후럼-그레이스는 래벌이 레이디의 미로들 중 하나에 갇혀 있다고 말했다. ~ */ GOTO 236
  IF ~~ THEN REPLY #62168 /* ~"다른 질문을 해도 괜찮겠소?"~ */ JOURNAL #27457 /* ~훨-후럼-그레이스는 래벌이 레이디의 미로들 중 하나에 갇혀 있다고 말했다. ~ */ GOTO 205
  IF ~~ THEN REPLY #62169 /* ~"그럼 그 곳으로 가는 것이 좋겠소. 갑시다."~ */ JOURNAL #27457 /* ~훨-후럼-그레이스는 래벌이 레이디의 미로들 중 하나에 갇혀 있다고 말했다. ~ */ EXIT
END

IF ~~ THEN BEGIN 238 // from:
  SAY #62170 /* ~NULL~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 239 // from: 139.7
  SAY #62171 /* ~"이름의 의미는 매우 복잡한 사안이에요. 그 문제에 대해서는 해야 할 얘기가 많고, 또 털어놓지 않는 편이 좋은 얘기들 역시 적지 않아요."~ */
  IF ~~ THEN REPLY #62172 /* ~"훨-후럼-그레이스가 당신의 진짜 이름이오?"~ */ GOTO 240
  IF ~~ THEN REPLY #62173 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62175 /* ~"그럼 그 일에 대해선 더 이상 얘기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 240 // from: 239.0
  SAY #62176 /* ~"아마 그럴지도." 그녀는 가볍게 미소짓는다. "하지만 그렇지 않을 수도 있어요. 이름들 중에는 주어진 이름과 노력으로 얻은 이름이 있어요. 누가 감히 어느 쪽이 진짜라고 말할 수 있겠어요?"~ */
  IF ~~ THEN REPLY #62178 /* ~"나는 스스로 얻은 이름이 더 큰 의미가 있다고 생각하오."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",1)
~ GOTO 241
  IF ~~ THEN REPLY #62179 /* ~"나는 부모가 지어준 이름이 더 큰 의미가 있다고 생각하오."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",2)
~ GOTO 242
  IF ~~ THEN REPLY #62181 /* ~"나는 이름에 별 의미를 두지 않소."~ */ DO ~SetGlobal("Grace_Name","GLOBAL",3)
~ GOTO 243
  IF ~~ THEN REPLY #62182 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62183 /* ~"그럼 그 일에 대해선 더 이상 얘기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 241 // from: 240.0
  SAY #62184 /* ~"아마 그럴지도. 왜 그렇게 생각하시죠?"~ */
  IF ~~ THEN REPLY #62185 /* ~"얻은 이름은 임의적인 것이 아니라 그 사람이 이룩한 것을 나타내기 때문이오."~ */ GOTO 244
END

IF ~~ THEN BEGIN 242 // from: 240.1
  SAY #62186 /* ~"아마 그럴지도. 왜 그렇게 생각하시죠?"~ */
  IF ~~ THEN REPLY #62187 /* ~"왜냐하면 그것은 사람들의 당신에 대한 인식이기 때문이오. 그리고 그들의 인식은 당신의 자신에 대한 앎보다도 더 큰 의미를 지닐 수가 있소."~ */ GOTO 244
END

IF ~~ THEN BEGIN 243 // from: 240.2
  SAY #62188 /* ~그녀는 호기심에 찬 표정으로 당신을 쳐다본다. "정말인가요?"~ */
  IF ~~ THEN REPLY #62189 /* ~"이름이란 그 사람을 감싸고 있는 망토에 불과하오. 이름은 그 사람의 일부에 대해 말해주고 그 사람을 정의하는 데 도움을 줄 수 있을지도 모르나, 그 사람이 정말로 누구인지를 나타내는 것은 아니오."~ */ GOTO 244
END

IF ~~ THEN BEGIN 244 // from: 241.0 242.0 243.0
  SAY #62190 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "당신 논지는 잘 이해하겠어요."~ */
  IF ~  Global("Grace_Name","GLOBAL",1)
~ THEN REPLY #62191 /* ~"왜 사람들이 당신을 훨-후럼-그레이스라 부르는 거요?"~ */ GOTO 245
  IF ~  Global("Grace_Name","GLOBAL",2)
~ THEN REPLY #62192 /* ~"왜 사람들이 당신을 훨-후럼-그레이스라 부르는 거요?"~ */ GOTO 246
  IF ~  Global("Grace_Name","GLOBAL",3)
~ THEN REPLY #62193 /* ~"왜 사람들이 당신을 훨-후럼-그레이스라 부르는 거요?"~ */ GOTO 247
END

IF ~~ THEN BEGIN 245 // from: 139.8 244.0
  SAY #62194 /* ~"그게 중요한가요?" 그녀는 미소짓는다. "그건 얻은 이름이에요."~ */
  IF ~~ THEN REPLY #62195 /* ~"내게는 중요하오. 난 당신이 왜 그 이름으로 불리게 되었는지 알고 싶소."~ */ GOTO 248
END

IF ~~ THEN BEGIN 246 // from: 139.9 244.1
  SAY #62196 /* ~"그게 중요한가요?" 그녀는 미소짓는다. "그건 주어진 이름이에요."~ */
  IF ~~ THEN REPLY #62197 /* ~"내게는 중요하오. 난 당신이 왜 그 이름으로 불리게 되었는지 알고 싶소."~ */ GOTO 248
END

IF ~~ THEN BEGIN 247 // from: 139.10 244.2
  SAY #62198 /* ~"그게 중요한가요?" 그녀는 미소짓는다. "그건 단지 철자들로 짜여진 망토에 불과해요."~ */
  IF ~~ THEN REPLY #62199 /* ~"내게는 중요하오. 난 당신이 왜 그 이름으로 불리게 되었는지 알고 싶소."~ */ GOTO 248
END

IF ~~ THEN BEGIN 248 // from: 139.11 245.0 246.0 247.0
  SAY #62200 /* ~"저는 제 동족으로부터 '타락한,' 버림받은 존재예요... 어떤 사람들은 진보나 갱생이라고 하겠지만, 저는 '타락'이 더 옳은 표현이라고 느껴요." 그녀는 당신 대답을 듣고 싶다는 표정으로 당신을 본다. "그게 이해가 되시나요?"~ */
  IF ~~ THEN REPLY #62201 /* ~"그렇소. 결국 '훨'이라는 단어에는 상실감이 내포되어 있으니까."~ */ GOTO 249
  IF ~~ THEN REPLY #62202 /* ~"그렇소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62203 /* ~"그렇서... 이해할 것 같소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 249 // from: 248.0
  SAY #62204 /* ~훨-후럼-그레이스은 잠시 침묵한다, 그리고 사려 깊게 고개를 끄덕인다. "그래요... 그것이 제가 그렇게 느낀 이유인지도... 저는 이미 오래 전에 상실감을 견디는 데 익숙해졌지만, 이름은 그대로 남았어요...~ */
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62205 /* ~"정말로 그것을 받아들인 거요?"~ */ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",1)
~ THEN REPLY #62206 /* ~"정말로 그것을 받아들인 거요? 래벌을 그렇게 생각하지 않은 듯했소."~ */ GOTO 263
  IF ~  Global("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62207 /* ~"정말로 그것을 받아들인 거요?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 250
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
Global("Grace_Name_Answer","GLOBAL",0)
~ THEN REPLY #62208 /* ~"정말로 그것을 받아들인 거요? 래벌을 그렇게 생각하지 않은 듯했소."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Grace_Name_Answer","GLOBAL",1)
~ GOTO 263
  IF ~~ THEN REPLY #62209 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62210 /* ~"알겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 250 // from: 249.0 249.2
  SAY #62211 /* ~훨-후럼-그레이스는 당신을 마주본다, 그리고 당신은 다시 한 번 그녀의 눈의 밝고 푸른 빛깔에 강한 인상을 받는다... 그것은 마치 폭풍 전의 대양처럼 요동을 치고 있는 듯하다. "그렇게 생각했었어요. 하지만 당신과 얘기를 하면서 여러 가지를 깨닫게 되었어요." 그녀는 미소짓는다. "고마워요."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62212 /* ~"만약 그 일에 대해 얘기할 생각이 들게 되면 내게 말해주시오. 그만 갑시다."~ */ GOTO 251
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62213 /* ~"만약 그 일에 대해 얘기할 생각이 들게 되면 내게 말해주시오. 그만 갑시다."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 251
  IF ~~ THEN REPLY #62214 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62215 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 251 // from: 250.0 250.1
  SAY #62216 /* ~그녀는 고개를 끄덕인다. "당신은 정말 친절하시군요. 그렇게 하겠어요."~ */
  IF ~~ THEN REPLY #62217 /* ~"그럼 좋소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62218 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 252 // from: 235.0
  SAY #62219 /* ~그레이스는 손을 한 곳으로 모아 손가락으로 원을 만든다. "레이디에게는 시길의 일부를 떼어내..." 당신은 그레이스의 작은 손가락의 환영이 그녀의 손으로부터 떨어져 나와 공중을 떠다니다 작은 원을 이루는 것을 놀란 표정으로 지켜본다. "...미로를 만들 수 있는 능력이 있다고 해요."~ */
  IF ~~ THEN REPLY #62220 /* ~"계속하시오..."~ */ GOTO 253
  IF ~~ THEN REPLY #62221 /* ~"알겠소... 이 그레이 웨이스트라는 래벌의 출신 차원에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 236
  IF ~~ THEN REPLY #62222 /* ~"무슨 뜻인지 알 것 같소. 혹시 래벌에 대해 더 자세히 아는 사람이 있는지 모르시오?"~ */ GOTO 237
  IF ~~ THEN REPLY #62223 /* ~"관두시오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62224 /* ~"알겠소. 내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #62225 /* ~작은 원의 환영은 공중을 떠다니다가 천천히 회전하기 시작한다. "그녀가 떼어낸 시길의 일부는 죄수를 감금하는 데 쓰여요. 미로에 갇히는 걸 피할 방법은 없어요. 그건 어느 때라도 일어날 수 있어요. 그냥 거리를 걷거나 문을 지나가다가..." 그녀는 손뼉을 친다. "...갑자기 알지 못하는 곳으로 오게 되는 것이지요." 원의 환영 안에서 뭔가 갑자기 반짝이는데, 그것은 마치 누군가가 그 안에서 걷고 있는 모습처럼 보인다.. ~ */
  IF ~~ THEN REPLY #62226 /* ~"계속하시오..."~ */ GOTO 254
  IF ~~ THEN REPLY #62227 /* ~"알겠소... 이 그레이 웨이스트라는 래벌의 출신 차원에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 236
  IF ~~ THEN REPLY #62228 /* ~"무슨 뜻인지 알 것 같소. 혹시 래벌에 대해 더 자세히 아는 사람이 있는지 모르시오?"~ */ GOTO 237
  IF ~~ THEN REPLY #62229 /* ~"관두시오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62230 /* ~"알겠소. 내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #62231 /* ~그레이스는 얘기를 계속한다. 작은 미로의 환영은 그녀의 눈에 반사되어 비친다. "각 미로에는 외부로 나갈 수 있는 전이문이 하나씩 존재한다고 해요, 하지만 그것을 찾아내는 것은 어려워요. 아마 그건 죄수에게 희망을 주기 위해 남겨진 것 같아요. 아니면 반대로 죄수를 고문하기 위해서인지도 몰라요." 미로의 환영이 사라진다. "양쪽 모두일 수도 있겠죠."~ */
  IF ~~ THEN REPLY #62232 /* ~"알겠소... 이 그레이 웨이스트라는 래벌의 출신 차원에 대해 더 얘기해줄 수 있겠소?"~ */ GOTO 236
  IF ~~ THEN REPLY #62233 /* ~"무슨 뜻인지 알 것 같소. 혹시 래벌에 대해 더 자세히 아는 사람이 있는지 모르시오?"~ */ GOTO 237
  IF ~~ THEN REPLY #62234 /* ~"그럼 관두시오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62235 /* ~"알겠소. 내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 255 // from: 205.4
  SAY #62236 /* ~"아니요. 저는 그녀를 탓하지 않아요."~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62237 /* ~"그녀가 당신을 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62238 /* ~"그녀가 당신을 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62239 /* ~"그녀가 당신을 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62240 /* ~"그건 왜요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62241 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62242 /* ~"알겠소. 내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 256 // from: 255.0 262.0
  SAY #62243 /* ~"우리는 전에 이 일에 대해 얘기한 적이 있어요. 저는 한때 바테주의 노예였고, 그 때 그들은 제게 많은 고통을 주었어요."~ */
  IF ~~ THEN REPLY #62244 /* ~"나는 브리스치카의 말 중 '바테주 추종자'라고 한 부분이 더 궁금하오. 그건 어떤 뜻으로 한 말이오?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62245 /* ~"그럼 관두시오. 브리스치카가 당신을 미워하는데도 그녀를 탓하지 않는 것은 무슨 이유에서요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62246 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62247 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 257 // from: 255.2 262.2
  SAY #62248 /* ~"저는 한때 바테주의 노예였어요 - 오래 전 일이죠. 저는 즉흥시 시합에서 이겨 자유를 얻었어요."~ */
  IF ~~ THEN REPLY #62249 /* ~"나는 브리스치카의 말 중 '바테주 추종자'라고 한 부분이 더 궁금하오. 그건 어떤 뜻으로 한 말이오?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62250 /* ~"알겠소. 브리스치카가 당신을 미워하는데도 그녀를 탓하지 않는 것은 무슨 이유에서요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62251 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62252 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 258 // from: 255.1 262.1
  SAY #62253 /* ~"제가 당신에게 제 과거에 대해 말씀 드린 건 기억하시겠죠?"~ */
  IF ~~ THEN REPLY #62254 /* ~"나는 브리스치카의 말 중 '바테주 추종자'라고 한 부분이 더 궁금하오. 그건 어떤 뜻으로 한 말이오?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 259
  IF ~~ THEN REPLY #62255 /* ~"그럼 관두시오. 브리스치카가 당신을 미워하는데도 그녀를 탓하지 않는 것은 무슨 이유에서요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62256 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62257 /* ~"알겠소. 내가 알고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 259 // from: 256.0 257.0 258.0
  SAY #62258 /* ~훨-후럼-그레이스는 흥미롭다는 표정을 짓는다... 그녀는 당신을 잠시 살펴보며 당신의 표정을 읽으려 하고 있다. 잠시 후 그녀가 입을 열었을 때의 그녀 목소리는 보통 때보다 조용하다. "그게 중요한가요?"~ */
  IF ~~ THEN REPLY #62259 /* ~"내게는 그렇소. 나는 나와 함께 여행하는 사람이 어떤 사람인지 알고 싶소."~ */ DO ~SetGlobal("Grace_Camp_Follower_Answer","GLOBAL",1)
~ GOTO 260
  IF ~~ THEN REPLY #62260 /* ~"아니, 그렇지 않소. 브리스치카가 당신을 미워하는데도 그녀를 탓하지 않는 것은 무슨 이유에서요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62261 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62262 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 260 // from: 259.0
  SAY #62263 /* ~"당신 질문에 대한 답으로 이것을 말씀 드리지요: 바테주는 인간이 아니에요. 그들이 욕망하는 것은 권력이지 육신의 쾌락이 아니에요, 그리고 인간과는 달리 그들은 포로를 강간한다는 등의 행위는 하지 않아요. 바테주의 고문은 훨씬 더 미묘하며, 그 어떠한 육체적인 폭행보다 더 큰 피해를 입혀요, 그리고 흉터 역시 더 오래 가지요, 이것이 당신이 알고자 했던 건가요?"~ */
  IF ~~ THEN REPLY #62264 /* ~"그렇소. 나는 나와 함께 여행하는 사람이 어떤 사람인지 알고 싶었을 뿐이오."~ */ GOTO 261
  IF ~~ THEN REPLY #62265 /* ~"그렇소. 브리스치카가 당신을 미워하는데도 그녀를 탓하지 않는 것은 무슨 이유에서요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62266 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62267 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 261 // from: 260.0
  SAY #62268 /* ~"나는 당신이 이미 아신다고 생각했어요." 훨-후럼-그레이스는 머리를 약간 기울인다. "제가 착각을 했군요."~ */
  IF ~~ THEN REPLY #62269 /* ~"브리스치카가 당신을 미워하는데도 그녀를 탓하지 않는다고 한 것은 무슨 이유에서요?"~ */ GOTO 262
  IF ~~ THEN REPLY #62270 /* ~"다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62271 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 262 // from: 255.3 256.1 257.1 258.1 259.1 260.1 261.0
  SAY #62272 /* ~"브리스치카는 타나리예요. 저와 같은 마족이죠. 하지만 알루-휜드라는 다른 종족이에요. 그녀를 이해하려면 타나리의 문화는 혼돈이며, 혼돈은 그 특성상 정의나 공정함 따위에는 아무 관심도 가지지 않는다는 걸 아셔야 해요. 알루-휜드는 외부자 취급을 당하죠. 아무런 목적도 주어지지 않아요. 여러 면에서 사형선고보다 더 심할 수가 있어요." ~ */
  IF ~  Global("Grace_Camp_Follower_Answer","GLOBAL",1)
~ THEN REPLY #62273 /* ~"그녀가 당신을 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ GOTO 256
  IF ~  Global("Grace_History","GLOBAL",1)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62274 /* ~"그녀가 당신을 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ DO ~MoraleDec("Grace",1)
~ GOTO 258
  IF ~  Global("Grace_History","GLOBAL",0)
Global("Grace_Camp_Follower_Answer","GLOBAL",0)
~ THEN REPLY #62275 /* ~"그녀가 당신을 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 257
  IF ~~ THEN REPLY #62276 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62277 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 263 // from: 205.9 249.1 249.3
  SAY #62278 /* ~훨-후럼-그레이스는 잠시 말문을 닫는다, 그리고 먼 데를 바라본다. 그리고 그녀가 다시 당신 쪽으로 고개를 돌렸을 때 그녀의 눈에는 슬픔과 눈물을 나타내는 담청색 빛이 감돌고 있다.~ */
  IF ~~ THEN GOTO 264
END

IF ~~ THEN BEGIN 264 // from: 263.0
  SAY #62279 /* ~"래벌은 그녀의 검은 가시나무 눈으로 많은 것을 보아요, 다른 사람 눈에는 보이지 않는 것들까지. 그리고 타인의 본성조차 꿰뚫어 볼 수 있어요." 그녀는 천천히 고개를 젓는다. "때로는... 때로는, 고통이 스스로 그 모습을 드러내요. 저는 자신의 본성을 저버리는 것이 힘들다는 것을 알게 되었어요."~ */
  IF ~  Global("Good_Grace_1","GLOBAL",0)
~ THEN REPLY #62280 /* ~"괜찮소?"~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_1","GLOBALGood",1)
~ GOTO 265
  IF ~  Global("Good_Grace_1","GLOBAL",1)
~ THEN REPLY #62281 /* ~"괜찮겠소?"~ */ GOTO 265
  IF ~~ THEN REPLY #62282 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 205
  IF ~~ THEN REPLY #62283 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 265 // from: 264.0 264.1
  SAY #62284 /* ~그녀는 희미한 미소를 지으며 당신을 마주본다. "그래요... 걱정해 주셔서 고마워요. 아직도 고통은 남아 있지만, 저는 이미 여러 세기 전에 그것을 견디는 데 익숙해졌어요."~ */
  IF ~~ THEN REPLY #62285 /* ~"좋소. 그-"~ */ GOTO 266
END

IF ~~ THEN BEGIN 266 // from: 265.0
  SAY #62286 /* ~그레이스는 당신이 계속하기 전에 당신을 제지한다. "제 안부를 물어 주셔서 고마워요. 그러한 관심은 반갑군요."~ */
  IF ~~ THEN REPLY #62287 /* ~"당신이 괜찮은지 확인하고 싶었을 뿐이오. 질문하고 싶은 것들이 좀 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62288 /* ~"천만에. 그냥 점검을 좀 했을 뿐이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 267 // from: 139.13
  SAY #62289 /* ~훨-후럼-그레이스는 가볍게 고개를 젓는다. "아니, 그럴 수가 없어요. 마법과... 제가 쌓는 수양은 본질적으로 달라요."~ */
  IF ~~ THEN REPLY #62290 /* ~"무슨 뜻이오?"~ */ GOTO 268
  IF ~~ THEN REPLY #62291 /* ~"그럼 관두시오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62292 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 268 // from: 267.0
  SAY #62293 /* ~"보시다시피 제 '힘'은 마법처럼 에너지를 조작하는 데서 나오는 것이 아니라, 믿음에서 나와요. 마법은 다원 우주의 힘을 몸짓, 의식, 그리고 장치를 통해 이용하는 이론 체계예요. 제 '힘'은 다른 방식으로 얻어져요. 내 믿음과 내 믿음의 특성은 다원 우주의 비밀들 중 일부로 하여금 내 앞에 모습을 드러내게 해요."~ */
  IF ~~ THEN REPLY #62294 /* ~"당신의 믿음의 본질? 당신은 어떤 것을 믿소?"~ */ GOTO 269
  IF ~~ THEN REPLY #62295 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62296 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 269 // from: 268.0
  SAY #62297 /* ~"나는 *체험*을 믿어요. 나는 사람이 다원 우주를 더 많이 체험하면 할수록 더 나은 방향으로 변화할 수 있다고 믿어요. 체험에 대한 내 믿음은 나로 하여금..." 그는 잠시 멈추고 생각을 한다.~ */
  IF ~~ THEN GOTO 270
END

IF ~~ THEN BEGIN 270 // from: 269.0
  SAY #62425 /* ~"가장 좋은 설명은 제 믿음이 저로 하여금 세상을 다른 시각으로 보게 해준다는 것일 것 같군요. 그런 시각으로 다원 우주를 보면, 단지 변화가 일어나는 것을 바라기만 해도 상처를 치료하거나, 다른 이의 마음을 읽는 등의 변화를 일으킬 수 있는 방법을 배우게 되죠."~ */
  IF ~~ THEN REPLY #62426 /* ~"하지만 당신이 일으키는 '변화'는 주문과 흡사하오. 그런 일을 하는 방법은 어떻게 배우시오? 주문 책은 가지고 있소?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62427 /* ~"바테주와 있었던 일 때문에 당신은 체험을 신봉하는 것이오?"~ */ GOTO 273
  IF ~~ THEN REPLY #62428 /* ~"당신의 시각으로 사물을 볼 수 있도록 내게 가르쳐 줄 수 있겠소?"~ */ GOTO 271
  IF ~~ THEN REPLY #62429 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62430 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 271 // from: 270.2
  SAY #62431 /* ~"저는 당신이 다원 우주를 그런 시각으로 보도록 가르칠 수가 없어요. 다른 사람이 아닌 스스로의 눈으로 배우고 깨달아야 해요." 그녀는 가벼운 미소를 짓는다. "저는 다른 사람도 아닌 *당신*이 그런 일에 제 지도를 필요로 하리라고는 생각하지 않아요. 당신이 제게서 배우는 것보다 더 많은 것을 저는 당신으로부터 배우고 있어요."~ */
  IF ~~ THEN REPLY #62432 /* ~"하지만 당신이 일으키는 '변화'는 주문과 흡사하오. 그런 일을 하는 방법은 어떻게 배우시오? 주문 책은 가지고 있소?"~ */ GOTO 272
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62433 /* ~"바테주와 있었던 일 때문에 당신은 체험을 신봉하는 것이오?"~ */ GOTO 273
  IF ~~ THEN REPLY #62434 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62435 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 272 // from: 270.0 271.0 273.3
  SAY #62436 /* ~"아니요, 제 '주문(당신 표현을 빌리자면)'은 제가 휴식을 취하고 정신 집중을 한 후에 사용할 수 있어요. 제가 잠을 자고 일어나면, 다시 집중을 할 수 있게 되어요. 하지만 제 주변 세계를 '변화'시키는 데 필요한 믿음의 양은 혼에 상당한 부담을 주지요. 단지 변화시키는 방법만 알아서는 안 되요, 그 변화를 실제로 일으키고 지속시킬 수 있는 힘이 필요해요."~ */
  IF ~  Global("Grace_History","GLOBAL",1)
~ THEN REPLY #62437 /* ~"바테주와 있었던 일 때문에 당신은 체험을 신봉하는 것이오?"~ */ GOTO 273
  IF ~~ THEN REPLY #62438 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62439 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 273 // from: 270.1 271.1 272.0
  SAY #62440 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "나는 그것에 대해 오랫동안 생각해 왔고, 그렇게 생각해요." 그녀는 물을 듯한 표정으로 당신을 본다. "그건 제가 현재의 제 모습에 만족하고 있기 때문일 거예요, 그리고 그건 다원 우주를 저처럼 체험하지 않았다면 가능하지 않았을 거예요."~ */
  IF ~  Global("Good_Grace_2","GLOBAL",0)
Global("Chaotic_Grace_1","GLOBAL",0)
~ THEN REPLY #62441 /* ~"그것이 당신이 다원 우주를 체험한 일과 관계가 있다고는 생각되지 않소... 나는 중요한 것은 그 경험을 당신이 어떻게 살렸느냐 하는 거라고 생각하오."~ */ GOTO 274
  IF ~  Global("Good_Grace_2","GLOBAL",1)
~ THEN REPLY #62442 /* ~"전에도 말했듯이, 그것이 당신이 다원 우주를 체험한 일과 관계가 있다고는 생각되지 않소... 나는 중요한 것은 그 경험을 당신이 어떻게 살렸느냐 하는 거라고 생각하오. 당신울 변화시킨 건 당신의 강인한 성격이었소."~ */ GOTO 274
  IF ~  Global("Chaotic_Grace_1","GLOBAL",1)
~ THEN REPLY #62443 /* ~"전에도 말했듯이, 그것이 당신이 다원 우주를 체험한 일과 관계가 있다고는 생각되지 않소... 나는 중요한 것은 그 경험을 당신이 어떻게 살렸느냐 하는 거라고 생각하오. 당신울 변화시킨 건 당신의 강인한 성격이었소."~ */ GOTO 274
  IF ~~ THEN REPLY #62444 /* ~"하지만 당신이 일으키는 '변화'는 주문과 흡사하오. 그런 일을 하는 방법은 어떻게 배우시오? 주문 책은 가지고 있소?"~ */ GOTO 272
  IF ~~ THEN REPLY #62445 /* ~"알겠소. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62446 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 274 // from: 273.0 273.1 273.2
  SAY #62447 /* ~훨-후럼-그레이스는 조용히 고개를 끄덕인다. 그녀는 생각에 잠긴 듯하다. "당신 얘기에는 진실미가 있어요"~ */
  IF ~~ THEN REPLY #62448 /* ~진실: "당신이 겪은 것과 같은 상황 아래서는 많은 사람들이 스스로를 잃고 무너졌을 것이오. 그러나 당신은 그것으로부터 *배웠소", 그리고 강해졌소. 그것은 당신의 강인한 의지와 성격을 잘 보여주고 있소."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62449 /* ~아부성 거짓말: "당신이 겪은 것과 같은 상황 아래서는 많은 사람들이 스스로를 잃고 무너졌을 것이오. 그러나 당신은 그것으로부터 *배웠소", 그리고 강해졌소. 그것은 당신의 강인한 의지와 성격을 잘 보여주고 있소."~ */ DO ~SetAnimState("Grace",ANIM_MIMESTAND)
~ GOTO 275
  IF ~~ THEN REPLY #62450 /* ~"아마 그럴지도. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62451 /* ~"내가 말하고 싶었던 건 그게 다요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 275 // from: 274.0 274.1
  SAY #62452 /* ~훨-후럼-그레이스는 조용히 당신을 쳐다본다.~ */
  IF ~~ THEN REPLY #62453 /* ~진실: "...그리고 나는 당신의 그 점을 존경하오. 단순히 힘뿐만이 아니라 그러한 끔찍한 체험을 자신을 향상시키는 수단으로 활용하는 것은 *아무나* 지니고 있는 능력이 아니오."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALGood_Grace_2","GLOBALGood",1)
~ GOTO 276
  IF ~~ THEN REPLY #62454 /* ~아부성 거짓말: "...그리고 나는 당신의 그 점을 존경하오. 단순히 힘뿐만이 아니라 그러한 끔찍한 체험을 자신을 향상시키는 수단으로 활용하는 것은 *아무나* 지니고 있는 능력이 아니오."~ */ DO ~MoraleInc("Grace",1)
IncrementGlobalOnceEx("GLOBALChaotic_Grace_1","GLOBALLaw",-1)
~ GOTO 276
  IF ~~ THEN REPLY #62455 /* ~"그게 전부요."~ */ GOTO 276
END

IF ~~ THEN BEGIN 276 // from: 275.0 275.1 275.2
  SAY #62456 /* ~훨-후럼-그레이스는 미소를 짓는다, 그리고 고개를 끄덕인다. "고마워요. 당신 말씀은 식견이 있고 자상하군요. 하지만 제 의지력이 겉보기처럼 강한 건 아니에요. 하지만 저는 매 체험을 학습의 기회로 삼으려고 노력하죠."~ */
  IF ~~ THEN REPLY #62457 /* ~"좋은 접근 방법이오. 다른 질문을 해도 괜찮겠소?"~ */ GOTO 139
  IF ~~ THEN REPLY #62458 /* ~"현명한 생각이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 277 // from: 205.1
  SAY #62459 /* ~"아니요."~ */
  IF ~~ THEN REPLY #62460 /* ~"부탁이오."~ */ GOTO 278
  IF ~~ THEN REPLY #62461 /* ~"그럼 좋소. 달리 질문할 것들이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62462 /* ~"그냥 물어봤을 뿐이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 278 // from: 277.0
  SAY #62463 /* ~그레이스는 가볍게 미소짓는다. "숙녀에게는 그녀만의 비밀이 있는 법이에요."~ */
  IF ~~ THEN REPLY #62464 /* ~"그럼 좋소. 달리 질문할 것들이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62465 /* ~"그냥 물어봤을 뿐이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 279 // from: 139.14 139.15 280.4 281.8 284.0 286.0 287.2 288.1 289.2 290.2 291.3 292.2 293.2 294.3 295.1 296.3 297.3 298.3 299.2 300.3 301.0 302.2 303.0 304.2 305.1 307.0 308.1 309.2 310.2 311.2 312.1 313.1 314.0 316.1 317.0 319.1 320.2 321.1 322.1 323.3 324.0 325.1 326.1 327.2 328.1 329.0 343.0 344.1 345.1 346.1 347.1 357.4 359.1 360.0 361.0
  SAY #62466 /* ~"누구에 대해 얘기하고 싶으시죠?"~ */
  IF ~~ THEN REPLY #62467 /* ~"바로 나요."~ */ GOTO 357
  IF ~~ THEN REPLY #62468 /* ~"당신."~ */ GOTO 280
  IF ~  InParty("Morte")
~ THEN REPLY #62469 /* ~"모트"~ */ GOTO 296
  IF ~  InParty("Annah")
~ THEN REPLY #62470 /* ~"안나."~ */ GOTO 340
  IF ~  InParty("Dakkon")
~ THEN REPLY #62471 /* ~"다콘."~ */ GOTO 308
  IF ~  InParty("Nordom")
~ THEN REPLY #62472 /* ~"노돔."~ */ GOTO 315
  IF ~  InParty("Ignus")
~ THEN REPLY #62473 /* ~"이그너스."~ */ GOTO 318
  IF ~  InParty("Vhail")
~ THEN REPLY #62474 /* ~"베일로."~ */ GOTO 325
  IF ~~ THEN REPLY #62475 /* ~"실은 아무도 아니오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62476 /* ~"그 질문은 없었던 일로 생각하시오. 나중에 기회가 있으면 다시 얘기합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 280 // from: 279.1
  SAY #62477 /* ~"저요? 정말인가요.." 그녀는 잠시 생각한 후 고개를 끄덕인다. "좋아요. 궁금하신 점이 있으면 물어보세요."~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62478 /* ~"당신도 알았으면 하오. 내가 미로에서 래벌에게 키스했을 때 나는..."~ */ GOTO 281
  IF ~~ THEN REPLY #62479 /* ~"솔직히 말해서 나는 나에 대한 당신 감정을 알고 싶소."~ */ GOTO 287
  IF ~~ THEN REPLY #62480 /* ~"나는 내 상황에 대한 당신 생각을 알고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62481 /* ~"내가 누구일지에 대해 짐작이라도 가시오?"~ */ GOTO 288
  IF ~~ THEN REPLY #62482 /* ~"관두시오. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62483 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62484 /* ~"나중에 기회가 있으면 다시 얘기합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 281 // from: 280.0 357.0
  SAY #62485 /* ~그레이스는 손을 들어 당신 말을 가로막는다. "아무 말씀도 하실 필요가 없어요. 저는 그런 일을 한 당신의 용기에 경의를 표해요. 대부분의 사람들은 래벌과 같은 전설적인 존재와 키스를 할 엄두도 내지 못할 거예요."~ */
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62486 /* ~진실: "나는 래벌이 내가 키스하지 않을 거라고 생각했기 때문에 키스했을 뿐이오. 나는 그녀가 나를 시험하고 있다고 생각했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62487 /* ~거짓말: "나는 래벌이 내가 키스하지 않을 거라고 생각했기 때문에 키스했을 뿐이오. 나는 그녀가 나를 시험하고 있다고 생각했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 283
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62488 /* ~진실: "나는 래벌에게 키스하는 것이 옳은 일이라고 생각했기에 그렇게 했소. 왜 그렇게 생각했는지는 묻지 마시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62489 /* ~거짓말: "나는 래벌에게 키스하는 것이 옳은 일이라고 생각했기에 그렇게 했소. 왜 그렇게 생각했는지는 묻지 마시오."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62490 /* ~진실: "나는 내가 원해서 래벌에게 키스했소... 그녀의 원래 모습은 좀 역겨웠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_1","GLOBALLaw",1)
~ GOTO 282
  IF ~  !Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62491 /* ~거짓말: "나는 내가 원해서 래벌에게 키스했소... 그녀의 원래 모습은 좀 역겨웠소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_2","GLOBALLaw",-1)
~ GOTO 282
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62492 /* ~진실: "나는 당신과 키스하고 싶어 래벌에게 키스했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Grace_2","GLOBALLaw",1)
~ GOTO 285
  IF ~  !Global("Ravel_Kiss","GLOBAL",5)
!Global("Lawful_Grace_1","GLOBAL",1)
!Global("Lawful_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_2","GLOBAL",1)
!Global("Chaotic_Grace_3","GLOBAL",1)
~ THEN REPLY #62493 /* ~아부성 거짓말: "나는 당신과 키스하고 싶어 래벌에게 키스했소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Grace_3","GLOBALLaw",-1)
~ GOTO 285
  IF ~~ THEN REPLY #62494 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62495 /* ~"그럼 다른 질문을 좀 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62496 /* ~"그럼 그 일에 대해선 더 이상 얘기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 282 // from: 281.2 281.3 281.4 281.5
  SAY #62497 /* ~"그녀는 당신을 시험하고 있었어요."~ */
  IF ~~ THEN REPLY #62498 /* ~"무슨 뜻이오?"~ */ GOTO 283
END

IF ~~ THEN BEGIN 283 // from: 281.0 281.1 282.0
  SAY #62499 /* ~"래벌이 당신을 보고 읽을 수 있는 데는 한계가 있는 것 같아요, 그리고 아마 그것은 그녀가 당신에게 그토록 지대한 관심을 가지는 이유들 중 하나일 거예요. 그녀는 물리적인 도전을 통해서만 당신의 본성을 시험할 수가 있어요.". ~ */
  IF ~~ THEN REPLY #62500 /* ~"그녀가 무엇을 시험하고 있었다고 생각하오?"~ */ GOTO 284
END

IF ~~ THEN BEGIN 284 // from: 283.0
  SAY #62501 /* ~"나는 그녀가 당신이 자신을 좋아하는지 보려고 했던 것 같아요. 키스는 그러한 것을 판단하는 수단들 중 하나지요, 좀 미묘하기는 하지만.~ */
  IF ~~ THEN REPLY #62502 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62503 /* ~"그럼 다른 질문을 좀 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62504 /* ~"그럼 그 일에 대해선 더 이상 얘기하지 않도록 하겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 285 // from: 281.6 281.7
  SAY #62505 /* ~"그럼 당신은 위험을 무릅쓰고 래벌과 키스해야 했었어요. 서큐버스와 키스하는 것은 곧 죽음이에요."~ */
  IF ~~ THEN REPLY #62506 /* ~"무슨 뜻이오?"~ */ JOURNAL #61616 /* ~훨-후럼-그레이스는 내게 그녀의 키스가 희생자로부터 생명을 훔친다고 말해주었다... 왠지 그 사실은 나를 자극시킨다.  난 죽을 수가 없다, 그렇지 않은가? 흐음. 그것을 염두에 두도록 해야겠다. ~ */ GOTO 286
END

IF ~~ THEN BEGIN 286 // from: 285.0
  SAY #62507 /* ~"서큐버스는 키스를 통해 에너지를 빨아 들여 인간을 죽여요. 희생자에게 있어 그것은 강렬한 쾌락을 주는 체험이지만, 희생자는 대개 곧 죽게 되요."  ~ */
  IF ~~ THEN REPLY #62508 /* ~"아, 나는... 어, 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62509 /* ~"흠... 그럼 다른 질문을 좀 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62510 /* ~"흥미롭군... 어, 내 말은 소름끼친다는 뜻이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 287 // from: 280.1 357.1
  SAY #62511 /* ~그레이스는 가볍게 미소짓는다. "숙녀에게는 그녀만의 비밀이 있는 법이에요."~ */
  IF ~~ THEN REPLY #62512 /* ~"그럼 내 상황에 대한 당신 생각을 알고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62513 /* ~"알겠소. 내가 누구일지 혹시 짐작이라도 가시오?"~ */ GOTO 288
  IF ~~ THEN REPLY #62514 /* ~"관두시오. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62515 /* ~"그럼 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62516 /* ~"나중에 기회가 있으면 다시 얘기합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 288 // from: 280.3 287.1 357.3
  SAY #62517 /* ~그레이스는 생각을 하느라 눈살을 찌푸린다. "당신이 불가해한 존재라는 것은 인정해요." 그녀는 미소짓는다. "하지만 그런 수수께끼는 매우 흥미롭죠. 당신의 상황을 우리가 함께 풀어 볼까요?"~ */
  IF ~~ THEN REPLY #62518 /* ~"좋소."~ */ GOTO 289
  IF ~~ THEN REPLY #62519 /* ~"아니, 나중에 합시다. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62520 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62521 /* ~"나중에 기회가 있으면 다시 얘기합시다. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 289 // from: 288.0
  SAY #62522 /* ~"당신이 티플링이나 다른 희귀한 혼혈일 수도 있겠지만, 제 추측은 당신이 인간이거나... 한때는 인간이었다는 거예요."~ */
  IF ~~ THEN REPLY #62523 /* ~"알겠소... 계속하시오."~ */ GOTO 290
  IF ~~ THEN REPLY #62524 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62525 /* ~"다시 생각해 보니 나중에 다시 얘기하는 것이 좋을 듯하오. 대신 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62526 /* ~"그 얘기는 일단 접어두시오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62527 /* ~"나중에 계속하도록 합시다. 지금은 가던 길을 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 290 // from: 289.0
  SAY #62528 /* ~"당신의 외관은 30대의 남성이지만, 흉터와 꿰맨 자국 때문에 정확하게 판단하기는 어려워요."~ */
  IF ~~ THEN REPLY #62529 /* ~"계속 얘기를 하시오."~ */ GOTO 291
  IF ~~ THEN REPLY #62530 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62531 /* ~"다시 생각해 보니 나중에 다시 얘기하는 것이 좋을 듯하오. 대신 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62532 /* ~"그 얘기는 일단 접어두시오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62533 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 291 // from: 290.0
  SAY #62534 /* ~"당신의 과거의 열쇠는 당신 기억이에요, 그리고 특정한 장소, 사건, 또는 사람들이 당신의 잊혀진 기억을 자극하는 방아쇠 역할을 하는 것 같아요. 따라서 가능한 한 많은 곳을 방문하고, 많은 사람들과 얘기를 나누는 것이 바람직할 것 같군요... 즉 우주를 최대한 체험하란 뜻이죠."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 292
  IF ~~ THEN REPLY #62535 /* ~"센세이트로서의 충고요?"~ */ GOTO 295
  IF ~~ THEN REPLY #62536 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62537 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62538 /* ~"그 얘기는 일단 접어두시오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62539 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 292 // from: 291.0
  SAY #62540 /* ~"또한, 래벌이 말한 내용들 중 흥미로운 것들이 몇 가지 있었어요. 당신의 '죽음'이 사라졌다는 것은 매우 우려가 되는군요. 만약 누군가가 그것을 손에 넣는다면 그건 당신에게 있어 결코 좋은 일이 아니에요."~ */
  IF ~~ THEN REPLY #62541 /* ~"계속하시오..."~ */ GOTO 293
  IF ~~ THEN REPLY #62542 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62543 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62544 /* ~"그 얘기는 일단 접어두시오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62545 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 293 // from: 292.0
  SAY #62546 /* ~"그리고 래벌이 정신의 죽음에 대해서 말한 부분도 마음에 걸리는군요. 그녀는 당신이 죽을 때마다 당신의 정신이 서서히 마모되어 간다고 암시하는 듯했어요."~ */
  IF ~~ THEN REPLY #62547 /* ~"계속하시오..."~ */ GOTO 294
  IF ~~ THEN REPLY #62548 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62549 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62550 /* ~"그 얘기는 일단 접어두시오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62551 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 294 // from: 293.0
  SAY #62552 /* ~"그리고 마지막으로, 그녀가 당신의 흉터는 '마족들 사이의 전쟁'에 대해서 말해주고 있다고 했는데, 그 전쟁이란 블러드 워일 거예요."~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62553 /* ~"블러드 워가 대체 뭐요?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62554 /* ~"나는 블러드 워에 대해 잘 알고 있소. 그 전쟁에 대해 당신이 아는 바를 내게 얘기해줄 수 있겠소?"~ */ GOTO 219
  IF ~~ THEN REPLY #62555 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62556 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62557 /* ~"그 얘기는 일단 접어두시오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62558 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 295 // from: 291.1
  SAY #62559 /* ~훨-후럼-그레이스는 곤혹스런 미소를 짓는다. "만약 내가 직접 해본적이 없고, 당신도 그것이 사실이라는 것을 모른다면 그런 충고는 하지 않았겠지요."~ */
  IF ~~ THEN REPLY #62560 /* ~"내 상황을 파악하는 데 도움이 될 다른 뭔가가 있을 지도 모르오..."~ */ GOTO 330
  IF ~~ THEN REPLY #62561 /* ~"좋소. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62562 /* ~"알겠소. 다른 질문을 하도록 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62563 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 296 // from: 279.2
  SAY #62564 /* ~"모트는 정말 기묘해요... 저는 지금까지 살면서 많은 것을 보았지만 그처럼 특이한 것은 본 적이 없어요. 그는 미미르와 다소 비슷하게 행동을 해요. 물론 그가 풍부한 지식을 지녔다는 것은 사실이에요. 하지만 그에게서는..." 그녀는 공기를 냄새맡고는 코를 찌푸린다. "...베이터 특유의 냄새가 나는군요."~ */
  IF ~~ THEN REPLY #62565 /* ~"베이터의 냄새?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~~ THEN REPLY #62566 /* ~"미미르?"~ */ DO ~IncrementGlobalOnceEx("GLOBALKnow_Mimir","GLOBALKnow_Mimir",0)
~ GOTO 299
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62567 /* ~"나는 그 이유를 알게 되었소. 알고 보니 오래 전에 내가 그를 해골들의 기둥에서 빼냈소."~ */ GOTO 304
  IF ~~ THEN REPLY #62568 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62569 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62570 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 297 // from: 296.0 298.0
  SAY #62571 /* ~"그래요. 하지만 그는 바테주가 아니에요... 적어도 제가 조우한 적이 있는 종류는. 하지만 냄새 하나만 가지고 그를 경계하도록 하기에는 충분해요."~ */
  IF ~~ THEN REPLY #62572 /* ~"당신 얘기에서 나오는 '바테주'와 '베이터'란 대체 뭐요?"~ */ GOTO 298
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62573 /* ~"전에 당신이 '미미르'에 대해 한 설명을 다시 해주겠소?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62574 /* ~"전에 당신이 '미미르'에 대해 한 설명을 다시 해주겠소?"~ */ GOTO 299
  IF ~~ THEN REPLY #62575 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62576 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62577 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 298 // from: 297.0
  SAY #62578 /* ~"미안해요... 베이터는 아웃터 플레인 중 하나로, 바테주라는 마족의 고향이죠. 그들은 사악한 존재지만, 조직적이며 매우 질서 정연한 습성을 지니고 있어요. 어떤 사람들은 그들을 '데블'이라고도 부르죠. 그들은 계약과 위계 질서를 신봉해요... 여러 면에서 그들은 사악한 관료들과 유사해요."~ */
  IF ~~ THEN REPLY #62579 /* ~"당신이 베이터의 냄새에 관해 했던 말을 다시 들려주겠소?"~ */ DO ~SetGlobal("Grace_Smell_Mimir","GLOBAL",1)
~ GOTO 297
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62580 /* ~"전에 당신이 '미미르'에 대해 한 설명을 다시 해주겠소?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ GOTO 299
  IF ~  GlobalGT("Know_Mimir","GLOBAL",0)
~ THEN REPLY #62581 /* ~"전에 당신이 '미미르'에 대해 한 설명을 다시 해주겠소?"~ */ GOTO 299
  IF ~~ THEN REPLY #62582 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62583 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62584 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 299 // from: 296.1 297.1 297.2 298.1 298.2
  SAY #62585 /* ~"미미르는 지식의 백과사전이에요. 그들은 자신들의 지식이 허용하는 한도 내에서 소유주의 질문에 충실히 대답해요."~ */
  IF ~  Global("Morte_Story","GLOBAL",0)
~ THEN REPLY #62586 /* ~"그래 모트는 미미르요?"~ */ DO ~SetGlobal("Grace_Silver_Mimir","GLOBAL",1)
~ GOTO 300
  IF ~  Global("Morte_Story","GLOBAL",1)
~ THEN REPLY #62587 /* ~"모트는 미미르가 아니오. 알고 보니 내가 오래 전에 그를 해골들의 기둥으로부터 빼냈소."~ */ GOTO 304
  IF ~~ THEN REPLY #62588 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62589 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62590 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 300 // from: 299.0
  SAY #62591 /* ~"나는 그렇게 생각하지 않아요. 모트는 미미르들과 달리 은백색의 금속으로 만들어지지 않았어요. 그리고 그는 자아를 지니고 있는데, 이는 통상적인 미미르에게서는 볼 수가 없는 것이에요." 그레이스는 어깨를 으쓱한다. "가능성을 완전히 배제할 수는 없지만, 적어도 그는 제가 본 적이 있는 어느 미미르하고도 달라요."~ */
  IF ~~ THEN REPLY #62592 /* ~"나는 모트가 미미르라고 생각하오."~ */ GOTO 301
  IF ~  Global("Morte_Mimir","GLOBAL",1)
~ THEN REPLY #62593 /* ~"모트는 내게 자신이 미미르라고 했소."~ */ GOTO 302
  IF ~~ THEN REPLY #62594 /* ~"나도 모트가 미미르라고 생각하지 않소."~ */ GOTO 303
  IF ~~ THEN REPLY #62595 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62596 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62597 /* ~"이 애기는 나중에 계속하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 301 // from: 300.0 302.0
  SAY #62598 /* ~"그럼 그 주제에 대해선 얘기할 만큼 한 것 같군요."~ */
  IF ~~ THEN REPLY #62599 /* ~"다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62600 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62601 /* ~"그럼 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 302 // from: 300.1
  SAY #62602 /* ~"그래요? 매우 흥미롭군요. 그럼 알겠어요..."~ */
  IF ~~ THEN REPLY #62603 /* ~"나는 그를 믿소."~ */ GOTO 301
  IF ~~ THEN REPLY #62604 /* ~"하지만 난 그를 별로 믿지 않소."~ */ GOTO 303
  IF ~~ THEN REPLY #62605 /* ~"다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62606 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62607 /* ~"그럼 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 303 // from: 300.2 302.1
  SAY #62608 /* ~"아마 그의 주장의 진위를 시험할 방법이 있을 거예요... 하지만 당신이 그를 친구로 생각한다면 그러지 않은 것이 좋겠죠. 그 경우에는 그가 하는 말을 액면 그대로 받아들일 수밖에 없어요."~ */
  IF ~~ THEN REPLY #62609 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62610 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62611 /* ~"좋소. 내가 논의하고 싶었던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 304 // from: 296.2 299.1
  SAY #62612 /* ~"그렇다면 그의 풍부한 지식도 설명이 되는군요. 하지만-" 훨-후럼-그레이스는 잠시 멈춘다. "특정한 조건 아래서만 해골들의 기둥의 일부가 될 수 있어요."~ */
  IF ~~ THEN REPLY #62613 /* ~"어떤 상황 말이오?"~ */ DO ~SetGlobal("Know_Pillar_Circumstances","GLOBAL",1)
~ GOTO 305
  IF ~  Global("Know_Pillar_Circumstances","GLOBAL",1)
~ THEN REPLY #62614 /* ~"그것이 뭔지 난 잘 알고 있소. 다른 사람을 죽음에 이르게 한 거짓말을 한 적이 있어야 하오, 맞소?~ */ GOTO 307
  IF ~~ THEN REPLY #62615 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62616 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62617 /* ~"내가 논의하고 싶었던 건 그게 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 305 // from: 304.0
  SAY #62618 /* ~"해골들의 기둥은 거짓말로 다른 사람들을 죽게 한 자들의 살아 있는 머리들로 구성된 기둥이에요. 많은 것을 알고 있기 때문에 상당한 수의 질문에 대답해줄 수는 있으나, 그 대가로 엄청난 보수를 요구하죠."~ */
  IF ~~ THEN REPLY #62619 /* ~"그러니 모트가 그 곳에 있었던 건 그가 다른 사람을 죽게 만든 거짓말을 한 적이 있다는 걸 뜻한다는 거요?"~ */ GOTO 307
  IF ~~ THEN REPLY #62620 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62621 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62622 /* ~"좋소. 내가 논의하고 싶었던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 306 // from:
  SAY #62623 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 307 // from: 304.1 305.0
  SAY #62624 /* ~"맞아요."~ */
  IF ~~ THEN REPLY #62625 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62626 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62627 /* ~"흠... 그에게 그 일에 대해서 물어봐야겠군. 지금은 가던 길이나 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 308 // from: 279.4
  SAY #62628 /* ~"다콘?" 그레이스는 한쪽 눈썹을 치켜 올린다. "그는 기스저라이로서는 매우 드문 예외예요."~ */
  IF ~~ THEN REPLY #62629 /* ~"정말이오? 어떻게 말이오?"~ */ GOTO 309
  IF ~~ THEN REPLY #62630 /* ~"관두시오. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62631 /* ~"일단 그 얘기는 접어둡시다. 다른 질문이 있소."~ */ GOTO 139
  IF ~~ THEN REPLY #62632 /* ~"이 얘기에 대해서는 나중에 논의합시다. 지금은 가던 길이나 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 309 // from: 308.0
  SAY #62633 /* ~"그는 당신 명령에 복종해요. 그것 하나만으로도 그의 동족들이 그를 천민 취급하게 만들기에 충분해요. 한때 그의 종족 전체가 노예였기 때문에 그들은 노예라는 말만 들어도 불쾌하게 여겨요."~ */
  IF ~  Global("Dakkon_Slave","GLOBAL",1)
~ THEN REPLY #62634 /* ~"그렇소, 그는 오래 전에 내가 죽을 때까지 나를 섬기겠다는 약속을 했소. 그것은 내가 그의 모숨을 구한 후의 일이었고 그는 내가 불사신이란 것을 몰랐소."~ */ GOTO 310
  IF ~~ THEN REPLY #62635 /* ~"그 밖에 다른 것은?"~ */ GOTO 313
  IF ~~ THEN REPLY #62636 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62637 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62638 /* ~"이 얘기에 대해서는 나중에 논의합시다. 지금은 가던 길이나 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 310 // from: 309.0
  SAY #62639 /* ~"정말인가요? 기스저라이로서... 그는 엄청난 고통을 받고 있겠군요. 당신은 어떻게 그의 목숨을 구했죠?"~ */
  IF ~  Global("Dakkon_Circle","GLOBAL",1)
~ THEN REPLY #62640 /* ~"그가 슈라'크트'로에서 떨어져 림보에서 죽어가고 있을 때, 내 전신들 중 하나가 그에게로 와서 그가 지금도 지니고 있는 종교 경전인 저서몬의 깨어지지 않은 원을 그에게 주었소." ~ */ GOTO 311
  IF ~  Global("Dakkon_Circle","GLOBAL",0)
~ THEN REPLY #62641 /* ~"모르겠소. 내 전신들 중 하나가 그를 구했던 모양이나 나는 그 일에 대해 아는 바가 없소. 내게 그에 대해 더 말해줄 건 없소?"~ */ GOTO 313
  IF ~~ THEN REPLY #62642 /* ~"그건 긴 이야기오. 보시오, 난 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62643 /* ~"그 얘기는 관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 139
  IF ~~ THEN REPLY #62644 /* ~"다른 기회에 말해주겠소. 지금은 가던 길이나 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 311 // from: 310.0
  SAY #62645 /* ~"*왜* 당신의 화신이 그를 구했는지 물어봐도 괜찮겠어요?" ~ */
  IF ~  Global("Memory_Shraktlor","GLOBAL",1)
~ THEN REPLY #62646 /* ~"나는 *카락* 칼 때문에 그를 구했던 것 같소."~ */ GOTO 312
  IF ~~ THEN REPLY #62647 /* ~"모르겠소. 그의 동기는 내게도 수수께끼요. 다콘에 대해 내게 더 말해줄 건 없소?"~ */ GOTO 313
  IF ~~ THEN REPLY #62648 /* ~"그건 긴 이야기오. 보시오, 난 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62649 /* ~"그 얘기는 관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 139
  IF ~~ THEN REPLY #62650 /* ~"다른 기회에 말해주겠소. 지금은 가던 길이나 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 312 // from: 311.0
  SAY #62651 /* ~"흥미롭군요. 소유주의 의지를 반영하는 무기는, 소유주가 스스로를 알 경우에 강대한 무기가 될 수 있죠."~ */
  IF ~~ THEN REPLY #62652 /* ~"그럼 그건 내가 그를 구했기 때문인 것 같소. 다콘에 대해 내게 더 말해줄 건 없소?"~ */ GOTO 313
  IF ~~ THEN REPLY #62653 /* ~"아마도. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62654 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62655 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 313 // from: 309.1 310.1 311.1 312.0
  SAY #62656 /* ~"다콘은 모든 것을 논리 정연한 방법으로 접근하죠. 이 또한 기스저라이로서는 매우 이례적인 일이에요. 그들은 예측하기가 힘들어요 - 계획을 세우고 행동하기보다는 충동에 따라 행동하니까요."~ */
  IF ~~ THEN REPLY #62657 /* ~"다른 건 없소?"~ */ GOTO 314
  IF ~~ THEN REPLY #62658 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62659 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62660 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 314 // from: 313.0
  SAY #62661 /* ~"그는 가장 경건한 기스저라이이자 믿음직한 동지인 것 같아요."~ */
  IF ~~ THEN REPLY #62662 /* ~"그건 틀림없소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62663 /* ~"정말 그렇소. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62664 /* ~"나도 알고 있소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 315 // from: 279.5
  SAY #62665 /* ~"노돔은 불량 모드론이에요. 비록 그의 시스템에 약간의 혼돈이 침투하기는 했지만, 아직도 그는 매우 논리적이고 질서 정연한 생명체예요. 이러한 논리적인 사고 능력은 당신의 여행에 큰 도움을 줄 수가 있어요. 게다가 만약 그가 당신을 리더로 인식한다면, 그는 당신에게 절대적인 충성을 바칠 거예요. "~ */
  IF ~~ THEN GOTO 316
END

IF ~~ THEN BEGIN 316 // from: 315.0
  SAY #62666 /* ~"만약 노돔이 에티켓을 요구하는 사회적 상황에 직면한다면 문제가 생길 수가 있어요. 그런 개념은 보통 모드론조차 제대로 이해하지 못하는 것이니까요 ." 그녀는 잠시 멈춘다. "만약 괜찮으시다면 노돔에 대해 조언을 하나 해 드릴게요. ~ */
  IF ~~ THEN REPLY #62667 /* ~"물론이오. 그래 어떤 것이오?"~ */ GOTO 317
  IF ~~ THEN REPLY #62668 /* ~"지금은 아니오. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62669 /* ~"나중에 듣는 것이 좋을 것 같소. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62670 /* ~"지금은 아니오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 317 // from: 316.0
  SAY #62671 /* ~"노돔은 지금 자신의 존재 의미를 상실한 상황이에요. 당신이 그가 지금 처한 상황과 그렇게 된 이유, 그리고 파티 내에서의 위상을 이해할 수 있도록 도와준다면, 그가 정신을 가다듬기가 한결 수월해질 거예요. 그냥 제 생각이에요."~ */
  IF ~~ THEN REPLY #62672 /* ~"당신 충고를 따르는 것이 좋을 듯하오. 하지만 지금른 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62673 /* ~"그와는 나중에 얘기하도록 하겠소. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62674 /* ~"흠... 그럼 그 일에 대해 내가 할 수 있는 일을 생각해 보겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 318 // from: 279.6
  SAY #62675 /* ~"그와는 더 이상 여행을 함께 하지 않는 것이 현명할 것 같군요. 그는 미쳤으며, 이미 엄청난 규모의 파괴를 자행했어요. 내가 알기로 그는 불의 원소계로 통하는 일종의 통로로 변환되었어요... 그러한 변화는 보통 인간이라면 죽이고도 남았을 거예요."~ */
  IF ~~ THEN GOTO 319
END

IF ~~ THEN BEGIN 319 // from: 318.0
  SAY #62676 /* ~"하지만 그는 생존했을 뿐만 아니라, 그는 오히려 강해졌어요. 그는 엄청난 힘을 지니고 있어요 - 그와 직접 대결을 해서 승리할 수 있는 사람은 거의 없을 거예요. 그런 상황이 발생하지 않기를 바랄 뿐이에요."  ~ */
  IF ~~ THEN REPLY #62677 /* ~"만약 이그너스가 그토록 강대하다면 왜 보는 사람마다 공격하지 않는 거요? 그리고 왜 우리와 여행을 하는 거요?"~ */ GOTO 320
  IF ~~ THEN REPLY #62678 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62679 /* ~"나도 그러기를 바라오. 다른 질문이 있소."~ */ GOTO 139
  IF ~~ THEN REPLY #62680 /* ~"흠... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 320 // from: 319.0
  SAY #62681 /* ~"모르겠어요. 하지만 그가 우리를 좋아해서가 아닌 것은 확실해요. 제 생각에 그에게 있어 당신 이외의 사람들은 아무런 의미도 없는 것 같아요."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62682 /* ~"그건 내가 과거에 그의 사부였기 때문이라고 생각하오."~ */ GOTO 322
  IF ~~ THEN REPLY #62683 /* ~"나? 왜 나요?"~ */ GOTO 321
  IF ~~ THEN REPLY #62684 /* ~"다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62685 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62686 /* ~"흠... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 321 // from: 320.1
  SAY #62687 /* ~"모르겠어요. 하지만 당신은 당신이 부탁을 하면 그가 *복종*한다는 것을 깨닫지 못하셨나요? 그것도 절대적으로. 내가 같은 부탁을 하더라도 그는 결코 들어주지 않을 거예요."~ */
  IF ~  Global("Memory_Ignus_Taught","GLOBAL",1)
~ THEN REPLY #62688 /* ~"그건 내가 과거에 그의 사부였기 때문이라고 생각하오."~ */ GOTO 322
  IF ~~ THEN REPLY #62689 /* ~"다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62690 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62691 /* ~"흠... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 322 // from: 320.0 321.0
  SAY #62692 /* ~"당신이 그의 사부였나요?"~ */
  IF ~~ THEN REPLY #62693 /* ~"그렇소... 내 전신들 중 하나가 그에게 마법을 가르쳤소, 하지만 별로 자비로운 수업이었던 것 같지는 않소. 그는 아직도 희미하게나마 나를 사부로 생각하는 듯하오."~ */ GOTO 323
  IF ~~ THEN REPLY #62694 /* ~"그 얘기는 관두시오. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62695 /* ~"그건 긴 이야기요. 일단 지금은 다른 질문을 하고 싶소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62696 /* ~"그 얘기는 다른 기회에 계속하도록 합시다. 일단 지금은 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 323 // from: 322.0
  SAY #62697 /* ~훨-후럼-그레이스는 사려 깊게 고개를 끄덕인다. "그것은 많은 것들을 설명해 주는군요." 그녀는 당신 얼굴을 잠시 살펴본다. "그 사실이 당신을 괴롭히고 있나요?"~ */
  IF ~~ THEN REPLY #62698 /* ~"이그너스가 그렇게 된 건 내 책임이 아니오. 그 사실이 나를 괴롭히느냐고? 아니오."~ */ GOTO 324
  IF ~~ THEN REPLY #62699 /* ~"나는 다소 책임을 느끼오. 이그너스가 미치게 된 데는 내가 그를 가르친 방법이 일조를 한 듯하오. 하지만 확신할 수는 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62700 /* ~"그랬소. 나는 내 과거의 삶이 이그너스에게 영향을 미쳐 그를 그렇게 만든 데 대해 후회하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Grace_3","GLOBALGood",1)
~ GOTO 324
  IF ~~ THEN REPLY #62701 /* ~"그 일에 대해서는 지금 얘기하고 싶지 않소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62702 /* ~"그 얘기는 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62703 /* ~"그 일에 대해서는 나중에 얘기합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 324 // from: 323.0 323.1 323.2
  SAY #62704 /* ~"이구너스 안에서는 베이터조차 무색해질 정도의 화염이 타오르고 있어요. 그는 요술사, 아니 인간을 초월한 존재가 되었어요. 그는 하나의 자연 현상과도 같은 존재가 된 것이에요. 나는 당신을 만나기 전에도 그것이 그의 본성의 일부였는지 궁금하군요."~ */
  IF ~~ THEN REPLY #62705 /* ~"나도 모르겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62706 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62707 /* ~"그 일에 대해서는 나중에 얘기합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 325 // from: 279.7
  SAY #62708 /* ~"머시킬러를 상대하는 데는 많은 위험이 따라요. 베일로의 경우에는 그러한 위험이 비교할 수 없을 정도로 더 커요. 그에게 있어 정의는 단순한 집착이 아니라 그의 *일부*예요. 그의 앞에서는 행동에 각별히 조심하세요. 그는 우리들 모두를 유심히 살펴보고 있으니까요. 그것은 머시킬러의 특성이에요."~ */
  IF ~  Global("Memory_Caging_Vhailor","GLOBAL",1)
~ THEN REPLY #62709 /* ~"고백할 것이 있소... 베일로가 커스트 지하에 그토록 오래 갇히게 된 것은 나 때문인 것 같소."~ */ GOTO 326
  IF ~~ THEN REPLY #62710 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62711 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62712 /* ~"좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 326 // from: 325.0
  SAY #62713 /* ~"무슨 뜻이죠?"~ */
  IF ~~ THEN REPLY #62714 /* ~"기억이 있소... 그가 나를 너무나 오랫동안 날 추적했기 때문에 그를 함정에 빠뜨린 일이 생각나오. 하지만 난 그를 죽이기를 원했던 것이 아니라, 가두어서 나를 방해하지 못하게 하려고 했을 뿐이오."~ */ GOTO 327
  IF ~~ THEN REPLY #62715 /* ~"그 얘기는 관두시오. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62716 /* ~"그 얘기는 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62717 /* ~"그 일에 대해서는 나중에 얘기합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 327 // from: 326.0
  SAY #62718 /* ~"그가 당신을 추격하고 있었다면, 왜 당신은 그를 죽이지 않고 감금한 거죠?"~ */
  IF ~~ THEN REPLY #62719 /* ~"과연 내가 그를 죽일 수 있었을지 모르겠소. 저승사자가 그를 데려가려고 했던 것 같으나 꼴을 보니 성공하지는 못한 듯하오."~ */ GOTO 328
  IF ~~ THEN REPLY #62720 /* ~"이상하게 들릴지도 모르겠으나 내가 그를 죽이지 않은 것은 그가 날 죽일 수 있기 때문이라는 생각이 드오."~ */ GOTO 329
  IF ~~ THEN REPLY #62721 /* ~"그 얘기는 관두시오. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62722 /* ~"그 얘기는 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62723 /* ~"그 일에 대해서는 나중에 얘기합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 328 // from: 327.0
  SAY #62724 /* ~"그건 사실이에요. 신념이 그를 지탱하고 있고, 신념은 강한 힘을 지니고 있어요."~ */
  IF ~~ THEN REPLY #62725 /* ~"이상하게 들릴지도 모르겠으나 내가 그를 죽이지 않은 것은 그가 날 죽일 수 있기 때문이라는 생각이 드오."~ */ GOTO 329
  IF ~~ THEN REPLY #62726 /* ~"그렇소. 보시오, 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62727 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62728 /* ~"갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 329 // from: 327.1 328.0
  SAY #62729 /* ~훨-후럼-그레이스는 고개를 끄덕인다. "불사신조차도 죽을 방법을 남겨 놓기를 원할 수가 있지요. 불사를 축복으로 생각하지 않는 사람들도 적지 않아요. 당신은 불사를 견딜 수 없게 될 때를 대비하여 베일로를 살려둔 것 같군요."~ */
  IF ~~ THEN REPLY #62730 /* ~"알겠소. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62731 /* ~"흠... 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62732 /* ~"흥미로운 생각이오. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 330 // from: 280.2 287.0 289.1 290.1 291.2 292.1 293.1 294.2 295.0 331.1 332.0 333.0 334.0 335.4 336.0 337.2 338.2 339.0 357.2
  SAY #62733 /* ~"그 밖에 추리에 도움이 될 만한 정보는 없나요?"~ */
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",0)
~ THEN REPLY #62734 /* ~"그림자들은 계속 날 죽이러 나타나고 있소. 내게는 그들이 날 따라오고 있다는 생각이 드오, 하지만 어째서인지는 모르겠소."~ */ GOTO 331
  IF ~  Global("Know_Player_Killer","GLOBAL",1)
~ THEN REPLY #62735 /* ~"난 누군가 날 살해하려는 것 같소... 그의 살의가 어찌나 강렬한지 나는 그를 죽이려고 함정으로 가득한 무덤까지 만들었었소. 무덤의 비문에 의하면 그는 오래 전부터 날 노려왔소... 적어도 내 전신들이 기억할 수 있는 한 그는 계속해서 그래왔던 듯하오."~ */ GOTO 334
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62736 /* ~"한 가지 더 있소. 내가 애초부터 불사신이었던 건 아니오. 래벌이 날 그렇게 만들었소."~ */ GOTO 335
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #62737 /* ~"내가 래벌과 얘기했을 때 그녀는 내 피부에 새겨진 문신이 '마족들의 전쟁'에 대하여 얘기하고 있다고 했소. 그녀가 한 말이 무슨 뜻인지 아시오?"~ */ GOTO 338
  IF ~  Global("Know_Shadow_Player_Connection","GLOBAL",1)
~ THEN REPLY #62738 /* ~"해골들의 기둥은 내가 '존재에 그림자를 드리운다'라고 말했소. 내가 죽을 때마다 다른 누군가가 내 대신 죽는다고 하오."~ */ GOTO 333
  IF ~  Global("Know_Keeper_Mortality","GLOBAL",1)
~ THEN REPLY #62739 /* ~"트리어스는 이 후회의 요새라는 곳에는 내 죽음을 감금하고 있는 '수호자'라는 존재가 있다고 했소."~ */ GOTO 339
  IF ~~ THEN REPLY #62740 /* ~"실은 중요한 건 아무 것도 모르오. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62741 /* ~"그 얘기는 관두시오.다른 기회에 하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 331 // from: 330.0
  SAY #62742 /* ~"그림자들?" 훨-후럼-그레이스는 잠시 침묵한다. "그림자들은 문자 그대로 죽은 자의 그림자예요. 그들은 대개 사냥에 나서기보다는 희생자가 찾아오기를 기다리죠. 묘하군요."~ */
  IF ~  GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN GOTO 332
  IF ~~ THEN REPLY #62743 /* ~"내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62744 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62745 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 332 // from: 331.0
  SAY #62746 /* ~"그리고 래벌은 당신이 그림자를 드리우는 자라고 했었죠 - 아마 이 그림자들은 당신과 무슨 관계가 있는 것이 아닐까요?" 훨-후럼-그레이스는 잠시 자신의 턱을 가볍게 두드린다. "단언하기는 힘들군요."~ */
  IF ~~ THEN REPLY #62747 /* ~"내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62748 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62749 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 333 // from: 330.4
  SAY #62750 /* ~"래벌의 마법에 걸린 것은 대개 누구에게도 도움이 되지 않아요." 훨-후럼-그레이스의 목소리가 낮아진다. "당신이 대체 몇 번이나 죽고... 모두 몇 명의 목숨을 빼앗았는지 생각해보게 만드는군요."~ */
  IF ~~ THEN REPLY #62751 /* ~"내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62752 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62753 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 334 // from: 330.1
  SAY #62754 /* ~"그렇다면... 살인자의 정체가 무엇이든 간에, 당신을 그토록 오랫동안 쫓으려면 그 역시 오래 살았겠군요." 그녀는 잠시 자신의 턱을 가볍게 두드린다. "혹시 살인자 역시 불사신은 아닐까요?"~ */
  IF ~~ THEN REPLY #62755 /* ~"아마 그럴지도. 내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62756 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62757 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 335 // from: 330.2
  SAY #62758 /* ~"그렇다면 그 자체로서 많은 것을 얘기해주고 있군요. 지금 상태는 당신에게 있어 정상적인 상태가 아니에요. 이는 또 다른 의문을 야기하죠: *왜* 당신은 불사신이 되려고 했죠? 당신이 왜 래벌이 그런 일을 했는지 아시나요?"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",1)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62759 /* ~"정확하게는 모르겠으나 그건 나를 어떤 감옥으로부터 탈출시키기 위해, 나에게 자유를 주기 위해서였던 것 같소."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",1)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62760 /* ~"정확하게는 모르겠으나 그건 나를 어떤 감옥으로부터 탈출시키기 위해, 나에게 자유를 주기 위해서였던 것 같소."~ */ GOTO 336
  IF ~  Global("Ravel_Hair","GLOBAL",0)
GlobalGT("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62761 /* ~"모르겠소. 내가 아는 건 내가 그녀에게 그 일을 부탁했다는 사실뿐이오."~ */ GOTO 337
  IF ~  Global("Ravel_Hair","GLOBAL",0)
Global("Ravel_Grace","GLOBAL",0)
~ THEN REPLY #62762 /* ~"모르겠소. 내가 아는 건 내가 그녀에게 그 일을 부탁했다는 사실뿐이오."~ */ GOTO 336
  IF ~~ THEN REPLY #62763 /* ~"아직은 모르겠소. 내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62764 /* ~"모르겠소. 그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62765 /* ~"다른 기회에 얘기하도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 336 // from: 335.1 335.3
  SAY #62766 /* ~"매우 흥미롭군요. 우선 그것부터 알아내야 할 것 같군요... 과거라는 확고한 기반 없이 미래에 무엇이 기다리고 있는지 판단할 수는 없으니까요."~ */
  IF ~~ THEN REPLY #62767 /* ~"내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62768 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62769 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 337 // from: 335.0 335.2
  SAY #62770 /* ~"흠... 래벌이 말한 것들 중 제 흥미를 끈 것이 있어요. 그녀는 마족들의 전쟁에 대해 얘기를 했어요, 그리고 그것은 의심할 여지없이 블러드 워이에요. 그건 매우 흥미로운 일이에요. 래벌의 고향 차원은 블러드 워의 전장으로 이용되는 경우가 많아요. 아마 당신이 래벌을 찾아가게 된 것은 블러드 워와 관계가 있지 않을까요?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62771 /* ~"블러드 워가 대체 뭐요?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~훨-후럼-그레이스는 래벌이 말한 마족들의 전쟁이란 타나리와 바테주 사이의 분쟁인 블러드 워일 것이라고 말했다. 그녀는 아마 나와 래벌의 거래가 블러드 워와 무슨 연관이 있을 것이라고 넌지시 비쳤다. ~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62772 /* ~"블러드 워가 대체 뭐요?"~ */ GOTO 219
  IF ~~ THEN REPLY #62773 /* ~"그럴지도 모르오. 내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62774 /* ~"그럴지도. 그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62775 /* ~"모르겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 338 // from: 330.3
  SAY #62776 /* ~"흠... '마족들 간의 전쟁'이란 의심할 여지없이 블러드 워이에요." 훨-후럼-그레이스가 고개를 끄덕인다. "래벌의 고향 차원인 그레이 웨이스트는 블러드 워의 전장으로 이용되는 경우가 많아요. 아마 당신이 래벌을 찾아가게 된 것은 블러드 워와 관계가 있지 않을까요?"~ */
  IF ~  Global("Know_Blood_War","GLOBAL",0)
~ THEN REPLY #62777 /* ~"블러드 워가 대체 뭐요?"~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ JOURNAL #61615 /* ~훨-후럼-그레이스는 래벌이 말한 마족들의 전쟁이란 타나리와 바테주 사이의 분쟁인 블러드 워일 것이라고 말했다. 그녀는 아마 나와 래벌의 거래가 블러드 워와 무슨 연관이 있을 것이라고 넌지시 비쳤다. ~ */ GOTO 219
  IF ~  Global("Know_Blood_War","GLOBAL",1)
~ THEN REPLY #62778 /* ~"블러드 워가 대체 뭐요?"~ */ JOURNAL #61615 /* ~훨-후럼-그레이스는 래벌이 말한 마족들의 전쟁이란 타나리와 바테주 사이의 분쟁인 블러드 워일 것이라고 말했다. 그녀는 아마 나와 래벌의 거래가 블러드 워와 무슨 연관이 있을 것이라고 넌지시 비쳤다. ~ */ GOTO 219
  IF ~~ THEN REPLY #62779 /* ~"그럴지도 모르오 내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62780 /* ~"그럴지도. 그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62781 /* ~"모르겠소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 339 // from: 330.5
  SAY #62782 /* ~"당신은 이 수호자란 사람을 찾아가 얘기를 해야 할 것 같군요. 그와 대화를 하면 많은 수수께끼가 풀릴 거예요. 하지만 이 수호자란 존재는 당신이 '죽음'을 되찾는 것을 원하지 않는 것 같아요."~ */
  IF ~~ THEN REPLY #62783 /* ~"그럴지도 모르오. 내 상황에 대해 다른 의견이 있다면 듣고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62784 /* ~"그 밖에도 당신에게 질문하고 싶은 것들이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62785 /* ~"그럴지도 모르오. 하지만 그렇다면 그는 실망하게 될 거요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 340 // from: 279.3
  SAY #62786 /* ~"그녀는 강하고, 유능하며, 열정적이에요. 오래 전에 그녀를 만나 매음굴로 데려올 수 있었더라면 좋았을 텐데... 그렇다면 많은 것들이 달라졌겠지요." 그레이스는 잠시 당신을 살펴본다. "당신은 그녀에 대해 어떻게 생각하세요?"~ */
  IF ~~ THEN REPLY #62787 /* ~"그녀는 당신을 별로 좋아하지 않는 것 같소."~ */ GOTO 341
  IF ~~ THEN REPLY #62788 /* ~"그녀와 사랑에 빠질지도 모르겠소."~ */ GOTO 342
  IF ~~ THEN REPLY #62789 /* ~"나는 그녀를 친구로 생각할 뿐이오."~ */ GOTO 343
  IF ~~ THEN REPLY #62790 /* ~"나는 그녀에 대해 별 관심이 없소."~ */ GOTO 343
  IF ~~ THEN REPLY #62791 /* ~"나는 그녀가 싫소."~ */ GOTO 344
  IF ~~ THEN REPLY #62792 /* ~"나는 그녀를 신뢰하지 않소."~ */ GOTO 346
  IF ~~ THEN REPLY #62793 /* ~"그녀는 쓸모가 있소, 단지 그뿐이오."~ */ GOTO 343
  IF ~~ THEN REPLY #62794 /* ~"그 일에 대해서는 얘기하고 싶지 않소."~ */ GOTO 347
END

IF ~~ THEN BEGIN 341 // from: 340.0
  SAY #62795 /* ~"동의해요..." 그 미소를 짓는다. "하지만 제 질문을 그렇게 쉽게 회피하실 수는 없지요. 당신은 그녀에 대해 어떻게 생각하세요?"~ */
  IF ~~ THEN REPLY #62796 /* ~"그녀와 사랑에 빠질지도 모르겠소."~ */ GOTO 342
  IF ~~ THEN REPLY #62797 /* ~"나는 그녀를 친구로 생각할 뿐이오."~ */ GOTO 343
  IF ~~ THEN REPLY #62798 /* ~"나는 그녀에 대해 별 관심이 없소."~ */ GOTO 343
  IF ~~ THEN REPLY #62799 /* ~"나는 그녀가 싫소."~ */ GOTO 344
  IF ~~ THEN REPLY #62800 /* ~"나는 그녀를 신뢰하지 않소."~ */ GOTO 346
  IF ~~ THEN REPLY #62801 /* ~"그녀는 쓸모가 있소, 단지 그뿐이오."~ */ GOTO 343
  IF ~~ THEN REPLY #62802 /* ~"그 일에 대해서는 얘기하고 싶지 않소."~ */ GOTO 347
END

IF ~~ THEN BEGIN 342 // from: 340.1 341.0
  SAY #62803 /* ~"그럼 그녀에게 그렇게 말해주세요."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62804 /* ~"모르겠소... 나는 내가 가는 곳마다 파멸을 불러오며, 나와 관계된 사람들은 예외없이 불행해졌소. 데이오나라의 경우에는 특히 더 그랬소. 그냥 가만히 있는 것이 최선일 것 같소."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
Global("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62805 /* ~"모르겠소... 나는 내가 가는 곳마다 파멸을 불러오며, 나와 관계된 사람들은 예외없이 불행해졌소. 데이오나라의 경우에는 특히 더 그랬소. 그냥 가만히 있는 것이 최선일 것 같소."~ */ GOTO 359
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",1)
~ THEN REPLY #62806 /* ~"모르겠소... 나는 내가 가는 곳마다 파멸을 불러오며, 나와 관계된 사람들은 예외없이 불행해졌소. 데이오나라의 경우에는 특히 더 그랬고 래벌도 마찬가지요. 왜 그녀가 나에게 끌렸는지는 상상할 수조차 없으나, 나는 그녀도 이용했소. 내 감정을 함부로 드러내지 않도록 조심하는 것이 좋을 것 같소."~ */ GOTO 358
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
GlobalGT("Ravel","GLOBAL",0)
Global("Deionarra_SS_Grace","GLOBAL",0)
~ THEN REPLY #62807 /* ~"모르겠소... 나는 내가 가는 곳마다 파멸을 불러오며, 나와 관계된 사람들은 예외없이 불행해졌소. 데이오나라의 경우에는 특히 더 그랬고 래벌도 마찬가지요. 왜 그녀가 나에게 끌렸는지는 상상할 수조차 없으나, 나는 그녀도 이용했소. 내 감정을 함부로 드러내지 않도록 조심하는 것이 좋을 것 같소."~ */ GOTO 359
  IF ~~ THEN REPLY #62808 /* ~"하게 되더라도 그건 *내* 선택에 의한 것이 될 것이오."~ */ GOTO 343
  IF ~~ THEN REPLY #62809 /* ~"모르겠소... 두고 봅시다. ~ */ GOTO 343
END

IF ~~ THEN BEGIN 343 // from: 340.2 340.3 340.6 341.1 341.2 341.5 342.4 342.5 345.0 346.0
  SAY #62810 /* ~"알겠어요."~ */
  IF ~~ THEN REPLY #62811 /* ~"다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62812 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62813 /* ~"그럼 좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 344 // from: 340.4 341.3
  SAY #62814 /* ~"왜죠?"~ */
  IF ~~ THEN REPLY #62815 /* ~"가장 큰 원인은 그녀의 말투요... 그 밖에도 그녀는 애초에 내가 시체 안치소에 버려지게 한 원흉이며, 마족의 피가 섞인 벌통의 도둑이고, 내가 하는 일마다 건방지게 참견을 하오. 더 이상 얘기할 필요가 있겠소?"~ */ GOTO 345
  IF ~~ THEN REPLY #62816 /* ~"다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62817 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62818 /* ~"그럼 좋소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 345 // from: 344.0
  SAY #62819 /* ~"그럼 왜 그녀와 함께 여행을 하는 거죠?"~ */
  IF ~~ THEN REPLY #62820 /* ~"그녀는 쓸모가 있소. 그녀와 가까이 지낼 필요만 없다면 별 상관이 없소."~ */ GOTO 343
  IF ~~ THEN REPLY #62821 /* ~"그 얘기는 관두시오. 다른 사람에 대해 물어보고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62822 /* ~"그 얘기는 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62823 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 346 // from: 340.5 341.4
  SAY #62824 /* ~"왜 그녀를 신뢰하지 않죠?"~ */
  IF ~~ THEN REPLY #62825 /* ~"내가 죽었을 때 그녀는 공교롭게도 머뭇거리는 탄식의 골목에서 날 발견했소, 다른 모든 수집자들은 그 곳에 들어가길 꺼렸는데 말이오. 또한 그녀는 파로드의 수양딸이고, 마족의 피가 섞인 벌통의 도둑이오. 더 이상 얘기할 필요가 있겠소?"~ */ GOTO 343
  IF ~~ THEN REPLY #62826 /* ~"그 얘기는 관두시오. 다른 사람에 대해 물어보고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62827 /* ~"그 얘기는 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62828 /* ~"이 일에 대해서는 다른 기회에 논의합시다. 지금은 그만 가도록 합시다."~ */ EXIT
END

IF ~~ THEN BEGIN 347 // from: 340.7 341.6
  SAY #62829 /* ~"금욕은 나쁠 것이 없지요." 그레이스는 미소를 짓는다. "하지만 지속적인 금욕은 어려울 수도 있어요."~ */
  IF ~~ THEN REPLY #62830 /* ~"*당신*이라면 누구보다 잘 알 거요."~ */ GOTO 361
  IF ~~ THEN REPLY #62831 /* ~"좋소, 좋아... 나는 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62832 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62833 /* ~"아마 그럴지도. 갑시도."~ */ EXIT
END

IF ~~ THEN BEGIN 348 // from: 205.5
  SAY #62834 /* ~그레이스는 조용히 말한다. "고통." 그녀는 당신 팔의 심벌을 잠시 살펴본다. "휄은..." 그녀는 숨을 들이쉰다. "정신은 잊어버렸을지라도 육신은 고통받고 있다는 사실을 알고 있다고 했어요. 휄은 그 룬이 마치 자석처럼 다른 고통받는 영혼들을 당신에게로 끌어당긴다고 말했어요."~ */
  IF ~~ THEN REPLY #62835 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62836 /* ~"아마 그럴지도. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 349 // from: 139.16
  SAY #62837 /* ~"아니... 그럴 필요는 별로 거의 없어요, 그리고 저는 차가운 쇠나 심지어는 강철도 오래 만질 수가 없어요. 하지만 제게는 여러 종류의 천연적인 방어 능력이 있기 때문에 적의 공격을 상당 수준 차단할 수가 있어요."~ */
  IF ~~ THEN REPLY #62838 /* ~"예를 들어?"~ */ JOURNAL #61616 /* ~훨-후럼-그레이스는 내게 그녀의 키스가 희생자로부터 생명을 훔친다고 말해주었다... 왠지 그 사실은 나를 자극시킨다.  난 죽을 수가 없다, 그렇지 않은가? 흐음. 그것을 염두에 두도록 해야겠다. ~ */ GOTO 350
  IF ~~ THEN REPLY #62839 /* ~"아. 다른 질문이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62840 /* ~"알겠소... 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 350 // from: 349.0
  SAY #62841 /* ~"서큐버스의 키스는 인간들에게 있어 치명적이에요 -  하지만 대개 그들은 죽음에 직면해서야 그 사실을 깨닫지요." 그레이스는 탄식을 한다. "필요하다면 그 능력을 사용할 수도 있어요."~ */
  IF ~~ THEN REPLY #62842 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62843 /* ~"흥미롭군... 어, 내 말은 소름끼친다는 뜻이오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 351 // from: 205.2
  SAY #62844 /* ~"맞아요. 이브즈에게 이야기를 해줘야 그녀의 불행만 더 커질 뿐이에요... 그리고 제 이야기는 그녀의 진실의 탐구에 아무런 도움이 되지 못해요."~ */
  IF ~~ THEN REPLY #62845 /* ~"내게 얘기해줄 수 있겠소?"~ */ GOTO 352
  IF ~~ THEN REPLY #62846 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62847 /* ~"아마 그럴지도. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 352 // from: 205.3 206.1 207.2 212.0 351.0
  SAY #62848 /* ~"그것은 긴 이야기이고 사람들이 생각하는 것만큼 흥미롭지도 않아요." 그녀는 한숨을 쉰다. "그것은 전쟁과 노예 생활로 얽힌 이야기예요. 별로 유쾌한 이야기가 아니죠."~ */
  IF ~~ THEN REPLY #62849 /* ~"그래도 듣고 싶소."~ */ GOTO 353
  IF ~~ THEN REPLY #62850 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62851 /* ~"그럼 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 353 // from: 352.0
  SAY #62852 /* ~"좋아요...제 과거는 그다지 길지 않아요, 적어도 타나리의 기준으론 말이죠. 당신이 타나리에 대해서 잘 아는지는 모르겠지만, 우리 타나리는 혼돈과 사악으로 가득 찬 엄청난 수의 차원들로 구성된 차원인 어비스의 종족이에요."~ */
  IF ~~ THEN REPLY #62853 /* ~"계속하시오..."~ */ DO ~SetGlobal("Know_Grace_Succubus","GLOBAL",1)
~ GOTO 354
  IF ~~ THEN REPLY #62854 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 205
  IF ~~ THEN REPLY #62855 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 354 // from: 353.0
  SAY #62856 /* ~"저는 서큐버스로 마족 타나리의 일원이지요... 저는 어비스의 첫 번째 차원에서 자랐어요. 제 어머니도 서큐버스였지요. 당신도 잘 아시는 것처럼 서큐버스는 인간들을 유혹해 그 영혼을 어비스로 데려오지요. 내 어머니는 서큐버스 중에서도 가장 뛰어난 자들 중 하나였고, 수많은 인간들을 유혹하여 영원한 파멸로 빠뜨렸어요. 그녀는 이제 어비스에 살며 자신의 자녀들을 노예로 팔고 있지요."~ */
  IF ~~ THEN REPLY #62857 /* ~"당신 어머니가 당신을 노예로 팔았소?"~ */ GOTO 355
  IF ~~ THEN REPLY #62858 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 205
  IF ~~ THEN REPLY #62859 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 355 // from: 354.0
  SAY #62860 /* ~"그래요, 그녀는 저를 타나리의 숙적인 바테주에게 팔았어요. 제 생각에 그녀는 그들이 죽일 거라고 생각했던 것 같아요. 하지만 다른 분야에 대한 그녀의 해박한 지식에도 불구하고, 그녀는 바테주의 문화나 그들이 고문하는 것을 얼마나 즐기는지에 대해 별로 알지를 못했어요."~ */
  IF ~~ THEN REPLY #62861 /* ~"어떻게 탈출했소?"~ */ DO ~SetGlobal("Grace_History","GLOBAL",1)
~ GOTO 356
  IF ~~ THEN REPLY #62862 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 205
  IF ~~ THEN REPLY #62863 /* ~"충분히 들었으니 그만하시오. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 356 // from: 355.0
  SAY #62864 /* ~"바테주는 매우 자존심이 강한 종족이에요. 타나리가 어떤 분야에서든 그들을 이긴다는 것은 그들로선 결코 용납할 수 없는 일이었지요. 저는 가장 자존심이 강한 바테주들 중 하나에게 즉흥시 시합을 하자고 도전했고, 타나리로서의 제 본질이 제게 승리를 안겨 주었어요. 타나리는 혼돈의 존재로 제멋대로이며 예측을 할 수가 없어요. 바테주는 비록 더 교활하기는 하지만 규칙적인 습성을 지니고 있지요. 그들은 즉흥시가 어떤 것인지 이해는 하지만 실제로 하는 데는 능숙하지 않아요. 덕분에 전 자유를 얻을 수가 있었지요. 그리고 시길로 오게 되었어요.~ */
  IF ~~ THEN REPLY #62865 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 205
  IF ~~ THEN REPLY #62866 /* ~"내가 알고 싶었던 건 그것이 전부요. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 357 // from: 279.0
  SAY #62867 /* ~"무엇에 대해 얘기를 하고 싶으세요?"~ */
  IF ~  GlobalGT("Ravel_Kiss","GLOBAL",0)
!Global("Ravel_Kiss","GLOBAL",2)
!Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #62868 /* ~"당신도 알았으면 하오. 내가 미로에서 래벌에게 키스했을 때 나는..."~ */ GOTO 281
  IF ~~ THEN REPLY #62869 /* ~"솔직히 말해서 나는 나에 대한 당신 감정을 알고 싶소."~ */ GOTO 287
  IF ~~ THEN REPLY #62870 /* ~"나는 내 상황에 대한 당신 생각을 알고 싶소."~ */ GOTO 330
  IF ~~ THEN REPLY #62871 /* ~"내가 누구일지에 대해 짐작이라도 가시오?"~ */ GOTO 288
  IF ~~ THEN REPLY #62872 /* ~"그 얘기는 관두시오. 다른 사람에 대해 얘기하고 싶소..."~ */ GOTO 279
  IF ~~ THEN REPLY #62873 /* ~"그 얘기는 관두시오. 다른 질문을 하겠소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62874 /* ~"그건 중요하지 않소. 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 358 // from: 342.0 342.2
  SAY #62875 /* ~"데이오나라라면 갈망의 감각석의 체험 속에 있었던 여자가 아닌가요? 당신의 전신을 사랑했던 여자죠?"~ */
  IF ~~ THEN REPLY #62876 /* ~"그렇소. 나는 그녀에게 끔찍한 짓을 했으나 그것이 뭔지는 모르겠소."~ */ GOTO 359
END

IF ~~ THEN BEGIN 359 // from: 342.1 342.3 358.0
  SAY #62877 /* ~"그것에 대해 저는 이렇게 말하겠어요 - 진실되고 강한 사랑은 다원 우주조차 움직일 수 있으며, 내가 지금까지 체험한 것들 중에서 한 사람이 다른 사람에게 느끼는 *감정*의 진실보다 더 진실된 것은 없다고."~ */
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN GOTO 360
  IF ~~ THEN REPLY #62879 /* ~"아마 그럴지도. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62880 /* ~"당신이 옳을지도 모르겠소. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62881 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 360 // from: 359.0
  SAY #62882 /* ~"당신의 감정을 다른 사람들로부터 감추기 전에 이걸 알도록 하세요 - 사랑은 강해요, 래벌처럼 뒤틀린 사악한 자의 마음 속으로까지 파고 들어가 그녀로 하여금 자기 자신보다 다른 사람을 더 소중히 생각하게 만들 정도로. 래벌과 같은 사람의 마음을 바꾸기 위해서는 얼마나 엄청난 *힘*이 필요한지 모르지는 않으시겠죠? 많은 고통의 원흉의 되기는 하였으나 그것이 가져온 선에 대해서도 평가를 할 필요는 있다고 생각해요."~ */
  IF ~~ THEN REPLY #62883 /* ~"아마 그럴지도. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62884 /* ~"당신이 옳을지도 모르겠소. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62885 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 361 // from: 347.0
  SAY #62886 /* ~"아... 각오하고 있었어요" 훨-후럼-그레이스가 미소를 짓는다. " 그것에 대해 저는 이렇게 말하겠어요 - 한 사람이 다른 사람에게 느끼는 *감정*은 다원 우주조차 움직일 수 있으며, 한 사람이 다른 사람에게 느끼는 *감정*보다 더 진실된 것은 없다고."~ */
  IF ~~ THEN REPLY #62887 /* ~"아마 그럴지도. 다른 사람에 대해 얘기하고 싶소."~ */ GOTO 279
  IF ~~ THEN REPLY #62888 /* ~"당신이 옳을지도 모르겠소. 다른 질문이 있소..."~ */ GOTO 139
  IF ~~ THEN REPLY #62889 /* ~"이 일에 대해서는 나중에 얘기하도록 합시다. 그만 갑시다."~ */ EXIT
END

IF ~~ THEN BEGIN 362 // from:
  SAY #63241 /* ~"무수히 많아요."~ [FFG299] */
  IF ~~ THEN EXTERN ~BMORTE~ 33
END

IF ~~ THEN BEGIN 363 // from:
  SAY #63245 /* ~"모트, 어떤 차원에서는 어릿광대를 불쏘시개로 쓴다고 하는군요."~ [FFG300] */
  IF ~~ THEN EXTERN ~BMORTE~ 35
END

IF ~~ THEN BEGIN 364 // from:
  SAY #63246 /* ~"당신의 행운은 우리들 모두를 감싸 주는 것 같아요."~ [FFG301] */
  IF ~~ THEN EXTERN ~BMORTE~ 37
END

IF ~~ THEN BEGIN 365 // from:
  SAY #63248 /* ~"아니요, 그녀는 그냥 예쁜 것이 아니라, 아름답다고 해도 손색이 없어요."~ [FFG322] */
  IF ~~ THEN DO ~SetGlobal("Morte_Talked_Grace","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 366 // from:
  SAY #63469 /* ~"제가 머무르는 것이 허용되는 한."~ [FFG317] */
  IF ~~ THEN EXTERN ~BANNAH~ 17
END

IF ~~ THEN BEGIN 367 // from:
  SAY #63470 /* ~"과연 내가 그 곳으로 다시 돌아가게 될 지조차 모르겠어요."~ [FFG318] */
  IF ~~ THEN EXTERN ~BANNAH~ 19
END

IF ~~ THEN BEGIN 368 // from:
  SAY #63471 /* ~"조심하도록 하겠어요. 하지만 하지만 내겐 그런 갈망은 없어요."~ [FFG319] */
  IF ~~ THEN EXTERN ~BANNAH~ 21
END

IF ~~ THEN BEGIN 369 // from:
  SAY #63472 /* ~"우리 일족 모두 다 그런 건 아니에요, 안나. 편견을 버리라고 보다 개방적이 되라고  권하고 싶군요. 당신에게도 마족의 피가 흐르고는 있지만, 당신에게는 장점도 많아요."~ [FFG319A] */
  IF ~~ THEN EXTERN ~BANNAH~ 22
END

IF ~~ THEN BEGIN 370 // from:
  SAY #63473 /* ~"안나, 질투는 양날의 칼이에요. 당신이 계속-"~ [FFG320] */
  IF ~~ THEN EXTERN ~BANNAH~ 24
END

IF ~~ THEN BEGIN 371 // from:
  SAY #63474 /* ~"알겠어요."~ [FFG320A] */
  IF ~~ THEN DO ~SetGlobal("Annah_Talked_Grace","GLOBAL",4)
~ EXIT
END

IF ~~ THEN BEGIN 372 // from:
  SAY #63475 /* ~"이보세요, 안나, 우리는-"~ [FFG321] */
  IF ~~ THEN EXTERN ~BANNAH~ 26
END

IF ~~ THEN BEGIN 373 // from:
  SAY #63697 /* ~"자, 모트."~ [FFG332] */
  IF ~~ THEN EXTERN ~DMORTE~ 642
END

IF ~~ THEN BEGIN 374 // from:
  SAY #63698 /* ~"오? 거기에는 모드론도 포함되나요?"~ [FFG302] */
  IF ~~ THEN EXTERN ~BNORDOM~ 28
END

IF ~~ THEN BEGIN 375 // from:
  SAY #63699 /* ~"누가 당신에게 그런 이야기를 해주었죠, 노돔?"~ [FFG303] */
  IF ~~ THEN EXTERN ~DMORTE~ 644
END

IF ~~ THEN BEGIN 376 // from:
  SAY #63700 /* ~"미안하지만 뭐라고 하셨죠?"~ [FFG333] */
  IF ~~ THEN EXTERN ~BNORDOM~ 31
END

IF ~~ THEN BEGIN 377 // from:
  SAY #63701 /* ~"미안하지만 뭐라고 하셨죠?"~ [FFG334] */
  IF ~~ THEN EXTERN ~BNORDOM~ 33
END

IF ~~ THEN BEGIN 378 // from:
  SAY #63702 /* ~"글쎄요... 편하기 때문이라고 할까요. 그리고 나는 날개를 좋아해요"~ [FFG334A] */
  IF ~~ THEN EXTERN ~BNORDOM~ 34
END

IF ~~ THEN BEGIN 379 // from:
  SAY #63703 /* ~"노돔, 제게 구애를 하는 건가요?"~ [FFG334B] */
  IF ~~ THEN EXTERN ~BNORDOM~ 35
END

IF ~~ THEN BEGIN 380 // from:
  SAY #63860 /* ~"그러한 '죄'는 타나리의 법을 어기는 것이 아니에요, 베일로. 내 길은 내 자유 의지로 선택한 것이지 형벌이 아니에요."~ [FFG304] */
  IF ~~ THEN EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",3)
~ THEN BEGIN 381 // from:
  SAY #68209 /* ~당신의 힘이 훨-후럼-그레이스에게 닿자, 그녀는 어지러운 듯한 표정으로 일어나기 시작한다 - 그녀는 이러한 상황에서도 평상시의 태도를 유지하고 있다.~ */
  IF ~  Global("Absorb","GLOBAL",0)
~ THEN REPLY #68210 /* ~"훨-후럼-그레이스, 우리는 후회의 요새에 와 있소, 그리고 나는 내 살인자를 찾아냈소. 그건 다름 아닌 내 죽음으로 그것은 나와는 별도의 개체로 존재하고 있소. 난 지금 당신 도움이 절실히 필요하오."~ */ DO ~SetGlobal("Fortress_Grace","GLOBAL",4)
JoinPartyEx(TRUE)
~ GOTO 382
  IF ~  GlobalGT("Absorb","GLOBAL",0)
~ THEN REPLY #68354 /* ~훨-후럼-그레이스.~ */ GOTO 383
END

IF ~~ THEN BEGIN 382 // from: 381.0
  SAY #68211 /* ~그녀는 천천히 고개를 끄덕인다. 당신 이야기를 듣자 그녀에게 힘이 돌아오는 듯하다. "우리가 일단 이 곳에 들어온 이상 우리를 쉽게 보내주지는 않을 것 같군요."~ [FFG070] */
  IF ~  Global("Trans_Vanish","GLOBAL",0)
~ THEN REPLY #68212 /* ~"어디 두고 봅시다..."~ */ EXTERN ~DTRANS~ 142
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68213 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68214 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68215 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68242 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68435 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68436 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tr",FALSE)
~ EXIT
  IF ~  Global("Trans_Vanish","GLOBAL",1)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68445 /* ~"어디 두고 봅시다..."~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 383 // from: 381.1
  SAY #68355 /* ~훨-후럼-그레이스는 당신을 쳐다본다, 그리고 잠시 당신을 자신의 눈 안에 담은 후 미소를 짓는다 - 하지만 그것은 무거운 슬픔을 띤 미소이다. "당신 목소리... 당신은 마침내 자신을 찾으셨나요?"~ */
  IF ~~ THEN REPLY #68356 /* ~그렇소. 그 대가는... 가혹했소. 나와 다른 이들의 수많은 삶이 희생되어야만 했소.~ */ GOTO 384
END

IF ~~ THEN BEGIN 384 // from: 383.0
  SAY #68357 /* ~"그러한 것의 대가는 돈으로 따질 수 없는 것이지요." 훨-후럼-그레이스는 당신 얼굴을 살핀다. "당신은 아직도..."~ */
  IF ~~ THEN REPLY #68358 /* ~나는 아직도 당신이 아는 바로 그 사람이오... 하지만 내 시각은... 변했소. 나는 당신을 잊지 않았소, 만약 그것이 당신이 우려하고 있는 것이라면.~ */ GOTO 385
END

IF ~~ THEN BEGIN 385 // from: 384.0
  SAY #68359 /* ~훨-후럼-그레이스는 다시 미소를 짓는다. 전과 마찬가지로 슬픈 미소이다. "아니요, 그건 제가 두려워하던 바가 아니었어요."~ */
  IF ~~ THEN REPLY #68360 /* ~나는 이 곳에 오래 머무를 수가 없소. 내 형벌이 나를 기다리고 있으며, 운명과 시간이 곧 이 곳에 도착할 것이오. 원한다면 당신을 시길로 돌려보내 주겠소.~ */ GOTO 386
END

IF ~~ THEN BEGIN 386 // from: 385.0
  SAY #68361 /* ~"그것은 제가 원하는 바가 아니에요." 훨-후럼-그레이스는 손을 내밀어 당신의 팔을 부드럽게 만진다. 약간의 따끔함이 느껴지고, 그녀는 그 감각을 가져간다. "저는 당신을 찾고 말겠어요, 마계의 그 어느 곳에 있다 하더라도 - 당신이 절 찾을 수 있을 것처럼."~ */
  IF ~~ THEN REPLY #68362 /* ~오랜 세월이 걸릴 것이오. 내가 갈 곳에서 시간은 1년이나 2년 단위로는 셀 수도 없소. 그리고 내가 저지른 범죄들은 그 자체로서 어떠한 감옥보다도 더 가혹한 감옥이오.~ */ GOTO 387
END

IF ~~ THEN BEGIN 387 // from: 386.0
  SAY #68363 /* ~"그 어떠한 감옥이나 차원도 우리를 떼어놓을 수는 없어요." 훨-후럼-그레이스의 얼굴이 돌처럼 단호해진다. "저를 계속 생각해 주세요, 그럼 우리는 다시 만나게 될 거예요."~ */
  IF ~~ THEN REPLY #68364 /* ~나는 당신이 날 위해 희생한 모든 것들을 결코 잊지 않을 것이오.~ */ GOTO 388
END

IF ~~ THEN BEGIN 388 // from: 387.0
  SAY #68365 /* ~그녀는 고개를 젓는다. "저를 잊지만 마세요."~ */
  IF ~~ THEN REPLY #68366 /* ~시간은 모든 것을 파괴하오. 하지만 나는 내가 할 수 있는 한 그것과 싸울 것이오. ~ */ GOTO 389
END

IF ~~ THEN BEGIN 389 // from: 388.0
  SAY #68367 /* ~"시간은 당신 적이 아니에요. 적은 영원이에요."~ [FFG196] */
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68368 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68369 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68370 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68371 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
~ THEN REPLY #68499 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68500 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68501 /* ~아마 그럴지도. 잘 가시오, 그레이스.~ */ DO ~QuitGame(FINALE,0,0)
~ EXIT
END

IF ~  Global("Fortress_Grace","GLOBAL",4)
~ THEN BEGIN 390 // from:
  SAY #68416 /* ~당신이 얘기를 하자 그레이스는 고개를 끄덕인다. "우리가 일단 이 곳에 들어온 이상 우리를 쉽게 보내주지는 않을 것 같군요."~ [FFG070] */
  IF ~~ THEN REPLY #68417 /* ~"그건 어디 두고 봅시다. 일단 내 죽음부터 상대합시다..."~ */ EXIT
END
