// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLLECT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLLECT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1805 /* ~이 사내는 누더기가 된 더러운 갈색 겉옷을 입고 있으며, 긴 두건이 그의 얼굴의 대부분을 가리고 있다.~ */
  IF ~~ THEN REPLY #21697 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #21698 /* ~그를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #21677 /* ~그는 두건 아래서 눈을 가늘게 뜨고 있다, 그리고 그는 뒤로 한 걸음 물러선다. "무엇을 원하시오?"~ */
  IF ~~ THEN REPLY #21699 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #21700 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #21701 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #21702 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 18.0
  SAY #21678 /* ~"나는 빌어먹을 시체를 찾으려고 하고 있소, 하지만 죽음의 신이란 신은 하나도 남김없이 짐을 싸서 이 우주를 떠났는지 사람들은 모두 멀쩡히 잘 살고 있소." 갑자기 그의 눈이 빛난다. "지난달에는 천연두가 창궐했소. 참 경기가 좋았지. 사람들이 악취를 풍기며 승천하는 덕분에 돈을 잔뜩 벌 수가 있었소."~ */
  IF ~~ THEN REPLY #21703 /* ~"당신은 왜 시체를 찾는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #21704 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #21705 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #21706 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #21679 /* ~그는 놀란 듯하다. "죽은 자들을 시체안치소로 나르는 일을 하오. 거기서 더스티들과 흥정을 해서 돈을 약간 받아내오."~ */
  IF ~~ THEN REPLY #21707 /* ~"왜 더스트맨은 시체를 사는 거요?"~ */ GOTO 4
  IF ~~ THEN REPLY #21708 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #21709 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #21710 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #21680 /* ~"그들은 죽은 자들을 모은다오... 그게 그들 일이오. 그들은 우리들이 보다 넓은 지역을 뒤져 시체를 가져오도록 우리에게 돈을 지불하오. 그들은 수집한 사체들이 제대로 매장 또는 화장되도록 조치를 취하오. 그들은 자신들의 미치광이 철학을 매우 심각하게 받아들이고 있소, 하지만 그는 덕분에 난 돈을 챙길 수가 있소." 그는 눈을 깜박인다.~ */
  IF ~~ THEN REPLY #21711 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #21712 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #21713 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.1 3.1 4.0 18.1
  SAY #21681 /* ~그는 눈살을 찌푸린다. "당신은 물론 넝마주이 광장에 있소. 당신은 어디서 왔소? 주물질계에서라도 온 거요?"~ */
  IF ~~ THEN REPLY #21714 /* ~"아니오. 당신은 왜 시체를 찾는 거요?"~ */ GOTO 3
  IF ~~ THEN REPLY #21715 /* ~"아니오. 질문할 것들이 좀 있소."~ */ GOTO 6
  IF ~~ THEN REPLY #21826 /* ~"아니오. 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 2.2 3.2 4.1 5.1 18.2
  SAY #21682 /* ~그는 한쪽 눈썹을 치켜 올린다. "정보가 좀 있긴 하지만 당신은 어떤 것에 대해 얼마나 간절히 알고 싶어하고 있소?"~ */
  IF ~~ THEN REPLY #21717 /* ~"무슨 뜻이오?"~ */ GOTO 7
  IF ~~ THEN REPLY #21718 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21719 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 7
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21720 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 7
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21721 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 7
  IF ~~ THEN REPLY #21722 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2 6.3 6.4
  SAY #21683 /* ~"주변을 한 번 둘러보시오, 친구... 나는 공짜로 정보를 가르쳐 줄 정도로 수입이 좋지 못하오. 만약 정보를 원한다면 돈을 좀 내야 할 거요."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21723 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21724 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21725 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21726 /* ~"당신은 아무 것도 얻지 못할 거요, 그리고 내 질문에 대답해야만 하오."~ */ GOTO 17
  IF ~~ THEN REPLY #21727 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.1
  SAY #21684 /* ~그는 냉소한다. "더스티도 그것보다는 많이 줄 거요. 별로 알고 싶은 생각이 없는 모양이군."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21728 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21729 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21730 /* ~"당신은 아무 것도 얻지 못할 거요, 그리고 내 질문에 대답해야만 하오."~ */ GOTO 17
  IF ~~ THEN REPLY #21731 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0 17.2
  SAY #21685 /* ~그는 당신이 손바닥에 동전을 놓아 주자 그것들을 잠시 살펴본다. "에." 그는 동전을 재빨리 주머니에 넣는다. "질문을 하시오."~ */
  IF ~~ THEN REPLY #21732 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21733 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21734 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21735 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21736 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 7.2 8.1 17.3
  SAY #21686 /* ~"질문을 하시오. 내가 도움이 될 지는 모르겠지만 노력은 하리다."~ */
  IF ~~ THEN REPLY #21737 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21738 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21739 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21740 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21741 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 9.4 10.4 12.3 13.5 14.4 15.3 16.3 19.5 20.4
  SAY #21687 /* ~"그럼 조심하면서 다니시오. 만약 거리에서 당신 시체를 발견하면 정중하게 다루어 주리다."~ */
  IF ~~ THEN REPLY #21742 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 10.0 13.2 14.1 15.0 16.0 19.2 20.1
  SAY #21688 /* ~"나... 우리는... 시길의 아름다운 거리에서 죽은 사람들을 발견해 그 납덩이처럼 무거운 시체를 시체안치소까지 끌고 감으로서 삶을 영위하오. 별로 고상한 직업은 아니지만 어쩔 수가 없소. 당신이 알고 싶었던 것 그것뿐이오?" 그는 당신을 이상하다는 눈초리로 본다. ~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21743 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21744 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21745 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21746 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 9.1 10.1 12.0 15.1 16.1
  SAY #21689 /* ~그는 갑자기 눈을 가늘게 뜬다. "파로드... 그가 어쨌다는 거요?"~ */
  IF ~~ THEN REPLY #21747 /* ~"당신은 갑자기 경계를 하는군... 무엇 때문이오?"~ */ GOTO 19
  IF ~~ THEN REPLY #21748 /* ~"그가 어디 있는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #21749 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21750 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21751 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21752 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.1 19.1 20.0
  SAY #21690 /* ~"나는 그 쥐새끼가 어디 없는지는 알고 있소... 그는 이 곳 광장에는 없소, 하지만 그가 이 근처에 있다는 소문은 들었소."~ */
  IF ~~ THEN REPLY #21753 /* ~"모든 수집자들은 파로드에 대해 당신과 같은 의견을 가지고 있소?"~ */ GOTO 19
  IF ~~ THEN REPLY #21754 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21755 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21756 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21757 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 15 // from: 9.3 10.3 12.2 13.4 14.3 16.2 19.4 20.3
  SAY #21691 /* ~"산파 말이오? 그녀는 친절한 여인으로 사람들이 아플 때 도와주곤 하오. 그녀는 승강대 위에 있는 오두막에서 살고 있으니 만나고 싶다면 거기로 가시오."~ */
  IF ~~ THEN REPLY #21758 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21759 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 13
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21760 /* ~"나는 잃어버린 일지를 찾고 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #21761 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 16 // from: 9.2 10.2 12.1 13.3 14.2 15.2 19.3 20.2
  SAY #21692 /* ~그는 당혹스러운 듯 고개를 젓는다. ~ */
  IF ~~ THEN REPLY #21762 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #21763 /* ~"나는 또한 파로드란 사람을 찾고 있소."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21764 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21765 /* ~"그럼 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 17 // from: 7.3 8.2
  SAY #21693 /* ~"나는 아무 것도 모르오, 그러니 당신이 원하는 답은 다른 곳에서 찾으시오... 만약 내게 손가락 하나라도 댄다면 이 광장에 있는 사람들의 절반은 상대할 각오를 해야 할 거요."~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #21766 /* ~그를 잡고 좀 흔든다.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(2)
