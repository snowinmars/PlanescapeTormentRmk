// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWRUSHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWRUSHF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #25842 /* ~이 깨끗하게 차려 입은 여자는 어디로 가는 도중임에 틀림없다. ~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #25843 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",0)
~ THEN REPLY #25938 /* ~"안녕하시오..."~ */ DO ~SetGlobal("CW_Notice_Morte","AR0600",1)
~ GOTO 26
  IF ~  NearbyDialog("DMorte")
Global("CW_Notice_Morte","AR0600",1)
~ THEN REPLY #25939 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #25940 /* ~그녀를 그냥 보내준다.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.2
  SAY #25844 /* ~그녀는 당신을 쳐다보려고 잠시 눈을 크게 뜨고 걸음을 멈춘다. 그녀는 당신이 다른 사람을 부른 건 아닌지 확인하려고 주변을 둘러본다, 그리고 거북하게 웃는다. "미안하지만 제가 혹시 당신을 아나요...?"~ */
  IF ~~ THEN REPLY #25845 /* ~"아니오, 하지만 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #25926 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 23
  IF ~~ THEN REPLY #25930 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 23.0 26.3 29.0 30.2 31.0
  SAY #25846 /* ~"나는 지금 어딜 좀 가는 중이에요. 그리고 시간이 정말 촉박해요." 그녀는 한 걸음 뒤로 물러선다. "그러니 괜찮으시다면..."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25847 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #25920 /* ~"그럼 딱 한 가지만 물어봅시다."~ */ GOTO 20
  IF ~~ THEN REPLY #25924 /* ~"난 괜찮지 않소. 자, 내 질문에 대답을 하시오..."~ */ GOTO 6
  IF ~~ THEN REPLY #25925 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25848 /* ~그녀는 입술을 깨문 후 고개를 끄덕인다. "좋아요. 하지만 제발 신속하게 질문을 해주세요... 내겐 지금 시간이 천금 같으니까!"~ */
  IF ~~ THEN REPLY #25849 /* ~"이 곳은 뭐 하는 곳이오?"~ */ GOTO 4
  IF ~~ THEN REPLY #25864 /* ~"이 곳의 볼거리에는 어떤 것들이 있소?"~ */ GOTO 8
  IF ~~ THEN REPLY #25871 /* ~"이 곳에서 일거리를 구하려면 어디로 가야 하오?"~ */ GOTO 10
  IF ~  Global("CW_Location","GLOBAL",1)
~ THEN REPLY #25876 /* ~"난 길 안내를 필요로 할 뿐이오..."~ */ GOTO 11
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #25911 /* ~"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"~ */ GOTO 21
  IF ~~ THEN REPLY #25919 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #25850 /* ~그녀는 놀라서 눈썹이 아치 모양이 된다. "여긴 사무구예요. 혹시... 길이라도 잃은 건가요? 상관없어요. 난 가봐야 하니까. 안녕히..."~ */
  IF ~~ THEN REPLY #25851 /* ~"기다리시오... 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25863 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 9.0 9.1 10.0 10.1 12.0 13.0 14.0 15.0 16.0 17.0 18.0 19.0 21.1 22.0
  SAY #25852 /* ~"나는 한 가지 질문에만 대답하겠다고 당신과 약속했어요. 그러니 제발 그 약속을 존중해 내가 내 갈 길을 갈 수 있도록 해주세요. 노변의 카페에 가면 시간의 여유가 있는 사람을 찾을 수 있을 거예요."~ */
  IF ~~ THEN REPLY #25853 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25862 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 5.0 20.0 25.0
  SAY #25854 /* ~그녀는 눈을 가늘게 뜬다. "당신의 무례한 태도와 무시무시한 생김새가 당신이 온 곳에서는 통할지 몰라요, 하지만 시길의 이 지역에서는 법이란 게 있어요. 이제 날 더 이상 귀찮게 하지마세요, 아니면 도와 달라고 비명을 지를 테니."~ */
  IF ~~ THEN REPLY #25855 /* ~"아마 누구도 당신을 구할 정도로 신속히 오지는 못할 거요."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_CWRushed_1","GLOBALGood",-1)
