// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33670 /* ~이 시끄럽고 더럽게 생긴 사내는 어슬렁거리며 당신에게 다가와 가볍게 인사를 한다. "안녕하시오! 동전 한 닢이면 가이드 노릇을 해 드리리다! 어디를 찾고 계시오?"~ */
  IF ~~ THEN REPLY #33678 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33679 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33680 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33671 /* ~이 시끄럽고 더럽게 생긴 사내는 당신이 자신을 보고 있다는 사실을 금새 눈치챈다. "안녕하시오! 동전 한 닢이면 가이드 노릇을 해 드리리다! 어디를 찾고 계시오?"~ */
  IF ~~ THEN REPLY #33681 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33682 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33683 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33672 /* ~사내는 한쪽 눈썹을 치켜 올린다, 그러나 이내 어깨를 으쓱한다. "길 안내를 해주는 사람 말이오... 나는 당신에게 벌통의 이 지역에 대해 안내를 해줄 수가 있소."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33684 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33685 /* ~"지금은 길 안내가 필요 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33673 /* ~그는 동전을 챙기고 고개를 숙여 답례한다. "벌통의 이 지역에는 동쪽, 남쪽, 그리고 남서쪽으로 통하는 문이 각각 하나씩 있소. 이 곳에 있는 중요한 시설로는 피곤한 사람들이 휴식을 취할 수 있는 여인숙이 있소." ~ */
  IF ~~ THEN REPLY #33686 /* ~"여인숙은 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33687 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #33688 /* ~"동쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33689 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33690 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0
  SAY #33674 /* ~"이 지역 한가운데에 있소... 길고 좁으며, 문이 남동쪽을 향하고 있는 건물이오. 피곤할 때 쉬기엔 좋은 곳이오."~ */
  IF ~~ THEN REPLY #33691 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #33692 /* ~"동쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33693 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33694 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1
  SAY #33675 /* ~"수집자들이 주로 사는... 넝마주이 광장으로 통하오."~ */
  IF ~~ THEN REPLY #33695 /* ~"여인숙은 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33696 /* ~"동쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33697 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33698 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2
  SAY #33676 /* ~"벌통의 다른 지역으로 통하오. 그 곳에는 시체안치소와 더스트맨들이 모여 술을 마시는 '더스트맨이 모이는 바'가 있소. 또한 거대한 더스트맨 기념관과 영묘도 있소."~ */
  IF ~~ THEN REPLY #33699 /* ~"여인숙은 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33700 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #33701 /* ~"남서쪽 문은 어디로 통하오?"~ */ GOTO 7
  IF ~~ THEN REPLY #33702 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2
  SAY #33677 /* ~"벌통의 다른 지역으로 통하오. 그 곳에는 해수 및 질병 관리국과 큰 시장이 있소."~ */
  IF ~~ THEN REPLY #33703 /* ~"여인숙은 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33704 /* ~"북쪽 문은 어디로 통하오?"~ */ GOTO 5
  IF ~~ THEN REPLY #33705 /* ~"동쪽 문은 어디로 통하오?"~ */ GOTO 6
  IF ~~ THEN REPLY #33706 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
