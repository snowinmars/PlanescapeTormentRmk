// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEF1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1567 /* ~당신 눈에 해진 옷을 입은 남자의 모습이 들어온다. 당신이 그에게 접근하자 그는 갑자기 걸음을 멈추고 겁에 질린 듯 주변을 살펴본다.~ */
  IF ~~ THEN REPLY #1569 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #1568 /* ~"거기 당신! 잠깐만 기다리시오!"~ */ GOTO 1
  IF ~~ THEN REPLY #1570 /* ~그를 그냥 내버려 두고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #1571 /* ~그는 놀란다, 그리고 한 걸음 뒤로 물러선다. "에? 무엇을 원하시오?" 그의 목소리는 떨리고 있으며 당신 몸의 흉터에 놀란 듯하다, "내겐 아무 것도 없소, 정말이오. 그리고 내가 입은 넝마는 뺏을 가치도 없소."~ */
  IF ~~ THEN REPLY #1572 /* ~"진정하시오. 난 당신 돈을 강탈하려는 게 아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #1573 /* ~"도망치려면 치시오, 하지만 멀리는 못 갈 거요. 물어볼 것들이 좀 있소..."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #1574 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1575 /* ~"에?" 그는 당신을 만난 것이 별로 반갑지 않은 듯하다. "이젠 뭘 원하시는 거요?"~ */
  IF ~~ THEN REPLY #1576 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 3
  IF ~~ THEN REPLY #1577 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 1.1 2.0
  SAY #1578 /* ~그는 당신으로부터 일정한 거리를 유지하며, 마치 그림자 속에서 무엇이라도 나오기를 기대하듯 한쪽에서 다른 쪽으로 눈을 열심히 굴린다. "질문이라고 했소...? 어떤 질문이오...?~ */
  IF ~~ THEN REPLY #1580 /* ~"이 도시에 대해 이야기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1579 /* ~"시길에 대해 이야기해줄 수 있겠소?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1581 /* ~"이 빈민굴에 대해 얘기해줄 수 있겠소?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1582 /* ~"벌통 구역에 대해 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1583 /* ~"레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1584 /* ~"파로드란 이름의 사람을 아시오?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1585 /* ~"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"~ */ GOTO 27
  IF ~~ THEN REPLY #7126 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 4 // from: 3.2 3.3 5.2 5.3
  SAY #1586 /* ~"어..." 그는 당신을 조심스럽게 바라보며, 혼란스러운 듯 눈살을 찌푸린다. "벌통에 대해 무엇을 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #1587 /* ~"왜 이 곳이 벌통이라 불리는 거요?"~ */ GOTO 6
  IF ~~ THEN REPLY #1588 /* ~"이 지역에 볼거리로는 어떤 것들이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #1589 /* ~"관두시오. 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 5
  IF ~~ THEN REPLY #1590 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 5 // from: 4.2 6.1 7.5 8.3 9.0 10.1 11.3 12.0 13.5 14.1 15.1 16.3 17.2 18.1 19.1 20.1 21.3 22.2 23.3 24.2 25.2 26.0 27.0 28.2 29.0 30.0 31.2 32.1 33.1 34.1 35.0 36.2 42.0
  SAY #1591 /* ~"에... 어떤 질문들이오?"~ */
  IF ~~ THEN REPLY #1592 /* ~"이 도시에 대해 이야기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 17
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #1593 /* ~"시길에 대해 이야기해줄 수 있겠소?"~ */ GOTO 18
  IF ~  Global("Know_Hive","GLOBAL",0)
