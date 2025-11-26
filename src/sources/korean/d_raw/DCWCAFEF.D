// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWCAFEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWCAFEF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #27654 /* ~이 잘 차려 입은 여자는 근처의 카페에서 산 음료를 마시며 신선한 바깥 공기 속에서 휴식을 취하고 있다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27655 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #27656 /* ~"안녕하시오..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 49
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #27657 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #27658 /* ~여자를 그냥 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #27659 /* ~그녀는 당신 모습을 보자 눈이 휘둥그레진다. "아... 당신도 안녕하신가요." 그녀는 거북하게 웃는다.~ */
  IF ~~ THEN REPLY #27660 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27661 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #27662 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 49.4
  SAY #27663 /* ~"당신을... 처음 보았을 때 당신 모습 때문에 내가 잠시 놀랐다는 사실을 인정하자니 좀 부끄럽네요..." 내겐 당신처럼 세속적인... 용모의 사람들과 대화를 나눌 기회가 별로 없었어요." 그녀는 사과하는 뜻으로 머리를 숙인다. "당신 기분이 상하지 않았기를 바라겠어요."~ */
  IF ~~ THEN REPLY #27664 /* ~"세속적인?"~ */ GOTO 3
  IF ~~ THEN REPLY #27665 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27666 /* ~"걱정하지 마시오. 이만 실례해야겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #27667 /* ~"'여행을 많이 한'이 더 적절한 표현일까요? 당신의 외관은... 좀... 아, 단정하지 못해요. 당신은 그냥 좀 두드려져 보일 뿐이에요.. 하지만 시길은 기이한 것들 투성이죠, 그렇지 않나요? 단지 사무구는 시길의 다른 지역에 비해 그런 것들이 드물 뿐이에요. 물론 시 공회당을 제외하고는."~ */
  IF ~~ THEN REPLY #27668 /* ~"사무구?"~ */ GOTO 6
  IF ~~ THEN REPLY #27669 /* ~"공회당?"~ */ GOTO 22
  IF ~~ THEN REPLY #27670 /* ~"당신 말은 내가 죽은 것처럼 보인다는 뜻이오? 그런데 실은 난 죽었소. 죽었다고!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #27671 /* ~"흠... 물어볼 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27672 /* ~"이해할 것 같소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.1 3.3 5.1 6.2 7.1 8.0 9.0 10.2 11.1 12.10 13.2 15.2 16.2 17.2 18.3 19.3 21.2 22.4 23.4 24.2 25.8 26.2 27.1 28.1 29.2 30.1 31.1 32.1 33.1 34.3 35.3 36.1 37.1 38.2 39.2 40.2 41.0 42.0 43.0 44.1 45.1 46.1 48.1 49.3 52.0 54.0
  SAY #27673 /* ~그녀는 고개를 끄덕인다. "질문하세요."~ */
  IF ~~ THEN REPLY #27674 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #27675 /* ~"이 곳의 볼거리에는 어떤 것들이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #27676 /* ~"이 곳에서는 어디에 가면 일거리를 구할 수가 있소?"~ */ GOTO 9
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27677 /* ~"특정한 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #27678 /* ~"길 안내가 좀 필요할 뿐이오..."~ */ GOTO 25
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #27679 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 42
  IF ~~ THEN REPLY #27680 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27681 /* ~그녀는 당신이 농담을 한 것은 아닌지 확인하려고 당신을 쳐다본다. 농담이 아니라는 걸 깨닫자 그녀는 난처한 듯 웃는다. "당신이 지금 있는 곳은 사무구예요." ~ */
  IF ~~ THEN REPLY #27682 /* ~"이 구역에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #27683 /* ~"옳소. 질문할 것들이 더 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27684 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #27685 /* ~"이 구역의 대부분의 지역은 공문서 보관소와 정부 건물이 차지하고 있으며, 나는 주로 그런 지역에서 일하죠. 하지만 이 지역은 달라요."~ */
  IF ~~ THEN REPLY #27686 /* ~"당신 직무?"~ */ GOTO 10
  IF ~~ THEN REPLY #27687 /* ~"왜 이 지역은 다른 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #27688 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27689 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.1 10.1 11.0
  SAY #27690 /* ~"물론 시 공회당이죠. 그리고 미술품 및 골동품 전시관..."~ */
  IF ~~ THEN REPLY #27691 /* ~"계속하시오..."~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #27692 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27693 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #27694 /* ~"당신이 관심을 가질 만한 장소로는 변호사 저택, 약국, 미술품 및 골동품 전시관, 이 구역 지하의 지하 묘지, 그리고 양장점 등이 있어요. 생각해보니 그 작고 기묘한 골동품 가게도 있군요."~ */
  IF ~~ THEN REPLY #27695 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27696 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2
  SAY #27697 /* ~"당신은 임시직을 원하는 거죠, 그렇죠? 당신은 이 곳에 머물러 살 사람처럼 보이지는 않는군요, 아니..." 그녀는 말을 멈추고 당신을 쳐다본다. "그러니 약국, 변호사 저택, 또는 시 공회당에 가서 일거리를 찾아보세요. 그런 곳들에 가면 아마 일손을 필요로 하는 묘한 업무들이 있을 거예요."~ */
  IF ~~ THEN REPLY #27698 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27699 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #27700 /* ~그는 고개를 끄덕이며 눈알을 희번덕거린다. "고용주에 대한 내 책무를 다하죠. 나는 이 구역에 있는 수많은 정부 건물들 중 한 곳에서 일해요."~ */
  IF ~~ THEN REPLY #27701 /* ~"당신은 그 곳에서 무슨 일을 하시오?"~ */ GOTO 11
  IF ~~ THEN REPLY #27702 /* ~"왜 이 지역은 사무구의 다른 지역들과 다른 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #27703 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27704 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #27705 /* ~그녀는 고개를 저으며 웃는다. "제발 그 일에 대해서는 얘기를 꺼내지 마세요, 네? 여기서 잠시 휴식을 취하고 있을 동안만이라도 잊고 싶어요."~ */
  IF ~~ THEN REPLY #27706 /* ~"왜 이 지역은 사무구의 다른 지역들과 다른 거요?"~ */ GOTO 7
  IF ~~ THEN REPLY #27707 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27708 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 4.3 13.1 15.1 16.1 17.1 18.2 19.2 21.1 22.3 23.3 24.1 34.2 35.2
  SAY #27709 /* ~"제가 아는 한도 내에서 말해 드리지요..."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27710 /* ~"변호사 저택."~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27711 /* ~"변호사 저택."~ */ GOTO 14
  IF ~~ THEN REPLY #27712 /* ~"약국."~ */ GOTO 16
  IF ~~ THEN REPLY #27713 /* ~"화랑."~ */ GOTO 17
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27714 /* ~"매음굴."~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27715 /* ~"매음굴."~ */ GOTO 19
  IF ~~ THEN REPLY #27716 /* ~"시길 지하."~ */ GOTO 21
  IF ~~ THEN REPLY #27717 /* ~"시 공회당"~ */ GOTO 22
  IF ~~ THEN REPLY #27718 /* ~"골동품 가게."~ */ GOTO 23
  IF ~~ THEN REPLY #27719 /* ~"양장점."~ */ GOTO 24
  IF ~~ THEN REPLY #27720 /* ~"그럼 관두시오. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27721 /* ~"아무 곳도 없소, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 26.0
  SAY #27722 /* ~"변호사는 법정에서 변호를 하고, 공문서를 작성하며, 고객의 법적 대리인 노릇을 해요. 여기서 가까운 곳에 사는 이언니스란 변호사는 존경을 받고 있는 믿을 만한 변호사죠. 그는 이 구역에서 매우 오랫동안 살며 변호사 일을 해 왔어요."~ */
  IF ~~ THEN REPLY #27723 /* ~"이언니스의 집으로 가려면 어떻게 해야 하오."~ */ GOTO 26
  IF ~~ THEN REPLY #27724 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27725 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27726 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 26.1
  SAY #27727 /* ~"변호사는 법정에서 변호를 하고, 공문서를 작성하며, 고객의 법적 대리인 노릇을 해요.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 267
