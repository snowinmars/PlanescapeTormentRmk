// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAOLA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAOLA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 1 3 2 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45487 /* ~"아오스카의 성당에 오신 것을 환영하오. 당신은 나와 함께 아오스카를 숭배하러 오셨소? 당신은 그분의 두 번째 사도가 될 수 있소."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60902 /* ~"나는 어떤 상자와 마족에 대해서 조언을 듣고자 왔소."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45488 /* ~"나는 어떤 상자와 마족에 대해서 조언을 듣고자 왔소."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45489 /* ~"왜 아오스카의 다른 사도는 존재하지 않는 거요?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45490 /* ~"아오스카에 대해 더 얘기해주시오."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45491 /* ~"나는 아오스카의 사도가 되고 싶소."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45492 /* ~"나중에. 안녕히 계시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 2 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #45493 /* ~"길 잃은 영혼이 돌아왔구려. 자, 아오스카에게 감사를 드리고 당신의 귀환을 축하합시다. 나는 당신이 내 회중의 일원이 되기로 마음을 바꿨다고 생각하오만."~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60951 /* ~"나는 어떤 상자와 악마에 대한 조언을 들으러 왔소."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45494 /* ~"나는 어떤 상자와 악마에 대한 조언을 들으러 왔소."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~~ THEN REPLY #45495 /* ~"회중? 여기 있는 사람이라곤 당신밖에 없지 않소?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45497 /* ~"아오스카에 대해 더 얘기해주시오."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45498 /* ~"나는 아오스카의 사도가 되고 싶소."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~~ THEN REPLY #45499 /* ~"나중에. 안녕히 계시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  GlobalGT("FedEx","Global",9)
~ THEN BEGIN 2 // from:
  SAY #45500 /* ~"아오스카의 가호가 당신에게 있기를. 어떤 도움을 원하시오?"~ */
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45501 /* ~"나는 당신이 모리도의 상자에서 떼어낸 보석을 구입하고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #45503 /* ~"아오스카에 대해 더 얘기해주시오."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45504 /* ~"왜 아오스카의 다른 사도는 존재하지 않는 거요?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45506 /* ~"나는 아오스카의 사도가 되고 싶소."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45507 /* ~"대체 무슨 일이 일어난 거요? 한 순간 나는 아오스카의 사도가 되려고 했는데, 그 다음 순간 정신을 차려 보니 일종의 '미로'에 처박혀 있었소."~ */ GOTO 17
  IF ~~ THEN REPLY #45509 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Disciple","Global",1)
~ THEN BEGIN 3 // from:
  SAY #45511 /* ~"돌아왔군! 체통없이 너무 놀라서 미안하오, 하지만 당신이 이 곳으로 무사히 돌아온 최초의 사도요. 대부분은 사라져 다시는 나타나지 않소. 어떤 도움을 원하시오?"~ */
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",2)
PartyHasItem("DBox")
Global("Kappa","Global",0)
~ THEN REPLY #60964 /* ~"나는 어떤 상자와 악마에 대한 조언을 들으러 왔소."~ */ DO ~SetGlobal("Kappa","Global",1)
~ GOTO 18
  IF ~  Global("FedEx","Global",4)
Global("Demonbox","Global",0)
PartyHasItem("DBox")
~ THEN REPLY #45599 /* ~"나는 어떤 상자와 악마에 대한 조언을 들으러 왔소."~ */ DO ~SetGlobal("FedEx","Global",10)
~ GOTO 5
  IF ~  GlobalGT("FedEx","Global",9)
Global("Gem","Global",0)
~ THEN REPLY #45600 /* ~"나는 당신이 모리도의 상자에서 떼어낸 보석을 구입하고 싶소."~ */ GOTO 13
  IF ~~ THEN REPLY #45601 /* ~"아오스카에 대해 더 얘기해주시오."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~  Global("AR1900_Visited","Global",1)
~ THEN REPLY #45602 /* ~"대체 무슨 일이 일어난 거요? 한 순간 나는 아오스카의 사도가 되려고 했는데, 그 다음 순간 정신을 차려 보니 일종의 '미로'에 처박혀 있었소."~ */ GOTO 17
  IF ~~ THEN REPLY #45603 /* ~"지금은 아무 것도 없소. 안녕히 계시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Shutup","Global",1)
