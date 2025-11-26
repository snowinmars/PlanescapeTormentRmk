// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33815 /* ~옷을 얇게 차려 입은 이 매력적인 여자는 다가오면서 소리를 쳐 당신을 부른다. "실례해요! 당신은 길을 잃은 것처럼 보이는군요, 그래서 드리는 말씀인데... "가이드의 도움이 필요하지는 않은가요? 동전 한 닢밖에 들지 않아요..."~ */
  IF ~~ THEN REPLY #33824 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33825 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33826 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33816 /* ~"가이드의 도움이 필요하지는 않은가요? 동전 한 닢밖에 들지 않아요..."~ */
  IF ~~ THEN REPLY #33827 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33828 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33829 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33817 /* ~"당신에게 벌통의 이 지역을 안내해 줄 사람이죠."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33830 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33831 /* ~"지금은 길 안내가 필요 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33818 /* ~"고마워요... 그만한 가치는 있을 거예요." 그녀는 동전을 주머니 속에 넣는다. "이 곳에는 다른 지역으로 통하는 문이 두 곳 있어요. 양쪽 모두 서쪽 끝에 있는데, 각각 북쪽과 남쪽을 향하고 있어요. 이 지역에서 가볼 만한 곳들로는 불타는 시체 바와 문신 가게가 있어요. 마지막으로 깡패들의 아파트라고 불리는 단지가 있는데... 매우 매우 위험한 곳이에요."~ */
  IF ~~ THEN REPLY #33832 /* ~"불타는 시체 바는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33833 /* ~"문신 가게는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33834 /* ~"북서쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33835 /* ~"이 깡패들의 아파트란 곳은 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33836 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0
  SAY #33819 /* ~"그 곳은 이 지역 한가운데에 있어요... 돔 모양의 지붕이 있는 사각형의 건물이에요. 남쪽의 동서로 통하는 길을 따라가다 보면 남쪽을 향하고 있는 그 가게 입구가 보일 거예요." ~ */
  IF ~~ THEN REPLY #33837 /* ~"문신 가게는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33838 /* ~"북서쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33839 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33840 /* ~"이 깡패들의 아파트란 곳은 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33841 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33820 /* ~"문신 가게는 이 지역의 동쪽 끝에 있어요... 지붕을 쇠로 만든 망사로 장식한 돔 모양의 건물이에요... 그 곳의 입구는 남쪽을 향하고 있어요."~ */
  IF ~~ THEN REPLY #33842 /* ~"불타는 시체 바는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33843 /* ~"북서쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33844 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33845 /* ~"이 깡패들의 아파트란 곳은 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33846 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2
  SAY #33821 /* ~"시체안치소가 있는 지역으로 통해요. 더스트맨이 모이는 바, 더스트맨 기념관, 그리고 영묘도 그 곳에 있어요."~ */
  IF ~~ THEN REPLY #33847 /* ~"불타는 시체 바는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33848 /* ~"문신 가게는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33849 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33850 /* ~"이 깡패들의 아파트란 곳은 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33851 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.2 6.2 8.3
  SAY #33822 /* ~"그 문은 해수 및 질병 관리국과 상당한 규모의 시장이 있는 지역으로 통해요."~ */
  IF ~~ THEN REPLY #33852 /* ~"불타는 시체 바는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33853 /* ~"문신 가게는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33854 /* ~"북서쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33855 /* ~"이 깡패들의 아파트란 곳은 어디 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #33856 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.3 5.3 6.3 7.3
  SAY #33823 /* ~그녀는 고개를 끄덕인다. "그 곳은 이 지역의 북쪽에 있는 단지로... 가급적 피하는 것이 좋아요. 물론 당신이 싸움을 원한다면 얘기는 다르겠지만요."~ */
  IF ~~ THEN REPLY #33857 /* ~"불타는 시체 바는 어디 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33858 /* ~"문신 가게는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33859 /* ~"북서쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33860 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33861 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
