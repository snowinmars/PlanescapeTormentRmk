// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER6~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17604 /* ~이 나이든 상인은 세속적인 사람처럼 보인다. 그의 굵은 목소리는 부드러우나 자신감으로 차 있다. "안녕하시오. 다원 우주 전역에서 온 가장 훌륭한 진미를 맛볼 준비는 되셨소, 손님?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22180 /* ~"광장의 산파인 멥베스가 여기 이 씨앗으로부터 자라는 약초를 필요로 하고 있소. 날 도와줄 수 있겠소?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17627 /* ~"어떤 물건들을 팔고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #17628 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17629 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17605 /* ~"다시 반나 반갑소. 오늘은 바다 자두를 드시겠소? 아니면 아버리어산 불꽃 씨?"~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22188 /* ~"광장의 산파인 멥베스가 여기 이 씨앗으로부터 자라는 약초를 필요로 하고 있소. 날 도와줄 수 있겠소?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17630 /* ~"어떤 물건들을 팔고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #17631 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17632 /* ~"아니, 난 그냥 지나가던 중이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2 5.1 6.8 6.10 7.2 8.2 9.2 10.2 11.2 12.2 13.2 15.1 16.1 17.1 18.1 19.1 20.1 21.1
  SAY #17606 /* ~그는 고개를 젓는다. "그럼 다른 곳에 가서 알아보라고 충고하고 싶소. 나는 이국적인 식료품, 향신료, 그리고 약초만 취급하오, 그리고 다른 것에 신경을 쓸 시간은 없소."~ */
  IF ~  PartyHasItem("Bseed1")
Global("Mebbeth_Quest","GLOBAL",1)
~ THEN REPLY #22194 /* ~"광장의 산파인 멥베스가 여기 이 씨앗으로부터 자라는 약초를 필요로 하고 있소. 날 도와줄 수 있겠소?"~ */ DO ~AddexperienceParty(500)
~ GOTO 22
  IF ~~ THEN REPLY #17633 /* ~"그렇다면 어떤 물건들을 팔고 있소?"~ */ GOTO 3
  IF ~~ THEN REPLY #17634 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.1 24.0
  SAY #17607 /* ~"당신의 미각을 즐겁게 해줄 온갖 진미들이 다 있소, 손님. 내가 지금 가지고 있는 건 아버리어산 불꽃 씨, 가-바 뿌리. 엘리쉬온산 배. 진홍 연꽃잎, 바이토피아의 목동이 먹는 빵, 림보산의 변덕스런 향신료, 그리고 바다 자두요. 어느 것이든 고작 동전 다섯 닢만 내시면 맛볼 수가 있소. ~ */
  IF ~~ THEN REPLY #17635 /* ~맛에 대해서 물어본다.~ */ GOTO 4
  IF ~~ THEN REPLY #17636 /* ~뭔가를 산다.~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17608 /* ~"허?"~ */
  IF ~~ THEN REPLY #17637 /* ~"불꽃 씨는 어떤 맛이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #17638 /* ~"가-바 뿌리는 어떻게 생겼소?"~ */ GOTO 5
  IF ~~ THEN REPLY #17639 /* ~"배는 어떤 맛이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #17640 /* ~"꽃잎은 어떤 맛이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #17641 /* ~"꽃잎은 어떤 맛이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #17642 /* ~"쉬프트스파이스는 어떤 맛이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #17643 /* ~"바다 자두는 어떤 맛이오?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2 4.3 4.4 4.5 4.6
  SAY #17609 /* ~"한 번 직접 시식해 보시라고 밖에는 드릴 말씀이 없소."~ */
  IF ~~ THEN REPLY #17644 /* ~뭔가를 산다.~ */ GOTO 6
  IF ~~ THEN REPLY #17645 /* ~"실은 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17646 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0 7.1 8.1 9.1 10.1 11.1 12.1 13.1 15.0 16.0 17.0 18.0 19.0 20.0 21.0
  SAY #17610 /* ~"허?"~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17647 /* ~"불꽃 씨를 시식해 보겠소."~ */ GOTO 7
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17649 /* ~"가-바 뿌리를 시식해 보겠소."~ */ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17650 /* ~"배를 시식해 보겠소."~ */ GOTO 9
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17651 /* ~"꽃잎을 시식해 보겠소."~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17652 /* ~"빵을 시식해 보겠소."~ */ GOTO 11
  IF ~  PartyGoldGT(4)
