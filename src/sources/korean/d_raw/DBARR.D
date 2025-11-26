// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARR~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #2835 /* ~그는 당신을 공포와 혐오가 뒤섞인 눈빛으로 바라본다, 하지만 당신을 위해 서둘러서 문을 연다. 당신이 지나갈 때 그는 당신 눈을 의도적으로 피한다.~ */
  IF ~~ THEN REPLY #2836 /* ~"안녕하슈, 친구들!"~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #19865 /* ~문지기는 똑바로 선다. "파로드가 원하는 물건을 가져왔나 ?"~ */
  IF ~~ THEN REPLY #19866 /* ~"그렇소."~ */ GOTO 2
  IF ~~ THEN REPLY #19867 /* ~"아직 아니오."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19868 /* ~"내게 보여 줘, 그러면 문을 열어 줄 테니. 하지만 그 전에는 안돼, 알겠나?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #19869 /* ~그것을 그에게 보여준다.~ */ GOTO 4
  IF ~~ THEN REPLY #19870 /* ~"좋소, 내겐 그것이 없소. 하지만 난 당신이 관심을 가질 만한 걸 가지고 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19871 /* ~"그렇게 생각하지 않소. 돌아오리다."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #19872 /* ~"만약 그걸 가지고 있지 않다면 왜 내 시간을 낭비하는 거지?" 문지기는 혼자서 낄낄거린다. ~ */
  IF ~~ THEN REPLY #19873 /* ~"내겐 그것이 없소. 하지만 난 당신이 관심을 가질 만한 걸 가지고 있소..."~ */ GOTO 5
  IF ~~ THEN REPLY #19874 /* ~"좋소. 일단 실례하도록 하겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #19875 /* ~"좋아. 들어오라고."~ */
  IF ~~ THEN REPLY #19876 /* ~"고맙소."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.0
  SAY #19877 /* ~"그래? 그게 뭐지?"~ */
  IF ~~ THEN REPLY #19878 /* ~"돈. 동전 한 닢은 어떻소?"~ */ GOTO 7
  IF ~~ THEN REPLY #19879 /* ~"돈. 동전 열 닢은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #19880 /* ~"돈. 동전 스물 다섯 닢은 어떻소?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19881 /* ~"돈. 동전 쉰 닢은 어떻소?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19882 /* ~"돈. 동전 쉰 닢은 어떻소?"~ */ GOTO 11
  IF ~~ THEN REPLY #19883 /* ~"돈. 동전 백 닢은 어떻소?"~ */ GOTO 12
  IF ~~ THEN REPLY #19884 /* ~"생각해 보니 한 푼도 줄 수가 없소."~ */ GOTO 6
  IF ~~ THEN REPLY #19885 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.6
  SAY #19886 /* ~"그럼 당신은 들어올 수가 없어." 그는 당신 발에 침을 뱉는다. ~ */
  IF ~~ THEN REPLY #19887 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #19888 /* ~그는 뒤틀린 미소를 짓는다. "날 모욕하고 있군. 그걸론 어림없어."~ */
  IF ~~ THEN REPLY #19889 /* ~"좋소. 동전 열 닢은 어떻소?"~ */ GOTO 8
  IF ~~ THEN REPLY #19890 /* ~"좋소. 동전 스물 다섯 닢은 어떻소?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19892 /* ~"좋소. 동전 쉰 닢은 어떻소?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19893 /* ~"좋소. 동전 쉰 닢은 어떻소?"~ */ GOTO 11
  IF ~~ THEN REPLY #19895 /* ~"좋소. 동전 백 닢은 어떻소?"~ */ GOTO 12
  IF ~~ THEN REPLY #19896 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 7.0
  SAY #19899 /* ~"난 그렇게 생각하지 않는 걸..."~ */
  IF ~~ THEN REPLY #19900 /* ~"좋소. 동전 스물 다섯 닢은 어떻소?"~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19901 /* ~"좋소. 동전 쉰 닢은 어떻소?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19902 /* ~"좋소. 동전 쉰 닢은 어떻소?"~ */ GOTO 11
  IF ~~ THEN REPLY #19903 /* ~"좋소. 동전 백 닢은 어떻소?"~ */ GOTO 12
  IF ~~ THEN REPLY #19904 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2 7.1 8.0
  SAY #19905 /* ~"이제야 말이 통하는군. 하지만 아직 그걸론 충분하지 않아."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19906 /* ~"좋소. 동전 쉰 닢은 어떻소?"~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19907 /* ~"좋소. 동전 쉰 닢은 어떻소?"~ */ GOTO 11
  IF ~~ THEN REPLY #19908 /* ~"좋소. 동전 백 닢은 어떻소?"~ */ GOTO 12
  IF ~~ THEN REPLY #19909 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.3 7.2 8.1 9.0 25.1
  SAY #19910 /* ~그의 추악한 얼굴이 미소로 환해진다. "그거면 충분해. 문을 열어 줄 테니 지나가라고."~ */
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19911 /* ~"내겐 그만한 돈이 없는 것 같소."~ */ GOTO 14
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19912 /* ~동전 쉰 닢을 준다. "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19913 /* ~동전 마흔 닢을 준다. "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19914 /* ~그가 그것을 잡기 위해 손을 뻗도록 만든다: "잡으면 당신 거요."~ */ GOTO 15
  IF ~~ THEN REPLY #19915 /* ~"관두시오. 난 지하 묘지로 되돌아가겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.4 7.3 8.2 9.1
  SAY #19916 /* ~그는 계산을 한 후 대답을 한다. "아니. 들어가고 싶다면 그것보다는 더 내야할 걸."~ */
  IF ~~ THEN REPLY #19917 /* ~"그럼 좋소. 동전 백 닢은 어떻소?"~ */ GOTO 12
  IF ~~ THEN REPLY #19918 /* ~"관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.5 7.4 8.3 9.2 11.0 26.1
  SAY #19919 /* ~"그거면 충분해. 아니, 충분하고도 남아. 문을 열어 줄 테니 지나가라고."~ */
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19920 /* ~"내겐 그만한 돈이 없는 것 같소."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19921 /* ~동전 백 닢을 준다, "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19922 /* ~동전 아흔 닢을 준다. "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19923 /* ~그가 그것을 잡기 위해 손을 뻗도록 만든다: "잡으면 당신 거요."~ */ GOTO 16
  IF ~~ THEN REPLY #19924 /* ~"관두시오. 난 지하 묘지로 되돌아가겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 10.2 12.1 12.2 15.4 15.5 16.5 16.6
  SAY #19925 /* ~그는 동전을 들어서 무게를 대중해 본다. 그는 손가락 사이로 돈을 흘리면서 말한다. "충분한 것 같군." 그는 문을 연다. ~ */
  IF ~~ THEN REPLY #19926 /* ~"일단 실례하겠소."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 12.0 15.6 16.4 21.0 25.0 26.0
  SAY #19927 /* ~"안됐군. 돈이 생기면 다시 보자구. 그 때까지는 여길 지날 수가 없어. ~ */
  IF ~~ THEN REPLY #19928 /* ~"그럼 좋소..."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.3
  SAY #19929 /* ~그는 당신이 내민 동전을 집으려고 문 사이로 손을 뻗는다. ~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19930 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19931 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19932 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19933 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(49)
