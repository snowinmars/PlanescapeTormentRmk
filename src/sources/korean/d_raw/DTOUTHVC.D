// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVC~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33767 /* ~이 깡패처럼 생긴 사내는 뒤틀린 미소를 지으며 당신에게 다가온다. "이보시오, 친구... 안녕하시오? 나는 이 지역의 가이드요, 그러니 당신에게 내게 줄 동전 한 닢이 있다면 길 안내를 해주리다." ~ */
  IF ~~ THEN REPLY #33776 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33777 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33778 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33768 /* ~"이보시오, 친구... 안녕하시오? 나는 이 지역의 가이드요, 그러니 당신에게 내게 줄 동전 한 닢이 있다면 길 안내를 해주리다." ~ */
  IF ~~ THEN REPLY #33779 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33780 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33781 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33769 /* ~"원 세상에... 당신은 보기와는 달리 시길에 온지 얼마 안된 모양이오! 가이드는 당연히 길 안내를 해주는 사람이오."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33782 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33783 /* ~"지금은 길 안내가 필요 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33770 /* ~사내는 당신 손아귀에서 동전을 낚아챈 후 미소를 짓는다. "좋소! 이 지역의 북쪽과 남동쪽에는 다른 지역으로 통하는 문이 각각 하나씩 있소. 오, 그리고 만약 당신이 실컷 싸우고 싶다면 북동쪽에 있는 골목으로 가보시오. 또한 이 곳에는 해수 및 질병 관리국과 상당한 규모의 시장이 있소~ */
  IF ~~ THEN REPLY #33784 /* ~"해수 및 질병 관리국은 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33785 /* ~"시장은 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33786 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33787 /* ~"남동쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33788 /* ~"당신이 얘기한 그 골목은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33789 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33771 /* ~"이 지역의 남쪽 한가운데에 있소... 그 건물의 문은 남쪽을 향하고 있으니, 그 곳에 도착할 때까지 남쪽의 동서로 통하는 길을 따라가시오."~ */
  IF ~~ THEN REPLY #33790 /* ~"시장은 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33791 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33792 /* ~"남동쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33793 /* ~"당신이 얘기한 그 골목은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33794 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33772 /* ~"이 지역의 북쪽 중앙에 있는 'L'자 모양의 건물의 구부러진 곳 남쪽에 있소. 북쪽의 동서로 통하는 길을 따라가다 보면 나타날 거요. 사람과 상인들로 득실거리오."~ */
  IF ~~ THEN REPLY #33795 /* ~"해수 및 질병 관리국은 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33796 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33797 /* ~"남동쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33798 /* ~"당신이 얘기한 그 골목은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33799 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33773 /* ~"벌통의 다른 지역으로 통하오. 그 곳에는 여인숙이 있으니 피로하거나... 다쳐서 휴식이 필요하면 거기로 가보시오."~ */
  IF ~~ THEN REPLY #33800 /* ~"해수 및 질병 관리국은 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33801 /* ~"시장은 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33802 /* ~"남동쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33803 /* ~"당신이 얘기한 그 골목은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33804 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3
  SAY #33774 /* ~"역시 벌통의 다른 지역으로 통하오. 그 곳에서는 문신을 새길 수도 있고, 불타는 시체 바라는 좋은 선술집도 있소."~ */
  IF ~~ THEN REPLY #33805 /* ~"해수 및 질병 관리국은 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33806 /* ~"시장은 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33807 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33808 /* ~"당신이 얘기한 그 골목은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33809 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3
  SAY #33775 /* ~사내는 어깨를 으쓱한다. "난투를 벌이고 싶을 때나 갈 곳이오... 당신이 싸움을 좋아할 사람처럼 보여서 꺼낸 얘기요. 말했듯이 그 곳은 북동쪽에 있소... 하지만 말썽거리를 찾고 있는 게 아니라면 가까이 가지 마시오."~ */
  IF ~~ THEN REPLY #33810 /* ~"해수 및 질병 관리국은 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33811 /* ~"시장은 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33812 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33813 /* ~"남동쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33814 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