!NearbyDialog("DDakkon")
~ THEN REPLY #17653 /* ~"쉬프트스파이스를 시식해 보겠소."~ */ GOTO 12
  IF ~  PartyGoldGT(4)
NearbyDialog("DDakkon")
~ THEN REPLY #17654 /* ~"쉬프트스파이스를 시식해 보겠소."~ */ GOTO 14
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17655 /* ~"바다 자두를 시식해 보겠소."~ */ GOTO 13
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17656 /* ~"아무 것도 먹고 싶지 않소. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17657 /* ~"다시 생각해 보니, 아무 것도 사고 싶지 않소. 안녕히 계시오."~ */ EXIT
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17658 /* ~"아무 것도 살 돈이 없소. 하지만 물어볼 것들이 좀 있소."~ */ GOTO 2
  IF ~  PartyGoldLT(5)
~ THEN REPLY #17659 /* ~"아무 것도 살 돈이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #17611 /* ~"그것들을 삼키지는 마시오. 더 이상 따끔거리지 않게 되면 그냥 내뱉으시오." 그는 웃으며 한줌의 작고 빨간 씨를 내민다. ~ */
  IF ~~ THEN REPLY #17661 /* ~입 안에 넣는다.~ */ DO ~TakePartyGold(5)
~ GOTO 15
  IF ~~ THEN REPLY #17664 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17666 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17667 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #17612 /* ~그는 고무같은 질감의 야채로 생각되는 작은 갈색 입방체를 내민다. "그건 씹기가 좀 힘들 거요... 더 이상 아무 맛이 느껴지지 않게 되면 삼키지 말고 뱉으시오."~ */
  IF ~~ THEN REPLY #17668 /* ~입 안에 넣는다.~ */ DO ~TakePartyGold(5)
~ GOTO 16
  IF ~~ THEN REPLY #17670 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17672 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17674 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #17613 /* ~그는 당신이 지금까지 본배 중에서 가장 크고 과즙이 많은 배를 당신에게 준다. "내 가 제일 좋아하는 과일이오." 늙은 상인은 웃는다. "너무나 달콤하오. 내게 내 청춘을 생각나게 해준다오."~ */
  IF ~~ THEN REPLY #17675 /* ~배를 먹는다.~ */ DO ~TakePartyGold(5)
~ GOTO 17
  IF ~~ THEN REPLY #17681 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17682 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17683 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3
  SAY #17614 /* ~노인은 작은 갈색 플레이크처럼 보이는 것들을 내민다. 자세히 보니 말린 꽃잎이다. "이것들은 약간의 현기증을 일으킬 것이오, 그러니 먹은 후에는 조심하시오."~ */
  IF ~~ THEN REPLY #17684 /* ~입 안에 넣는다.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~~ THEN REPLY #17686 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17687 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17688 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.4
  SAY #17615 /* ~그는 당신에게 두껍게 썬, 양념과 너트를 넣은 식빵 두 쪽을 준다. 그것들로부터는 당근과 아몬드 향기가 난다. ~ */
  IF ~~ THEN REPLY #17689 /* ~빵을 먹는다.~ */ DO ~TakePartyGold(5)
