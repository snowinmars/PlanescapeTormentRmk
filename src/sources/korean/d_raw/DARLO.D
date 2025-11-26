// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARLO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARLO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #30049 /* ~이 당장이라도 무너질 것 같은 여인숙의 로비에 해당하는 장소에 키가 작은 대머리 사내가 서 있다. 그는 자신의 커다란 주먹코에 앉은 딱지를 떼는 데 온신경을 쏟느라 숱이 많은 눈썹을 찌푸리고 있다. ~ */
  IF ~~ THEN REPLY #30077 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #30078 /* ~그가 자신의 건강법을 실천하도록 내버려두고 방을 둘러본다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #30050 /* ~사내는 당신을 바라볼 생각도 하지 않는다. 대신 그는 모들뜬 눈으로 자신의 코를 계속 내려다보고 있다. "뭐요? 뭘 원하오?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30079 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 4
  IF ~  Dead("Nestor")
~ THEN REPLY #30080 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30081 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30082 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 2
  IF ~~ THEN REPLY #30083 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #30084 /* ~"방해해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.3 3.3 9.0
  SAY #30051 /* ~"물론이오... 돈만 있다면. 여기선 아무도 공짜로 묵을 수가 없소, 저기 있는 네스터라는 늙은이를 빼놓고는. 아무도 저 늙은이를 건드릴 정도로 정신이 나간 놈은 없으니 어쩔 수가 없지."~ */
  IF ~~ THEN REPLY #30085 /* ~"좋소. 숙박비는 얼마요?~ */ GOTO 4
  IF ~~ THEN REPLY #30086 /* ~"이 네스터란 사람에 대해 얘기해주시오."~ */ GOTO 5
  IF ~~ THEN REPLY #30087 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.4 9.5
  SAY #30052 /* ~"그것 참 멋지군." 그는 누런 이를 드러내며 빈정거리는 미소를 짓는다. "물론 당신은 원하는 답을 얻겠지. 하지만 난 먹고 살기 위해 장사를 해야 하오. 그러니 여기서 묵을 게 아니라면 당장 꺼지는 게 좋을 거요!" ~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30088 /* ~"알겠소. 그럼 잠을 잘 수 있겠소?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30089 /* ~"알겠소. 그럼 잠을 잘 수 있겠소?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30090 /* ~"알겠소. 그럼 잠을 잘 수 있겠소?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30091 /* ~"알겠소. 그럼 잠을 잘 수 있겠소?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30092 /* ~"알겠소. 그럼 한동안 휴식을 취하도록 하겠소."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30093 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 1.1 1.2 2.0 3.0 3.1 3.2 5.1 6.2 7.1 9.1 9.2 9.3
  SAY #30053 /* ~"숙박료는 동전 다섯 닢이오." 그는 자신의 더러운 손을 더욱 더러운 셔츠에 문질러 닦는다, 그리고 당신에게 손바닥을 내민다.~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30094 /* ~그에게 동전 다섯 닢을 준다. 휴식을 취한다.~ */ DO ~TakePartyGold(5)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #30095 /* ~"미안하오, 지금은 동전 다섯 닢이 없소. 나중에 다시 들리겠소. 안녕히 계시오."~ */ EXIT
  IF ~  PartyGoldGT(4)
~ THEN REPLY #30096 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #30054 /* ~"네스터는 저쪽 구석에 있는 미치광이 노인이오." 그는 엄지손가락으로 치켜들어 방의 뒤쪽을 가리킨다. "그는 정상이 아니니 그의 주위에서는 조심하시오. 그는 늘 자신의 포크에 대해 횡설수설하고 있소. 누가 저 늙은이 꼴 좀 보지 않게 해준다면 원이 없겠소."~ */
  IF ~~ THEN REPLY #30097 /* ~"왜 당신이 직접 내쫓지 않는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #30098 /* ~"관두시오. 숙박비는 얼마요?"~ */ GOTO 4
  IF ~~ THEN REPLY #30099 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #30055 /* ~"내가 시도를 하지 않은 줄 아슈? 나도 노력을 했다고! 하지만 그 결과를 좀 보시오... "그는 머리를 당신 쪽으로 들이대고 코에 앉은 피가 흐르는 딱지들을 가리킨다. "그 미친 놈한테 내 코를 물어뜯길 뻔 했소."~ */
  IF ~~ THEN REPLY #30100 /* ~"내가 당신을 위해 그를 처리해줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Arlo_1","GLOBALGood",1)
