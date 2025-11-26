// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALAIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DALAIS~

IF ~  Global("Know_Alais","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3067 /* ~이 프라임은 당신을 역겹다는 듯한 눈초리로 쳐다본다. "당신은 무엇을 원하시오?" 그가 대명사를 발음하는 방식은 당신을 분노하게 하며, 그 의도가 당신을 모독하는 데 있다는 건 명백하다.~ */
  IF ~~ THEN REPLY #11435 /* ~"진정하시오, 난 질문을 좀 하고 싶을 뿐이오."~ */ GOTO 1
  IF ~~ THEN REPLY #11436 /* ~"당신으로부터? 아무 것도 없소."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #11437 /* ~"당신 태도로 볼 때 내게는 더 이상 당신에게 필요한 것이 없는 모양이오. 그러니 날 귀찮게 하지 않으면 고맙겠소. 안녕히 계시오." 그는 신속하게 당신으로부터 떠난다.~ */
  IF ~~ THEN REPLY #11438 /* ~"이것 보시오. 난 내가 전에 당신에게 한 말에 대해 사과했소. 난 몇 가지 질문을 하고 싶을 뿐이오."~ */ GOTO 2
  IF ~~ THEN REPLY #11439 /* ~"좋소, 그럼."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #11440 /* ~"당신이 그런 말을 한 건 지울 수 없는 사실이고, 때문에 난 기분이 상했소. 하지만 난 그렇게 융통성이 없는 사람은 아니오. 내게 무엇을 물어보고 싶소?"~ */
  IF ~~ THEN REPLY #11441 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #11442 /* ~"이 선술집의 손님들은 어떤 사람들이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #11443 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11444 /* ~"나는 내 일지를 찾고 있소. 혹시 최근에 그런 걸 본 적이 있소?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11445 /* ~"파로드란 이름의 수집자에 대해 들은 적이 있소?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11446 /* ~"당신에게 사과하고 싶소."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11447 /* ~"당신에게 사과하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #11448 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #11449 /* ~그는 눈에는 분노한 빛이 역력하다. "당신은 이미 날 충분히 모욕했소, '친구.' 당신과 더 이상 아무 얘기도 하지 않겠소." 그는 자존심에 상처를 입어 얼굴이 빨개진 채 당신으로부터 완전히 등을 돌린다. 당신이 어떤 방법으로 구슬러도 그의 마음을 돌릴 수는 없을 것 같다. ~ */
  IF ~~ THEN REPLY #11450 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11451 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1
  SAY #11452 /* ~"내가 아는 한 여기서 그럴 만한 사람은 엡뿐이오. 나는 이 곳에 온지 얼마 안 되었고, 다른 사람들의 일에는 참견하지 않소. 질문할 것이 더 있소. 아니면 내가 계속 고독을 즐겨도 괜찮겠소?"~ */
  IF ~~ THEN REPLY #11454 /* ~"실은 먼저 당신에게 몇 가지만 물어보고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #11455 /* ~"뭐던 간에 당신 하던 일로 돌아가시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 8.0 22.0
  SAY #11456 /* ~그는 탄식을 하고, 당신을 경멸하는 눈빛으로 바라본다. "그럼 그렇게 하시오. 빨리 질문을 하고 끝내시오."~ */
  IF ~~ THEN REPLY #11458 /* ~"당신이 누군지 다시 말해주겠소?"~ */ GOTO 3
  IF ~~ THEN REPLY #11460 /* ~"이 선술집의 손님들은 어떤 사람들이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #11461 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11462 /* ~"나는 내 일지를 찾고 있소. 혹시 최근에 그런 걸 본 적이 있소?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11464 /* ~"파로드란 이름의 수집자에 대해 들은 적이 있소?"~ */ GOTO 8
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11465 /* ~"당신에게 사과하고 싶소."~ */ GOTO 9
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11466 /* ~"당신에게 사과하고 싶소."~ */ GOTO 11
  IF ~~ THEN REPLY #11467 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.2
  SAY #11469 /* ~"이 곳은 선술집이오. 어디서나 흔히 볼 수 있는 그런 곳이오. 적어도 구석에 있는 마족들과 내 앞에서 펼쳐지는 끝없는 괴기만 아니라면. 그래도 이 곳에서는 인간다운 냄새가 풍기고 난 그것이 무척 반갑소."~ */
  IF ~~ THEN REPLY #11470 /* ~"아, 그래. 당신은 무지한 자로군, 그렇지 않소?"~ */ GOTO 12
  IF ~~ THEN REPLY #11471 /* ~"당신은 프라임이오, 그렇지 않소?"~ */ GOTO 13
  IF ~~ THEN REPLY #11472 /* ~"상상이 가오. 괜찮다면 질문을 더 하고 싶소."~ */ GOTO 5
  IF ~~ THEN REPLY #11473 /* ~"상상이 가오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 5.3
  SAY #11474 /* ~"일지? 내가 어디서 그런 걸 봤겠소? 나처럼 이 곳에 온지 얼마되지도 않은 사람이 일지를 본 걸 기억하기를 기대하는 거요? 당신은 무례하고 불쾌할 뿐만 아니라 머리도 나쁜 것 같소."~ */
  IF ~~ THEN REPLY #11475 /* ~"서로 모욕하는 건 이제 비긴 걸로 칩시다. 어떻소?"~ */ GOTO 14
  IF ~~ THEN REPLY #11476 /* ~"내 화를 돋구려는 거요?"~ */ GOTO 15
  IF ~~ THEN REPLY #11477 /* ~"이건 무의미하오. 그럼 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #11478 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.4 5.4
  SAY #11524 /* ~"나는 당신에게 내가 이 곳에 온지 얼마되지 않는다고 말했고, 당신은 그걸 가지고 날 놀렸소. 물론 난 이 '수집자들'이란 자들에 모르오. 이제 날 그냥 내버려 두겠소?"~ */
  IF ~~ THEN REPLY #11525 /* ~"아직 아니오. 난 당신으로부터 내 질문에 대한 답을 들어야겠소."~ */ GOTO 5
  IF ~  Global("Alais_Apology","GLOBAL",1)
~ THEN REPLY #11526 /* ~"당신에게 사과하고 싶소."~ */ GOTO 11
  IF ~  Global("Alais_Apology","GLOBAL",0)
~ THEN REPLY #11527 /* ~"어떤 방법으로든 사과하고 싶소."~ */ GOTO 9
  IF ~~ THEN REPLY #11528 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.5 5.5 8.2
  SAY #11529 /* ~그는 마치 사과란 개념이 무척 낯선 것인 듯 큰 충격을 받은 것 같다. "당신은... 사과를 하려고 하오?"~ */
  IF ~~ THEN REPLY #11530 /* ~"내가 말한 게 바로 그거요."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
IncrementGlobal("Alais_Apology","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #11531 /* ~"생각해 보니 아니오. 난 생각을 바꿨소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 14.0
  SAY #11532 /* ~"그렇다면... 그렇다면... 그렇다면 난 내 영예를 걸고 당신의 사과를 받아들여야만 하겠군. 좋소, 나도 당신에게 사과하리다, 이제 문제는 제쳐 두고 그것에 대해서는 더 이상 얘기하지 말도록 합시다. ~ */
  IF ~~ THEN REPLY #11533 /* ~"좋소. 당신에 질문을 조금 더 해도 괜찮겠소?:~ */ GOTO 16
  IF ~~ THEN REPLY #11534 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.6 5.6 8.1
  SAY #11535 /* ~"나는 바보일지도 모르오, 하지만 당신으로부터 모욕을 기꺼이 받고 그것을 간단히 용서할 정도로 어리석지는 않소. 나는 당신이 가서 죽든 말든 상관하지 않소. 단지 당신 몸에 흉터가 더 생기고 당신도 명예라는 걸 알게 되길 발랄 뿐이오. 안녕히 가시오." 그는 돌아서서 당신을 완전히 무시한다.~ */
  IF ~~ THEN REPLY #11536 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11537 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0 13.1
  SAY #11538 /* ~"당신이 날 모욕한 건 이번이 두 번째요, 그리고 난 더 이상 참을 수가 없소. 자신을 방어하시오!"~ */
  IF ~~ THEN REPLY #11539 /* ~"우린 서로를 이해할 수 있소..."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.1
  SAY #11540 /* ~"만약 그 질문의 의미가 내가 진정한 세계에서 왔느냐고 묻는 것이라면 그렇소. 나는 물질계 출신이오. 나는 그것에서는 이름이 좀 알려진 전사요. 그리고 내가 비록 이 새로운 세계의 모든 비밀을 다 알고 있지는 못하지만, 이 곳의 일부 얼간이들이 날 부르는 것처럼 '무지'하지는 않소."~ */
  IF ~~ THEN REPLY #11541 /* ~"좋소. 서로 모욕하는 건 그만둡시다. 어떻소?~ */ GOTO 14
  IF ~~ THEN REPLY #11542 /* ~"정말로? 나라면 그러겠는데."~ */ GOTO 12
  IF ~~ THEN REPLY #11543 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.0 13.0
  SAY #11545 /* ~"비긴 걸로 하자고? 당신이 사과하지 않는 한 어림없소, 악한." 그는 싸움을 원하는 듯하다. "아니면 내가 더 도발을 해야겠소?"~ */
  IF ~~ THEN REPLY #11546 /* ~"그럼 좋소. 사과하리다."~ */ GOTO 10
  IF ~~ THEN REPLY #11547 /* ~"사과? 당신에게? 절대 안 되지."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 7.1 14.1
  SAY #11549 /* ~"당신은 천박한 악한이자 명예도 모르는 약골이며, 진정한 영혼도 없이 단지 움직이기만 하는 고깃덩어리이고, 구제불능일 뿐만 아니라 흉터투성이의 늙어 가는 쓰레기요, 그리고 당신은 남자다운 구석이라곤 전혀 없이 여생을 떠돌 운명이오. 난 당신을 더 이상 상대하지 않겠소. 당신 인생이 불쌍할 뿐이오. 안녕히 계시오." 그는 등을 돌린다. ~ */
  IF ~~ THEN REPLY #11550 /* ~그를 공격한다. ~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #11551 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 16 // from: 10.0 19.0 20.1 23.3 25.1 26.0 27.0 28.1
  SAY #11553 /* ~"무엇을 알고 싶소?"~ */
  IF ~~ THEN REPLY #11555 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11559 /* ~"이 선술집의 손님들은 어떤 사람들이오?"~ */ GOTO 23
  IF ~~ THEN REPLY #11561 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11562 /* ~"나는 내 일지를 찾고 있소. 혹시 최근에 그런 걸 본 적이 있소?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11583 /* ~"파로드란 이름의 수집자에 대해 들은 적이 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #11658 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 17 // from:
  SAY #11565 /* ~단정하게 차려 입은 근육질의 남자가 보인다. 그의 옷은 당신이 이 도시에서 본 다른 의상들에 비해 상대적으로 단조롭고 평범하다. 그는 거만한 분위기를 지니고 있다. 또한 그는 이 장소에 전혀 어울리지 않는 것처럼 보인다. 그가 묻는다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #11566 /* ~"당신은 누구요?"~ */ DO ~SetGlobal("Know_Alais","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #11568 /* ~"이 선술집의 손님들은 어떤 사람들이오?"~ */ GOTO 23
  IF ~~ THEN REPLY #11570 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 25
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11573 /* ~"나는 내 일지를 찾고 있소. 혹시 최근에 그런 걸 본 적이 있소?"~ */ GOTO 26
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #11574 /* ~"파로드란 이름의 수집자에 대해 들은 적이 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #11580 /* ~아무 것도 아니오. 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #11585 /* ~"나는 얼레이스로 이름난 전사요! 아마 당신도 내 이름을 들어 보았을 거요."~ */
  IF ~~ THEN REPLY #11588 /* ~거짓말: "그렇소."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALChaos_Alais_One","GLOBALLaw",-1)
~ GOTO 19
  IF ~~ THEN REPLY #11590 /* ~진실: "아니오."~ */ DO ~IncrementGlobalOnceEx("GLOBALLaw_Alais_One","GLOBALLaw",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #11592 /* ~"마침내! 이 곳에 있는 모든 사람들이 다 무지한 건 아니군! 내가 당신에게 술을 한 잔 사리다, 그리고 서로의 무용담을 교환합시다! 나는 당신에 내 가장 최근의 모험에 대해 들려 주겠소, 내가 어떻게 이 가장 경이롭고 당황스런 도시에 오게 되었는지도 포함해서 말이오."~ */
  IF ~~ THEN REPLY #11594 /* ~"정말 기대가 되오. 하지만 먼저 내 질문에 대답해줄 수 있겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #11595 /* ~"당신 어디서 왔소? 당신은 어떻게 이 곳에 왔소."~ */ GOTO 21
  IF ~~ THEN REPLY #11597 /* ~"아마 다음 기회에. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #11606 /* ~"정말 그렇소? 정말 이 도시에는 내 위업에 대해 들어본 적이 있는 사람이 없소? 슬프도다... 내 자신을 처음부터 다시 입증해야겠군. 난 내 명성이 세계 전역에 널리 알려졌다고 생각했었는데."~ */
  IF ~~ THEN REPLY #11608 /* ~"당신은 어떤 세계로부터 왔소?"~ */ GOTO 21
  IF ~~ THEN REPLY #11609 /* ~"나는 그랬으리라고 믿소. 내 질문에나 좀 대답해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #11612 /* ~"누구든지 때로는 실망하게 되오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0 25.0
  SAY #11629 /* ~"나는 테임강 옆에 있는 알리번시에서 왔소. 당신도 그 영광과 찬란함에 대해서는 들은 적이 있을 거요. 뭐, 상관없소... 이 곳은 진정한 도시들의 찬란함에 대해서는 미개하고 무지하니까. 이 곳 사람들은 내 고향을 물질계라고 부르는 것 같소. 하지만 그게 정확히 무슨 뜻인지는 모르겠소."~ */
  IF ~~ THEN REPLY #45189 /* ~"당신은 어떻게 여기에 오게 되었소?"~ */ GOTO 28
  IF ~~ THEN REPLY #45190 /* ~"옳소. 당신은 고향으로부터 멀리 떨어진 곳까지 왔소. 행운을 빌겠소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.2 28.0
  SAY #11637 /* ~그는 분노로 얼굴이 빨개지고 머리칼이 곤두선다, 그리고 그는 손으로 자신의 칼의 손잡이를 꽉 쥔다. "내가 무지하다는 거요? 당신은 날 모욕했소. 난 당신을 다시는 보고 싶지 않소. 안녕히 계시오." 그는 당신에게 등을 돌린다. 그의 얼굴은 긍지와 분노로 아직도 빨갛다. ~ */
  IF ~~ THEN REPLY #11638 /* ~"난 당신에게 몇 가지 질문을 하고 싶을 뿐이오."~ */ GOTO 5
  IF ~~ THEN REPLY #11639 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 16.1 17.1
  SAY #11640 /* ~"나는 늙은 엡 이외의 사람과는 만나지 않았소. 엡은 내게 이 도시와 '평원'에 대해 가르쳐 주고 있소. 내 적의 주문은 우리를 정말 먼 곳까지 날려보낸 모양이오. 내가 알기로 우리가 전에 있던 곳 부근에는 '평원'은 없었소."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",0)
~ THEN REPLY #11641 /* ~"아니, 아니... 차원이오. 존재의 차원에서처럼. 그들은 상상, 생각, 그리고 믿음의 차원이오. 그들은 물질적인 초원이나 평원이 아니라 다른 차원들이오."~ */ DO ~AddexperienceParty(250)
SetGlobal("Alais_Ed","GLOBAL",1)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Alais_Ed","GLOBAL",1)
~ THEN REPLY #11642 /* ~"아니, 아니... 차원이오. 존재의 차원에서처럼. 그들은 상상, 생각, 그리고 믿음의 차원이오. 그들은 물질적인 초원이나 평원이 아니라 다른 차원들이오."~ */ GOTO 24
  IF ~~ THEN REPLY #11643 /* ~"알았소. 당신은 무지한 자군. ~ */ GOTO 22
  IF ~~ THEN REPLY #11644 /* ~"음. 좋소. 자, 다른 질문이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #11645 /* ~"알겠소. 당신은 고향으로부터 멀리 떨어진 곳에 있소. 행운을 비오, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #11646 /* ~그는 혼란스런 표정을 짓는다. "알겠소... 비로소 그 노인이 한 말의 의미를 이해할 수 있을 것 같소... 미안하지만 난 이 일에 대해 골똘히 생각해 봐야겠소. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #11647 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 16.2 17.2
  SAY #11648 /* ~"모르겠소. 이 곳에 도착했을 때 난 내게 정신을 가다듬을 곳이 필요하다는 걸 깨달았소. 이 곳에서는 평범한 선술집조차 미치광이와 괴인들로 차 있다는 발견했을 때 내가 얼마나 놀랐을지 한 번 상상해 보시오! 마치 정신 병원에 온 기분이었소!"~ */
  IF ~~ THEN REPLY #11649 /* ~"당신은 어디서 왔소?"~ */ GOTO 21
  IF ~~ THEN REPLY #11650 /* ~"때로는 그렇게 느껴질 때가 있소. 몇 가지만 더 물어봅시다."~ */ GOTO 16
  IF ~~ THEN REPLY #11651 /* ~"그래, 그렇소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.3 17.3
  SAY #11652 /* ~"미안하오, 하지만 나는 그런 물건은 유심히 살피지 않았소. 나는 이 낯선 환경에 적응하기 위해 최선을 다하고 있으며, 그 과정에서 작은 것도 놓치지 않으려고 애쓰고는 있으나, 솔직히 말해 일지같은 것에는 별 관심을 기울이지 않았소."~ */
  IF ~~ THEN REPLY #11653 /* ~"좋소, 그럼. 다른 질문들도 좀 대답해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #11654 /* ~"좋소. 시간을 내주어 고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.4 17.4
  SAY #11655 /* ~"파로드? 수집자? 나는 그러한 이름이나 용어를 들어 본 적이 없소. 나는 당신 얼굴은 분명히 기억할 것이오. 사실 당신 얼굴은 도저히 잊을 수가 없을 거요."~ */
  IF ~~ THEN REPLY #11656 /* ~"고맙소. 내 질문에 더 대답해주시오."~ */ GOTO 16
  IF ~~ THEN REPLY #11657 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 21.0
  SAY #2950 /* ~"나는 내 오랜 적인 살아 있는 그림자 터 타넬렐을 추격하고 있던 중이었소..." 그는 일단 멈추고 당신 반응을 기다렸다가 얘기를 계속한다. "그는 사악한 마법을 이용하여 공간의 문을 열고서는 그 안으로 들어갔소. 그가 완전히 도주하기 전에 나도 그의 뒤를 따라서 그 문으로 들어갔소... 그리고 이 곳에 오게 된 거요."~ */
  IF ~~ THEN REPLY #45193 /* ~"알았소. 당신은 무지자들 중 하나군."~ */ DO ~SetGlobal("Know_Alais","GLOBAL",3)
~ GOTO 22
  IF ~~ THEN REPLY #45195 /* ~"대단한 모험이었던 것 같소. 그 밖에도 질문할 것들이 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #45196 /* ~"행운을 빌겠소. 당신에겐 그것이 필요할 거요. 안녕히 계시오."~ */ EXIT
END