~ GOTO 19
  IF ~~ THEN REPLY #17690 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17692 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17693 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.5
  SAY #17616 /* ~그는 당신 앞에서 작은 종이 팩을 달랑거린다. "손가락에 침을 바른 후 향료 속에 담그시오, 그 다음에는 손가락을 꺼내 혀로 핥으시오. 아마 담글 때마다 맛이 조금씩 다를 거요."~ */
  IF ~~ THEN REPLY #17694 /* ~시식한다.~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~~ THEN REPLY #17696 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17697 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17698 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.7
  SAY #17617 /* ~그는 당신에게 묘한 청록색의 작은 자두를 하나 준다. "걱정 마시오, 전혀 위험하지 않으니까. 전부 다 드시오."~ */
  IF ~~ THEN REPLY #17699 /* ~바다 자두를 먹는다.~ */ DO ~TakePartyGold(5)
~ GOTO 21
  IF ~~ THEN REPLY #17701 /* ~"그건 별로 마음에 들지 않소. 다른 걸 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17702 /* ~"마음을 바꿨소. 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #17703 /* ~"실은 그걸 살 생각이 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.6
  SAY #17618 /* ~그는 당신 앞에서 작은 종이 팩을 달랑거린다. "손가락에 침을 바른 후 향료 속에 담그시오, 그 다음에는 손가락을 꺼내 혀로 핥으시오. 아마 담글 때마다 맛이 조금씩 다를 거요."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 76
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #17619 /* ~씨앗은 달콤하고 약간의 계피 맛이 나며, 당신 입 안에서 따뜻해지며 따끔거린다... 당신이 그것들이 실제로 타오르고 있다는 사실을 깨닫는 데는 그리 오래 걸리지 않는다. 하지만 곧 그 감각은 사라지고, 당신은 그것들을 하수구에 뱉는다. ~ */
  IF ~~ THEN REPLY #17457 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17704 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17706 /* ~"더 이상은 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.0
  SAY #17620 /* ~그 뿌리는 처음에는 딱딱하고 씹기가 어려우나, 달콤한 시럽과 같은 맛이 난다. 그것은 곧 부드럽고 말랑말랑해진다, 그리고 당신은 그것을 즐겁게 씹는다. 하지만 결국에 가서 맛은 없어지고 당신은 끈적끈적한 갈색 덩어리를 뱉는다.~ */
  IF ~~ THEN REPLY #17707 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17708 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17709 /* ~"더 이상은 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.0
  SAY #17621 /* ~이 배의 맛에 유별난 점은 없다, 하지만 당신이 지금까지 먹어 본 것 중 최상의 맛인 것 같다. ~ */
  IF ~~ THEN REPLY #17710 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17711 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17712 /* ~"더 이상은 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.0
  SAY #17622 /* ~꽃잎들은 당신 입 속에서 기묘하나 불쾌하지는 않은 뒷맛을 남기면서 금새 녹는다, 하지만 당신은 그러한 맛을 전에 맛본 적이 있는지 기억할 수가 없다. 늙은 상인의 경고에도 불구하고 현기증을 전혀 느끼지 않는다. 그는 그것이 당신에게 아무런 효과도 없다는 데 다소 실망한 듯하다. ~ */
  IF ~~ THEN REPLY #17713 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17714 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17715 /* ~"더 이상은 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.0
  SAY #17623 /* ~빵은 당신이 예상했던 대로 당근과 아몬드 맛이 난다. 빵은 약간 달콤하며 맛이 경쾌하다, 때문에 당신은 더 먹고 싶어진다. ~ */
  IF ~~ THEN REPLY #17716 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17717 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17718 /* ~"더 이상은 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 12.0
  SAY #17624 /* ~향신료 팩은 아홉이나 열 번 정도 핥으니 바닥난다. 약속대로 핥을 때마다 그 맛이 달랐다.~ */
  IF ~~ THEN REPLY #17719 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17720 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17721 /* ~"더 이상은 필요없소.. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.0
  SAY #17625 /* ~자두의 껍질은 약간 쓰고 전율을 할 정도로 시지만, 과육은 놀랄 정도로 달콤하다. 함께 먹으면 절묘한 맛의 조화를 이룬다. ~ */
  IF ~~ THEN REPLY #17722 /* ~"다른 것을 시식해 봅시다."~ */ GOTO 6
  IF ~~ THEN REPLY #17723 /* ~"지금으로선 그게 전부요. 하지만 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #17724 /* ~"더 이상은 필요없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.0 1.0 2.0
  SAY #22184 /* ~사내는 씨앗을 받더니 심각한 표정으로 그것을 자세히 살펴본다... 그는 그것을 엄지와 집게손가락 사이에 끼우고 누른다. 그러자 그는 갑자기 몸을 움츠리고 그의 엄지손가락에서는 약간의 피가 흘러나온다. "이 씨앗에는 이빨이 있는 것 같소..."~ */
  IF ~~ THEN REPLY #22199 /* ~"그건 나도 아오. 당신은 그녀가 말한 약초를 가지고 있소?"~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",2)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #22186 /* ~그는 씨앗에서 눈을 떼지 못한다. "젊은이, 당신의 친구가 원하는 것을 가지고 있는 자가 과연 있을지 모르겠소... 솔직히 나는 그런 씨앗을 본 적이 없소. 내게는 그런 씨앗이 없으니 당신은 그것을 재배할 수 있는 사람을 찾아야 할 거요."~ */
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22204 /* ~"그럼 좋소... 어디 가면 그런 사람을 찾을 수가 있겠소?"~ */ JOURNAL #21906 /* ~시장의 상인은 씨앗을 키우려면 정원사를 찾아야만 한다고 말해주었다. 벌통 구역에 누군가 한 사람은 있을 것이다. 난 일부 거리에서 나무를 보았고, 그건 누군가 그들을 돌보는 사람이 있다는 뜻이다. ~ */ GOTO 24
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22206 /* ~"좋소... 어디 가면 그런 사람을 찾을 수가 있겠소?"~ */ JOURNAL #21907 /* ~시장의 상인은 씨앗을 키우려면 정원사를 찾아야만 한다고 말해주었다. 나무를 위해 통곡하는 자에게 도움을 청하는 것이 좋을 것 같다. ~ */ GOTO 24
  IF ~  Dead("MFTree")
