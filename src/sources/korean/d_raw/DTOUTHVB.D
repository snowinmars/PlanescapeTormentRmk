// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOUTHVB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOUTHVB~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33707 /* ~얼굴에 미소를 띤 이 중년 여성은 당신에게 총총걸음으로 다가와 인사를 한다. "안녕하세요, 만나서 반가워요! 동전 한 닢이면 가이드 노릇을 해 드릴게요! 어디를 찾고 계시죠?"~ */
  IF ~~ THEN REPLY #33717 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33718 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33719 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #33708 /* ~얼굴에 미소를 띤 이 중년 여성은 당신이 다가오는 것을 눈치채고 반갑게 손짓을 한다. "안녕하세요, 만나서 반가워요! 동전 한 닢이면 가이드 노릇을 해 드릴게요! 어디를 찾고 계시죠?"~ */
  IF ~~ THEN REPLY #33720 /* ~"가이드란 무엇이오?"~ */ GOTO 2
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33721 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33722 /* ~"지금은 아무 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #33709 /* ~여자는 의심쩍은 눈초리로 당신을 본다, 그러나 이내 어깨를 으쓱한다. "길 안내를 해주는 사람 말이에요. 나는 당신에게 벌통의 이 지역에 대해 안내를 해줄 수가 있어요."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #33723 /* ~"좋소... 여기 동전 한 닢이 있소."~ */ DO ~TakePartyGold(1)
~ GOTO 3
  IF ~~ THEN REPLY #33724 /* ~"지금은 길 안내가 필요 없소. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 2.0
  SAY #33710 /* ~그녀는 동전을 챙기고 정중하게 인사를 한다. "벌통의 이 지역에는 서쪽과 남쪽으로 통하는 문이 각각 하나씩 있어요 이 곳에 있는 중요한 시설로는 시체안치소, 더스트맨이 모이는 바, 더스트맨 기념관, 그리고 영묘가 있어요. 또한 이 곳 남서쪽에 있는 골목은 피하라고 권하고 싶어요. 그 곳은 위험한 깡패들로 득실거리니까요."~ */
  IF ~~ THEN REPLY #33725 /* ~"시체안치소는 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33726 /* ~"더스트맨이 모이는 바는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33727 /* ~"기념비는 어디 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33728 /* ~"영묘는 어디 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #33729 /* ~"서쪽 문은 어디로 통하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #33730 /* ~"남쪽 문은 어디로 통하오?"~ */ GOTO 9
  IF ~~ THEN REPLY #33731 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.0 7.0 8.0 9.0
  SAY #33711 /* ~"시체안치소는 이 지역의 북동쪽에 있는 돔 모양의 거대한 건물이에요. 하지만 무슨 특별한 용건이 있거나 당신이 죽은 시체가 아닌 한 더스트맨이 들여보내 주지 않을 거예요." 그녀는 당신을 보며 미소짓는다. ~ */
  IF ~~ THEN REPLY #33732 /* ~"더스트맨이 모이는 바는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33733 /* ~"기념비는 어디 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33734 /* ~"영묘는 어디 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #33735 /* ~"서쪽 문은 어디로 통하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #33736 /* ~"남쪽 문은 어디로 통하오?"~ */ GOTO 9
  IF ~~ THEN REPLY #33737 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0 6.1 7.1 8.1
  SAY #33712 /* ~"그 곳은 이 지역의 남서쪽 구석에있는 돔 모양의 건물이에요. 더스트맨이 모이는 바는 벌통에서 비교전 안전한 선술집들 중 한 곳이에요."~ */
  IF ~~ THEN REPLY #33738 /* ~"시체안치소는 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33739 /* ~"기념비는 어디 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33740 /* ~"영묘는 어디 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #33741 /* ~"서쪽 문은 어디로 통하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #33742 /* ~"남쪽 문은 어디로 통하오?"~ */ GOTO 9
  IF ~~ THEN REPLY #33743 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.1 7.2 8.2 9.1
  SAY #33713 /* ~"이 지역의 북쪽 한가운데쯤에 있어요... 벽으로 둘러싸인 일종의 뜰 비슷한 곳으로, 사방에 아치형의 입구가 있어요. 그 곳의 남동쪽 입구 근처에서는 대개 한 무리의 더스트맨들이 통곡하고 있어요." ~ */
  IF ~~ THEN REPLY #33744 /* ~"시체안치소는 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33745 /* ~"더스트맨이 모이는 바는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33746 /* ~"영묘는 어디 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #33747 /* ~"서쪽 문은 어디로 통하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #33748 /* ~"남쪽 문은 어디로 통하오?"~ */ GOTO 9
  IF ~~ THEN REPLY #33749 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 4.2 5.2 6.2 8.3 9.2
  SAY #33714 /* ~"영묘는 이 지역의 북서쪽 구석에 있어요. 사각형의 탑과 비슷한 크고 오래된 건물이에요."~ */
  IF ~~ THEN REPLY #33750 /* ~"시체안치소는 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33751 /* ~"더스트맨이 모이는 바는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33752 /* ~"기념비는 어디 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33753 /* ~"서쪽 문은 어디로 통하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #33754 /* ~"남쪽 문은 어디로 통하오?"~ */ GOTO 9
  IF ~~ THEN REPLY #33755 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4 4.3 5.3 6.3 7.3 9.3
  SAY #33715 /* ~"벌통의 다른 지역이요. 그 곳에는 여인숙이 있으니 피곤하다면 거기서 쉬세요."~ */
  IF ~~ THEN REPLY #33756 /* ~"시체안치소는 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33757 /* ~"더스트맨이 모이는 바는 어디 있소?"~ */ GOTO 5
  IF ~~ THEN REPLY #33758 /* ~"기념비는 어디 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33759 /* ~"영묘는 어디 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #33760 /* ~"남쪽 문은 어디로 통하오?"~ */ GOTO 9
  IF ~~ THEN REPLY #33761 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.5 4.4 5.4 6.4 7.4 8.4
  SAY #33716 /* ~"역시 벌통의 다른 지역이요. 그 곳에는 문신 가게와 불타는 시체 바가 있어요. 하지만 깡패들로 득실거려요... 그리고 그들로 가득 찬 건물도 있어요."~ */
  IF ~~ THEN REPLY #33762 /* ~"시체안치소는 어디에 있소?"~ */ GOTO 4
  IF ~~ THEN REPLY #33763 /* ~"기념비는 어디 있소?"~ */ GOTO 6
  IF ~~ THEN REPLY #33764 /* ~"영묘는 어디 있소?"~ */ GOTO 7
  IF ~~ THEN REPLY #33765 /* ~"서쪽 문은 어디로 통하오?"~ */ GOTO 8
  IF ~~ THEN REPLY #33766 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
