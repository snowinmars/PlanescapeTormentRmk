// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVRISCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVRISCH~

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3001 /* ~이 선명한 용모의 여인의 외관은 매력적이나, 검푸른 색 피부와 밝은 노란색 눈 때문인지 어딘가 불온한 구석이 있다. 그녀가 당신을 살펴볼 동안, 그녀의 등에서는 박쥐의 날개와 흡사한 한 쌍의 날개가 펼쳐진 후 다시 접힌다.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 52.0
  SAY #50480 /* ~"이런, 이런... 몸도 없이 떠다니는 거짓말쟁이 해골이라..."~ */
  IF ~~ THEN GOTO 4
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",0)
~ THEN BEGIN 2 // from: 53.0
  SAY #50481 /* ~"이런, 이런... 훨-후럼-그레이스... 당신이 지금은 스스로를 뭐라고 부르는지는 모르겠지만, 어쨌든 여기서 만나게 되어 반갑군요. 대체 내가 무슨 자격으로 이런 영광을 누리게 된 거지요? 난 당신이 우리 일족과는 더 이상 교류를 하지 않는 걸로 알고 있었는데." 그녀는 경멸이 약간 섞인 눈빛으로 당신을 잠시 흘긋 본다. "아니면 이 곳에서의 당신 임무는 거의 다 끝난 건가요?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 3 // from: 54.0
  SAY #50482 /* ~"이런, 이런... 몸도 없이 떠다니는 거짓말쟁이 해골과 훨-후럼-그레이스... 당신이 지금은 스스로를 뭐라고 부르는지는 모르겠지만, 어쨌든 여기서 만나게 되어 반갑군요. 대체 내가 무슨 자격으로 이런 영광을 누리게 된 거지요? 난 당신이 우리 일족과는 더 이상 교류를 하지 않는 걸로 알고 있었는데." 그녀는 경멸이 약간 섞인 눈빛으로 당신을 잠시 흘긋 본다. "아니면 이 곳에서의 당신 임무는 거의 다 끝난 건가요?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 151
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0 6.0
  SAY #50483 /* ~그녀는 눈을 가늘게 뜬다. "당신이 온갖 질문을 하면서 여기저기를 어슬렁거린다는 흉터투성이 사내인가요?" 그녀는 당신을 아래위로 훑어본다. "당신은 정말 정신이 나간 사람처럼 보이는 군요. 무슨 용무가 있어서 여기 온 건가요. 아니면 달리 할 일이 없어서인가요?"
"왜냐하면 저는..." 스스로를 가리킨다. "당신을 도울 수 있으니까요." ~ */
  IF ~~ THEN REPLY #50485 /* ~"내게 어떤 도움을 줄 수가 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #50486 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 8
  IF ~~ THEN REPLY #50487 /* ~"질문할 것이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50488 /* ~"사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #50484 /* ~그녀는 정중하게 대답한 후, 화살처럼 매섭게 반문한다: "선택에 의해서? 다음에는 어디로 배치될 예정이죠?" 그녀는 갑자기 당신 쪽으로 돌아선다. "그런데 말이에요, 하찮은 인간 양반..." 브리스치카는 자신이 한 말을 즐기듯 미소를 짓는다. "...가장 무서운 요부는 사람들로 하여금 음탕함과 정숙함이 한 사람 안에 공존할 수 있다는 환상을 가지게 할 수 있는 여자에요. 창녀이자 여신관인 그레이스 여사는 가히 최고의 요부라고 할 수 있죠..." 그녀는 그레이스쪽으로 고래를 돌린다. "...그렇지 않은가요? 수천년에 걸친 노예생활이 아무런 상처도 남기지 않을 거라고 생각하나요?"~ */
  IF ~~ THEN DO ~SetGlobal("Vris_vs_Grace","GLOBAL",1)
~ EXTERN ~DGRACE~ 152
END

IF ~~ THEN BEGIN 6 // from:
  SAY #50489 /* ~"좋아요. 하지만 *내* 가게에 들어온 건 당신들이에요." 브리스치카는 당신을 쳐다본다.~ */
  IF ~  NumTimesTalkedTo(1)
~ THEN GOTO 4
  IF ~  NumTimesTalkedToGT(1)
~ THEN REPLY #50717 /* ~"그렇소?"~ */ GOTO 50
END

