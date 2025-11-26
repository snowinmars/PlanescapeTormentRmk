// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTEGARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTEGARIN~

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3058 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 왼쪽 눈 아래에 작은 흉터가 있다. 그는 당신 곁에 있는 안나와 훨-후럼-그레이스를 보더니 불쾌한 쉿 소리를 낸다. "그 어비스의 해충들을 치워야 얘기를 할 수 있겠소. 그 때까지는 아무런 얘기도 할 수가 없소." 그는 다시 침을 잔뜩 내뱉는다.~ */
  IF ~~ THEN REPLY #12396 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3060 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 왼쪽 눈 아래에 작은 흉터가 있다. 그는 당신 곁에 있는 안나를 보더니 불쾌한 쉿 소리를 낸다. "그 작은 쥐새끼 같은 휜들링을 치워야 얘기를 할 수 있겠소. 그 때까지는 아무런 얘기도 할 수가 없소." 그는 다시 침을 잔뜩 내뱉는다.~ */
  IF ~~ THEN REPLY #12397 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12398 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 왼쪽 눈 아래에 작은 흉터가 있다. 그는 당신 곁에 있는 훨-후럼-그레이스를 보더니 불쾌한 쉿 소리를 낸다. "그 어비스의 해충을 치워야 얘기를 할 수 있겠소. 그 때까지는 아무런 얘기도 할 수가 없소." 그는 다시 침을 잔뜩 내뱉는다.~ */
  IF ~~ THEN REPLY #12399 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12400 /* ~이 비늘이 있는 마족은 그의 바로 옆에 있는 마족과 매우 흡사하게 생겼다. 그들은 왼쪽 귀에 귀걸이를 하고 있으며, 두 마리 모두 검은색의 파충류형 생물로 박쥐와 같은 날개가 달려 있다. 이 마족은 왼쪽 눈 아래에 작은 흉터가 있다. "안녕하시오, 친구. 다시 만나게 되어 정말 반갑소."~ */
  IF ~~ THEN REPLY #12401 /* ~"다시"?~ */ GOTO 10
END

IF ~  InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12402 /* ~당신이 다가가자 아비샤이는 일어선다. 그는 훨-후럼-그레이스와 안나를 가리킨다. "그 혼돈의 쥐새끼들을 우리 곁에서 치우시오, 그러면 당신과 거래를 하겠소. 그 전에는 우리는 당신과 얘기를 하지 않겠소." ~ */
  IF ~~ THEN REPLY #12403 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12404 /* ~당신이 다가가자 아비샤이는 일어선다. 그는 안나를 가리킨다. "그 혼돈의 쥐새끼를 우리 곁에서 치우시오, 그러면 당신과 거래를 하겠소. 그 전에는 우리는 당신과 얘기를 하지 않겠소." ~ */
  IF ~~ THEN REPLY #12405 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !InParty("Annah")