~ THEN REPLY #1594 /* ~"이 빈민굴에 대해 얘기해줄 수 있겠소?"~ */ DO ~SetGlobal("Know_Hive","GLOBAL",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Hive","GLOBAL",0)
~ THEN REPLY #1595 /* ~"벌통 구역에 대해 얘기해줄 수 있겠소?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #1596 /* ~"레이디 오브 페인에 대해 얘기해줄 수 있겠소?"~ */ GOTO 28
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1597 /* ~"파로드란 이름의 사람을 아시오?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1598 /* ~"나는 일지를 잃어버렸소. 그것을 본적이 있거나, 아니면 어디 가면 찾을 수 있을지 혹시 아시오?"~ */ GOTO 27
  IF ~~ THEN REPLY #7131 /* ~"아무 것도 아니오. 잘 있으시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #1599 /* ~그는 당황한 표정을 짓는다. "모르... 겠소." 그는 자신이 답을 모른다는 것이 두려운 듯하다. "아마 뒤죽박죽인 거리들과 사람들..."~ */
  IF ~~ THEN REPLY #1600 /* ~"이 지역에 볼거리로는 어떤 것들이 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #1601 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1602 /* ~"그럼 관두시오. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.0
  SAY #1603 /* ~"그건... 당신이 어떤 것에 관심이 있느냐에 달렸소."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1604 /* ~"난 화끈하게 즐길 수 있는 곳을 찾고 있소."~ */ EXTERN ~DMORTE~ 128
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #1605 /* ~"난 화끈하게 즐길 수 있는 곳을 찾고 있소."~ */ GOTO 8
  IF ~~ THEN REPLY #1606 /* ~"나는 일거리를 찾고 있소."~ */ GOTO 11
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #1607 /* ~"나는 파로드란 사람을 찾고 있소."~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #1608 /* ~"나는 잃어버린 일지를 찾고 있소. 어디 가면 그것을 찾을 수 있을지 혹시 아시오?"~ */ GOTO 27
  IF ~~ THEN REPLY #1609 /* ~"관두시오. 다른 질문을 하겠소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7132 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1610 /* ~"글쎄..." 그는 자신의 입술을 핥는다. "불타는 시체 바와... 더스티 바가 있소... 하지만 당신은 더스티들과 술을 마실 사람처럼 보이지는 않소... 이 주변에서 그 밖의 장소들은 위험하니 주의하시오."~ */
  IF ~~ THEN REPLY #1611 /* ~"당신이 얘기한 곳들은 어디에 있소?"~ */ GOTO 9
  IF ~~ THEN REPLY #1612 /* ~"이 주변에서는 무엇이 위험하오?"~ */ GOTO 10
  IF ~~ THEN REPLY #1613 /* ~"'더스티?'"~ */ GOTO 15
  IF ~~ THEN REPLY #1614 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1615 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #1616 /* ~"불타는 시체 바는 시체안치소부터 스파이어 쪽으로, 즉 남쪽으로 몇 블록 내려간 곳에 있소. 그리고 더스티 바는 시체안치소 바로 남서쪽에 있소."~ */
  IF ~~ THEN REPLY #1731 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1732 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #1617 /* ~"어두워지면 벌통은 어느 곳이나 위험하오. 그리고 모서리진 골목이 있소... 죽기 싫으면 그 곳은 가급적 피하는 편이 좋을 거요..."~ */
  IF ~~ THEN REPLY #1618 /* ~"왜 이 '모서리의 골목'이 그토록 위험한 거요?"~ */ GOTO 36
  IF ~~ THEN REPLY #1619 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1620 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 11 // from: 7.2 13.4 14.0 15.0 31.1 32.0
  SAY #1621 /* ~그는 생각한다. "이 부근에서는 정직한... 일거리는 매우 드물다오. 뇌 쥐를 잡아서 해수 관리국 지부에 약간의 돈을 받고 넘길 수는 있지만, 뇌 쥐들하고 대결하는 건 무척 위험한 일이오. 또는 벌통에서 시체를 수거하여 시체안치소에다가 돈받고 팔 수도 있소."~ */
  IF ~~ THEN REPLY #1623 /* ~"이 지국 사무실이란 곳은 어디 있소?"~ */ GOTO 12
  IF ~~ THEN REPLY #1624 /* ~"뇌 쥐?"~ */ GOTO 14
  IF ~~ THEN REPLY #1625 /* ~"시체를 모은다?"~ */ GOTO 13
  IF ~~ THEN REPLY #1626 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1627 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 12 // from: 11.0 13.1
  SAY #1622 /* ~"벌통 시장 옆에 있소. 시체안치소에서 스파이어 쪽으로, 그러니까 남서쪽으로 3~4 불록 정도 내려가면 그 곳에 도착할 거요. 그 건물 앞에는 쥐 사냥꾼들이 서성대고 있으니까 찾기는 쉬울 거요."~ */
  IF ~~ THEN REPLY #1733 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7133 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #1628 /* ~"그렇소, 시체를 시체안치소 정문까지 가져가면 더스티들이 돈을 지불할 거요. 물론 많은 액수는 아니지만 수집자들이 목숨을 부지하기에는 충분한 돈이오... 그리고 이 곳 벌통에는 언제든지 시체가 널려 있으니까."~ */
  IF ~~ THEN REPLY #1633 /* ~"수집자들?"~ */ GOTO 31
  IF ~~ THEN REPLY #1629 /* ~"당신이 얘기했던 지국 사무실은 위치는 어디였소?"~ */ GOTO 12
  IF ~~ THEN REPLY #1630 /* ~"'뇌 쥐'에 대해서 당신이 했던 얘기를 다시 들려주겠소?"~ */ GOTO 14
  IF ~~ THEN REPLY #1631 /* ~"더스티?"~ */ GOTO 15
  IF ~~ THEN REPLY #1632 /* ~"벌통에는 또 어떤 일거리가 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #7134 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7135 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.2
  SAY #1634 /* ~"그래, 작고 끔찍한 괴물들이오." 그는 쥐처럼 자기 이빨을 드러내 보인다. 그는 정말 바보처럼 보인다. "혼자서는 그것들은 아무 것도 아니오... 하지만 한 장소 안에 있는 쥐들의 수가 늘어나면 늘어날 수록 더 똑똑해 지오. 인간만큼이나 똑똑해 지기 시작하오..." 그는 고개를 젓는다. "아무도 그런 일이 일어나기를 원하지는 않소. 그건 누구에게나 위험한 일이니까."~ */
  IF ~~ THEN REPLY #2528 /* ~"벌통에는 또 어떤 일거리가 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #2527 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7136 /* ~"당신 얘기는 충분히 들었소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 15 // from: 8.2 13.3 16.0
  SAY #1635 /* ~"그래, 더스티... 더스트맨... 그들은 모두 창백한 얼굴을 하고 있으며, 냉혹하고 유머 감각이라고는 티끌만큼도 없소. 그들은 거리에서 죽은 자들을 치워서 시체안치소에다가 쌓아 놓소. 그게 시길에서의 그들 일이오. 그들말고는 그런 일을 하고 싶어하는 사람은 없소."~ */
  IF ~~ THEN REPLY #1638 /* ~"벌통에는 또 어떤 일거리가 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #1636 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1637 /* ~"알겠소. 정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 16 // from:
  SAY #1639 /* ~"어느 것 말이오?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #1640 /* ~"더스트맨은 어떻소...?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Chaosmen","GLOBAL",0)