~ GOTO 7
  IF ~~ THEN REPLY #25859 /* ~"만약 당신이 자기 신상에 무엇이 좋은지를 안다면 아무도 부르지 않을 거요."~ */ GOTO 7
  IF ~~ THEN REPLY #25860 /* ~"미안하오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #25861 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1
  SAY #25856 /* ~그녀는 뒤로 물러서면서 도와 달라고 외친다: "경비병! 경비병!"~ */
  IF ~~ THEN REPLY #25857 /* ~그녀를 공격한다.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #25858 /* ~누가 오기 전에 떠난다.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #25865 /* ~"너무나도 많아요! 사무구 안에서도 시 공회당이 위치한 이 지역은 더욱 그래요. 그리고 이 곳엔 미술품 및 골동품 전시관도 있어요."~ */
  IF ~~ THEN REPLY #25866 /* ~"그 밖에 다른 건?"~ */ DO ~SetGlobal("CW_Location","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #25867 /* ~그녀는 잠시 생각을 한다. "흠. 곤캘브즈의 양장점, 약국, 변호사 저택, 그리고 '지적인 욕망을 힐난한다는' 매음굴이 있어요. 아, 그리고 구 지하의 공동 묘지도. 또한 그 작고 묘한 골동품 가게도 있군요."~ */
  IF ~~ THEN REPLY #25868 /* ~"당신이 얘기한 장소들 중 한 곳에 대해 물어볼 것이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25869 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25870 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 3.2
  SAY #25872 /* ~그녀는 잠시 생각을 한다. "시 공회당에 가보게요... 아마 일거리가 있을지도 모르니까. 그리고 약국이나 변호사 저택에도 한 번 가보시죠. 하지만 난 이만 가봐야겠어요. 안녕히 계세요."~ */
  IF ~~ THEN REPLY #25873 /* ~"당신이 얘기한 장소들 중 한 곳에 대해 물어볼 것이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25874 /* ~"다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25875 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 3.3
  SAY #25877 /* ~"당신은 뭘 찾고 있나요?"~ */
  IF ~~ THEN REPLY #25878 /* ~"변호사 저택."~ */ GOTO 12
  IF ~~ THEN REPLY #25882 /* ~"약국."~ */ GOTO 13
  IF ~~ THEN REPLY #25886 /* ~"화랑."~ */ GOTO 14
  IF ~~ THEN REPLY #25890 /* ~"매음굴."~ */ GOTO 15
  IF ~~ THEN REPLY #25894 /* ~"이 구역 아래의 지하 묘지."~ */ GOTO 16
  IF ~~ THEN REPLY #25898 /* ~"시 공회당"~ */ GOTO 17
  IF ~~ THEN REPLY #25902 /* ~"골동품 가게."~ */ GOTO 18
  IF ~~ THEN REPLY #25906 /* ~"양장점."~ */ GOTO 19
  IF ~~ THEN REPLY #25910 /* ~"아무 것도 아니오, 신경 쓰지 마시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #25879 /* ~"이언니스의 저택은 마계구로 통하는 관문의 남쪽에 있어요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 그 곳은 길의 동쪽에 있어요."~ */
  IF ~~ THEN REPLY #25880 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25881 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #25883 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가세요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가세요... 가다 보면 그 길의 동쪽에 그 건물이 나타날 거예요. 남쪽을 향하고 있으며 스테인드 글라스로 만들어진 창이 세 개 있는 건물이에요."~ */
  IF ~~ THEN REPLY #25884 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25885 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.2
  SAY #25887 /* ~"마계구로 통하는 관문에서 길을 따라 동쪽으로 가세요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 길이 북동쪽과 남동쪽의 두 갈래로 갈라지는 곳에서 남쪽으로 가세요... 가다 보면 그 길의 서쪽에 그 건물이 나타날 거예요. 남쪽을 향하고 있으며 큰 돌들에 의해 지붕의 타일들이 지탱되고 있는 건물이에요."~ */
  IF ~~ THEN REPLY #25888 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25889 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.3
  SAY #25891 /* ~그녀는 고개를 저으며 얼굴을 몹시 찌푸린다. "마계구로 통하는 관문의 바로 동쪽에 있어요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 그 곳은 입구가 남쪽을 향하고 있는 크고 둥근 건물이에요."~ */
  IF ~~ THEN REPLY #25892 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25893 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.4
  SAY #25895 /* ~그녀는 눈살을 찌푸린다. "그 곳으로 통하는 입구가 아직도 열려 있나요? 그렇다면 엄중히 경비되고 있을 거예요... 그 지하 묘지는 상당히 위험하다고 하니까요. 하지만 어떻게 하면 그 곳에 들어갈 수 있는지는 모르겠어요."~ */
  IF ~~ THEN REPLY #25896 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25897 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5
  SAY #25899 /* ~"시 공회당은 매우 찾기가 쉬워요. 그 곳은 이 지역의 북동쪽에 있는 거대한 건물이에요."~ */
  IF ~~ THEN REPLY #25900 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25901 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 11.6
  SAY #25903 /* ~"그 곳은 이 지역의 남동쪽에 위치하고 있어요. 넓은 계단을 한참 올라가면 있는 기묘한 형태의 건물이에요. 나도 그 곳에 직접 가본 적은 없지만... 그 곳은 왠지 묘한 느낌이 들어요."~ */
  IF ~~ THEN REPLY #25904 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25905 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 11.7
  SAY #25907 /* ~"양장점은 마계구로 통하는 관문의 바로 북동쪽에 위치하고 있어요 -- 아마 당신은 그 문을 통해 이 곳에 왔겠지요. 그 곳은 입구가 남쪽을 향하고 있는 넓적한 건물이에요."~ */
  IF ~~ THEN REPLY #25908 /* ~"고맙소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25909 /* ~"알겠소. 시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 2.1
  SAY #25912 /* ~그녀는 고개를 젓는다. "정말 미안해요. 노변의 카페에 가면 저보다 시간의 여유가 있는 사람을 찾을 수 있을 거예요. 그럼 이만..."~ */
  IF ~~ THEN REPLY #25913 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25917 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.4
  SAY #25914 /* ~"나이트 해그 래벌 말인가요? 어릴 적에 아버지와 어머니로부터 그녀의 얘기를 듣곤 했지요... 무서운 얘기였어요."~ */
  IF ~~ THEN REPLY #25915 /* ~"동화?"~ */ GOTO 22
  IF ~~ THEN REPLY #25916 /* ~"알겠소. 다른 것에 대해 물어봅시다..."~ */ GOTO 5
  IF ~~ THEN REPLY #25918 /* ~"고맙소. 내가 알고 싶었던 건 그게 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #25921 /* ~그녀는 고개를 끄덕인다. "그래요, 시길을 파괴하려 한 사악한 마귀할멈에 대해서요. 그들은 내가 너무 크게 울면 그녀가 나타나 날 그녀가 추방당한 곳으로 데려갈 거라고 겁주곤 했지요..." 그녀는 갑자기 눈살을 찌푸린다. "난 정말 가봐야만 해요... 안녕히 계세요."~ */
  IF ~~ THEN REPLY #25922 /* ~"기다리시오. 다른 질문이 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #25923 /* ~"시간을 내주어 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 1.1 26.4
  SAY #25927 /* ~"아니에요, 전혀 그렇지 않아요!" 그녀는 불안하게 웃는다. "그건 아마..." 그녀는 당신의 발가벗은 흉터투성이의 상체를 가리킨다. "당신은 좀... 아... 이 구역의 평균적인 주민보다 '사납게' 생겼어요. 부디 제 말에 너무 기분 상해하지는 마세요."~ */
  IF ~~ THEN REPLY #25928 /* ~"괜찮소. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #25929 /* ~"더 이상 필요한 건 없소. 안녕히 계시오."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 24 // from:
  SAY #25932 /* ~여인은 고개를 끄덕여 점잖게 인사한다. "안녕하세요, 그리고 안녕히 계세요... 죄송하지만 전 지금 좀 급하거든요."~ */
  IF ~~ THEN REPLY #25933 /* ~"기다리시오. 질문할 것들이 좀 있소."~ */ GOTO 25
  IF ~~ THEN REPLY #25937 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #25934 /* ~"전에 얘기했듯이 전 지금 몹시 급해요. 노변의 카페에 가면 저보다 시간의 여유가 있는 사람을 찾을 수 있을 거예요. 그럼 이만..."~ */
  IF ~~ THEN REPLY #25935 /* ~"멈추시오. 당신은 여기 서서 내 질문에 대답해야 하오."~ */ GOTO 6
  IF ~~ THEN REPLY #25936 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 0.1
  SAY #25941 /* ~그녀는 당신을 쳐다보려고 잠시 눈을 크게 뜨고 걸음을 멈춘다. 그녀는 당신이 다른 사람을 부른 건 아닌지 확인하려고 주변을 둘러본다, 그리고 거북하게 웃는다. "미안하지만 제가 혹시 당신을 아나요..." 갑자기 그녀는 모트를 뚫어지게 쳐다본다. "어머! 정말 귀여운 미미르네!"~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #25942 /* ~"미미르?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 244
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25943 /* ~"정말 귀엽지 않소? 그는 자기 머리를 누가 긁어 주는 걸 좋아한다오."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 30
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #25944 /* ~"나라면 그를 만지지 않겠소, 사람을 물거든."~ */ DO ~MoraleDec("Morte",1)
~ EXTERN ~DMORTE~ 248
  IF ~~ THEN REPLY #25945 /* ~"그래, 그래. 질문할 것들이 좀 있소."~ */ GOTO 2
  IF ~~ THEN REPLY #25946 /* ~"내 용모에 무슨 문제라도 있소?"~ */ GOTO 23
  IF ~~ THEN REPLY #25947 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25948 /* ~그녀는 미소짓는다. "정말 귀엽군요! 혼자서 말도 할 줄 아네요!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 245