~ THEN REPLY #21768 /* ~그에게 동전 몇 닢을 준다.~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #21773 /* ~그에게 동전 다섯 닢을 던져준다.~ */ DO ~TakePartyGold(5)
~ GOTO 9
  IF ~  PartyGoldGT(9)
~ THEN REPLY #21778 /* ~그의 손바닥에 동전 열 닢을 쏟아 놓는다.~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #21781 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #21694 /* ~그는 한 걸음 물러서서 두건을 덮어쓴 채 당신을 의심스런 눈초리로 흘긋 본다. "또 왔소? 뭘 원하시오?"~ */
  IF ~~ THEN REPLY #21783 /* ~"뭘 하고 있는 거요?"~ */ GOTO 2
  IF ~~ THEN REPLY #21785 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #21787 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #21789 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 14.0
  SAY #21695 /* ~"파로드, 흥!" 그는 조소를 하며 침을 뱉는다. "넝마주이 광장은 내 보스인 쉐어그레이브의 영토요. 파로드와 그의 개들은 얼마 전에 이 곳으로 와서 우리를 몰아내려고 했소. 하지만 우린 놈들을 물리쳤고 그들은 이제 어딘가에 숨어 있소. 하지만 아직도 우리는 때때로 이 부근에서 놈의 부하를 잡곤 하오. 대개 우리는 그런 염병할 놈들을 즉석에서 처리해 시체안치소에 넘겨 용돈을 번다오."~ */
  IF ~~ THEN REPLY #21791 /* ~"내게 쉐어그레이브에 대해 얘기해주시오."~ */ GOTO 20
  IF ~~ THEN REPLY #21793 /* ~"파로드가 어디 있는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #21795 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21796 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21797 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21798 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #21696 /* ~"그는 내 보스요... 많은 수집자들에게 그 영향력이 미치고 있소. 그와 얘기를 할 정말 좋은 이유가 없는 한 그를 피하는 게 좋소... 나도 그와 직접 얘기를 해본 적이 없소." ~ */
  IF ~~ THEN REPLY #21802 /* ~"파로드가 어디 있는지 아시오?"~ */ GOTO 14
  IF ~~ THEN REPLY #21803 /* ~"내게 수집자들에 대해 얘기해주시오."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #21804 /* ~"또한 나는 내가 잃어버린 일지도 찾고 있소." ~ */ GOTO 16
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #21807 /* ~"멥베스에 대해 무엇을 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #21810 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 11
END