~ THEN REPLY #19934 /* ~동전 쉰 닢을 준다: "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  PartyGoldGT(39)
~ THEN REPLY #19935 /* ~동전 마흔 닢을 준다. "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(40)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~  PartyGoldLT(50)
~ THEN REPLY #19936 /* ~"내겐 그만한 돈이 없는 것 같소."~ */ GOTO 14
  IF ~~ THEN REPLY #19937 /* ~"관두시오. 나는 다시 내려가겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.3
  SAY #19938 /* ~그는 당신이 내민 동전을 집으려고 문 사이로 손을 뻗는다. ~ */
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19939 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatGT(Protagonist,9,STR)
~ THEN REPLY #19940 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,9,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19941 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,10,DEX)
CheckStatLT(Protagonist,10,STR)
~ THEN REPLY #19942 /* ~그의 팔을 잡고 꼼짝 못하게 누른다.~ */ DO ~SetGlobal("No_Pin","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldLT(100)
~ THEN REPLY #19943 /* ~"내겐 그만한 돈이 없는 것 같소."~ */ GOTO 14
  IF ~  PartyGoldGT(99)
~ THEN REPLY #19944 /* ~동전 백 닢을 준다, "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(100)
~ GOTO 13
  IF ~  PartyGoldGT(89)