END

IF ~~ THEN BEGIN 28 // from: 30.0
  SAY #25950 /* ~그녀는 고개를 젓는다. "적어도 제가 본 것들 중에 그런 건 없었어요. 그것들은 그냥 물건이 아닌-"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 247
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25952 /* ~그녀는 어깨를 으쓱한다. "그렇겠군요."~ */
  IF ~~ THEN REPLY #25953 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #25954 /* ~"이만 실례하도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 26.1
  SAY #25955 /* ~"정말로요?" 그녀는 웃고는 있으나 당신 말을 의심하는 것 같다. "농담이시겠지요! 그건 그냥 미미르에 불과..."~ */
  IF ~~ THEN REPLY #25956 /* ~"무슨 얘기요? 그들은 모두 그걸 즐기지 않소?"~ */ GOTO 28
  IF ~~ THEN REPLY #25957 /* ~"아니, 정말이오. 어디 한 번 해보시오."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #25958 /* ~"그에 대해서는 신경 쓰지 마시오. 질문할 것들이 좀 있소."~ */ GOTO 2
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #25959 /* ~그녀는 손을 내밀어 조심스럽게 모트를 두드려 본다... 그러자 모트는 그녀의 손에 다가 붙는다. 그러면서 모트는 히죽 웃으며 당신에게 윙크한다. 그녀는 거북하게 웃는다: "정말 신기하네요!"~ */
  IF ~~ THEN REPLY #25960 /* ~"그렇소... 어쨌든 질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #25961 /* ~"다 그렇지 않소? 안녕히 계시오."~ */ EXIT
END