~ THEN BEGIN 4 // from:
  SAY #45604 /* ~아올라는 깊은 명상을 하고 있는 듯하다. 가끔씩 그가 아오스카를 찬양하는 소리가 들린다.~ */
  IF ~~ THEN REPLY #45605 /* ~안녕히 계시오.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #45606 /* ~당신은 자신의 곤경을 아올라에게 설명한다. 아올라는 잠시 생각을 하더니 입을 연다. "위대하신 아오스카의 사도인 내가 당신을 도울 수 있소. 우선 당신은 상자를 내게 양도해야 하오."~ */
  IF ~~ THEN REPLY #45607 /* ~그에게 상자를 준다.~ */ DO ~DestroyPartyItem("Dbox",TRUE)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #45608 /* ~아올라는 모리도의 상자를 철사로 만든 피라미드 안에 넣고는 아오스카에게 기도를 한다. 피라미드의 면들이 전이문이 작동할 때 내는 빛과 같은 광채를 내기 시작한다. 아올라는 아무렇지도 않은 듯 전이문을 통해 손을 넣고는 모리도의 상자를 연다.~ */
  IF ~~ THEN REPLY #45609 /* ~계속한다.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #45610 /* ~당신은 그를 제지하려고 비명을 지르나 때는 이미 늦었다. 상자는 순식간에 분해되고 피라미드 안은 역겨운 매연으로 가득 찬다. 거대한 공포감이 방 안에 감돌며, 당신이 할 수 있는 일은 텐트 밖으로 도망치려는 욕구를 억누르는 것이 고작이다.~ */
  IF ~~ THEN REPLY #45611 /* ~계속한다.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #45612 /* ~연기의 촉수들이 피라미드의 면에 닿자 그것들은 전이문들의 소용들이 속으로 말려들어 간다. 마지막 남은 촉수마저 사라지자 공포감 역시 사라진다. 아올라는 당신을 보며 다소 거북하게 웃는다. "문들의 수호자이신 아오스카의 힘을 보시오!"~ */
  IF ~~ THEN REPLY #45613 /* ~"봉인을 하는 데 그토록 많은 마법을 필요로 한 마족이라면 다시 이 곳으로 돌아오는데 별 어려움이 없을 거요. 만약 놈이 돌아오면 당신을 찾아나설 것이오..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #45615 /* ~"나도 그 점에 대해서는 고려를 했소. 그 피라미드의 각 면은 제각기 다른 차원으로 통하는 전이문이오. 그러니 나는 그것의 실체를 다원 우주 전역으로 뿔뿔이 흩어버린 셈이오. 당신은 악마를 진미로 생각하는 종족도 존재한다는 사실을 아셨소?" 그는 피라미드 속에 손을 넣는다, 그리고 상자의 잔해를 뒤져 그것에 붙어 있던 보석을 꺼내면서 싱글벙글 웃는다. "내 봉사에 대한 대가요. 나는 이 것을 내 아름다운 성당을 재건하는 비용에 보태겠소."~ */
  IF ~~ THEN REPLY #45617 /* ~"보석은 당신이 가지시오, 당신에겐 그럴 자격이 있소. 안녕히 계시오."~ */ DO ~SetGlobal("FedEx","Global",10)
SetGlobal("Shutup","Global",1)
CreateItem("DGem",1,0,0)
SetGlobal("Epsilon","Global",2)
AddexperienceParty(1000)
~ JOURNAL #60389 /* ~아오스카의 사제 덕분에 모리도의 상자는 드디어 안식을 취하게 되었다. 그 대가로 사제는 모리도의 상자 위쪽에 박혀 있던 보석을 차지하였다. 그 보석은 그 품질이 매우 뛰어나다... 마족을 봉인하는 데 쓰였던 것이니 당연한 일인지도 모른다. ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 0.2 1.2 2.2 11.1
  SAY #45618 /* ~"지난 세월 동안 내게는 많은 사도들이 있었소. 그러나 불행히도 그들은 모두 사라졌소. 정말 낭패가 아닐 수 없소. 그들은 참입자가 되자마자 사라져 다시는 내 앞에 나타나지 않소. 최근에는 레이디가 바로 그 원인이라는 소문도 나돌고 있소. 이제는 아무도 이 곳에 오지 않소. 당신은 정말 오랫만에 이 곳에 온 사람이오." ~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45619 /* ~"나는 두려워하지 않소. 나는 아오스카의 사도가 되고 싶소."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("Aoskar","Global",0)
~ THEN REPLY #45620 /* ~"아오스카에 대해 더 얘기해주시오."~ */ DO ~SetGlobal("Aoskar","Global",1)
~ GOTO 11
  IF ~~ THEN REPLY #45621 /* ~"레이디... 난 그녀와 적대할 생각은 없소. 난 가던 길이나 가야겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0.3 1.3 2.1 3.3 10.1
  SAY #45623 /* ~아올라는 마치 광신도가 신을 찬미하는 듯한 어조로 말한다. "아오스카께서는 문들의 수호자이시오. 그분 안에는 문들과 기회의 힘이 내재되어 있소. 문들의 도시로 알려진 시길은 그 저주받을 레이디에 의해 아오스카께서 '추방'을 당하시기 전에는 그분의 도시였소. 레이디가 금지하는 탓에 이제 그분의 숭배자는 몇 남지 않았소. 하지만 내가 사람들로 하여금 아오스카의 위대함을 보도록 도움에 따라 그 상황도 바뀔 것이오. 그녀도 민중의 의지 앞에서는 어쩔 수 없소!"~ */
  IF ~  Global("Disciple","Global",0)
