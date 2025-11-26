// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #4513 /* ~이 깨끗하게 차려 입은 남자는 어디로 가는 도중임에 틀림없다. ~ */
  IF ~~ THEN REPLY #25733 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #25734 /* ~그가 갈 길을 가도록 내버려 둔다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25735 /* ~그는 멈추어 당신을 흘긋 본다. 그는 당신의 용모 때문에 놀란 것 같다? "내가... 혹시... 귀하를 아오?"~ */
  IF ~~ THEN REPLY #25736 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #25737 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 23
  IF ~~ THEN REPLY #25738 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0
  SAY #25739 /* ~"나는 정말 시간이 없소. 내겐 가야할 곳이 있소. 괜찮다면 이만 실례..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25740 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25741 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ GOTO 20
  IF ~~ THEN REPLY #25742 /* ~"난 괜찮지 않소. 자, 내 질문에 대답을 하시오..."~ */ GOTO 6
  IF ~~ THEN REPLY #25743 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25744 /* ~그는 입술을 깨문 후 고개를 끄덕인다. "그 부탁까지 물리치지는 않겠소. 하지만 제발 신속하게 질문을 해주시오!"~ */
  IF ~~ THEN REPLY #25745 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #25746 /* ~"이 곳의 볼거리로는 어떤 것들이 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #25747 /* ~"이 곳에서 일거리를 구하려면 어디로 가야 하오?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25748 /* ~"난 길 안내를 필요로 할 뿐이오..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25749 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 21
  IF ~~ THEN REPLY #25750 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25751 /* ~그는 잠시 이상하다는 눈초리로 당신을 본다. "여긴 사무구요. 혹시... 길이라도 잃은 거요? 상관없소. 난 가봐야 하니까. 안녕히..."~ */
  IF ~~ THEN REPLY #25752 /* ~"기다리시오... 질문할 것들이 더 있소."~ */ GOTO 5
  IF ~~ THEN REPLY #25753 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25754 /* ~"내게는 질문 하나를 대답해줄 시간밖에 없었소. 노변의 카페에 가면 시간의 여유가 있는 사람을 찾을 수 있을 것이오. 그럼 이만..."~ */
  IF ~~ THEN REPLY #25755 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25756 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25757 /* ~"죄송하지만 난 지금 당신에게 이렇게 괴롭힘을 당할 시간도 의향도 없소! 부탁하건대 제발 날 그냥 내버려 두시오. 아니면 나는 다른 이들이게 도움을 청할 수밖에 없소."~ */
  IF ~~ THEN REPLY #25758 /* ~"아마 누구도 당신을 구할 정도로 신속히 오지는 못할 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25759 /* ~"만약 당신이 자기 신상에 무엇이 좋은지를 안다면 아무도 부르지 않을 거요."~ */ GOTO 7
  IF ~~ THEN REPLY #25760 /* ~"미안하오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #25761 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25762 /* ~그는 뒤로 물러서면서 도와 달라고 외친다: "경비병! 경비병!"~ */
  IF ~~ THEN REPLY #25763 /* ~그를 공격한다. ~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25764 /* ~누가 도착하기 전에 떠난다.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25765 /* ~"사무구에는 볼 만한 것들이 많소... 그리고 특히 이 지역에는 구의 다른 어는 곳보다도! 시 공회당, 미술품 및 골동품 전시관, 그리고 지적인 욕망을 힐난하는 매음굴..." 그는 생각에 잠겨 즐겁게 한숨을 내쉰다.~ */
  IF ~~ THEN REPLY #25766 /* ~"그 밖에 다른 건?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25767 /* ~그는 잠시 생각을 한다. "흠. 양장점, 약국, 그리고 변호사 저택이 있소. 아, 그리고 구 지하의 공동 묘지도. 또한 그 작고 묘한 골동품 가게도 있군." 그는 어깨를 으쓱한다. "시간을 보내기에는 충분하고도 남을 거요. 그럼 난 이만 실례하겠으니 관광을 즐기시오."~ */
  IF ~~ THEN REPLY #25768 /* ~"당신이 얘기한 장소들 중 한 곳에 대해 물어볼 것이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25769 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25770 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25771 /* ~그는 잠시 생각을 한다. "약국이나 변호사 저택에 가보시오. 그리고 물론 시 공회당에 가보는 것도 나쁘지 않을 거요... 묘한 일거리가 있을지도 모르니까. 어쨌든 행운을 빌겠소. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #25772 /* ~"당신이 얘기한 장소들 중 한 곳에 대해 물어볼 것이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25773 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25774 /* ~"다른 것에 대해 물어봅시다..."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25775 /* ~"당신은 어떤 곳을 찾고 있소?"~ */
  IF ~~ THEN REPLY #25776 /* ~"변호사 저택."~ */ GOTO 12
  IF ~~ THEN REPLY #25777 /* ~"약국."~ */ GOTO 13
  IF ~~ THEN REPLY #25778 /* ~"화랑."~ */ GOTO 14
  IF ~~ THEN REPLY #25779 /* ~"매음굴."~ */ GOTO 15
  IF ~~ THEN REPLY #25780 /* ~"이 구역 아래의 지하 묘지."~ */ GOTO 16
  IF ~~ THEN REPLY #25781 /* ~"시 공회당"~ */ GOTO 17
  IF ~~ THEN REPLY #25782 /* ~"골동품 가게."~ */ GOTO 18
  IF ~~ THEN REPLY #25783 /* ~"양장점."~ */ GOTO 19
  IF ~~ THEN REPLY #25784 /* ~"아무 것도 없소. 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25785 /* ~"이언니스의 저택은 마계구로 통하는 관문의 남쪽에 있소 -- 내가 생각하건대 아마 당신은 그 문을 통해 이 곳에 왔을 것이오. 그 곳은 길의 동쪽에 있소."~ */
  IF ~~ THEN REPLY #25786 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25787 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25788 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가시오 -- 내가 생각하건대 아마 당신은 그 문을 통해 이 곳에 왔을 것이오. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가시오... 가다 보면 그 길의 동쪽에 그 건물이 나타날 것이오. 남쪽을 향하고 있으며 스테인드 글라스로 만들어진 창이 세 개 있는 건물이오."~ */
  IF ~~ THEN REPLY #25789 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25790 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25791 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가시오 -- 내가 생각하건대 아마 당신은 그 문을 통해 이 곳에 왔을 것이오. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가시오... 가다 보면 그 길의 서쪽에 그 건물이 나타날 것이오. 남쪽을 향하고 있으며 큰 돌들에 의해 지붕의 타일들이 지탱되고 있는 건물이오."~ */
  IF ~~ THEN REPLY #25792 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25793 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25794 /* ~"지적인 욕망을 힐난하는 매음굴 말이오?" 그는 고의로 웃는다. 마계구로 통하는 관문의 바로 동쪽에 있소 -- 내가 생각하건대 아마 당신은 그 문을 통해 이 곳에 왔을 것이오. 그 곳은 입구가 남쪽을 향하고 있는 크고 둥근 건물이오."~ */
  IF ~~ THEN REPLY #25795 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25796 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25797 /* ~그는 눈살을 찌푸린다. "흠. 입구는 한 곳만이 아니오. 나도 그 것보다는 더 알고 있소. 하지만 당신에게 경고를 해주어야겠소. 그 지하 묘지로 들어가서 나온 자는 아무도 없소..."~ */
  IF ~~ THEN REPLY #25798 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25799 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25800 /* ~"시 공회당은 매우 찾기가 쉽소. 그 곳은 이 지역의 북동쪽에 있는 거대한 건물이오."~ */
  IF ~~ THEN REPLY #25801 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25802 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25803 /* ~"나도 그 곳에 직접 가본 적은 없지만 그 위치에 대해서는 들은 적이 있소. 그 곳은 이 지역의 남동쪽에 위치하고 있다고 하오. 넓은 계단을 한참 올라가면 있는 기묘한 형태의 건물이라 쉽게 찾을 수가 있을 것이오."~ */
  IF ~~ THEN REPLY #25804 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25805 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25806 /* ~"재단사 곤캘브즈의 가게는 마계구로 통하는 관문의 바로 북동쪽에 위치하고 있소 -- 내가 생각하건대 아마 당신은 그 문을 통해 이 곳에 왔을 것이오. 그의 가게는 입구가 남쪽을 향하고 있는 넓적한 건물이오."~ */
  IF ~~ THEN REPLY #25807 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25808 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25809 /* ~그는 고개를 젓는다. "노변의 카페에 가면 시간의 여유가 있는 사람을 찾을 수 있을 것이오. 그럼 이만..."~ */
  IF ~~ THEN REPLY #25810 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25811 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25812 /* ~"엣?" 그는 잠시 혼란스러워한다... 그러더니 갑자기 뭔가를 기억해낸 듯 그의 눈빛이 갑자기 밝아진다. "아! 나이트 해그 말이오? 나는 어린 시절에 그녀에 대한 얘기를 들은 기억이 나오..."~ */
  IF ~~ THEN REPLY #25813 /* ~"동화?"~ */ GOTO 22
  IF ~~ THEN REPLY #25814 /* ~"알겠소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25815 /* ~"고맙소. 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25816 /* ~그는 고개를 끄덕인다. "그녀는 전설 속의 존재요, 그렇지 않소? 그녀는 시길을 파괴하려고 한 마귀할멈이 아니오?" 그는 갑자기 눈살을 찌푸린다. "이제 난 정말 가야만 하오... 안녕히 계시오."~ */
  IF ~~ THEN REPLY #25817 /* ~"기다리시오. 다른 질문이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25818 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1
  SAY #25819 /* ~"아니오, 전혀 그렇지 않소!" 그는 불안하게 웃는다. "그게... 어..." 그는 당신의 발가벗은 흉터투성이의 상체를 가리킨다. "당신은 좀... 뭐라고 해야 하나... 이 구역의 평균적인 주민보다 '사납게' 생겼소. 귀하를 모독하려고 한 말은 아니오."~ */
  IF ~~ THEN REPLY #25820 /* ~"괜찮소. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #25821 /* ~"더 이상 필요한 건 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25822 /* ~"다시 만나 반갑소. 죄송하지만 난 좀 급한 볼일이 있어서 이만 가봐야겠소..."~ */
  IF ~~ THEN REPLY #25823 /* ~"기다리시오. 질문할 것들이 좀 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #25824 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25825 /* ~"전에 얘기했듯이 난 지금 몹시 바쁘오. 노변의 카페에 가면 시간의 여유가 있는 사람을 찾을 수 있을 것이오. 그럼 이만..."~ */
  IF ~~ THEN REPLY #25826 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25827 /* ~"그럼 안녕히 계시오."~ */ EXIT
END