~ THEN REPLY #19945 /* ~동전 아흔 닢을 준다. "여기 있소. 그 안에 다 들어있을 거요."~ */ DO ~TakePartyGold(90)
IncrementGlobalOnceEx("GLOBALChaotic_Barr_1","GLOBALLaw",-1)
~ GOTO 13
  IF ~~ THEN REPLY #19946 /* ~"관두시오. 난 지하 묘지로 되돌아가겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0
  SAY #19947 /* ~당신은 민첩하게 그의 팔을 문에 대고 누른 후 비튼다. 문지기는 팔이 뒤틀리는 고통 때문에 비명을 지른다. ~ */
  IF ~~ THEN REPLY #19948 /* ~"날 들여보내 주지 않으면 팔을 부러트리겠소!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19949 /* ~그를 놓아준다. "자, 나를 들여보내 주지 않으면 당신을 아주 박살을 내겠소. 날 상대로 게임을 할 생각은 하지 마시오."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 15.1 15.2 16.1 16.2
  SAY #19950 /* ~그가 동전을 집으려고 손을 뻗치자 당신은 그의 팔을 잡는다. 그는 당신 손아귀에서 벗어나려고 발버둥치나, 당신은 마침내 그의 팔을 문에 대고 누른 후 비튼다. 그는 고통 때문에 헐떡거린다.~ */
  IF ~~ THEN REPLY #19951 /* ~"날 들여보내 주지 않으면 팔을 부러트리겠소!"~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #19952 /* ~그를 놓아준다. "자, 나를 들여보내 주지 않으면 당신을 아주 박살을 내겠소. 날 상대로 게임을 할 생각은 하지 마시오."~ */ DO ~SetGlobal("Gate_Guard","GLOBAL",2)
~ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 15.3 16.3
  SAY #6783 /* ~그가 동전을 집으려고 손을 뻗치자 당신은 그의 팔을 잡으려고 시도한다. 하지만 그는 재빨리 문 안쪽으로 손을 잡아당기고 고함을 지른다. "넌 그 짓에 대한 대가를 치를 거야, 이 쓰레기! 내 앞에서 꺼져!" 그는 돌아선다. ~ */
  IF ~~ THEN REPLY #6844 /* ~"그럼 안녕히 계시오..."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.0 17.1 18.0 18.1
  SAY #19953 /* ~그는 당신이 협박을 그대로 이행할까 두려워 서둘러 문을 연다, 그리고 당신이 지나갈 동안 당신 손길이 미치지 않을 먼 곳에서 가만히 서 있는다. ~ */
  IF ~~ THEN REPLY #19954 /* ~"만약 당신이 다시 날 거스른다면 당신 시체는 각기 다른 세 무덤에 흩어지게 될 거요. 알겠소? 좋소." ~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19955 /* ~"우린 교훈을 얻었소, 그렇지 않소? 다음 번에는 조금 더 경의를 표하도록 하시오. 잘 있으시오."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  Global("No_Pin","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #19956 /* ~문지기는 당신을 위협적으로 쳐다본다. "여길 지나가려면 이백 닢을 내놔, 그리고 수상한 짓은 할 생각도 하지마!"~ */
  IF ~~ THEN REPLY #19957 /* ~"내겐 그만한 돈이 없소."~ */ GOTO 14
  IF ~  PartyGoldGT(199)
~ THEN REPLY #19958 /* ~"좋소. 여기 있소."~ */ DO ~TakePartyGold(200)
~ GOTO 22
  IF ~~ THEN REPLY #19959 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #19960 /* ~그는 돈을 받아 신중하게 센다. 당신이 동전 한 닢도 속이지 않다는 것을 확인한 후에야 그는 당신을 위해 문을 연다. "잊지 말라고... 나중에 돌아올 때도 같은 액수를 지불해야 해!"~ */
  IF ~~ THEN REPLY #19961 /* ~"그래, 뭐든 간에."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
  IF ~~ THEN REPLY #19962 /* ~"충분하고 남을 만큼 있소."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Gate_Guard","GLOBAL",1)
!Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #19963 /* ~문지기는 몸을 약간 바로 세운다. "통행료를 낼 돈은 있어?"~ */
  IF ~~ THEN REPLY #19965 /* ~"통행료? 얼마요?"~ */ GOTO 25
  IF ~~ THEN REPLY #19966 /* ~"난 통행료가 있는지는 몰랐는데."~ */ GOTO 24
  IF ~~ THEN REPLY #19967 /* ~"아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.1
  SAY #19964 /* ~"모르는 사람이 많기는 하지만 통행료는 분명히 존재해."~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #19968 /* ~"얼마요?"~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #19969 /* ~"얼마요?"~ */ GOTO 26
  IF ~~ THEN REPLY #19970 /* ~"그럼 관두시오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.0 24.0
  SAY #19971 /* ~"당신을 위해? 동전 쉰 닢을 내놔."~ */
  IF ~~ THEN REPLY #19972 /* ~"오십? 그렇게 많이 내고 싶지는 않소."~ */ GOTO 14
  IF ~~ THEN REPLY #19973 /* ~"낼 수 있을 것 같소."~ */ GOTO 10
  IF ~~ THEN REPLY #19974 /* ~"그럼 관두시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #19975 /* ~"당신을 위해? 동전 백 닢을 내놔."~ */
  IF ~~ THEN REPLY #19976 /* ~"백? 그렇게 많이 내고 싶지는 않소."~ */ GOTO 14
  IF ~~ THEN REPLY #19977 /* ~"낼 수 있을 것 같소."~ */ GOTO 12
  IF ~~ THEN REPLY #19978 /* ~"그럼 관두시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 27 // from: 30.2 31.0 32.1 33.0 34.0 35.0 37.0 38.0
  SAY #19979 /* ~"이번엔 뭘 원하지?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19980 /* ~"파로드는 내가 지하 묘지로 내려가는 걸 허락했소. 날 위해 문을 열어주어야겠소."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19981 /* ~"관문 저편에는 무엇이 있소?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19982 /* ~"관문 저편에는 무엇이 있소?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19983 /* ~"문을 다시 열어줄 수 있겠소?"~ */ GOTO 36
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19984 /* ~"관문 너머의 지역에 대해 내게 어떤 것을 말해줄 수 있겠소?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19985 /* ~"나는 지하로 내려가고 싶소."~ */ GOTO 35
  IF ~~ THEN REPLY #19986 /* ~"당신은 누구요?"~ */ GOTO 37
  IF ~~ THEN REPLY #19987 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 38
  IF ~~ THEN REPLY #19988 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 28 // from:
  SAY #19989 /* ~넝마를 걸치고 싸구려 술냄새를 풍기는 거한이 당신 시야에 들어온다. 그는 정말 덩치가 크다. 그가 이 일을 맡게 된 건 머리가 아니라 근력 때문인 것이 명백하다. "뭘 원하지?"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19990 /* ~"파로드는 내가 지하 묘지로 내려가는 걸 허락했소. 날 위해 문을 열어주어야겠소."~ */ GOTO 29
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19991 /* ~"관문 저편에는 무엇이 있소?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19992 /* ~"관문 저편에는 무엇이 있소?"~ */ GOTO 34
  IF ~  GlobalGT("Pharod_Quest","GLOBAL",0)