~ THEN REPLY #45624 /* ~"나는 아오스카의 사도가 되고 싶소."~ */ DO ~SetGlobal("Disciple","Global",1)
~ GOTO 12
  IF ~  Global("One","Global",0)
~ THEN REPLY #45626 /* ~"왜 아오스카의 다른 사도는 존재하지 않는 거요?"~ */ DO ~SetGlobal("One","Global",1)
~ GOTO 10
  IF ~~ THEN REPLY #45629 /* ~"레이디... 난 그녀와 적대할 생각은 없소. 난 가던 길이나 가야겠소. 안녕히 계시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.4 1.4 2.3 10.0 11.0
  SAY #45631 /* ~"경사로운 일이오! 아오스카의 사도가 되기를 자원하는 사람이 나타난 것은 참으로 오랜만의 일이오." 아올라는 당신으로 하여금 일련의 복잡한 의식들을 거치게 한 후 말한다. "당신은 이제 아오스카의 사도요. 가서 시길의 주민들에게 복음을 전파하시오, 모든 자들이 아오스카의 위대함을 알 수 있도록!"~ */
  IF ~~ THEN REPLY #45634 /* ~안녕히 계시오.~ */ DO ~SetGlobal("Shutup","Global",1)
SetGlobal("Lady","Global",50)
SetGlobal("Disciple","Global",1)
SetGlobal("DMaze","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.0 3.2
  SAY #45635 /* ~"당신에게는 다행스러운 일이오만 그 동안 내겐 그것을 팔 시간적 여유가 없었소. 당신에게는 특별히 동전 삼백 닢이라는 저렴한 가격에 양도하리다."~ */
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45636 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldGT(99)
CheckStatGT(Player1,12,CHR)
~ THEN REPLY #61596 /* ~"동전 백 닢은 어떻겠소?"~ */ GOTO 19
  IF ~  PartyGoldLT(300)
~ THEN REPLY #45638 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 15
  IF ~  PartyGoldGT(299)
~ THEN REPLY #45639 /* ~"그건 강도나 마찬가지요. 그런 돈은 낼 수 없소."~ */ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.0 19.0
  SAY #45641 /* ~"전이문, 문들, 그리고 '기회'의 신인 아오스카께서 그대에게 미소를 지으시기를."~ */
  IF ~~ THEN REPLY #45643 /* ~안녕히 계시오.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.2 19.1 19.2
  SAY #45645 /* ~"불행한 일이오. 그 이하로는 드릴 수가 없소. 가서 돈을 좀 번 후에 다시 오는 게 좋을 것 같소. 내 기꺼이 당신을 위해 보석을 팔지 않고 기다려 주겠소."~ */
  IF ~~ THEN REPLY #45646 /* ~안녕히 계시오.~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.3
  SAY #45648 /* ~"내게는 성당을 재건하기 위해 그 돈이 몹시 필요하오. 혹시 재고할 수는 없겠소? ...시장에 나가서 팔아도 그 정도는 충분히 받을 수가 있소."~ */
  IF ~~ THEN REPLY #45649 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(300)
GiveItem("DGem",Protagonist)
~ GOTO 14
  IF ~~ THEN REPLY #45651 /* ~"관두시오."~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.4
  SAY #45654 /* ~"당신 말을 들어보니 당신은 전이문을 통해 다른 곳으로 강제 이동되었던 것 같소. 그런 일을 할 있는 것은 경험을 쌓은 아오스카의 사도와 레이디뿐이오. 내 다른 사도들이 없어진 이유도 설명이 될 것 같소. 이 일에 대해 생각을 해봐야겠소. 부디 떠나 주시오."~ */
  IF ~~ THEN REPLY #45657 /* ~안녕히 계시오.~ */ DO ~SetGlobal("DMaze","Global",2)
SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 0.0 1.0 3.0
  SAY #60914 /* ~당신이 자신의 곤경을 설명하자, 아올라는 상자를 잠시 살펴본 후 당신에게 돌려준다. "이 상자에서는 아무 것도 이상한 점은 느낄 수가 없소. 미안하지만 난 지금 바쁘오."~ */
  IF ~~ THEN REPLY #60925 /* ~안녕히 계시오.~ */ DO ~SetGlobal("Shutup","Global",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.1
  SAY #61597 /* ~"왠지는 모르지만 난 당신이 마음에 드오. 나는 정확히 동전 이백 닢에 이 보석을 당신에게 양도하겠소. 어떻게 생각하시오?"~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #61598 /* ~"그걸 사겠소."~ */ DO ~SetGlobal("Gem","Global",1)
TakePartyGold(200)
GiveItem("Dgem",Protagonist)
~ GOTO 14
  IF ~  PartyGoldLT(200)
~ THEN REPLY #61600 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 15
  IF ~~ THEN REPLY #61599 /* ~"관두시오."~ */ GOTO 15
END
