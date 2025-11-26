// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECH~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25492 /* ~이 사내는 누더기가 된 더러운 갈색 겉옷을 입고 있으며, 긴 두건이 그의 얼굴의 대부분을 가리고 있다.~ */
  IF ~~ THEN REPLY #25493 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #25596 /* ~그를 그냥 내버려 두고 떠난다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25494 /* ~그는 두건 아래서 눈을 가늘게 뜨고 있다, 그리고 그는 뒤로 한 걸음 물러선다. "무엇을 원하시오?" ~ */
  IF ~~ THEN REPLY #25495 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #25593 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #25594 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #25595 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 20.0
  SAY #25496 /* ~"나는 빌어먹을 시체를 찾으려고 하고 있소, 하지만 죽음의 신이란 신은 하나도 남김없이 짐을 싸서 이 우주를 떠났는지 사람들은 모두 멀쩡히 잘 살고 있소." 갑자기 그의 눈이 빛난다. "지난달에는 천연두가 창궐했소. 참 경기가 좋았지. 사람들이 악취를 풍기며 승천하는 덕분에 돈을 잔뜩 벌 수가 있었소."~ */
  IF ~~ THEN REPLY #25497 /* ~"당신은 왜 시체를 찾는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #25590 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #25591 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #25592 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #25498 /* ~그는 놀란 듯하다. "죽은 자들을 시체안치소로 나르는 일을 하오. 거기서 더스티들과 흥정을 해서 돈을 약간 받아내오."~ */
  IF ~~ THEN REPLY #25499 /* ~"왜 더스트맨은 시체를 사는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #25587 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #25588 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #25589 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25500 /* ~"그들은 죽은 자들을 모은다오... 그게 그들 일이오. 그들은 우리들이 보다 넓은 지역을 뒤져 시체를 가져오도록 우리에게 돈을 지불하오. 그들은 수집한 사체들이 제대로 매장 또는 화장되도록 조치를 취하오. 그들은 자신들의 미치광이 철학을 매우 심각하게 받아들이고 있소, 하지만 그는 덕분에 난 돈을 챙길 수가 있소." 그는 눈을 깜박인다.~ */
  IF ~~ THEN REPLY #25501 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #25585 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #25586 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 20.1
  SAY #25502 /* ~그는 눈살을 찌푸린다. "당신은 물론 벌통에 있소. 시길에서 가장 더러운 곳이지. 당신은 어디서 왔소? 주물질계에서라도 온 거요?"~ */
  IF ~~ THEN REPLY #25503 /* ~"아니오. 당신은 왜 시체를 찾는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #25504 /* ~"아니오. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #25584 /* ~"아니오. 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 20.2
  SAY #25505 /* ~그는 한쪽 눈썹을 치켜 올린다. "정보가 좀 있긴 하지만 당신은 어떤 것에 대해 얼마나 간절히 알고 싶어하고 있소?"~ */
  IF ~~ THEN REPLY #25506 /* ~"무슨 뜻이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #25579 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25580 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25581 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25582 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 7
  IF ~~ THEN REPLY #25583 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #25507 /* ~"주변을 한 번 둘러보시오, 친구... 나는 공짜로 정보를 가르쳐 줄 정도로 수입이 좋지 못하오. 만약 정보를 원한다면 돈을 좀 내야 할 거요."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25508 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25575 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25576 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25577 /* ~"당신은 아무 것도 얻지 못할 거요, 그리고 내 질문에 대답해야만 하오."~ */ GOTO 19
  IF ~~ THEN REPLY #25578 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 19.1
  SAY #25509 /* ~그는 냉소한다. "더스티도 그것보다는 많이 줄 거요. 별로 알고 싶은 생각이 없는 모양이군."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25510 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25560 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25567 /* ~"당신은 아무 것도 얻지 못할 거요, 그리고 내 질문에 대답해야만 하오."~ */ GOTO 19
  IF ~~ THEN REPLY #25574 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 19.2
  SAY #25511 /* ~그는 당신이 손바닥에 동전을 놓아 주자 그것들을 잠시 살펴본다. "에." 그는 동전을 재빨리 주머니에 넣는다. "질문을 하시오."~ */
  IF ~~ THEN REPLY #25512 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25556 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25557 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25558 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25559 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.2 12.2 13.1 14.1 15.0 16.0 18.0
  SAY #25513 /* ~"나... 우리는... 시길의 아름다운 거리에서 죽은 사람들을 발견해 그 납덩이처럼 무거운 시체를 시체안치소까지 끌고 감으로서 삶을 영위하오. 별로 고상한 직업은 아니지만 어쩔 수가 없소. 당신이 알고 싶었던 것 그것뿐이오?" 그는 당신을 이상하다는 눈초리로 본다. ~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25514 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25553 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25554 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25555 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 15.1 16.1 18.1
  SAY #25515 /* ~그는 갑자기 눈을 가늘게 뜬다. "파로드... 그가 어쨌다는 거요?"~ */
  IF ~~ THEN REPLY #25516 /* ~"당신은 갑자기 경계를 하는군... 무엇 때문이오?"~ */ GOTO 12
  IF ~~ THEN REPLY #25548 /* ~"그가 어디 있는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #25549 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25550 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25551 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25552 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 11.0 14.0
  SAY #25517 /* ~"파로드, 흥!" 그는 조소를 하며 침을 뱉는다. "넝마주이 광장은 내 보스인 쉐어그레이브의 영토요. 파로드와 그의 개들은 얼마 전에 이 곳으로 와서 우리를 몰아내려고 했소. 하지만 우린 놈들을 물리쳤고 그들은 이제 어딘가에 숨어 있소. 하지만 아직도 우리는 때때로 이 부근에서 놈의 부하를 잡곤 하오. 대개 우리는 그런 염병할 놈들을 즉석에서 처리해 시체안치소에 넘겨 용돈을 번다오."~ */
  IF ~~ THEN REPLY #25518 /* ~"내게 쉐어그레이브에 대해 얘기해주시오."~ */ GOTO 13
  IF ~~ THEN REPLY #25543 /* ~"파로드가 어디 있는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #25544 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25545 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25546 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25547 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25519 /* ~"그는 내 보스요... 많은 수집자들에게 그 영향력이 미치고 있소. 그와 얘기를 할 정말 좋은 이유가 없는 한 그를 피하는 게 좋소... 나도 그와 직접 얘기를 해본 적이 없소." ~ */
  IF ~~ THEN REPLY #25520 /* ~"파로드가 어디 있는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #25539 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25540 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25541 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25542 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 11.1 12.1 13.0
  SAY #25521 /* ~"나는 그 쥐새끼가 어디 없는지는 알고 있소... 그는 대부분의 수집자들이 사는 넝마주이 광장에는 없소, 하지만 그가 그 곳 근처에 있다는 소문은 들었소."~ */
  IF ~~ THEN REPLY #25522 /* ~"모든 수집자들은 파로드에 대해 당신과 같은 의견을 가지고 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #25523 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25524 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25537 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25538 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 9.2 10.1 11.3 12.3 13.2 14.2 16.2 18.2
  SAY #25525 /* ~그는 어리둥절한 표정으로 고개를 저을 뿐이다.~ */
  IF ~~ THEN REPLY #25526 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25527 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25528 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25536 /* ~"그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 9.3 10.2 11.4 12.4 13.3 14.3 15.2 18.3
  SAY #25529 /* ~"산파 말이오? 그녀는 친절한 여인으로 사람들이 아플 때 도와주곤 하오. 그녀는 넝마주이 광장의 승강대 위에 있는 오두막에서 살고 있으니 만나고 싶다면 거기로 가시오."~ */
  IF ~~ THEN REPLY #25530 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25531 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25532 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 15
  IF ~~ THEN REPLY #25533 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 9.4 10.3 11.5 12.5 13.4 14.4 15.3 16.3 18.4
  SAY #25534 /* ~"그럼 조심하면서 다니시오. 만약 거리에서 당신 시체를 발견하면 정중하게 다루어 주리다."~ */
  IF ~~ THEN REPLY #25535 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 7.2 8.1 19.3
  SAY #25561 /* ~"질문을 하시오. 내가 도움이 될 지는 모르겠지만 노력은 하리다."~ */
  IF ~~ THEN REPLY #25562 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #25563 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #25564 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 15
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #25565 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 16
  IF ~~ THEN REPLY #25566 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 17
END

IF ~~ THEN BEGIN 19 // from: 7.3 8.2
  SAY #25568 /* ~"나는 아무 것도 모르오, 그러니 당신이 원하는 답은 다른 곳에서 찾으시오."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #25569 /* ~그를 잡고 좀 흔든다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #25570 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #25571 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #25572 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 18
  IF ~~ THEN REPLY #25573 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #25597 /* ~그는 한 걸음 물러서서 두건을 덮어쓴 채 당신을 의심스런 눈초리로 흘긋 본다. "또 왔소? 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #25598 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #25599 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #25600 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #25601 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END