~ THEN REPLY #1641 /* ~"카오스맨... 흥미로울 것 같소."~ */ EXIT
  IF ~  GlobalGT("Know_Indeps","GLOBAL",0)
~ THEN REPLY #1642 /* ~"무소속자?"~ */ EXIT
  IF ~~ THEN REPLY #1643 /* ~"관두시오 그 밖에도 질문할 것들이 좀 있소... "~ */ GOTO 5
  IF ~~ THEN REPLY #1644 /* ~"그 질문에 대해선 잊어버리시오. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 17 // from: 3.0 5.0
  SAY #1645 /* ~"그래, 시길에 대해 뭘 알고 싶으시오?"~ */
  IF ~~ THEN REPLY #1646 /* ~"이 곳은 대체 어떤 곳이오?"~ */ DO ~SetGlobal(" Know_Sigil","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #1647 /* ~"시길은 *어디*에 위치하고 있소?"~ */ GOTO 26
  IF ~~ THEN REPLY #1648 /* ~"실은 그 밖에도 물어볼 것이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1649 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 18 // from: 3.1 5.1 17.0
  SAY #1650 /* ~"문들의 도시. 감옥. 모든 문들의 기점이자 종점. 다원 우주의 중심. 온갖 장소에서 쓰레기란 쓰레기는 다 몰려온다오. 어떤 사람은 이 도시가 어떤 존재이든 언젠가 한 번은 거치는 곳이라고도 하오."~ */
  IF ~~ THEN REPLY #1652 /* ~"'문들의 도시?'"~ */ GOTO 19
  IF ~~ THEN REPLY #1651 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1653 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1654 /* ~"에, 그래... 이 도시는..." 그는 말문이 막힌 듯 눈살을 찌푸린다. "이 도시에는 많은 수의 문들이 흩어져 있소... 아시겠소, 문들..." 그는 다시 눈살을 찌푸린 후 탄식을 한다.~ */
  IF ~~ THEN REPLY #1657 /* ~"문들...?"~ */ GOTO 20
  IF ~~ THEN REPLY #1658 /* ~"아무래도 이건 좀 오래 걸릴 것 같소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1659 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #1655 /* ~"그럼 당신이 이해를 할 수 있도록 내가 주둥아리를 더 놀리도록 하겠소. 시길에는 '문'들이 널려 있소, 하지만 그들이 항상 문처럼 보이는 건 아니오. 그들은 전이문과 같소. 이해하겠소? 그리고 *어떤 것*도 그러한 전이문의 될 수가 있소... 창틀... 액자... 아치... 통의 테, 테이블 다리 사이의 공간... 석상의 다리 사이의 공간..."~ */
  IF ~~ THEN REPLY #1656 /* ~"그럼... 당신은 이런 모든 것들이 문이란 말이오?"~ */ GOTO 21
  IF ~~ THEN REPLY #1661 /* ~"알겠소... 그 밖에도 다른 질문들이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1662 /* ~"정보를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #1660 /* ~그는 다시 눈살을 찌푸린다. "모든 변이 다 닫힌 것이라면 어는 것이든 전이문이 될 수가 있소 . 그들이 어디 있는지를 알아내는 건 쉽지가 않소, 문에 대응되는 열쇠가 없는 한. 당신도 그렇게 해서 이 곳에 오게 된 거요? 전이문을 통해?"~ */
  IF ~~ THEN REPLY #1663 /* ~"무엇 때문에 그렇게 단정짓는 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #1666 /* ~"당신이 말한 '열쇠들'이란 어떤 것들이오?"~ */ GOTO 23
  IF ~~ THEN REPLY #1667 /* ~"그래 이 도시에는 그와 같은 문들이 도처에 있군... 그들은 모두 어디로 통하오?"~ */ GOTO 25
  IF ~~ THEN REPLY #1668 /* ~"아마 그럴지도... 이것 보시오, 그 밖에도 물어볼 것들이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1665 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 22 // from: 21.0 23.2 24.1 25.1
  SAY #1664 /* ~"어... 당신 행동거지는 시길 사람 같지가 않소. 아시겠소?"~ */
  IF ~~ THEN REPLY #7137 /* ~"당신이 말한 '열쇠들'이란 어떤 것들이오?"~ */ GOTO 23
  IF ~~ THEN REPLY #7138 /* ~"이 도시에 있는 이러한 문들은 모두 어디로 통하오?"~ */ GOTO 25
  IF ~~ THEN REPLY #7139 /* ~"당신에게 질문할 것들이 더 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7140 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 25.0
  SAY #1670 /* ~"각 문에는 그것을 열 수 있는 열쇠가 있소. 대부분의 경우 열쇠가 없으면 문이 존재하는지조차 알 수가 없소. 열쇠가 있으면 문이 열리고 당신은 그 안으로 들어갈 수가 있소. 여기서 알아둘 건 문과 마찬가지로 어떤 것이든 열쇠가 될 수가 있다는 사실이오. 문 근처에서 당신이 스스로에게 부르는 콧노래, 페이스트리를 먹고 싶다는 생각, 또는 당신이 추는 춤... 또한 열쇠는 물건일 수도 있소, 예를 들어 유리조각, 조약돌, 부러진 이빨 등등."~ */
  IF ~~ THEN REPLY #1673 /* ~"상당히 혼란스럽소."~ */ GOTO 24
  IF ~~ THEN REPLY #1671 /* ~"이 도시에 있는 이러한 문들은 모두 어디로 통하오?"~ */ GOTO 25
  IF ~~ THEN REPLY #1672 /* ~"당신은 전에 나보고 내가 이러한 문들 중 하나를 통해 이 곳에 왔느냐고 물었소. 왜 그런 질문을 했던 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #7141 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7142 /* ~"그럼 좋소... 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #1674 /* ~"당신도 익숙해지게 될 거요.~ */
  IF ~~ THEN REPLY #1676 /* ~"도시에 있는 문들은 모두 어디로 통하오?"~ */ GOTO 25
  IF ~~ THEN REPLY #1675 /* ~"당신은 전에 나보고 내가 이러한 문들 중 하나를 통해 이 곳에 왔느냐고 물었소. 왜 그런 질문을 했던 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #7143 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7144 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 25 // from: 21.2 22.1 23.1 24.0
  SAY #1677 /* ~그는 어깨를 으쓱한다. "문은 어느 곳으로든 통할 수가 있소. 어떤 문들은 같은 장소로는 두 번 다시 통하지 않소." 그는 한숨을 쉰다. "그러한 특성을 지닌 데다가 그 수도 무수해 시길의 문들은 다원 우주의 모든 곳으로 통한다고 해도 과언이 아니오. 하지만 너무나 문들이 많아 가고 싶은 곳으로 통하는 문을 찾기란 무지무지하게 어렵소."~ */
  IF ~~ THEN REPLY #1678 /* ~"이런 문들에게는'열쇠'가 있다고 했소...?"~ */ GOTO 23
  IF ~~ THEN REPLY #1679 /* ~"당신은 전에 나보고 내가 이러한 문들 중 하나를 통해 이 곳에 왔느냐고 물었소. 왜 그런 질문을 했던 거요?"~ */ GOTO 22
  IF ~~ THEN REPLY #7145 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7146 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 26 // from: 17.1
  SAY #1680 /* ~"다원 우주의 중심이라고들 하지만 나도 직접 본 건 아니오." 그는 어깨를 으쓱한다. "내가 생각하기에 모든 장소는 이 곳과 어떤 방법으로든 연결이 되어 있는 것 같소. 그리고 시길에 당신이 지금 보는 것처럼 추한 부분만 있는 건 아니오."~ */
  IF ~~ THEN REPLY #1681 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1682 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 27 // from: 3.6 5.6 7.4
  SAY #1684 /* ~"당신은 뭘 잃어버렸소?" 그는 혼란스러운 듯하다. "그런 것이 어디 있을지 짐작도 가지 않소."~ */
  IF ~~ THEN REPLY #2531 /* ~"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #2532 /* ~"좋소... 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.4 5.4
  SAY #1683 /* ~"시길의 여주인을 모른단 말이오? 당신은 그녀에 대해 *들은* 적이 없소? 당신은 축복을 받았거나 아니면 무... 아니, 시길에 대해 별로 아는 것이 없는 것 같소." 그는 힘없이 웃는다. "레이디의 말은 시길에서는 곧 법이오." 그는 잠시 생각을 한다. "하지만 그녀는 별로 말을 하지 않소, 아니 실은 전혀 말을 하지 않소."~ */
  IF ~~ THEN REPLY #1686 /* ~"별난 법이군."~ */ GOTO 29
  IF ~~ THEN REPLY #1687 /* ~"레이디 오브 페인에 대해 내게 또 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 29
  IF ~~ THEN REPLY #1688 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1689 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1
  SAY #1685 /* ~그는 당신을 조심스럽게 쳐다본다. "그녀에 대해 너무 말을 많이 하는 건 좋지가 않소... 그녀와 적대하거나 그녀를 칭송하는 일은 절대 하지 마시오, 아시겠소? 이제 더 이상 그 일에 대해선 얘기를 하지 맙시다. 레이디에 대해 입을 놀리는 건 어리석은 일이니까."~ */
  IF ~~ THEN REPLY #1692 /* ~"그럼 좋소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1693 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 30 // from:
  SAY #1690 /* ~"더스티들의 본거지로 정말 으스스한 곳이오. 난 죽은 후에도 거기만은 가고 싶지가 않소."~ */
  IF ~~ THEN REPLY #1694 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1695 /* ~"알겠소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 31 // from: 13.0
  SAY #1691 /* ~"대머리수리들이오. 상당수는 넝마주이 광장에서 살고 있소. 시체를 수거해 돈이 될 만한 건 깡그리 벗겨낸 후, 시체안치소에 있는 더스티들에게 팔아 넘긴다오."~ */
  IF ~~ THEN REPLY #1696 /* ~"그들은 왜 그런 일을 하는 거요?"~ */ GOTO 32
  IF ~~ THEN REPLY #1698 /* ~"벌통 구역에는 또 어떤 일거리가 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #1697 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7147 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #1699 /* ~"더스티들은 거리나 골목에서 시체를 가져오는 사람들에게 약간의 돈을 지불하오. 직접 나가서 수거하는 것보다 벌통 주민들을 이용하는 편이 편하니까, 벌통에서는 매일 죽는 사람이 끊이지 않고 나온다오."~ */
  IF ~~ THEN REPLY #1701 /* ~"벌통 구역에는 또 어떤 일거리가 있소?"~ */ GOTO 11
  IF ~~ THEN REPLY #1700 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7148 /* ~"알겠소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 33 // from: 3.5 5.5 7.3
  SAY #1702 /* ~"내가 아는 사람은 아니오. 그가 누구요?"~ */
  IF ~~ THEN REPLY #1703 /* ~"그는 수집자인 것 같소."~ */ GOTO 34
  IF ~~ THEN REPLY #1705 /* ~"나도 그게 알고 싶소. 이것 보시오, 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1669 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #1707 /* ~그는 생각한다. "그렇다면 그는 아마 넝마주이 광장에 있을 거요. 그 곳에 가서 찾아보시오... 내 말은 낮에 찾아보라는 거요. 밤에는 별로 유쾌한 곳이 아니오."~ */
  IF ~~ THEN REPLY #1708 /* ~"이 넝마주이 광장이란 곳은 어디에 있소?"~ */ GOTO 35
  IF ~~ THEN REPLY #1709 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1710 /* ~"주의를 주어 고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #1711 /* ~"여기서 몇 블록 떨어진 곳에 있소. 시체안치소에서 쭉 서쪽으로 가면 그 곳에 다다를 거요. 하지만 거기서는 각별히 조심하시오. 그 곳의 수집자들은 사체를 수거하기 위해 사람이 죽기를 기다리지 않소."~ */
  IF ~~ THEN REPLY #1704 /* ~"알았소. 고맙소. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #1706 /* ~"알겠소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 10.0
  SAY #1712 /* ~"깡패와 강도들이 우글거리는 곳이오. 시체안치소로 가고 싶지 않다면 거긴 절대 가지 마시오. 그 곳은 불타고 남은 폐허로, 어떤 미친 마법사가 어느 밤 그 곳을 태워버리기 전까지는 멀쩡한 거리였다고 하오. 그 곳 사람들은 그를 잡아 보복으로 그를 불태워 불타는 시체 바에 전시해 놓았소. 벌통이란 그런 곳이오."~ */
  IF ~~ THEN REPLY #2533 /* ~"이 골목은 어디에 있소?"~ */ GOTO 42
  IF ~  False()