InParty("Grace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12406 /* ~당신이 다가가자 아비샤이는 일어선다. 그는 훨-후럼-그레이스와 안나를 가리킨다. "그 혼돈 쥐새끼들을 우리 곁에서 치우시오, 그러면 당신과 거래를 하겠소. 그 전에는 우리는 당신과 얘기를 하지 않겠소." ~ */
  IF ~~ THEN REPLY #12407 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12408 /* ~"탕자가 돌아왔군." 마족은 쉿 소리를 내며 당신을 향해 미소짓는다. 그의 입 한 쪽 구석에서는 유독한 증기가 나오고 있다. "기억은 돌아왔소, 친구?"~ */
  IF ~~ THEN REPLY #12409 /* ~"무슨 뜻이오?"~ */ GOTO 10
  IF ~~ THEN REPLY #14280 /* ~"질문하고 싶은 것이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14281 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #12410 /* ~"그래, 이덜그린. 하지만 그의 눈은 예전처럼 번뜩이지 않는군. 자네는 그가 왜 우리에게 돌아왔다고 생각하나? 당신은 왜 우리에게로 돌아왔소, 친구?"~ */
  IF ~~ THEN REPLY #12411 /* ~"당신은 누구요?"~ */ GOTO 9
  IF ~~ THEN REPLY #12412 /* ~"무엇을 하고 있는 거요?"~ */ EXTERN ~DAETHEL~ 12
  IF ~~ THEN REPLY #12413 /* ~"여기는 어디요?"~ */ GOTO 14
  IF ~~ THEN REPLY #12414 /* ~"마족에 대해 얘기해주시오."~ */ EXTERN ~DAETHEL~ 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12415 /* ~"당신은 파로드란 수집자를 아시오?"~ */ GOTO 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12416 /* ~"나는 어떤 일지를 찾고 있소."~ */ EXTERN ~DAETHEL~ 14
  IF ~~ THEN REPLY #12417 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #12418 /* ~"아, 이덜그린, 시간이 우리 친구로부터 기억을 훔쳐 갔군! 당신은 정말로 우리를 기억하지 못하오? 난 정말 화가 나오."~ */
  IF ~~ THEN REPLY #12419 /* ~"하지만..."~ */ EXTERN ~DAETHEL~ 9
END

IF ~~ THEN BEGIN 10 // from: 3.0 7.0
  SAY #12420 /* ~"내 말은 우리의 오랜 적인 시간이 당신에게 지독한 피해를 입혔다는 뜻이오. 그것은 당신의 기억을 강탈하고 회상을 훔쳤소. 만약 당신이 우리를 기억하지 못하다면 그건 당신이 인간의 약점들 중 하나의 제물이 되었기 때문이오. 우리는 당신의 옛 친구들이오. 우리가 뭘 도와주면 되겠소?"~ */
  IF ~~ THEN REPLY #12421 /* ~"질문할 것들이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12423 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12422 /* ~"아, 좋은 질문이오. 친구, 우리는 베이터로부터 휴가를 나온 한 쌍의 아비샤이들이오. 나는 세 번 저주받은 테가린으로, 어떠한 상황에서도 최선의 방법을 찾아내는 능력 덕분에 그런 호칭을 얻었소. 이쪽에 있는 건 이덜그린으로 특별한 호칭은 없소. 그렇다고 해서 노력이 부족해 그런 건 아니오."~ */
  IF ~~ THEN REPLY #12424 /* ~"노력의 부족? 그게 무슨 뜻이오?"~ */ EXTERN ~DAETHEL~ 10
END

IF ~~ THEN BEGIN 12 // from:
  SAY #12425 /* ~테가린은 자신이 대답할 차례인데도 동료와 얘기를 하느라 당신을 무시한다. "다시 한 번 말하지만 주목을 받는 편이 못 받는 것보다는 낫네." 아비샤이는 다시 당신 쪽을 향한다. "친구, 이거면 우리의 정체에 대한 당신의 질문의 답이 되겠소?"~ */
  IF ~~ THEN REPLY #12426 /* ~"그래야 할 것 같소. 그 밖에도 질문할 것들이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12427 /* ~"그래야 할 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #12428 /* ~"지금 현재 우리는 이 멋진... 가게의 분위기를 즐기고 있소. 그리고 물론 우리는 옛 친구의 귀환도 축하하고 있소. 하지만 가끔씩 미풍을 타고 날아오는 선의 악취는 우리를 육체적, 정신적, 그리고 영적으로 약화시키오. 다행히도 이 구역의 공기에는 고통과 애원의 짜릿한 맛이 감돌고 있소. 당신도 그렇게 생각하지 않소?" 마족은 다시 당신을 보며 천박하게 웃는다.~ */
  IF ~~ THEN REPLY #12429 /* ~"다른 질문이 있소."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12430 /* ~"정말이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.2
  SAY #12431 /* ~"이 곳은 불타는 시체 선술집으로 당신 민족이 이 도시에 세운 술집들 중에서는 꽤 괜찮은 곳이오. 입구에 있는 불타는 친구의 시적 정의는 이 곳을 멋지게 장식해주고 있소. 그 밖에도 물어보고 싶은 것이 있소?" ~ */
  IF ~~ THEN REPLY #12432 /* ~"그렇소, 그 밖에도 질문할 것들이 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12433 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #12434 /* ~"블러드 워의 직접적인 책임은 타나리에게 있소! 그들만 없었다면 우리는 마계에 평화를 가져왔을 것이며, 이 염병할 전쟁을 하는 일도, 다른 차원으로 전쟁이 번져 나약한 자칭 정의의 사도들이 걱정을 하는 일도 없었을 것이오. 다원 우주의 불행한 상황에 대한 책임은 모두 타나리에게 있소."~ */
  IF ~~ THEN REPLY #12435 /* ~"그건 내가 질문한 것과는 다르오. 나는 무엇이 당신들을 그들로부터 구별하느냐고 물었소."~ */ GOTO 16
  IF ~~ THEN REPLY #12436 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12437 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #12438 /* ~마족은 말을 멈춘다, 그리고 잠시 후 그의 표정이 밝아진다. "아, 그렇소. 보다시피 우리는 법과 질서를 상징하오. 법을 어기는 자는 반드시 처벌을 받아야 하오. 만약 법이 없다면 무질서 상태에 빠질 것이오, 그리고 아마 당신도 어비스의 무질서 상태가 어떤 결과를 초래했는지 알 것이오. 그건 상상조차 할 수 없는 끔찍한 것들을 만들어 냈소. 우리가 때때로 좀 과격한 행동을 취하는 건 타나리에 의해 대표되는 혼돈의 세력에 대항하기 위해서요. 우리는 누구도 해치고 싶지 않소. 우리는 분명한 경계선을 긋고 싶을 뿐이오."~ */
  IF ~~ THEN REPLY #12439 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12440 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 8.4
  SAY #12441 /* ~"파로드? 그 이름은 들어본 적이 있소. 그는 일종의 현자가 아니오? 아니면 사령술사나 싸구려 점쟁이? 그에 대해 들어본 적은 있으나 애석하게도 그를 직접 알지는 못하오. 아마 다른 손님들... 중에... 당신을 도울 수 있는 사람이 있을지도 모르오."~ */
  IF ~~ THEN REPLY #12442 /* ~"아마 그럴지도. 그 밖에도 질문하고 싶은 것들이 있소."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #12443 /* ~"아마 그럴지도. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #12444 /* ~"그건 말이오, 친구, '진정한 말'을 후손이나 한때 신뢰했던 자에게 맡겼다가 그것을 역이용당해 큰 화를 입는 경우가 흔하기 때문이오." 그는 원한에 찬 눈으로 이덜그린을 바라본다. 실제로 그건 탈영만큼이나 심각한 결과를 낳을 수조차 있소... 일지를 잃는 것은 당신 존재 그 자체를 잃는 결과를 초래할 수 있소."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12445 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12446 /* ~"알겠소. 질문할 것들이 좀 있소."~ */ EXTERN ~DAETHEL~ 8
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12447 /* ~"알겠소. 안녕히 계시오."~ */ EXTERN ~DMORTE~ 152
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12448 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14690 /* ~"그는 자신을 방탕자를 따라다니는 자이라고 부르지 않소?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 15
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14691 /* ~"그는 그에 대해 물어... 우리 친구는 우리에 대해 묻지... 그는 알지 못했소? 아니면 적어도 의심은 하지 않았소?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 16
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14692 /* ~"그리고 아직도 자네는 왜 아직 자신에게는 별칭이 없는지 의아해 하고 있지는 않는가?" 마족은 당신 쪽으로 고개를 돌린다. "당신에게 기꺼이 설명을 해주리다."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 18
END

IF ~~ THEN BEGIN 22 // from:
  SAY #14693 /* ~"난 맹세를 했네, 하지만 자네처럼은 아니야! 난 타나리에게는 그 일에 대해서 말을 하지 않네. 하지만 여기 있는 우리 친구는 그 특정한 집단에서 벗어나 있는 것 같군."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 19
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14694 /* ~"정말 그렇네!" 마족은 다시 당신에게 얘기한다. "친구, 이 수집자는 악마요, 성자에게 저주를 받기는 했지만. 당신이 그의 옆에서 본 잘생긴 젊은이는 그 수집자의 노예요, 물론 그는 그 사실을 깨닫고 있지 못하지만."~ */
  IF ~~ THEN REPLY #14767 /* ~"계속하시오..."~ */ EXTERN ~DAETHEL~ 20
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14695 /* ~"그렇게 생각하나, 이더그린? 내 생각은 다르네."~ */
  IF ~~ THEN REPLY #14768 /* ~"어떤 펜던트 말이오?"~ */ GOTO 25
  IF ~~ THEN REPLY #14769 /* ~"이 얘기는 나중에 듣도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #14696 /* ~"그 마족은 우리가 몹시 가지고 싶어하는 강대한 마도구인 펜던트를 지니고 있소. 내가 보증하겠는데 그건 당신에게는 별 소용이 없소, 그러니..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 21
END

IF ~~ THEN BEGIN 26 // from:
  SAY #14697 /* ~"...*모든 것*..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 23
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14698 /* ~"...우린 그 펜던트만 원하오. 그것은 우리가 당신에게 약속한 힘을 주는 데 필요한 펜던트요."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 24
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14699 /* ~"불행히도 나조차도 그 결정은 어길 수가 없소. 그 문제에 관한 한 우리는 아무 것도 할 수가 없소."~ */
  IF ~~ THEN REPLY #14770 /* ~"그 펜던트는 어떤 힘을 지니고 있소?'~ */ EXTERN ~DAETHEL~ 26
  IF ~~ THEN REPLY #14771 /* ~"좋소."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14772 /* ~"아니오. 거래하지 않겠소."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14700 /* ~"아무 것도 아니오, 친구."~ */
  IF ~~ THEN REPLY #14773 /* ~"말하시오, 아니면 거래는 없소."~ */ GOTO 30
  IF ~~ THEN REPLY #14774 /* ~"왜 당신 스스로 그것을 강탈하지 않소?"~ */ EXTERN ~DAETHEL~ 25
  IF ~~ THEN REPLY #14775 /* ~"좋소."~ */ EXTERN ~DAETHEL~ 30
  IF ~~ THEN REPLY #14776 /* ~"아니오. 거래하지 않겠소."~ */ EXTERN ~DAETHEL~ 29
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14701 /* ~"그것은 육신을 버리고 떠나는 영혼을 포박하오."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 27
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14702 /* ~"그런 걸 가지고 당신이 뭘 하겠소? 헐값에 팔겠소, 아니면 벽난로를 장식하는 데 쓰겠소?"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 28
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14703 /* ~"그래, 이더그린, 정말 애석한 일이네. 만약 생각을 바꾸면 우린 여기 있을 테니 다시 오도록 하시오, 친구."~ */
  IF ~~ THEN REPLY #14777 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14778 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14704 /* ~"그 '수집자'의 정체는 이리니즈였소. 그녀는 자신의 한도를 넘었소. 그녀는 야망에 불타 욕정 따위는 초월한 자를 유혹하려고 했소."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 31
END

IF ~~ THEN BEGIN 34 // from:
  SAY #14705 /* ~"이리니즈는 별로 우수한 전사가 아니오."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 32
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14706 /* ~마족은 자신의 동료 쪽으로 고개를 돌린다. "정말 그렇네." 그는 다시 당신을 바라보며 말한다. "내가 얘기했듯이 그녀의 자매들이 가지고 다니는 마법의 로프와 마족들이 통상적으로 지니고 있는 각종 내성을 잃어버린 그녀를 죽이는 건 쉬운 일이오. 물론 그녀 근처에 위세 당당한 젊은 방탕자가 없다면 말이지만."~ */
  IF ~~ THEN REPLY #14779 /* ~"어떻게 하면 그녀가 혼자 있도록 만들 수가 있겠소?~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14707 /* ~"마침 얘기하려던 참이었소, 친구. 그녀는 이 가게의 바로 북쪽에 있는 골목에서 두 건물 사이에 숨어 있을 것이오. 자정쯤 그 곳에서 그녀를 찾아보시오."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 33
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14708 /* ~"아, 하지만 거래는 성립되었소. 당신은 이미 동의를 했소, 기억하시오? 우리는 계약에서 우리가 할 몫을 했소. 당신은 계약 이행을 포기할 정도로 우리의 오랜 우정에 대해 냉담하단 말이오?"~ */
  IF ~~ THEN REPLY #14780 /* ~"당신이 옳소."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14781 /* ~"그렇소."~ */ EXTERN ~DAETHEL~ 35
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14709 /* ~"그렇네, 이더그린." 악마는 걱정하는 눈빛으로 당신을 향해 고개를 돌린다. "그리고 당신은 우리가 약속한 힘을 이미 잊어버렸소? 우리가 그 호부를 손에 넣으면 당신을 더 강하게 만들어 줄 수가 있소, 친구..."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 36
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14710 /* ~"당신은 정말 우리를 그렇게 간단히 저버릴 거요?"~ */
  IF ~~ THEN REPLY #14782 /* ~"당신이 옳소."~ */ EXTERN ~DAETHEL~ 34
  IF ~~ THEN REPLY #14783 /* ~"난 이 일을 할 수가 없소."~ */ EXTERN ~DAETHEL~ 37
END

IF ~~ THEN BEGIN 40 // from:
  SAY #14711 /* ~"내가 어리석었네, 이더그린. 계약서를 작성했었어야 했네, 하지만 난 거래를 할 때 그와의 우정을 고려하는 큰 우를 범했네." 그는 고개를 돌려 당신을 조소한다. "저주받을 인간 같으니... 넌 이 일을 후회할 거다. 바로 이 시간부터 세 번 저주받은 태가린이 너의 목숨뿐만이 아니라 영혼도 노릴 것이라는 것을 잊지 말아라. 내가 내 뜻을 이루게 될 때 너는 블러드 워의 종군자가 되어 가장 하찮은 마족의 명령에도 복종해야 하는 노예가 될 것이다."~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 38
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14712 /* ~"아니, 지금은 아니네. 그를 그냥 보내 주세. 우리에게는 그를 파멸시키기 위해 획책할 무한한 시간이 있으니까..." 두 마족은 서로를 바라보며 사악하게 웃는다. 그리고 손을 흔들어 당신을 배웅한다.~ */
  IF ~~ THEN REPLY #14784 /* ~"기다리시오! 생각을 바꿨소!"~ */ EXTERN ~DAETHEL~ 39
  IF ~~ THEN REPLY #14785 /* ~떠난다.~ */ DO ~SetGlobal("2Devils","AR0402",3)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14713 /* ~"조용하게, 이더그린! 우린 모두 실수를 하네." 테가린은 당신을 바라보며 역겨운 듯 조소한다. "당신은 이제 우리가 당신에게 뭘 요구하는 지 알 거요. 대부분의 상처는 시간이 가면 아물기 마련이오... 만약 당신이 계약에서 당신 몫을 이행하면 우리들의 우정도 다시 회복될 수 있을지도 모르오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #14786 /* ~떠난다.~ */ DO ~SetGlobal("2Devils","AR0402",2)
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 53.0 54.0
  SAY #14714 /* ~"우리는 그것에 남긴 힘으로 당신에게 활력을 불어넣을 것이오... 당신은 육체적으로 더 강하고 튼튼해질 것이오. 그 효과는 항구적으로 지속될 것이오... 적어도 당신이 죽을 때까지는, 하지만 지금은 그런 일에 대해선 얘기하지 맙시다, 친구."~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14787 /* ~"그럼 여기 펜던트가 있소."~ */ EXTERN ~DAETHEL~ 40
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14788 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14789 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ EXTERN ~DAETHEL~ 8
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14790 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 44
  IF ~  !PartyHasItem("SkulPend")
~ THEN REPLY #14791 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.1 43.3
  SAY #14715 /* ~"기다리시오... 우선 펜던트부터 주시오."~ */
  IF ~~ THEN REPLY #14792 /* ~"그럼 여기 펜던트가 있소."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14793 /* ~"펜던트는 내가 가지기로 했소."~ */ EXTERN ~DAETHEL~ 44
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14716 /* ~"그렇네, 이더그린. 그리고 이제 당신에게 힘을 부여할 때가 왔소, 친구..." 마족은 갈고리 손톱으로 펜던트를 쥔다, 그리고 그의 눈은 불꽃처럼 타오른다. 강력한 힘의 오라가 펜던트를 잠시 둘러싼다... 그러나 아무런 일도 일어나지 않는다.~ */
  IF ~~ THEN REPLY #14794 /* ~"무슨 일이 일어났소?"~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #14717 /* ~"나도... 나도 모르겠소, 친구!" 테가린은 정말로 놀란 듯하다, 하지만 그의 옆에서 이더그린은 사악하게 웃고 있다. "내 생각엔... 기괴한 마법이 당신에게 걸려 있어 펜던트가 당신에게 힘을 부여하는 것을 막고 있는 것 같소."~ */
  IF ~~ THEN REPLY #14795 /* ~"뭐?! 당신은 이 사실을 사전에 알고 있었소?~ */ EXTERN ~DAETHEL~ 41
END

IF ~~ THEN BEGIN 47 // from:
  SAY #14718 /* ~"아니오, 친구! 난 결코 그러지 않았소. 이더그린?" 마족은 펜던트를 다시 동료에게 던진다.~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 42
END

IF ~~ THEN BEGIN 48 // from:
  SAY #14719 /* ~"정말 미안하오, 친애하는 친구. 당신이 그 마법을 제거하고 나면 우리가 펜던트를 당신을 위해 사용할 수 있을 것이오. 당신은 우리가 어디 있는지 알고 있으니, 만약 성공하며 다시 오도록 하시오." 악마는 당신에게 미소짓는다.~ */
  IF ~~ THEN REPLY #14796 /* ~"그럼 펜던트를 돌려주시오. 마법이 제거되면 그것을 돌려주겠소."~ */ GOTO 49
  IF ~~ THEN REPLY #14797 /* ~마족들을 공격한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14798 /* ~"흠. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #14720 /* ~테가린이 고개를 슬프게 젓는다~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 43
END

IF ~~ THEN BEGIN 50 // from:
  SAY #14721 /* ~"그건 이제 정당하게 우리 소유요. 우리 사이의 협정을 기억하시오, 친구."~ */
  IF ~~ THEN REPLY #14799 /* ~"좋소. 여기 펜던트가 있소."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14800 /* ~"지금으로선 내가 그것을 보관하고 있도록 하겠소."~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #14722 /* ~"아, 참으로 슬프군... 우리들의 우정을 그렇게 아무렇게나 버려서야 되겠소? 제발, 부탁하리다... 우리 사이의 오랜 우정을 저버리지는 마시오. 펜던트를 돌려주시오."~ */
  IF ~~ THEN REPLY #14801 /* ~"좋소. 여기 있소."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14802 /* ~"아니, 그런 일은 없을 거요."~ */ EXTERN ~DAETHEL~ 45
END

IF ~~ THEN BEGIN 52 // from:
  SAY #14723 /* ~"그래, 합시다."~ */
  IF ~~ THEN REPLY #14803 /* ~그들의 공격에 대처한다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14804 /* ~펜던트를 가지고 도망친다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #14724 /* ~"글쎄..." 두 마족은 서로를 쳐다보며 웃은 후 고개를 끄덕인다. "그 경우에는..."~ */
  IF ~~ THEN REPLY #14805 /* ~"기다리시오, 내게 어떤 힘을 줄 거요?"~ */ GOTO 43
  IF ~~ THEN REPLY #14806 /* ~"펜던트가 여기 있소."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14807 /* ~"펜던트는 내가 가지기로 했소."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 54 // from:
  SAY #14725 /* ~"보게, 그가 펜던트를 가지고 돌아왔네."~ */
  IF ~~ THEN REPLY #14808 /* ~"기다리시오, 내게 어떤 힘을 줄 거요?"~ */ GOTO 43
  IF ~~ THEN REPLY #14809 /* ~"펜던트가 여기 있소."~ */ EXTERN ~DAETHEL~ 40
  IF ~~ THEN REPLY #14810 /* ~"펜던트는 내가 가지기로 했소."~ */ EXTERN ~DAETHEL~ 44
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 55 // from:
  SAY #14726 /* ~"아, 누가 돌아왔는지 좀 보게. 미안하오, 친구. 하지만 당신이 펜던트를 가지고 돌아올 때까지 우리는 당신과 얘기하지 않겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #14811 /* ~떠난다.~ */ EXIT
END

IF ~  !InParty("Annah")
!InParty("Grace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 56 // from:
  SAY #14727 /* ~"이런, 이런... 친구를 배신한 자군!"~ */
  IF ~~ THEN EXTERN ~DAETHEL~ 46
END

IF ~~ THEN BEGIN 57 // from:
  SAY #14728 /* ~당신이 말을 한 후 거북한 침묵이 오랫동안 계속되며, 악마들은 당신을 차가운 눈으로 노려본다. 마침내 테가린이 말을 한다. "좋소. 정말 애석한 일이오... 친구."~ */
  IF ~~ THEN REPLY #14812 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXTERN ~DAETHEL~ 8
  IF ~~ THEN REPLY #14813 /* ~"그게 전부요. 안녕히 계시오."~ */ DO ~SetGlobal("2Devils","AR0402",5)
~ EXIT
END