IF ~~ THEN BEGIN 7 // from: 4.2 8.0 9.0 10.2 17.1 18.0 19.0 44.5 50.0 55.0
  SAY #50490 /* ~"상품에 대한 질문은 기꺼이 받겠어요. 하지만 당신의 그 유명한 시길 스무고개는 사양하겠어요. 알겠어요?"~ */
  IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN REPLY #50491 /* ~"혹시 노예나 하인을 사는 데 관심이 있소, 브리스치카?"~ */ GOTO 44
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66961 /* ~"어떤 사람에게 악마의 혀를 주었는데... 부작용이 좀 있었소. 이를 해결할 좋은 아이디어는 없소?"~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 61
  IF ~~ THEN REPLY #50492 /* ~"당신의 정체는 뭐요, 브리스치카?"~ */ GOTO 18
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50493 /* ~"모트를 가리켜 '거짓말하는' 해골이라고 한 건 무슨 뜻이오."~ */ GOTO 9
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50494 /* ~"당신과 훨-후럼-그레이스는 별로 사이가 좋지 않은 것 같소."~ */ GOTO 10
  IF ~~ THEN REPLY #50495 /* ~"이 가게에 대해 얘기해주시오."~ */ GOTO 8
  IF ~~ THEN REPLY #50496 /* ~"그럼 당신이 파는 물건들을 좀 봅시다."~ */ GOTO 20
  IF ~~ THEN REPLY #50497 /* ~"그렇다면 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 7.5
  SAY #50498 /* ~"이 가게의 물건들은 여러 차원들을 여행하면서 교역을 한 결과로 얻은 것들이에요." 그녀는 가게 안을 손으로 휩쓸 듯 가리킨다. "무기, 부적... 그리고 다른 *특별한* 상품들도 팔고 있어요. 이 가게에는 각종 희귀하고 진기한 상품들로 가득 차 있지요. 나는 손님들의 욕구를 만족시키죠."~ */
  IF ~~ THEN REPLY #50499 /* ~"다른 질문이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50500 /* ~"그럼 당신이 파는 물건들을 좀 봅시다."~ */ GOTO 20
  IF ~~ THEN REPLY #50501 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.3
  SAY #50502 /* ~"사기꾼, 위증자, 위선자, *거짓말쟁이*... 오, 내가 그런 말을 했나요? 내 말은 몸도 없이 떠다니는 *거드름쟁이* 해골이라는 뜻이었어요. 늘 젠체하면서 고압적으로 의견을 말한다는 얘기죠." 브리스치카는 천진 난만한 미소를 짓는다.~ */
  IF ~~ THEN REPLY #50503 /* ~"흠. 다른 질문이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50504 /* ~"그럼 좋소. 당신이 파는 물건들을 좀 봅시다."~ */ GOTO 20
  IF ~~ THEN REPLY #50505 /* ~"알겠소... 내가 알고자 했던 건 그게 전부요."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.4
  SAY #50507 /* ~"아, 시길에 살고 있는 그 바테주 동조자 말인가요? 매우 흥미로운 자죠, 안 그런가요? 하지만 그 '매음굴'보다 그녀가 자기 끄나풀들을 훈련시키기에 더 좋은 곳이 어디 있겠어요?"~ */
  IF ~~ THEN REPLY #50508 /* ~"바테주 추종자?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50509 /* ~"그녀의 앞잡이들을 훈련시킨다?"~ */ GOTO 14
  IF ~~ THEN REPLY #50510 /* ~"흠. 다른 질문이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50511 /* ~"당신이 파는 물건들을 보고 싶소."~ */ GOTO 20
  IF ~~ THEN REPLY #50512 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 17.0
  SAY #50513 /* ~"그녀의 어머니가 그녀를 노예로 판 이래 그녀는 여러 세기 동안 다원 우주의 놀이감이었지요. 그녀는 자력으로 그 사슬로부터 벗어났다고 주장하고 있지만, 그 말은 다른 타나리 화냥년들의 말만큼이나 신빙성이 있다고 생각하면 될 거예요." 그녀는 가볍게 미소짓는다. "물론 나는 다른 타나리들과는 다르지만."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 153
END

IF ~~ THEN BEGIN 12 // from:
  SAY #50514 /* ~"진실?! *진실?!* 이봐, 바테주와의 계약으로부터는 누구도 풀려날 수가 없어, 이 인간 가죽을 뒤집어쓴 화냥년아. 넌 거짓말을 하고 있어, 그리고 그건 가장 미천한 타나리에서 풋내기 서큐버스들에 이르기까지 타나리라면 누구나 아는 사실이야. ' 훨-후럼-그레이스'는 태어날 때부터 바테주의 노예였으며, *언제나* 그럴 것이다.' 넌 아직도 바테주들이 원하는 대로 고문하고 명령할 수 있는 노리개에 불과해." 브리스치카는 냉소한다. "넌 행동하는 꼴까지 놈들과 비슷해."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 154
END

IF ~~ THEN BEGIN 13 // from:
  SAY #50515 /* ~"닥쳐! 난 내 앞에서 네가 거짓말을 하는 걸 듣고 싶지 않아!"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 155
END

IF ~~ THEN BEGIN 14 // from: 10.1
  SAY #50516 /* ~"그래요... 그녀들은 시길과 여러 차원들에서 그녀의 눈과 귀 역할을 하지요. 그리고 그들이 직접 듣거나 보지 못한 것들은 그것을 보고나 들은 적이 남자들로부터 얻어내지요. 그리고 누가 인간들이 그토록 고단수의 속임수를 쓸 수 있다고 상상이나 하겠어요? 아, 그레이스는 정말 교활해요. 자기 어머니만큼은 아닐지도 모르지만 그래도 엄청 교활하죠...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 156
END

IF ~~ THEN BEGIN 15 // from:
  SAY #50517 /* ~"오, 하지만 물론 아니에요! 내가 감히 그런 걸 암시했나요? 하지만 판단은 그가 하도록 내버려 두는 것이 좋겠지요. 브리스치카는 돌아서서 이글거리는 눈으로 당신을 쳐다본다. "하찮은 인간 양반, 당신은 의심도 하지 않나요? 당신은 이 문제에 관해 메핏만큼의 이성이나 호기심도 없나요? 매음굴의 영업 내용이 *이상하다고는* 생각하지 않나요?"~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #50518 /* ~당신이 미처 대답을 하기도 전에 브리스치카는 얘기를 계속한다. "오캄의 면도날은 흉터를 남길 수도 있어요, 하지만 거짓말쟁이들과 몽상가들이 남기는 암적인 독소를 제거할 수가 있죠.
"이제 그녀는 당신과 함께 여행을 하고 있어요. 재미있는 일이죠. 왜 그러한 시설의 소유주가 그 것을 놔두고 떠낫을 까요? 그것도 잘 알지도 못하는 남자를 위해? 의문, 또 의문...
"그 답은 정말 고통스럽겠죠."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 157
END