~ THEN REPLY #2529 /* ~"이 골목은 어디에 있소?"~ */ GOTO 42
  IF ~~ THEN REPLY #2530 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7149 /* ~"관두시오. 그럼 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 3.7 4.3 5.7 6.2 7.6 8.4 9.1 10.2 11.4 12.1 13.6 14.2 15.2 16.4 17.3 18.2 19.2 20.2 21.4 22.3 23.4 24.3 25.3 26.1 28.3 29.1 30.1 31.3 32.2 34.2 35.1 36.3 42.1
  SAY #1713 /* ~"에..." 당신이 돌아서서 떠나려 하자 그는 혀를 핥는다. "혹시 당신은..." 그는 잠시 당신을 살펴본다. "당신을 도와준 사람에게 동전 몇 닢이라도 적선해 줄 수 있으시겠소? 이 곳 사람들이 다 나처럼 친절한 건 아니오. 한참 얘기를 했으니 내가 목을 축일 수 있을 정도의 돈이라도 어떻게 안 되겠소?"~ */
  IF ~~ THEN REPLY #1714 /* ~"아니."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_5","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #1715 /* ~"당신 목숨을 살려 주겠소. 그건 어떻겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_2","GLOBALGood",-2)
~ GOTO 40
  IF ~  PartyGoldGT(0)