END

IF ~~ THEN BEGIN 15 // from:
  SAY #27729 /* ~"여기서 가까운 곳에 사는 이언니스란 변호사는 존경을 받고 있는 믿을 만한 변호사죠. 그는 이 구역에서 매우 오랫동안 살며 변호사 일을 해 왔어요."~ */
  IF ~~ THEN REPLY #27730 /* ~"이언니스의 집으로 가려면 어떻게 해야 하오."~ */ GOTO 26
  IF ~~ THEN REPLY #27731 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27732 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27733 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 27.0
  SAY #27734 /* ~"약국에서는 각종 고약, 포션, 그리고 약초 등을 팔고 있어요." 그녀는 잠시 눈살을 찌푸린다. "그 가게의 주인은 약간 돌아서 가게의 상품을 끊임없이 스스로에게 시험해보고 있어요. 하지만 나쁜 사람은 아니에요."~ */
  IF ~~ THEN REPLY #27735 /* ~"약국으로 가려면 어떻게 해야 하오."~ */ GOTO 27
  IF ~~ THEN REPLY #27736 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27737 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27738 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.3 28.0
  SAY #27739 /* ~"이바나의 미술품 및 골동품 전시관은 정말 흥미로운 곳이에요. 그녀는 다원 우주 전역에서 수집한 각종 미술품, 골동품, 그리고 문화 유물들을 소유하고 있어요."~ */
  IF ~~ THEN REPLY #27740 /* ~"화랑으로 가려면 어떻게 해야 하오."~ */ GOTO 28
  IF ~~ THEN REPLY #27741 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27742 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27743 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.4 29.0
  SAY #27744 /* ~"남자의 정신과 감각에 쾌감을 주는 센세이트의 시설이에요. 그 곳은 훨-후럼-그레이스라는 서큐버스가 운영하고 있어요. 참 잘 어울린다고 할 수 있죠."~ */
  IF ~~ THEN REPLY #27745 /* ~"센세이트?"~ */ GOTO 36
  IF ~~ THEN REPLY #27746 /* ~"매음굴에는 어떻게 하면 갈 수가 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #27747 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27748 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27749 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.5 29.1
  SAY #27750 /* ~"남자의 정신과 감각에 쾌감을 주는 센세이트의 시설이에요. 그 곳은 훨-후럼-그레이스라는 서큐버스가 운영하고 있어요. 참 잘 어울린다고 할 수 있죠." 그녀는 훨-후럼-그레이스에게 점잖게 인사한다. ~ */
  IF ~~ THEN REPLY #27751 /* ~"센세이트?"~ */ GOTO 36
  IF ~~ THEN REPLY #27752 /* ~"매음굴에는 어떻게 하면 갈 수가 있소?"~ */ GOTO 29
  IF ~~ THEN REPLY #27753 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27754 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27755 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #27756 /* ~[no text]~ */
  IF ~~ THEN REPLY #27757 /* ~[no text]~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.6 30.0
  SAY #27758 /* ~그녀의 우려로 이마를 찌푸린다. "그 곳으로 통하는 입구들이 아직까지 폐쇄되지 않은 건 참 이상한 일이에요. 내가 알기로 지하에는 말썽거리밖에 없으며, 그 곳에 들어가는 사람들에게는 위험만이 기다리고 있을 뿐이에요."~ */
  IF ~~ THEN REPLY #27759 /* ~"어떻게 하면 그 곳으로 내려가는 길을 찾을 수가 있겠소?~ */ GOTO 30
  IF ~~ THEN REPLY #27760 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27761 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27762 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 3.1 12.7 31.0
  SAY #27763 /* ~"시길에서 가장 놀라운 장소들 중 하나예요... 그 곳은 센세이트 당파의 본부로, 각종 음악회, 전람회, 그리고 강연으로 다원 우주 전체에 그 명성을 떨치고 있어요. 하지만 그 곳에서 가장 흥미로운 시설은 감각 체험실이죠."~ */
  IF ~~ THEN REPLY #27764 /* ~"센세이트?"~ */ GOTO 36
  IF ~~ THEN REPLY #27765 /* ~"감각 체험실?"~ */ GOTO 38
  IF ~~ THEN REPLY #27766 /* ~"공회당은 어디에 있소?"~ */ GOTO 31
  IF ~~ THEN REPLY #27767 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27768 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27769 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 12.8 32.0
  SAY #27770 /* ~"나도 그 곳에 직접 가본 적은 없지만, 내가 알기로 그 가게는 반 마족인 수입상이 운영하고 있어요... 그리고 실제로 그 곳의 상품들은 마계에서 가져온 것들이에요."~ */
  IF ~~ THEN REPLY #27771 /* ~"반 마족?"~ */ GOTO 35
  IF ~~ THEN REPLY #27772 /* ~"마계?"~ */ GOTO 34
  IF ~~ THEN REPLY #27773 /* ~"이 장소는 어디에 있소?"~ */ GOTO 32
  IF ~~ THEN REPLY #27774 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27775 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27776 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 12.9 33.0
  SAY #27777 /* ~"곤캘브즈는 뛰어난 재단사지만, 성미가 급하고 쉽게 화를 내는 것이 흠이지요. 한 가지 충고를 하겠어요. 그는 분명히 외모로 당신을 평가할 거예요, 그러니 그와 친해지는 것은 어려울지도 몰라요."~ */
  IF ~~ THEN REPLY #27778 /* ~"곤캘브의 가게는 어디 있소?"~ */ GOTO 33
  IF ~~ THEN REPLY #27779 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27780 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27781 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 4.4
  SAY #27782 /* ~"오? 어디로 가시려는 거죠?"~ */
  IF ~~ THEN REPLY #27783 /* ~"변호사 저택."~ */ GOTO 26
  IF ~~ THEN REPLY #27784 /* ~"약국."~ */ GOTO 27
  IF ~~ THEN REPLY #27785 /* ~"화랑."~ */ GOTO 28
  IF ~~ THEN REPLY #27786 /* ~"매음굴."~ */ GOTO 29
  IF ~~ THEN REPLY #27787 /* ~"시길 지하."~ */ GOTO 30
  IF ~~ THEN REPLY #27788 /* ~"시 공회당"~ */ GOTO 31
  IF ~~ THEN REPLY #27789 /* ~"골동품 가게."~ */ GOTO 32
  IF ~~ THEN REPLY #27790 /* ~"양장점."~ */ GOTO 33
  IF ~~ THEN REPLY #27791 /* ~"그럼 관두시오. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27792 /* ~"아무 곳도 없소, 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 13.0 15.0 25.0
  SAY #27793 /* ~"이언니스의 저택은 마계구로 통하는 관문의 남쪽에 있어요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 그 곳은 길의 동쪽에 있어요."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #27794 /* ~"변호사에 대해서 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 13
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27795 /* ~"변호사에 대해서 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #27796 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27797 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 16.0 25.1
  SAY #27798 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가세요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가세요... 가다 보면 그 길의 동쪽에 그 건물이 나타날 거예요. 남쪽을 향하고 있으며 스테인드 글라스로 만들어진 창이 세 개 있는 건물이에요."~ */
  IF ~~ THEN REPLY #27799 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 16
  IF ~~ THEN REPLY #27800 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27801 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 17.0 25.2
  SAY #27802 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가세요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가세요... 가다 보면 그 길의 서쪽에 그 건물이 나타날 거예요. 남쪽을 향하고 있으며 큰 돌들에 의해 지붕의 타일들이 지탱되고 있는 건물이에요."~ */
  IF ~~ THEN REPLY #27803 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 17
  IF ~~ THEN REPLY #27804 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27805 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 18.1 19.1 25.3
  SAY #27806 /* ~그녀는 고개를 저으며 얼굴을 몹시 찌푸린다. "마계구로 통하는 관문의 바로 동쪽에 있어요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 그 곳은 입구가 남쪽을 향하고 있는 크고 둥근 건물이에요."~ */
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #27807 /* ~"매음굴에 대해서 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 18
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27808 /* ~"매음굴에 대해서 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 19
  IF ~~ THEN REPLY #27809 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27810 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 21.0 25.4
  SAY #27811 /* ~그녀는 어깨를 으쓱한다. "몰라요. 하지만 나라면 입구를 발견하더라도 지극히 조심하겠어요. 그 지하 묘지로 들어가서 나온 자는 아무도 없어요..."~ */
  IF ~~ THEN REPLY #27812 /* ~"그것에 대해 또 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 21
  IF ~~ THEN REPLY #27813 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27814 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 22.2 25.5 39.0
  SAY #27815 /* ~"시 공회당은 매우 찾기가 쉬워요. 그 곳은 이 지역의 북동쪽에 있는 거대한 건물이에요."~ */
  IF ~~ THEN REPLY #27816 /* ~"시 공회당에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 22
  IF ~~ THEN REPLY #27817 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27818 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 23.2 25.6 34.1 35.1
  SAY #27819 /* ~"그 곳은 이 지역의 남동쪽에 위치하고 있어요. 넓은 계단을 한참 올라가면 있는 기묘한 형태의 건물이에요. 나도 그 곳에 직접 가본 적은 없지만... 그 곳은 왠지 묘한 느낌이 들어요."~ */
  IF ~~ THEN REPLY #27820 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 23
  IF ~~ THEN REPLY #27821 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27822 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 24.0 25.7
  SAY #27823 /* ~"양장점은 마계구로 통하는 관문의 바로 북동쪽에 위치하고 있어요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 그 곳은 입구가 남쪽을 향하고 있는 넓적한 건물이에요."~ */
  IF ~~ THEN REPLY #27824 /* ~"이 곳에 대해 내게 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 24
  IF ~~ THEN REPLY #27825 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 4
  IF ~~ THEN REPLY #27826 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 23.1 35.0
  SAY #27827 /* ~그녀는 목소리를 낮추고 고개를 끄덕인다. "베이터나 어비스와 같은 차원들 말이에요... 정말 끔찍한 곳들이죠."~ */
  IF ~~ THEN REPLY #27828 /* ~"그녀가 반 마족이라고 했소?"~ */ GOTO 35
  IF ~~ THEN REPLY #27829 /* ~"이 골동품 가게는 어디 있소?"~ */ GOTO 32
  IF ~~ THEN REPLY #27830 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27831 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27832 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 23.0 34.0
  SAY #27833 /* ~"말해 두겠는데 티플링과는 달리 순수한 마족의 피가 50% 섞인 존재예요. 내가 듣기로는 인큐버스(서큐버스의 남자 형태)와 인간 여자의 딸이라고 해요. 하지만 나는 가십에는 관심이 없으니 그녀에 대해서는 더 이상 얘기하지 말도록 해요."~ */
  IF ~~ THEN REPLY #27834 /* ~"그녀의 상품들은 마계에서 온 것들이라고 했소?"~ */ GOTO 34
  IF ~~ THEN REPLY #27835 /* ~"이 골동품 가게는 어디 있소?"~ */ GOTO 32
  IF ~~ THEN REPLY #27836 /* ~"다른 장소에 대해 질문하고 싶소..."~ */ GOTO 12
  IF ~~ THEN REPLY #27837 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27838 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 18.0 19.0 22.0
  SAY #27839 /* ~"그래요. 그들의 정식 명칭은 '감각의 공동체'예요. 그들은 다원 우주의 본질은 직접적인 체험을 통해서만 발견할 수 있다고 믿고 있어요..."~ */
  IF ~~ THEN REPLY #27840 /* ~"알겠소. 계속하시오."~ */ GOTO 48
  IF ~~ THEN REPLY #27841 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27842 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 48.0
  SAY #27843 /* ~"그들은 실제로 감각 체험실을 이용하여 다른 사람들과 자신들의 경험을 공유하는 방법을 발견해냈어요."~ */
  IF ~~ THEN REPLY #27844 /* ~"감각 체험실?"~ */ GOTO 38
  IF ~~ THEN REPLY #27845 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27846 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 22.1 37.0
  SAY #27847 /* ~"센세이트는 체험을 돌에 담아 그것을 *다른* 사람들도 체험할 수 있도록 하는 방법을 발견했어요. 센세이트의 멤버들은 다원 우주와 자신의 내면 세계를 탐험하며 타인과 나눌 체험을 찾고 있죠... 그들이 지금까지 체험한 거의 모든 것들은 그들의 감각 체험실에 보관되어 있어요."~ */
  IF ~~ THEN REPLY #27848 /* ~"이런 감각 체험실들은 어디에 있소?"~ */ GOTO 39
  IF ~~ THEN REPLY #27849 /* ~"이 체험들은... 기억과 흡사하오?"~ */ GOTO 40
  IF ~~ THEN REPLY #27850 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27851 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.1
  SAY #27852 /* ~"시 공회당 내에 있어요. 감각 체험실에는 일반에게도 공개되는 것과 센세이트만 들어갈 수 있는 것의 두 종류가 있어요. 체험실을 이용하려면 약간의 요금을 내야 하지만, 체험의 대가라고 생각하면 대단한 액수는 아니죠.~ */
  IF ~~ THEN REPLY #27853 /* ~"공회당은 어디에 있소?"~ */ GOTO 31
  IF ~~ THEN REPLY #27854 /* ~"이 체험들은... 기억과 흡사하오?"~ */ GOTO 40
  IF ~~ THEN REPLY #27855 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27856 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.1 39.1
  SAY #27857 /* ~"어떤 *면*으로는 그래요, 하지만 매우 강렬하죠... 당신의 기억이 아니라 돌 안에 담긴 다른 이의 기억이에요."~ */
  IF ~~ THEN REPLY #27858 /* ~"보존되었다? 어떤 이의 기억이나 체험이 감각석에 기록되면 그는 그것을 잃소?"~ */ GOTO 41
  IF ~~ THEN REPLY #27859 /* ~"이런 감각 체험실들은 어디에 있소?"~ */ GOTO 39
  IF ~~ THEN REPLY #27860 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27861 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #27862 /* ~"아니에요..." 그녀는 눈살을 찌푸린다. "적어도 난 그렇게 생각하지 않아요. 내 생각에 돌은 감각적 체험을 *복사*할 뿐이에요. 보다 확실하게 알려면 센세이트에게 물어봐야 할 거예요, 하지만 적어도 내가 알기에는 그래요."~ */
  IF ~~ THEN REPLY #27863 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27864 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 4.5
  SAY #27865 /* ~"그 이름은 왠지 친숙하군요... 이야기 속의 인물인가요? 아니면 소설에서의 악역? 기억이 나질 않아요."~ */
  IF ~~ THEN REPLY #27866 /* ~"신경 쓰지마시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 4
  IF ~~ THEN REPLY #27867 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 43 // from:
  SAY #27868 /* ~"다시 만나 반가워요." 그녀는 컵 너머로 당신에게 미소짓는다. "물론 더 질문할 것이 있어 오셨겠죠?"~ */
  IF ~~ THEN REPLY #27869 /* ~"그렇소."~ */ GOTO 4
  IF ~~ THEN REPLY #27870 /* ~"실은 아니오... 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 3.2
  SAY #27871 /* ~그녀는 당황한다. "뭐라고 하셨죠?"~ */
  IF ~~ THEN REPLY #27872 /* ~"나는 말했소, '나는 죽었다!' 죽었다, 죽었다, 랄라! 죽었다, 죽었다, 랄라..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CWCitizen_2","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #27873 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27874 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #27875 /* ~그녀의 표정에 경계하는 빛이 역력해진다. "아, 그래요... 우린 모두 그렇죠. 이만 실례해야겠어요. 갑자기 급한 용무가 생각났어요."~ */
  IF ~~ THEN REPLY #27876 /* ~"기디리시오! 난 아직 당신에게 *왜* 내가 죽었는지를 얘기하지 않았소..."~ */ GOTO 46
  IF ~~ THEN REPLY #27877 /* ~"잠깐 기다리시오. 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27878 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #27879 /* ~그녀는 한 걸음 물러선다. "죄송하지만 그 문제에 대해서는 관심이 없어요." 그녀는 자신을 도와줄 사람을 찾는 듯 주변을 두리번거린다. ~ */
  IF ~~ THEN REPLY #27880 /* ~"내가 전생에 너무나도 많은 사람들을 죽였기 때문이오."~ */ GOTO 47
  IF ~~ THEN REPLY #27881 /* ~"그럼 관두시오. 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27882 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #27883 /* ~그녀는 컵을 떨어뜨리고 비명을 지른다: "경비병! 경비병!"~ */
  IF ~~ THEN REPLY #27884 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #27885 /* ~누가 도착하기 전에 떠난다.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.0
  SAY #27886 /* ~"그들은 다원 우주를 최대한 체험하는 일에 인생을 바치고 있어요. 그들은 다원 우주 전역과 자신들의 정신과 감정의 내면 깊숙한 곳을 폭넓게 탐험하죠. 하지만 그들은 거기서 한 단계 더 나아가..."~ */
  IF ~~ THEN REPLY #27887 /* ~"어떻게 그렇소?"~ */ GOTO 37
  IF ~~ THEN REPLY #27888 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27889 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 0.1
  SAY #27890 /* ~그녀는 당신 모습을 보자 눈이 휘둥그레진다. 그녀는 거북하게 웃는다. "아... 안녕-" 갑자기 그녀는 모트를 뚫어지게 쳐다본다. "어머! 정말 귀여운 미미르네!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #27891 /* ~"미미르?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 268
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27892 /* ~"정말 귀엽지 않소? 그는 자기 머리를 누가 긁어 주는 걸 좋아한다오."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 53
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #27893 /* ~"나라면 그를 만지지 않겠소, 사람을 물거든."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 272
  IF ~~ THEN REPLY #27894 /* ~"그래, 그렇소. 질문할 것들이 좀 있소."~ */ GOTO 4
  IF ~~ THEN REPLY #27895 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #27896 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #27897 /* ~그녀는 미소짓는다. "정말 귀엽군요! 혼자서 말도 할 줄 아네요!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 269