IF ~~ THEN BEGIN 17 // from:
  SAY #50519 /* ~"오, 물론 그가 부탁을 했겠죠... 어떤 남자가 저항할 수 있겠어요?" 냉소하며 역겹다는 표정으로 시선을 돌린다.~ */
  IF ~~ THEN REPLY #50520 /* ~"그녀를 가리켜 바테주 추종자라고 한 것은 무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Grace_ExSlave","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #50521 /* ~"다른 질문이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50522 /* ~"당신이 파는 물건들을 보고 싶소."~ */ GOTO 20
  IF ~~ THEN REPLY #50523 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2
  SAY #50524 /* ~브리스치카는 크게 한숨을 쉰다. "알루-휜드... 반 마족이라고도 하죠. 내 어머니는 마족의 일종인 타나리였고, 내 아버지는 인간들의 대왕이었어요... 참 무례한 질문이군요.. 하지만 당신의 그 생김새 자체도 무례하군요, 아닌가요?"~ */
  IF ~~ THEN REPLY #50525 /* ~"다른 질문이 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50526 /* ~"당신이 파는 물건들을 보고 싶소."~ */ GOTO 20
  IF ~~ THEN REPLY #50527 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 4.0
  SAY #50528 /* ~"나는 여러 곳을 여행하고 여러 곳과 거래를 하죠. 나는 많은 것들을 듣고, 많은 것들을 사며, 또 많은 것들을 소유하고 있어요. 당신과도 좋은 거래를 할 수 있을지도 모르겠군요. 뭐 원하시는 거라도 있나요?" ~ */
  IF ~~ THEN REPLY #50529 /* ~"질문에 대한 답을 원할 뿐이오..."~ */ GOTO 7
  IF ~~ THEN REPLY #50530 /* ~"그럴지도. 당신은 어떤 물건들을 파시오?"~ */ GOTO 20
  IF ~~ THEN REPLY #50531 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 7.6 8.1 9.1 10.3 17.2 18.1 19.1 50.1 55.1
  SAY #50533 /* ~"무기와 부적들을 살펴보시겠어요? 아니면 보다 *이국적인* 상품들을?"~ */
  IF ~~ THEN REPLY #50534 /* ~"무기와 부적..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50535 /* ~"진귀한 아이템..."~ */ GOTO 21
  IF ~~ THEN REPLY #50536 /* ~"실은 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.1 22.2 23.1 24.1 31.2 31.3 32.1 33.1 34.1 37.2 38.1 41.1 43.1 58.1 59.6 60.6
  SAY #50539 /* ~당신이 가게 가운데에 있는 선반들의 내용물을 살펴보자 브리스치카는 미소를 짓는다. "만약 그 곳에 당신이 원하시는 물건이 없으면, 가게의 앞쪽과 뒤쪽에도 물건들이 있으니 살펴보세요."~ */
  IF ~  Global("Vris_Buy_05","AR0609",0)
~ THEN REPLY #50551 /* ~악마의 혀를 살펴본다.~ */ GOTO 31
  IF ~  Global("Vris_Buy_06","AR0609",0)
~ THEN REPLY #50552 /* ~고르곤 연고를 살펴본다.~ */ GOTO 32
  IF ~  Global("Vris_Buy_08","AR0609",0)
~ THEN REPLY #50554 /* ~금속제 입방형 휘겨를 살펴본다. ~ */ GOTO 33
  IF ~  Global("Vris_Buy_09","AR0609",0)
~ THEN REPLY #50555 /* ~괴물의 주전자를 살펴본다.~ */ GOTO 34
  IF ~~ THEN REPLY #66633 /* ~가게의 앞쪽을 본다.~ */ GOTO 59
  IF ~~ THEN REPLY #66634 /* ~가게의 뒤쪽을 본다.~ */ GOTO 60
  IF ~~ THEN REPLY #50562 /* ~"무기와 부적을 좀 봅시다..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #50563 /* ~"지금은 관심이 있는 물건이 없소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #50564 /* ~브리스치카는 당신이 '치트 코드'라는 라벨이 붙은 책을 살펴보고 있다는 데 주목한다. "그래요... 그것들은 당신이 생각하고 있는 바로 그것들이에요. 어서 그 내용을 보세요."~ */
  IF ~~ THEN REPLY #50565 /* ~"치트 코드? 무슨 말인지 모르겠소."~ */ GOTO 23
  IF ~~ THEN REPLY #50566 /* ~다양한 치트 코드들을 본다.~ */ GOTO 24
  IF ~~ THEN REPLY #50567 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50568 /* ~"지금은 관심이 있는 물건이 없소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #50573 /* ~"자, 어서요." 브리스치카는 양손을 엉덩이에 얹고 머리를 기울인다. "내 앞에서 순진한 척 할 생각은 말아요! 내가 마족이란 사실을 기억하세요. 난 당신의 흥분을 냄새 맡을 수가 있어요. 그래요..." 그녀는 어린이에게 얘기하듯 천천히 말한다. "이것들은 *치트* 코드예요. 게임을 개조할 수 있게 해주죠. 자... 그것들을 살펴보세요. 당신에게 해가 될 건 없으니까요." ~ */
  IF ~~ THEN REPLY #50574 /* ~다양한 치트 코드들을 본다.~ */ GOTO 24
  IF ~~ THEN REPLY #50575 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50576 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1 23.0
  SAY #50577 /* ~책 안에는 여러 장이 있다: 순간이동 치트, 회복 치트, 자금 치트, 주문 재충전 치트, 능력치 치트, 죽음 치트, 지역 탐험 치트, 좋은 치트에 대한 충고, 그리고 나쁜 치트에 대한 경고.~ */
  IF ~~ THEN REPLY #50578 /* ~"뭘 원하시오 en ?hange ?"~ */ GOTO 41
  IF ~~ THEN REPLY #50579 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50580 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 59.0
  SAY #50581 /* ~당신은 '베이비 오일'이라는 라벨이 붙은 작은 병들을 살펴본다. 브리스치카는 그 중 하나를 지어서 당신에게 내민다. "관심이 있나요? 물론 진짜예요. 이걸 만들기 위해 수천 명의 인간 아기들이 희생되었죠."~ */
  IF ~~ THEN REPLY #50582 /* ~"어... 사양하겠소. 다른 물건들을 보여 주시오."~ */ GOTO 59
  IF ~~ THEN REPLY #50583 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 59.1
  SAY #50584 /* ~당신은 순수한 밀크 초콜릿으로 조각된 작은 악마처럼 생긴 생물을 살펴본다. "맛있게 보이죠? 마계에서 수입된 상품이에요. 매우 진귀한 상품으로, 초콜릿과 과자를 사랑하는 사람들에 의해 높이 평가받고 있어요. 그건 진짜 콰짓(사악한 마법사에게 봉사하는 작은 악마로 타나리의 일종)이에요. 강력한 마법에 의해 초콜릿으로 변환된 거죠. 고작 동전 199 닢이에요."~ */
  IF ~  PartyGoldGT(198)
