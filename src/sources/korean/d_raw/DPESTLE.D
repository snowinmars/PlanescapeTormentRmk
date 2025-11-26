// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTLE~

IF ~  Global("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 0 // from:
  SAY #2968 /* ~당신 앞에는 흐릿한 눈을 한 사내가 서 있다. 그의 피부는 전신에 걸쳐 뒤틀리며 파문을 일으키고 있는 것 같다. 그는 얼룩진 혀로 자신의 갈라진 입술을 핥고 있다. 당신이 그를 바라보고 있자, 그의 오른쪽 눈이 왼쪽 눈과는 별도로 움직여 당신에게 초점을 맞춘다. 잠시 후에는 왼쪽 눈이 움직여 당신을 바라보더니 다시 원위치로 돌아간다. 오른쪽 눈이 깜박인다. 그의 목으로부터는 이상한 꼴꼴 소리가 난다. ~ */
  IF ~~ THEN REPLY #2969 /* ~"안녕하시오..."~ */ DO ~SetGlobal("Pestle_Kilnn","AR0612",1)
~ GOTO 1
  IF ~~ THEN REPLY #42001 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42002 /* ~남자는 얼굴 한쪽으로 싱긋 웃으며 오른쪽 엄지손가락으로 자신을 가리킨다. "나는 페슬이라는 - *걱* ! - 연금술사요." 그는 이번에는 왼쪽 집게손가락으로 자신을 다시 가리킨다. "내 이름은 킬른이오. *윽* ! 뭐 필요한 게 있소?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42003 /* ~"괜찮소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42004 /* ~"어떤 물건들을 팔고 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #42005 /* ~"그래, 질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42006 /* ~"아니, 괜찮소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #42007 /* ~"*허억!* 그는 재빨리 왼손으로 계산대 위를 친다. 그러자 그의 팔뚝의 털들이 뒤틀리고 꿈틀거린다. 계산대 위에는 상품의 목록이 그 가격과 함께 갈겨 쓴듯한 글씨로 적혀 있다. 당신은 가격표로부터 이 가게에서 여러 종류의 회복 아이템과 부적을 구할 수 있다는 사실을 안다. ~ */
  IF ~~ THEN REPLY #42008 /* ~"물건을 좀 사고 싶소..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42009 /* ~"괜찮소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42010 /* ~"실은 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42011 /* ~"아무 것도 필요하지 않을 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.2 4.1 5.1 6.1 7.0 8.3
  SAY #42012 /* ~그는 입의 반을 아래쪽으로 비죽 내밀어 찌푸린 표정을 짓는다, 그리고 그는 고개를 젓는다. "나는 창고에서 하루종일 일을 하오. *가아악* !" 그는 격렬하게 몸을 떤다. 그리고 갑자기 세 번째 눈이 그의 콧마루에서 눈을 뜬다... 새 눈이 자리를 차지함에 따라 왼쪽 눈은 옆으로 밀려난다. "나는 가게에 대해서만 - *흐윽!* 말하오." 그 말이 끝나자 그의 피부가 새 눈을 '삼킨다,' 그리고 왼쪽 눈은 제자리로 돌아간다.~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42013 /* ~"괜찮소?"~ */ GOTO 4
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42014 /* ~"주조소의 늙은 기술자가 그의 기계를 작동시키려면 내가 내 피부와 피의 샘플을 가져와야 한다고 말했소. 당신이 그 일을 해주었으면 하오."~ */ DO ~GiveItemCreate("DrmVial",Protagonist,1,0,0)
SetGlobal("PK_Scraping","AR0612",1)
~ GOTO 12
  IF ~~ THEN REPLY #42015 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.0 8.1 12.0
  SAY #42016 /* ~"그렇소. *헉!*" 그의 목은 잠시 진동을 하다가 가라앉는다. 그의 목 옆쪽에서는 녹색으로 빛나는 융기가 갑자기 튀어나온다. "뭐 필요하신 거라도 있소?" "곡!" 그의 목은 다시 팽팽해진다, 그리고 떨리는 살의 물결이 부푼 녹색 융기를 목의 피부 아래로 다시 삼킨다. 그는 잠시 격렬하게 기침을 한 후 안정을 되찾는다 "휴!"~ */
  IF ~~ THEN REPLY #42017 /* ~"당신에게 무슨 일이 일어났는지 물어도 괜찮겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #42018 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42019 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #42020 /* ~왼쪽 눈은 화가 나 위쪽으로 구른다. 오른쪽 눈은 곁눈질을 한다. "너무 많이 마셨소."~ */
  IF ~~ THEN REPLY #42021 /* ~"하지만 *뭐가* 너무 많다는 얘기요?"~ */ GOTO 6
  IF ~~ THEN REPLY #42022 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42023 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #42024 /* ~"포션을 마셨소. 너무 많은 양의 포션을. *허거억!*" 그의 입은 그의 턱 아래로 미끄러져 내려간다. 그의 왼쪽 콧구멍 옆에는 또 하나의 콧구멍이 생긴다. "사상 가장 많이 마셨소! 그것도 림보에서 조합한 변신의 포션을... *헉!*"~ */
  IF ~~ THEN REPLY #42025 /* ~"내가 도울 수 있는 일은 없겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_PK_1","GLOBALGood",1)
SetGlobal("Pestle_Kilnn","AR0612",2)
SetGlobal("PK_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #42026 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42027 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #42028 /* ~사내의 양쪽 눈은 서로를 바라보기 위해 안쪽으로 향한 후 다시 당신 쪽으로 향한다. "모르오. *흐응!*" 그는 몸을 떤다. 그의 탁 아래의 입이 위로 올라가 새로 생긴 콧구멍을 감싼다. "이런 일은 비교적 자주 일어나오: 우리는 가지고 있는 상품을 -*흐넉!*- 맛보지 않을 수가 없소. 만약 당신이 우릴 도울 방법을 찾아낸다면, 우리 두 사람 모두 -*거억!*- 감사하겠소."~ */
  IF ~~ THEN REPLY #42029 /* ~"다른 질문이 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42030 /* ~"만약 방법을 찾으면 당신에게 알리겠소. 안녕히 계시오."~ */ EXIT
END

IF ~  GlobalGT("Pestle_Kilnn","AR0612",0)
~ THEN BEGIN 8 // from:
  SAY #42031 /* ~페슬 킬른이 보인다. 그 또는 그들은 늘 그렇듯이 보기에도 섬뜩하다. 그의 피부는 그의 몸과 얼굴 전체에 걸쳐 끊임없이 변화하고 움직이고 있다. "다시 오신 걸 -*푸!*- 환영하오." ~ */
  IF ~  PartyHasItem("ElixirS")
Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42032 /* ~"내가 이 끔찍한 분리의 영약을 가져왔소... 도움이 될 것 같소?"~ */ GOTO 9
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42033 /* ~"괜찮소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42034 /* ~"물건을 좀 사고 싶소..."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42035 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #42036 /* ~"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #42037 /* ~그의 양쪽 눈의 시선이 갑자기 당신이 손에 쥐고 있는 작은 병으로 향한다. 그는 입맛을 다시며 고개를 끄덕인다.~ */
  IF ~~ THEN REPLY #42038 /* ~"그럼 여기 있소."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42039 /* ~"나는 보수를 기대하오."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_PK_1","GLOBALGood",-2)
~ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0
  SAY #42040 /* ~페슬 킬른은 병을 두 손으로 받아 계산대 아래에 내려놓는다. 그의 왼쪽 눈은 당신을 바라보고 있으나, 오른쪽 눈과 손은 계산대 위에다 뭐라고 열나게 갈겨 쓰고 있다. "우리는 이걸로 우릴 금새 치료할 약을 -*헉*- 만들 수가 있소. 잠깐만 기다리시오. 문제를 다 해결하고 나면 -*걱*- 감사의 표시로 당신에게 회복용 아이템을 좀 만들어 드리겠소. " 그는 가게의 뒤쪽으로 고개를 돌린다.~ */
  IF ~~ THEN REPLY #42042 /* ~"좋소... 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #42043 /* ~왼쪽 눈은 뒤로 돌아가나 오른쪽 눈은 당신을 계속 바라보고 있다. 그는 고개를 끄덕인다. "회복용 아이템이면 -*흐응*- 되겠소?"~ */
  IF ~~ THEN REPLY #42044 /* ~"그렇소. 자, 여기 있소."~ */ DO ~DestroyPartyItem("ElixirS",FALSE)
SetGlobal("CW_PK_Split","AR0612",1)
SetGlobal("PK_Quest","GLOBAL",2)
AddexperienceParty(6000)
~ GOTO 10
  IF ~~ THEN REPLY #42045 /* ~"아니오... 지금으로선 내가 그 약을 그냥 지니고 있도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.1
  SAY #42046 /* ~"살점? 좋소." 그의 오른손에는 면도날이 둘려 있고, 왼손에는 입구가 큰 병이 들려 있다. 그는 당신 팔뚝으로부터 피부를 약간 잘라낸 후, 그것을 몇 방울의 당신 피와 함께 병 속에 넣는다. 그는 당신 상처를 거즈로 싸맨 후 당신에게 병을 건네준다. "더 필요한 -*거-걱!*- 건 없소?"~ */
  IF ~  GlobalLT("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42047 /* ~"아니오, 하지만... 괜찮소?"~ */ GOTO 4
  IF ~~ THEN REPLY #42048 /* ~"그렇소... 물건을 좀 사고 싶소."~ */ DO ~StartStore("PK_Store",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #42049 /* ~"아나, 그게 전부요. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END