END

IF ~~ THEN BEGIN 51 // from: 53.0
  SAY #27899 /* ~그녀는 고개를 젓는다. "적어도 제가 본 것들 중에 그런 건 없었어요. 그것들은 그냥 물건이 아닌-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 271
END

IF ~~ THEN BEGIN 52 // from:
  SAY #27901 /* ~그녀는 어깨를 으쓱한다. "그렇겠군요."~ */
  IF ~~ THEN REPLY #27902 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27903 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 49.1
  SAY #27904 /* ~"정말로요?" 그녀는 웃고는 있으나 당신 말을 의심하는 것 같다. "농담이시겠지요! 그건 그냥 미미르에 불과..."~ */
  IF ~~ THEN REPLY #27905 /* ~"무슨 얘기요? 그들은 모두 그걸 즐기지 않소?"~ */ GOTO 51
  IF ~~ THEN REPLY #27906 /* ~"아니, 정말이오. 어디 한 번 해보시오."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 54
  IF ~~ THEN REPLY #27907 /* ~"그에 대해서는 신경 쓰지 마시오. 질문할 것들이 좀 있소."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #27908 /* ~그녀는 손을 내밀어 조심스럽게 모트를 두드려 본다... 그러자 모트는 그녀의 손에 다가 붙는다. 그러면서 모트는 히죽 웃으며 당신에게 윙크한다. 그녀는 거북하게 웃는다: "정말 신기하네요!"~ */
  IF ~~ THEN REPLY #27909 /* ~"그렇소... 어쨌든 질문할 것들이 좀 있소..."~ */ GOTO 4
  IF ~~ THEN REPLY #27910 /* ~"다 그렇지 않소? 안녕히 계시오."~ */ EXIT
END