~ THEN REPLY #1716 /* ~"좋소." 그에게 동전 한 닢을 준다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 41
  IF ~  PartyGoldGT(4)
~ THEN REPLY #1717 /* ~다섯 닢을 준다.~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",2)
TakePartyGold(5)
~ GOTO 41
  IF ~  PartyGoldGT(9)
~ THEN REPLY #1718 /* ~동전 열 닢을 준다. ~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Hive_Fright_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_Hive_Fright_1","GLOBALGood",3)
TakePartyGold(10)
~ GOTO 41
  IF ~  PartyGold(0)
~ THEN REPLY #2534 /* ~"미안하오, 하지만 내겐 그럴 돈이 없소."~ */ GOTO 38
  IF ~  PartyGoldGT(0)
~ THEN REPLY #2535 /* ~거짓말: "미안하오, 하지만 내겐 그럴 돈이 없소."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_2","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_3","GLOBALGood",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.5 37.6
  SAY #1719 /* ~그는 실망한 듯하다. "뭐, 할 수 없지... 그럼 잘 있으시오..." 그는 걸어가면서 작은 소리로 투덜거린다.~ */
  IF ~~ THEN REPLY #1723 /* ~"*뭐*라고 했소?"~ */ GOTO 39
  IF ~~ THEN REPLY #1721 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #1722 /* ~그는 매우 놀라서 두 손을 번쩍 든다. "아니, 아무 것도 아니오! 난 날씨에 대해 뭐라고 했을 뿐이오, 정말이오! 당신보고 한 얘기가 아니오!" 그는 도망칠 준비를 하고 있는 듯하다.~ */
  IF ~~ THEN REPLY #1724 /* ~그를 공격한다. ~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1725 /* ~도망치게 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 37.1
  SAY #1726 /* ~"에... 내게는 그게 어울리겠지." 그는 거북하게 웃는다. "그럼 안녕히 계시오." 그는 재빨리 자리를 뜬다.~ */
  IF ~~ THEN REPLY #1727 /* ~그를 공격한다. ~ */ DO ~Enemy()