~ THEN REPLY #50585 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_01","AR0609",1)
DestroyPartyGold(199)
GiveItemCreate("ChocoQ",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50586 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 59
  IF ~~ THEN REPLY #50587 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 59.2
  SAY #50589 /* ~당신은 작은 놋쇠 자물쇠로 단단히 잠긴 평범한 책을 살펴본다. "그건," 브리스치카가 탄성을 지른다. "불가해의 사본이에요. 내가 그것에 대해 할 말은... 말은... 설명할 수가 없군요. 단순한 말로는 표현할 수조차 없어요! 동전 천 닢만 내면 당신 것이 될 수 있어요... 내 말을 믿으세요, 그건 그만한 가치가 있어요."~ */
  IF ~  PartyGoldGT(999)
~ THEN REPLY #50590 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_02","AR0609",1)
DestroyPartyGold(1000)
GiveItemCreate("CodexI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50591 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 59
  IF ~~ THEN REPLY #50592 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 59.3
  SAY #50593 /* ~당신은 '디바의 눈물'이라는 라벨이 붙은 작은 유리병을 살펴본다. "그것들은 블러드 워에서의 접전 중에 생포된 디바로부터 채집된 것이에요. 그가 마침내 도망칠 때까지 마족들은 그를 영겁에 가까운 세월 동안 고문하였으며, 이 작은 병에는 그가 그 동안 흘린 열두 방울의 눈물이 담겨 있어요. 가격은 단돈 백 닢이에요."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50594 /* ~"그것들을 사겠소."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50595 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 59
  IF ~~ THEN REPLY #50596 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 59.4 61.0
  SAY #50597 /* ~당신은 '디바의 눈물'이라는 라벨이 붙은 작은 유리병을 살펴본다. "그것들은 블러드 워에서의 접전 중에 생포된 디바로부터 채집된 것이에요. 그가 마침내 도망칠 때까지 마족들은 그를 영겁에 가까운 세월 동안 고문하였으며, 이 작은 병에는 그가 그 동안 흘린 열두 방울의 눈물이 담겨 있어요. 디바의 눈물은 가장 거친 분노조차도 진정시킬 수가 있다고 해요... 악마의 혀의 그것조차도." 브리스치카는 사악하게 웃는다. "가격은 단돈 999 닢이에요."~ */
  IF ~  PartyHasItem("EcNote")
~ THEN REPLY #64175 /* ~"내게는 매음굴에서 받아온 이 동전 1000닢 짜리 지불 증서가 있소."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",1)
DestroyPartyItem("EcNote",FALSE)
GiveGoldForce(1)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 58
  IF ~  PartyGoldGT(998)
~ THEN REPLY #50598 /* ~"그거라면 악마의 혀의 욕지거리를 멈출 수 있을 것 같소. 그것을 사리다."~ */ DO ~SetGlobal("Vris_Buy_03","AR0609",2)
DestroyPartyGold(999)
GiveItemCreate("Dtears",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50599 /* ~"다른 물건들을 좀 봅시다..."~ */ GOTO 59
  IF ~~ THEN REPLY #50600 /* ~"에코가 필요로 하는 것은 바로 이것일지도... 하지만 사양하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 59.5
  SAY #50601 /* ~당신은 '끔찍한 분리의 영약'이라는 라벨이 붙은 유리병을 살펴본다. 브리스치카는 그것을 당신에게 내민다. "이 약은 자기 자신 안에 있으며 때로 그녀로 하여금 끔찍한 짓을 저지르게 만드는 사악한 반신의 존재를 깨달은 어떤 학자의 의해 합성되었어요. 이 물약은 그녀로부터 사악한 반신을 분리하여 두 각기 다른 존재를 만들어 낼 예정이었지만, 그녀는 그 약을 미처 쓰기도 전에 일련의 저열한 살인 행위에 대한 혐의로 머시킬러에 의해 체포되어 처형당했죠. 단돈 이백 닢에 이 영약을 드리겠어요."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #50602 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_04","AR0609",1)
DestroyPartyGold(200)
GiveItemCreate("ElixirS",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50603 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 59
  IF ~~ THEN REPLY #50604 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 21.0
  SAY #50605 /* ~당신은 소금물 단지 안에 떠있는 혓바닥 같은 것을 살펴본다. 브리스치카는 그것을 보며 눈살을 찌푸린다. "이건 악마의 혀예요... 아마 코누곤의 것인 것 같아요. 하지만 누가 알겠어요? 전해지는 바에 따르면, 일단 이 혀를 살아 있는 생명체의 입안에 넣으면 전혀 말을 할 수 없었던 사람이라도 말을 할 수 있게 된다고 해요. 이 묘한 물건을 사시겠다면 동전 66 닢에 드리겠어요." ~ */
  IF ~  PartyGoldGT(65)
!Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50606 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  PartyGoldGT(65)
Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50607 /* ~"그걸 사겠소. 그거라면 에코에게 그녀의 목소리를 되찾아 줄 수 있을지도 모르니까. "~ */ DO ~SetGlobal("Vris_Buy_05","AR0609",1)
DestroyPartyGold(66)
GiveItemCreate("Ftongue",Protagonist,1,0,0)
~ GOTO 43
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66812 /* ~"그것이라면 에코에게 목소리를 되찾아줄 수 있을지도 모르오... 하지만 우선 다른 물건들부터 다시 봅시다.."~ */ JOURNAL #66814 /* ~나는 악마의 혀를 브리스치카의 가게에서 보았다. 그녀의 설명에 의할 것 같으면 그것은 에코에게 목소리를 되찾아주기에 적합한 물건인 것 같다.~ */ GOTO 21
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50608 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~  Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #66813 /* ~"그것이라면 에코에게 목소리를 되찾아줄 수 있을지도 모르오... 하지만 사양하겠소. 안녕히 계시오."~ */ JOURNAL #66814 /* ~나는 악마의 혀를 브리스치카의 가게에서 보았다. 그녀의 설명에 의할 것 같으면 그것은 에코에게 목소리를 되찾아주기에 적합한 물건인 것 같다.~ */ EXIT
  IF ~  !Global("Ecco_Speak","GLOBAL",3)
~ THEN REPLY #50609 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 21.1
  SAY #50610 /* ~당신은 '고르곤 연고'이라는 라벨이 붙은 유리병을 살펴본다. "나는 이것을 어떤 주물질계 출신 검사에게 얻었어요... 아마 그의 이름은 페르세우스였을 거예요. 석화된 생명체의 표면에다 바르면 원래 상태로 돌아와요. 고작 동전 백 닢이에요. 당신 친구가 석화될 경우 이 연고가 얼마나 유용할지를 감안하면 정말 저렴한 가격이죠."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50611 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_06","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("Gsalve",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50612 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50613 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 21.2
  SAY #50614 /* ~당신은 면들 중 하나에 큰 눈들이 달린 입방체 모양의 생물의 금속제 모형을 살펴본다. 이 장난감에는 다리 2개, 팔 2개, 한 쌍의 접을 수 있는 날개, 그리고 적어도 18개의 관절부가 있다. 당신이 그것을 집어 들자 브리스치카가 미소를 짓는다. "아마 수집가들을 위한 물건일 거예요, 아니면 예술품이든지. 누가 알겠어요? 하지만 난 그것이 마음에 들어요, 그리고 만약 당신이 그걸 산다면 그것에 대해 사람들에게 물어보세요. 나보다 그것에 대해 더 잘 아는 사람이 있을지도 모르니까요. 동전 천 오백 닢만 내신다면 양도해 드리죠."~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50615 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_08","AR0609",1)
DestroyPartyGold(1500)
GiveItemCreate("Cube",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50616 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50617 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 21.3
  SAY #50618 /* ~당신은 평범하게 생긴 주전자를 살펴본다. 평범한 외관에도 불구하고 별로 만지고 싶은 생각이 들지 않는다. 당신을 물 것 같다는 느낌조치 든다. 브리스치카는 당신을 보면서 낄낄댄다, 그리고 어깨를 으쓱한다. "그건 주전자예요. 그 안에 어떤 종류의 괴물이 들어 있어요. 당신 머리카락이 곤두서는 건 그 때문이죠. 원하신다면 동전 123 닢에 드리죠."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #50619 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_09","AR0609",1)
DestroyPartyGold(100)
GiveItemCreate("MonJug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50620 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50621 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 60.0
  SAY #50622 /* ~당신은 얼룩이 묻은 젖빛 유리 렌즈를 살펴본다. 그것의 크기는 당신 손바닥만하며, 렌즈는 강철 테에 박혀 있다. 강철 테에서 튀어나온 기어가 달린 작은 돌기로 미루어 볼 때, 이 렌즈는 태엽장치로 움직이는 기계에 부착되어야 할 것 같다. 그리고 그것으로부터는 끔찍한 냄새가 난다. 브리스치카는 그것을 들어 당신 앞에 내민다. "그게 실제로 뭔지는 나도 모르겠어요. 기시스라는 이름의 늙은 군인이 마계의 전장에서 가져온 거예요. 그 자는 복무 계약에서 벗어나기 위해 자신의 부하들을 죽였죠, 그리고 자신이 복무 중에 수집한 몇 가지 흥미로운 물건들을 내게 팔았어요. 나는 그것을 화제거리로서 보관해 왔지만, 원하시다면 동전 149 닢만 받고 양도해 드리겠어요."~ */
  IF ~  PartyGoldGT(148)
~ THEN REPLY #50623 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_10","AR0609",1)
DestroyPartyGold(149)
GiveItemCreate("Lens12",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50624 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 60
  IF ~~ THEN REPLY #50625 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 60.1
  SAY #50626 /* ~당신은 패드를 댄 작은 상자 속에 든 반지를 살펴본다. 브리스치카는 당신이 보다 자세히 볼 수 있도록 그것을 치켜든다. "이건 예브라의 거의 투명함의 반지예요. 이 반지는 착용자를 *거의* 투명하게 만들어요. 단돈 349 닢에 드리죠."~ */
  IF ~  PartyGoldGT(348)
~ THEN REPLY #50627 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_11","AR0609",1)
DestroyPartyGold(349)
GiveItemCreate("RingAI",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50628 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 60
  IF ~~ THEN REPLY #50629 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #50630 /* ~당신은 화려한 장식대 위에 놓인 기묘한 모양의 대거를 살펴본다. 장식대 아래의 이름표에는 '윈의 검'이라고 적혀 있다. 브리스치카는 그 칼자루 끝을 손가락 끝으로 가볍게 두드린다. "사기꾼의 검이라고도 알려져 있어요. 칼을 높이 치켜들기만 하면 게임을 클리어할 수가 있지요. 꼭 원하신다면 동전 천 오백 닢에 당신 손에 쥐어 드리죠."~ */
  IF ~~ THEN REPLY #50631 /* ~"...을 가져다 준다? 그게 무슨 뜻이오?"~ */ GOTO 38
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50632 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50633 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50634 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #50635 /* ~브리스치카는 자신의 노란 눈을 가늘게 뜬다. "자, 당신도 내 말뜻을 *정확히* 알 거예요. 사기꾼의 검을 사면 당신은 게임을 클리어할 수가 있어요. 동전 천 오백 닢만 내면 만사가 그렇게 간단히 해결되는 거예요. 그것을 원하나요, 원하지 않나요?"~ */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY #50636 /* ~"그래, 그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_12","GLOBAL",1)
DestroyPartyGold(1500)
GiveItemCreate("SwordoW",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50637 /* ~"아니오... 하지만 다른 물건들을 다시 좀 봅시다."~ */ GOTO 21
  IF ~~ THEN REPLY #50638 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 60.3
  SAY #50639 /* ~이 작은 인형은 긴 세월 동안 꽤나 혹사당한 모양이다. 꿰맨 자리는 터지려고 하고 있으며 실도 다 풀어지기 일보직전이다. 그것은 머리에 가시가 돋친 후광을 두르고 기묘한 법의를 입은 여인의 모양을 하고 있다. 브리스치카는 당신을 위해 그것을 치켜든다. "이것은 시길 지하 깊숙한 곳에 있는 함정투성이의 금고에서 발견되었어요. 그것은 소량의 보물 및 금단의 마법 서적들과 함께 있었으며, 그 정확한 용도는 모르겠지만, 원하신다면 단돈 99 닢에 드리겠어요."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50640 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50641 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 60
  IF ~~ THEN REPLY #50642 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 60.4
  SAY #50643 /* ~이 작은 인형은 긴 세월 동안 꽤나 혹사당한 모양이다. 꿰맨 자리는 터지려고 하고 있으며 실도 다 풀어지기 일보직전이다. 레이디 오브 페인의 모양을 본떠 만든 것은 틀림없으나, 단추로 만든 눈과 부드러운 감촉 탓인지 별로 두려움은 느껴지지 않는다. 브리스치카는 당신을 위해 그것을 치켜든다. "이것은 시길 지하 깊숙한 곳에 있는 함정투성이의 금고에서 발견되었어요. 그것은 소량의 보물 및 금단의 마법 서적들과 함께 있었으며, 그 정확한 용도는 모르겠지만, 원하신다면 단돈 99 닢에 드리겠어요."~ */
  IF ~  PartyGoldGT(98)
~ THEN REPLY #50644 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_13","AR0609",1)
DestroyPartyGold(99)
GiveItemCreate("Doll",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50645 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 60
  IF ~~ THEN REPLY #50646 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 24.0
  SAY #50647 /* ~브리스치카는 당신에게 가까이 다가온다. "그런 아이템은 단지 돈만 가지고는 살 수가 없어요. 나는 당신의 피 한 파운드를 원해요. 그것도 내 앞에서 이 칼로 뽑아내..." 갑자기 그녀의 손에 톱니가 달린 대거가 들려 있다. "...이 쇠로 만든 상자에 담아야만 해요. 이 이외의 것은 받지 않겠어요."~ */
  IF ~~ THEN REPLY #50648 /* ~"하겠소."~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10)
FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Vris_Buy_07","GLOBAL",1)
GiveItemCreate("Cheats",Protagonist,1,0,0)
~ GOTO 42
  IF ~~ THEN REPLY #50649 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 21
  IF ~~ THEN REPLY #50650 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #50651 /* ~잠시 후 엽기적인 의식은 끝나고, 브리스치카는 입가에 만족스러운 띄우면서 당신에게 그 책을 건네준다. "지금 내겐 시간 여유가 별로 없어요. 안녕히 가세요."~ */
  IF ~~ THEN REPLY #50652 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 26.0 27.0 28.0 29.1 30.0 31.0 31.1 32.0 33.0 34.0 35.0 36.0 37.1 38.0 39.0 40.0 51.0
  SAY #50653 /* ~브리스치카가 만족스러워 한다. "좋은 선택이에요." 당신이 그녀의 손에 쏟아부은 동전들은 그녀의 손바닥에 닿자마자 사라지는 듯하다. 그녀는 당신에게 아이템을 건네준다. "새로 사신 물건을 즐기기 바라겠어요."~ */
  IF ~~ THEN REPLY #58910 /* ~"무기와 부적들을 보고 싶소, 지금..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58911 /* ~"진기한 물건들을 다시 보고 싶소..."~ */ GOTO 21
  IF ~~ THEN REPLY #50654 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 7.0
  SAY #50655 /* ~브리스치카는 자신의 검은색 입술을 뒤틀어 미소를 짓는다. "난 *언제나* 새 일꾼을 얻는 데 관심이 있어요. 가게 일은 게으른 멍청이 스탠디쉬가 돕고 있지만, 내 저택에서 쓸 노예가 한 명쯤 더 있어도 나쁠 건 없겠군요. 누굴 팔 거죠? 만약 쓸만한 자라면 동전 오천 닢을 지불하겠어요."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #50656 /* ~"모트는 어떻소?"~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DMORTE~ 504
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #50657 /* ~"이 티플링 소녀 안나."~ */ DO ~SetGlobal("Sell_Annah","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DANNAH~ 250
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #50658 /* ~"기스저라이 다콘."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 167
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50659 /* ~"훨-후럼-그레이스."~ */ DO ~SetGlobal("Sell_Grace","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ GOTO 48
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #50660 /* ~"Ce modron, Nordom."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_1","GLOBALGood",-1)
~ EXTERN ~DNORDOM~ 13
  IF ~~ THEN REPLY #50661 /* ~"관두시오. 다른 질문이 있소."~ */ GOTO 7
  IF ~~ THEN REPLY #50662 /* ~"아무도 팔지 않겠소. 이 일은 없었던 걸로 해주시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #50663 /* ~브리스치카는 눈을 가늘게 뜨고 모트를 본다. "흠... 쓸모가 있을 수도 있겠군요. 당신이 다시는 그를 보지 않을 각오가 되어 있다면... 그에 대해 동전 오천 닢을 지불하겠어요."~ */
  IF ~~ THEN REPLY #50664 /* ~"다시는 볼 수가 없다? 상관없소... 그를 데려가시오."~ */ DO ~SetGlobal("Sell_Morte","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DMORTE~ 505
  IF ~~ THEN REPLY #50665 /* ~"아니, 팔지 않는 편이 좋을 듯하오. 안녕히 계시오, 브리스치카.~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #50666 /* ~브리스치카는 그녀의 가장 새로운 노예 - 모트에게 한 장의 양피지를 보여준다. "자... 이 곳이 레이디구에 있는 내 집의 주소다. 당장 그 곳으로 가라... 만약 도망친다면 내가 한 무리의 마족들을 보내 네가 시길로 돌아와 날 섬기겠다고 애원을 하게 될 정도로 따끔하게 혼내 주겠다." 그리고 그녀는 당신 쪽으로 돌아선다. "그리고 *당신*에게는... 감사해요. 그는 참 재미있을 것 같군요. 여기 동전 오천 닢이 있어요... 안녕히 가세요."~ */
  IF ~~ THEN REPLY #50668 /* ~"안녕히 계시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Morte")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #50667 /* ~브리스치카는 눈을 가늘게 뜨고 다콘을 본다. "흠... 기스저라이? 게다가 저스로군요. 당신이 다시는 그를 보지 않을 각오가 되어 있다면... 그에 대해 동전 오천 닢을 지불하겠어요."~ */
  IF ~~ THEN REPLY #50669 /* ~"다시는? 알겠소. 그를 데려가시오."~ */ DO ~SetGlobal("Sell_Dakkon","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DDAKKON~ 168
  IF ~~ THEN REPLY #50670 /* ~"아니, 팔지 않는 편이 좋을 듯하오. 안녕히 계시오, 브리스치카.~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.3
  SAY #50671 /* ~"말도 안 되는 소리는 하자도 말아요." 브리스치카는 고개를 저으며 냉소한다. "그녀가 당신이 팔아도 되는 당신 소유물인 것처럼 얘기하다니... 말이 되는 얘기를 할 기분이 되면 다시 오세요, 아니면 아에 오지 말던지."~ */
  IF ~~ THEN REPLY #50672 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #50673 /* ~브리스치카는 눈을 가늘게 뜨고 노돔을 본다. "흠... 태엽장치로 가동되는 나만의 노예? 그래요, 물론 사겠어요. 당신이 다시는 그를 보지 않을 각오가 되어 있다면... 그에 대해 동전 오천 닢을 지불하겠어요."~ */
  IF ~~ THEN REPLY #50674 /* ~"다시는? 알겠소. 그를 데려가시오."~ */ DO ~SetGlobal("Sell_Nordom","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALEvil_Vrischika_2","GLOBALGood",-2)
GiveGoldForce(5000)
SetGlobal("E_Book","GLOBAL",4)
~ EXTERN ~DNORDOM~ 14
  IF ~~ THEN REPLY #50675 /* ~"아니, 팔지 않는 편이 좋을 듯하오. 안녕히 계시오, 브리스치카.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DGrace")
Global("Vris_vs_Grace","GLOBAL",1)
~ THEN BEGIN 50 // from: 6.1
  SAY #50676 /* ~브리스치카는 재빨리 인사를 한다. "다시 오신 걸 환영해요. 뭘 사러 오셨나요?"~ */
  IF ~~ THEN REPLY #50677 /* ~"지금은 아니오. 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #50678 /* ~"그렇소."~ */ GOTO 20
  IF ~~ THEN REPLY #52599 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 60.2
  SAY #50679 /* ~당신은 표면에 기묘한 룬들이 새겨져 있는 큰 양은제 에일 머그를 살펴본다. 브리스치카는 당신이 보다 자세히 볼 수 있도록 그것을 치켜든다. "특별히 제작된 맥주용 머그로 주위의 온도와는 관계없이 그 안에 든 내용물 - 주로 맥주를 얼음처럼 차갑게 보존해요. 단돈 299 닢만 내시면 얼음의 근 원소계 밖에서 가장 시원한 에일 맥주를 즐기실 수가 있어요."~ */
  IF ~  PartyGoldGT(298)
~ THEN REPLY #50680 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Vris_Buy_14","AR0609",1)
DestroyPartyGold(299)
GiveItemCreate("DwfMug",Protagonist,1,0,0)
~ GOTO 43
  IF ~~ THEN REPLY #50681 /* ~"다른 물건들을 다시 봅시다..."~ */ GOTO 60
  IF ~~ THEN REPLY #50682 /* ~"사양하겠소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
!NearbyDialog("DGrace")
~ THEN BEGIN 52 // from:
  SAY #50683 /* ~이목구비가 뚜렸한 이 여자의 용모는 매력적이기는 하나, 푸르스름한 검은색 피부와 밝은 노란색 눈 때문에 왠지 좀 꺼림칙하다. 그녀가 당신을 살펴보고 있을 때, 그녀의 등에서 박쥐의 그것과 비슷한 한 쌍의 작은 날개가 펼쳐졌다가 다시 그녀의 피부 속으로 들어간다. ~ */
  IF ~~ THEN GOTO 1
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 53 // from:
  SAY #50684 /* ~이목구비가 뚜렸한 이 여자의 용모는 매력적이기는 하나, 푸르스름한 검은색 피부와 밝은 노란색 눈 때문에 왠지 좀 꺼림칙하다. 그녀가 당신을 살펴보고 있을 때, 그녀의 등에서 박쥐의 그것과 비슷한 한 쌍의 작은 날개가 펼쳐졌다가 다시 그녀의 피부 속으로 들어간다. ~ */
  IF ~~ THEN GOTO 2
END

IF ~  NumTimesTalkedTo(0)
NearbyDialog("Dmorte")
NearbyDialog("DGrace")
~ THEN BEGIN 54 // from:
  SAY #50685 /* ~이목구비가 뚜렸한 이 여자의 용모는 매력적이기는 하나, 푸르스름한 검은색 피부와 밝은 노란색 눈 때문에 왠지 좀 꺼림칙하다. 그녀가 당신을 살펴보고 있을 때, 그녀의 등에서 박쥐의 그것과 비슷한 한 쌍의 작은 날개가 펼쳐졌다가 다시 그녀의 피부 속으로 들어간다. ~ */
  IF ~~ THEN GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DGrace")
~ THEN BEGIN 55 // from:
  SAY #52596 /* ~브리스치카는 재빨리 인사를 한다. "다시 오신 걸 환영해요. 뭘 사러 오셨나요?"~ */
  IF ~~ THEN REPLY #52597 /* ~"지금은 아니오. 질문할 것들이 좀 있소..."~ */ GOTO 7
  IF ~~ THEN REPLY #52598 /* ~"그렇소."~ */ GOTO 20
  IF ~~ THEN REPLY #52600 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #63985 /* ~브리스치카는 그녀의 가장 새로운 노예 - 다콘에게 한 장의 양피지를 보여준다. "자... 이 곳이 레이디구에 있는 내 집의 주소다. 당장 그 곳으로 가라... 만약 도망친다면 내가 한 무리의 마족들을 보내 네가 시길로 돌아와 날 섬기겠다고 애원을 하게 될 정도로 따끔하게 혼내 주겠다." 그리고 그녀는 당신 쪽으로 돌아선다. "그리고 *당신*에게는... 감사해요. 그는 참 재미있을 것 같군요. 여기 동전 오천 닢이 있어요... 안녕히 가세요."~ */
  IF ~~ THEN REPLY #63986 /* ~"안녕히 계시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Dakkon")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #63987 /* ~브리스치카는 그녀의 가장 새로운 노예 - 노돔에게 한 장의 양피지를 보여준다. "자... 이 곳이 레이디구에 있는 내 집의 주소다. 당장 그 곳으로 가라... 만약 도망친다면 내가 한 무리의 마족들을 보내 네가 시길로 돌아와 날 섬기겠다고 애원을 하게 될 정도로 따끔하게 혼내 주겠다." 그리고 그녀는 당신 쪽으로 돌아선다. "그리고 *당신*에게는... 감사해요. 그는 참 재미있을 것 같군요. 여기 동전 오천 닢이 있어요... 안녕히 가세요."~ */
  IF ~~ THEN REPLY #63988 /* ~"안녕히 계시오."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
Deactivate("Nordom")
FadeFromColor([20.0],0)
~ EXIT
END

IF ~~ THEN BEGIN 58 // from: 29.0
  SAY #64171 /* ~부리스치카는 보증서를 살펴보며 약간 눈살을 찌푸린다. "나중에 스탠디쉬를 시켜 받아 오라고 하면 될 것 같군요. 좋아요, 여기 있어요." 그녀는 당신에게 아이템을 건네준다. "새로 사신 물건을 즐기시길 바라겠어요."~ */
  IF ~~ THEN REPLY #64172 /* ~"무기와 부적들을 보고 싶소, 지금..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64173 /* ~"진기한 물건들을 다시 보고 싶소..."~ */ GOTO 21
  IF ~~ THEN REPLY #64174 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 21.4 25.0 26.1 27.1 28.1 29.2 30.1 60.5
  SAY #66631 /* ~당신은 브르스타카의 가게의 앞쪽에 있는 선반들을 살펴본다.~ */
  IF ~~ THEN REPLY #66635 /* ~베이비 오일을 살펴본다.~ */ GOTO 25
  IF ~  Global("Vris_Buy_01","AR0609",0)
~ THEN REPLY #66636 /* ~초콜릿 콰짓을 살펴본다.~ */ GOTO 26
  IF ~  Global("Vris_Buy_02","AR0609",0)
~ THEN REPLY #66637 /* ~불가해의 사본을 살펴본다.~ */ GOTO 27
  IF ~  Global("Vris_Buy_03","AR0609",0)
!Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66638 /* ~디바의 눈물을 살펴본다.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ GOTO 28
  IF ~  Global("Vris_Buy_03","AR0609",0)
Global("Ecco_Speak","GLOBAL",4)
~ THEN REPLY #66639 /* ~디바의 눈물을 살펴본다.~ */ DO ~SetGlobal("CW_Saw_Tears","GLOBAL",1)
~ JOURNAL #66815 /* ~내가 브리스치카의 가게에서 판매하고 있는 디바의 눈물을 살펴보자, 그녀는 그것이 가장 격심한 분노- 심지어는 악마의 혀조차 누그러뜨릴 수 있다고 말했다. 아마 이것이 에코를 도울 수 있을 것 같다...~ */ GOTO 29
  IF ~  Global("Vris_Buy_04","AR0609",0)
~ THEN REPLY #66640 /* ~끔찍한 분리의 영약을 살펴본다.~ */ GOTO 30
  IF ~~ THEN REPLY #66641 /* ~가게의 중앙부를 본다. ~ */ GOTO 21
  IF ~~ THEN REPLY #66642 /* ~가게의 뒤쪽을 본다.~ */ GOTO 60
  IF ~~ THEN REPLY #66643 /* ~"실은 무기와 부적들을 보고 싶소..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66644 /* ~"지금은 관심이 있는 물건이 없소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 21.5 35.1 36.1 39.1 40.1 51.1 59.7
  SAY #66632 /* ~당신은 브르스타카의 가게의 뒤쪽에 있는 선반들을 살펴본다.~ */
  IF ~  Global("Vris_Buy_10","AR0609",0)
~ THEN REPLY #66645 /* ~착색된 렌즈를 살펴본다.~ */ DO ~SetGlobal("CW_Vrischika_Ghysis","GLOBAL",1)
~ GOTO 35
  IF ~  Global("Vris_Buy_11","AR0609",0)
~ THEN REPLY #66646 /* ~예브라의 반지를 살펴본다.~ */ GOTO 36
  IF ~  Global("Vris_Buy_14","AR0609",0)
~ THEN REPLY #66647 /* ~룬으로 뒤덮인 맥주 조끼를 살펴본다.~ */ GOTO 51
  IF ~  Global("Vris_Buy_13","AR0609",0)
Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #66648 /* ~낡은 봉제 인형을 살펴본다.~ */ GOTO 39
  IF ~  Global("Vris_Buy_13","AR0609",0)
GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #66649 /* ~낡은 봉제 인형을 살펴본다.~ */ GOTO 40
  IF ~~ THEN REPLY #66650 /* ~가게의 앞쪽을 본다.~ */ GOTO 59
  IF ~~ THEN REPLY #66651 /* ~가게의 중앙부를 본다.~ */ GOTO 21
  IF ~~ THEN REPLY #66652 /* ~"실은 무기와 부적들을 보고 싶소..."~ */ DO ~StartStore("Vris",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66653 /* ~"지금은 관심이 있는 물건이 없소. 안녕히 계시오, 브리스치카."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 7.1
  SAY #66959 /* ~브리스치카는 미소를 지으면서 가게의 앞쪽에 있는 물건들을 가리킬 뿐이다.~ */
  IF ~~ THEN REPLY #66960 /* ~그녀가 가리키고 있는 것을 살펴본다.~ */ GOTO 29
END
