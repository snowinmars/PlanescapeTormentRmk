// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 오른쪽 이빨 하나가 없다. 그는 당신 곁에 있는 안나와 훨-후럼-그레이스를 보더니 불쾌한 쉿 소리를 낸다. "그 어비스의 해충들을 치워야 얘기를 할 수 있겠소. 그 때까지는 아무런 얘기도 할 수가 없소." 그는 다시 침을 뱉는다.~ */
  IF ~~ THEN REPLY #3059 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 오른쪽 이빨 하나가 없다. 그는 당신 곁에 있는 안나를 보더니 불쾌한 쉿 소리를 낸다. "그 작은 쥐새끼 같은 휜들링을 치워야 얘기를 할 수 있겠소. 그 때까지는 아무런 얘기도 할 수가 없소." 그는 다시 침을 잔뜩 내뱉는다.~ */
  IF ~~ THEN REPLY #12343 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 오른쪽 이빨 하나가 없다. 그는 당신 곁에 있는 훨-후럼-그레이스를 보더니 불쾌한 쉿 소리를 낸다. "그 어비스의 해충을 치워야 얘기를 할 수 있겠소. 그 때까지는 아무런 얘기도 할 수가 없소." 그는 다시 침을 뱉는다.~ */
  IF ~~ THEN REPLY #12345 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 오른쪽 이빨 하나가 없다. 그는 말한다. "아, 테가린, 우리 옛 친구가 다시 우리를 찾아왔군."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~당신이 다가가자 아비샤이는 일어선다. 그는 훨-후럼-그레이스와 안나를 가리킨다. "그 혼돈의 쥐새끼들을 우리 곁에서 치우시오, 그러면 당신과 거래를 하겠소. 그 전에는 우리는 당신과 얘기를 하지 않겠소." ~ */
  IF ~~ THEN REPLY #12348 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~당신이 다가가자 아비샤이는 일어선다. 그는 안나를 가리킨다. "그 혼돈의 쥐새끼를 우리 곁에서 치우시오, 그러면 당신과 거래를 하겠소. 그 전에는 우리는 당신과 얘기를 하지 않겠소." ~ */
  IF ~~ THEN REPLY #12350 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~당신이 다가가자 아비샤이는 일어선다. 그는 훨-후럼-그레이스를 가리킨다. "혼돈의 쥐새끼를 우리 곁에서 치우시오, 그러면 당신과 거래를 하겠소. 그 전에는 우리는 당신과 얘기를 하지 않겠소." ~ */
  IF ~~ THEN REPLY #12352 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~"탕자가 돌아왔군." 마족은 쉿 소리를 내며 당신을 향해 미소짓는다. 그의 입 한 쪽 구석에서는 유독한 증기가 나오고 있다. "기억은 돌아왔소, 친구?"~ */
  IF ~~ THEN REPLY #12354 /* ~"무슨 뜻이오?"~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~"질문? 우리가 대답해줄 수 있을지도 모르지. 우리는 기꺼이 당신을 돕겠소, 친구."~ */
  IF ~~ THEN REPLY #12358 /* ~"당신은 누구요?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~"뭘 하고 있는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~"이 곳은 어떤 곳이오?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~"마족에 대해 얘기해주시오."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~"파로드란 이름의 수집자를 아시오?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~"나는 당신이 전에 얘기한 거래에 대해 고려하고 있소."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~"마족과 거래한 수집자에 대해 혹시 아는 것이 없소?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~"이 수집자가 어디에 숨었는지 다시 말해주겠소?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~"그 펜던트는 내게 어떤 힘을 줄 수가 있소?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~"나는 이리니즈로부터 펜던트를 빼앗는 데 실패했소, 그리고 이제 그녀는 사라졌소."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~거짓말: "나는 이리니즈를 찾을 수가 없었소, 그녀는 당신이 말한 골목에 없었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~"펜던트가 여기 있소."~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~"테가린, 나도 정말 화가 나네. 하지만 참아야지. 벌써 수백 년이라는 세월이 지났고, 우리는 인간이 나이를 먹으면 정신이 오락가락한다는 걸 알잖아."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~이덜그린은 자기 동료와 얘기를 하느라 당신을 무시한다. "테가린, 자네는 또 한 번 정곡을 찔렀네. 하지만 '세 번 저주받은'이라는 호칭 때문에 필요 이상의 주목을 끄는 건 좋은 일이 아니지." ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~"아니, 저기 떠다니는 작은 해골은 누군가? 자네로부터는 베이터의 감미로운 부패하는 향기가 나는군. 이 일에 대해서는 나중에 얘기하지..." 아비샤이는 관심을 다시 당신에게로 돌린다. "자 그럼... 당신은 질문할 것이 있다고 했소?"~ */
  IF ~~ THEN REPLY #12370 /* ~"당신은 누구요?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~"뭘 하고 있는 거요?"~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~"이 곳은 뭐 하는 곳이오?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~"마족에 대해 얘기해주시오."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~"파로드란 이름의 수집자를 아시오?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~"나는 어떤 일지를 찾고 있소."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~"나는 당신이 전에 얘기한 거래에 대해 고려하고 있소."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~"마족과 거래하는 수집자에 대해 혹시 아는 것이 없소?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~"이 수집자가 어디에 숨었는지 다시 말해주겠소?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~"그 펜던트는 내게 어떤 힘을 줄 수가 있소?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~"나는 이리니즈로부터 펜던트를 빼앗는 데 실패했소, 그리고 이제 그녀는 사라졌소."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~거짓말: "나는 이리니즈를 찾을 수가 없었소, 그녀는 당신이 말한 골목에 없었소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~"펜던트가 여기 있소."~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~"우리가 뭘 하고 있느냐고? 그건 명백하지 않소, 친구? 우리는 우리의 소중한 임무로부터 휴가를 얻어, 절실히 필요했던 휴식을 취하면서 우리의 영광스런 과업에 참여할 신병을 모집하고 있소. 물론 상관으로부터 허락은 받았소."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~"우리 관점으로는 두 종류의 마족이 있소: 옳은 마족과, 그렇지 않은 마족. 우리 바테주 진영이 옳소. 반대편 진영인 가증스럽고 저주받은 혼돈의 화신 타나리는 틀렸으며, 따라서 말살되어야만 하오. ~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~"나는 일지를 쓰지 않소, 친구, 그리고 당신도 그런 건 쓰지 않는 게 좋을 거요. 내 친애하는 동지 테가린에게 그 이유를 물으면 친절하게 가르쳐 줄 거요."~ */
  IF ~~ THEN REPLY #12380 /* ~"좋소. 테가'인, 왜 일지를 간직하지 말아야 한다는 거요?"~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~"나중에. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~"다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~"그래, 그렇소. 그가 아오?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~"물론이네. 자네가 옳아." 마족은 당신 쪽으로 고개를 돌린다. "당신은 이 수집자에 대해 무엇을 아시오, 친구?"~ */
  IF ~~ THEN REPLY #14741 /* ~"약간. 그가 이상한 습관을 가지고 있으며 그가 마족과 대화하는 것이 목격되었다는 것을 아는 정도요."~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~"아무 것도 아니오. 난 당신이 설명해주기를 바랐었소."~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~"아주 조금. 그에 대해서는 다른 기회에 물어보기로 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~"얘기를 해줄 수 있으면 좋겠지만 난 얘기하지 않기로 맹세를 했거든!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~"자네는 맹세하지 않았나, 테가린?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~"멋지군!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~테가린이 말을 꺼내기 전에 또 다른 마족이 가로막는다. "펜던트! 잊지를 말게!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~"...우리와 거래를 할 생각이 있소? 마치 옛날로 돌아간 것 같군..."~ */
  IF ~~ THEN REPLY #14743 /* ~"아니오. 거래하지 않겠소."~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~"무슨 생각을 하고 있었소?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~"당신에게 그 '수집자'에 대해 우리가 아는 것을 모두 얘기해주겠소..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~"...그의 약점, 그를 물리치는 법, 그리하여 그의 펜던트를 손에 넣는 법. 우리는 그것으로 당신을 더욱 강하게 만들어 줄 수 있소. 대신..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~"그렇소, 펜던트 말이오. 그건 인간의 해골처럼 생겼고, 그것의 꼭대기에는 6개의 수정이 빛을 발하고 있소." ~ */
  IF ~~ THEN REPLY #14745 /* ~"왜 당신 스스로 그것을 강탈하지 않소?"~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~"이 펜던트는 어떤 힘을 지니고 있소?"~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~"좋소."~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~"아니오. 거래하지 않겠소."~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~"우리는 그 '수집자'를 괴롭히거나 해치기는커녕 그에게 접근하는 것조차 금지되어 있소."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~"단지 당신을 위해서요."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~"그것에게 그 이상의 힘은 없소. 그건 실제로 매우 수동적인 물건이오."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~"물론이오, 하지만 우리에게 그런 아이템이 왜 필요한지 당신도 알 거요."~ */
  IF ~~ THEN REPLY #14749 /* ~"왜 당신 스스로 그것을 강탈하지 않소?"~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~"좋소."~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~"아니오. 거래하지 않겠소."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~"애석하오."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~"훌륭하오."~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~"그녀는 저주를 받아 그러한 모습이 되었소. 그녀의 힘의 대부분은 사제의 신성한 힘에 의해 말소되었소."~ */
  IF ~~ THEN REPLY #14752 /* ~"흥미롭군..."~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~"그들은 날면서 구구 우는 것들이오."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~"그녀의 시체로부터 펜던트를 떼어내 우리에게로 가져오시오, 친구. 우리는 그녀가 그 안에 저장한 힘으로 당신을 강하게 만든 후, 빈 장치는 우리가 가지겠소. ~ */
  IF ~~ THEN REPLY #14753 /* ~"이해하오."~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~"나는 이 일을 하지 않겠소. 거래는 없소."~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~"멋지군! 일을 끝내면 이 곳으로 돌아오시오."~ */
  IF ~~ THEN REPLY #14755 /* ~"떠나기 전에 질문을 좀 하고 싶소..."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~"그럼 안녕히 계시오."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~"정말 심하군!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~"그렇소, *훨씬* 강하게."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~"테가린! 어떻게 된 건가?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~"지금 그를 죽여서 베이터로 끌고 갈까?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~"하! 그가 투덜거리는 것 좀 보게, 테가린."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~"훌륭하군!" 이더그린은 당신으로부터 예메스의 펜던트를 잡아채서 테가린에게 던져 준다.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~이더그린은 눈길을 돌린다. 그의 관심은 갑자기 그의 옆에 있는 것에 쏠린다. ~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~"음? 아, 아니, 그러지 않았소."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~"미안하지만 불가능하오. 이제 그건 우리 것이오, 그리고 그걸 잃을 수는 없소. 우리가 당신을 돕는 것을 방해하고 있는 마법을 제거한 후에 다시 오시오."~ */
  IF ~~ THEN REPLY #14757 /* ~마족들을 공격한다.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~"흠. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~"뭐? 안돼! 당신은 그럴 수 없어!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~"그를 죽일까?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~"쓸모없는 쓰레기 같으니! 꺼져!"~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~"기다리시오... 펜던트를 가져 왔소."~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~떠난다.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~"보라고, 그가 펜던트를 가지고 돌아왔네!"~ */
  IF ~~ THEN REPLY #14761 /* ~"기다리시오, 내게 어떤 힘을 줄 거요?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~"펜던트가 여기 있소."~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~"펜던트는 내가 가지기로 했소."~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~"아, 누가 돌아왔는지 좀 보게. 미안하오, 친구. 하지만 당신이 펜던트를 가지고 돌아올 때까지 우리는 당신과 얘기하지 않겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #14764 /* ~떠난다.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~"누군지 좀 보게, 테가린..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~"그녀는 이 가게의 바로 북쪽에 있는 골목에서 두 건물 사이에 숨어 있을 것이오. 이른 저녁에 그 곳에서 그녀를 찾아보시오."~ */
  IF ~~ THEN REPLY #14765 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