~ THEN REPLY #22208 /* ~"좋소... 어디 가면 그런 사람을 찾을 수가 있겠소?"~ */ JOURNAL #21908 /* ~시장의 상인은 씨앗을 키우려면 정원사를 찾아야만 한다고 말해주었다. 내가 나무를 위해 통곡하는 자를 죽이지 않았다면 그가 날 도울 수 있었을 텐데. 멥베스에게 돌아가 이 상황을  타개할 방법을 강구해야겠다.~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 23.2
  SAY #22187 /* ~"모르겠소, 친구." 그는 씨앗을 당신에게 돌려준다. "벌통에서 정원사를 찾기란 어려울 거요..."~ */
  IF ~  !Dead("MFTree")
~ THEN REPLY #22213 /* ~"알겠소. 당신이 지닌 다른 상품들을 볼 수 있겠소?"~ */ GOTO 3
  IF ~  !Dead("MFTree")
Global("Mourns","GLOBAL",0)
~ THEN REPLY #22220 /* ~"그래야만 할 것 같군. 도와주어 고맙소. 안녕히 계시오."~ */ EXIT
  IF ~  !Dead("MFTree")
GlobalGT("Mourns","GLOBAL",0)
~ THEN REPLY #22222 /* ~"흠... 나무를-위해-통곡하는-자라면 날 도울 수 있을지도... 안녕히 계시오."~ */ EXIT
  IF ~  Dead("MFTree")
~ THEN REPLY #22225 /* ~"내가 아는 유일한 정원사는... 죽었소. 안녕히 계시오."~ */ EXIT
END