~ GOTO 7
  IF ~~ THEN REPLY #30101 /* ~"대가를 지불하겠다면 그를 내가 처리해 줄 수도 있소."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Arlo_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #30102 /* ~"관두시오. 숙박비는 얼마요?"~ */ GOTO 4
  IF ~~ THEN REPLY #30103 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #30056 /* ~"내가 제안을 하겠소. 만약 당신이 날 위해 그를 사라지게 해준다면 당신은 언제든지 여기서 공짜로 묵을 수가 있소. 좋소?"~ */
  IF ~~ THEN REPLY #30105 /* ~"좋소. 하겠소."~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",1)
~ JOURNAL #29872 /* ~나는 슬럼가의 보스인 알로를 위해 네스터라는 이름의 미친 늙은이를 제거하기로 합의했다. 그 작자는 여인숙에 아예 영구적으로 둥지를 틀었으며 아무도 그를 내쫓지 못한 모양이다. ~ */ GOTO 8
  IF ~~ THEN REPLY #30107 /* ~"그럼 관두시오. 숙박비는 얼마요?"~ */ GOTO 4
  IF ~~ THEN REPLY #30108 /* ~"관두시오. 내게 더 중요한 할 일들이 있소."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #30073 /* ~"그럼 여기서 멍하니 서 있지 말고 당장 착수를 하시오!" 그는 즉시 딱지를 떼는 일을 재개한다. "내가 바쁜 사람이란 걸 보고도 모르겠소?"~ */
  IF ~~ THEN REPLY #30109 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 11 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #30074 /* ~알로는 그가 가장 좋아하는 오락인 코에 앉은 딱지 떼기에 열중하고 있다. 당신이 다가가자 그는 당신을 눈 한쪽 구석으로 흘겨본다. "이젠 뭘 원하는 거요?"~ */
  IF ~  Global("Arlo_Quest","GLOBAL",0)
!Dead("Nestor")
!Global("Nestor_Quest","GLOBAL",2)
~ THEN REPLY #30110 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 2
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #30111 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 4
  IF ~  Dead("Nestor")
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30112 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 4
  IF ~  Global("Nestor_Quest","GLOBAL",2)
Global("Arlo_Quest","GLOBAL",0)
~ THEN REPLY #30113 /* ~"여기서 휴식을 취할 수 있겠소?"~ */ GOTO 4
  IF ~  Global("Arlo_Quest","GLOBAL",2)
~ THEN REPLY #30114 /* ~"한동안 휴식을 취하고 싶소."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #30115 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #30116 /* ~"귀찮게 해서 미안하오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Arlo_Quest","GLOBAL",1)
Dead("Nestor")
~ THEN BEGIN 10 // from:
  SAY #30075 /* ~"신들과 그들의 어머니에 걸고 말하겠는데, 내가 그를 사라지게 해 달라고 부탁했을 때 그건 그를 죽이라는 뜻은 아니었소!" 알로는 믿을 수 없다는 눈으로 당신을 노려본다. "젠장... 약속은 약속이오. 당신은 여기서 공짜로 묵을 수 있소. 하지만 환영받을 생각은 마시오."~ */
  IF ~~ THEN REPLY #30117 /* ~떠난다.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Arlo_2","GLOBALGood",-1)
AddexperienceParty(250)
~ JOURNAL #29870 /* ~나는 알로가 부탁한 대로 네스트를 제거했다. 그는 내가 늙은 미치광이를 처리한 방법에 충격을 받은 듯 했으나, 그럼에도 불구하고  내가 여인숙에서 공짜로 쉴 수 있게 해주기로 합의하였다. ~ */ EXIT
END

IF WEIGHT #1 ~  Global("Arlo_Quest","GLOBAL",1)
Global("Nestor_Quest","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #30076 /* ~"그래, 네스터는 고향으로 돌아갔소? 그도 그렇게 미친 사람은 아니었던 모양이군." 그는 당신 등을 다정하게 두드린다. "이젠 우리 모두 이 곳에서 발을 쭉 뻗고 휴식을 취할 수 있을 것 같소. 언제든지 원하는 때 와서 쉬시오, 친구."~ */
  IF ~~ THEN REPLY #30118 /* ~떠난다.~ */ DO ~SetGlobal("Arlo_Quest","GLOBAL",2)
AddexperienceParty(500)
~ JOURNAL #29869 /* ~네스터의 포크를 그에게 돌려주어 그가 고향으로 돌아가는 것을 도움으로서 나는 알로와 거래에서 내가 이행할 부분을 완수했다. 그는 내가 앞으로 그의 여인숙에서는 공짜로 쉴 수 있다고 알려주었다. ~ */ EXIT
END