RunAwayFromEx(Protagonist,FOUR_AI_SECONDS,FALSE)
IncrementGlobalOnceEx("GLOBALChaotic_Hive_Fright_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Hive_Fright_4","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #1728 /* ~도망치게 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 37.2 37.3 37.4
  SAY #1729 /* ~그는 주변을 둘러보며 누가 돈이 오가는 걸 보지 않았는지 살핀다, 그 다음 자신의 외투 속에 돈을 쑤셔 넣는다. "정말 고맙소, 나리! 레이디의 그림자가 당신을 그냥 지나치기를!"~ */
  IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN REPLY #1730 /* ~"기다리시오... 레이디? 그게 무슨 뜻이오?"~ */ DO ~SetGlobal("Know_Lady","GLOBAL",0)
~ GOTO 43
  IF ~~ THEN REPLY #7150 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.0 36.1
  SAY #7127 /* ~"그건 시체안치소의 남서쪽이며, 더스트맨이 모이는 바 바로 남쪽이오."~ */
  IF ~~ THEN REPLY #7151 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #7152 /* ~"고맙소. 안녕히 계시오."~ */ GOTO 37
END

IF ~~ THEN BEGIN 43 // from: 41.0
  SAY #7128 /* ~"시길의 여주인을 모른단 말이오? 당신은 그녀에 대해 *들은* 적이 없소? 당신은 축복을 받았거나 아니면 무... 아니, 시길에 대해 별로 아는 것이 없는 것 같소." 그는 힘없이 웃는다. "레이디의 말은 시길에서는 곧 법이오." 그는 잠시 생각을 한다. "하지만 그녀는 별로 말을 하지 않소, 아니 실은 전혀 말을 하지 않소."~ */
  IF ~~ THEN REPLY #7153 /* ~"별난 법이군."~ */ GOTO 44
  IF ~~ THEN REPLY #7154 /* ~"레이디 오브 페인에 대해 내게 또 어떤 얘기를 해줄 수가 있겠소?"~ */ GOTO 44
  IF ~~ THEN REPLY #7155 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0 43.1
  SAY #7129 /* ~그는 당신을 조심스럽게 쳐다본다. "그녀에 대해 너무 말을 많이 하는 건 좋지가 않소... 그녀와 적대하거나 그녀를 칭송하는 일은 절대 하지 마시오, 아시겠소? 이제 더 이상 그 일에 대해선 얘기를 하지 맙시다. 레이디에 대해 입을 놀리는 건 어리석은 일이니까."~ */
  IF ~~ THEN REPLY #7156 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