~ THEN REPLY #19993 /* ~"관문 너머의 지역에 대해 내게 어떤 것을 말해줄 수 있겠소?"~ */ GOTO 30
  IF ~  GlobalLT("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #19994 /* ~"나는 지하로 내려가고 싶소."~ */ GOTO 35
  IF ~~ THEN REPLY #19995 /* ~"당신은 누구요?"~ */ GOTO 37
  IF ~~ THEN REPLY #19996 /* ~"무엇을 하고 있는 거요?"~ */ GOTO 38
  IF ~~ THEN REPLY #19997 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #19998 /* ~그는 문을 활짝 연다. "그럼 들어가라고, 내 시간을 낭비하지 말고."~ */
  IF ~~ THEN REPLY #19999 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 27.4 28.1 28.3
  SAY #20000 /* ~"눈물을 흘리는 돌 지하 묘지. 시체도 많고 도굴할 무덤도 많지."~ */
  IF ~~ THEN REPLY #20001 /* ~"왜 사람들은 그 곳을 눈물을 흘리는 돌 지하 묘지라고 부르오?"~ */ GOTO 31
  IF ~~ THEN REPLY #20002 /* ~"보다 자세한 설명을 해줄 수 있겠소?"~ */ GOTO 32
  IF ~~ THEN REPLY #20003 /* ~"고맙소. 그 밖에도 물어보고 싶은 것들이 좀 있소." ~ */ GOTO 27
  IF ~~ THEN REPLY #20004 /* ~"고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #20005 /* ~"천장으로부터 물이 많이 떨어져서 벽이 눈물을 흘리는 것처럼 보여. 그래서 붙여진 이름이지."~ */
  IF ~~ THEN REPLY #20006 /* ~"알았소. 날 위해 몇 가지 질문에 더 대답해줄 수 있겠소?~ */ GOTO 27
  IF ~~ THEN REPLY #20007 /* ~"고맙소."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #20008 /* ~"별로 해줄 얘기가 없어. 나는 한두 번밖에 거기 내려간 적이 없어... 시체를 건지러 내려가는 건 주로 다른 녀석들이니까. 지금까지 도굴 실적이 제일 좋은 건 그리스였지만, 아무래도 녀석은 지하에서 무슨 사고를 당해 죽은 것 같아."~ */
  IF ~~ THEN REPLY #20009 /* ~"그리스?"~ */ GOTO 33
  IF ~~ THEN REPLY #20010 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 27
  IF ~~ THEN REPLY #20011 /* ~"알겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #20012 /* ~"그래, '대머리수리 그리스.' 놈하고 다른 두 녀석이 며칠 전에 저기로 내려갔지, 하지만 그 이후로는 다시 나타나지 않았어. 만약 그의 시체를 찾거든 가지고 와." 그는 마치 재칼처럼 웃는다. "더스티에게 팔아 돈을 좀 건질 수 있으니까."~ */
  IF ~~ THEN REPLY #20013 /* ~"하. 그 밖에도 질문할 것들이 좀 있소..."~ */ GOTO 27
  IF ~~ THEN REPLY #20014 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 27.2 28.2
  SAY #20015 /* ~문지기는 당신을 잠시 보더니 코웃음을 친다. "네 엄마의 침실이 있다. 통행량이 너무 늘어나 문을 닫아 놓는 거라고, 알겠어?" 그는 큰 소리로 웃는다. "너도 저 지하의 시체들 중 하나가 되기 전에 꺼져."~ */
  IF ~~ THEN REPLY #20016 /* ~"내 질문에 조금만 더 대답해주시오.."~ */ GOTO 27
  IF ~~ THEN REPLY #20017 /* ~"알겠소."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 27.5 28.4
  SAY #20018 /* ~문지기는 당신을 흘긋 보더니 고개를 젓는다. "그래, 그래... 우리는 모두 지하로 내려가지 못해 안달이지. 이봐. 당신은 확실히 이 부근 사람이 아니군. 꺼져."~ */
  IF ~~ THEN REPLY #20019 /* ~"그럼 그냥 내 질문에 좀 대답해주시오..."~ */ GOTO 27
  IF ~~ THEN REPLY #20020 /* ~"좋소."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 27.3
  SAY #20021 /* ~그는 당신을 보더니 아무 말도 하자 않고 문을 활짝 연다. ~ */
  IF ~~ THEN REPLY #20022 /* ~"안녕히 계시오."~ */ DO ~SetGlobal("Open_Door","AR0109",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 27.6 28.5
  SAY #20023 /* ~"솔직히 당신이 상관할 바가 아니야. 꺼져."~ */
  IF ~~ THEN REPLY #20024 /* ~"내 질문 한 두가지에 대답해주시오..."~ */ GOTO 27
  IF ~~ THEN REPLY #20025 /* ~"고맙소... 친구."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 27.7 28.6
  SAY #20026 /* ~"내가 네 속옷이라도 빠는 것처럼 보이나? 꺼져, 이 멍청아!"~ */
  IF ~~ THEN REPLY #20027 /* ~"한 가지만 더 물어봅시다..."~ */ GOTO 27
  IF ~~ THEN REPLY #20028 /* ~"뭐든 간에."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Open_Door","AR0109",0)
~ THEN BEGIN 39 // from:
  SAY #56027 /* ~"문은 지금 열려 있어, 그러니 날 귀찮게 할 필요도 없어."~ */
  IF ~~ THEN REPLY #56028 /* ~떠난다.~ */ EXIT
END
