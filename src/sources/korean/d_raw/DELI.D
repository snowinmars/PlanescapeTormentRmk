// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DELI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #31866 /* ~가는 눈을 한 이 예리한 인상의 사내는 무관심한 표정으로 주변을 멍하니 둘러보고 있다. 때때로 그는 고개를 숙이고 손톱을 후비느라 잠시 멈추곤 한다. 비록 비단과 벨벳으로 만든 좋은 옷을 입고 있기는 하나, 왠지 그로부터는 불량스럽고 위험한 분위기가 느껴진다. ~ */
  IF ~~ THEN REPLY #31937 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #31938 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2911 /* ~그는 당신 쪽으로 고개를 돌린다. 그의 검은 두 눈은 마치 누군가 그의 이마 아래를 칼로 찔러서 낸 가는 상처처럼 보인다. 호리호리한 체구에도 불구하고 그의 목소리는 굴고 탁하다. "꺼지시오."~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31939 /* ~"아직 아니오. 당신이 엘리 해블락이오?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31940 /* ~"아직 아니오. 물어볼 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #31941 /* ~"내가 당신이라면 입조심을 하겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #31942 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 21.1
  SAY #31868 /* ~"당신은 내가 알지도 못하는 사람의 질문에나 대답해주려고 이 구역을 헤매고 다니고 있다고 생각하오? 그만 꺼지시오."~ */
  IF ~  CheckStatGT(Protagonist,8,CHR)
~ THEN REPLY #31943 /* ~"그럼 당신은 왜 여기 있는 거요? 지나가는 사람들에게 심술을 부리려고?~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,9,CHR)
~ THEN REPLY #31944 /* ~"그럼 당신은 왜 여기 있는 거요? 지나가는 사람들에게 심술을 부리려고?~ */ GOTO 3
  IF ~~ THEN REPLY #31945 /* ~"내가 당신이라면 입조심을 하겠소."~ */ GOTO 3
  IF ~~ THEN REPLY #31946 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 2.2
  SAY #31870 /* ~그는 노골적으로 당신을 무시한다.~ */
  IF ~~ THEN REPLY #31947 /* ~답을 얻어내기 위해 그를 붙잡고 좀 흔든다.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31948 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #31871 /* ~"허." 그는 아무 말도 없이 그냥 서 있는다. 잠시 후 그는 뒤틀린 미소를 짓는다. "그거 걸작이군." 그는 잠시 당신을 살펴본다. "나는 시 공회당의 강사요. 이름은 해블락, 엘리 해블락이오. 베테랑 척후병으로서 나는 속임수로 적을 교란시키는 기술을 가르치오."~ */
  IF ~~ THEN REPLY #31949 /* ~"도둑질 말이오?"~ */ GOTO 5
  IF ~~ THEN REPLY #31950 /* ~"날 훈련시켜 줄 수 있겠소?"~ */ GOTO 6
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65427 /* ~"당신이 공회당의 도둑 강사요? 내 말을 좀 들어주시오. 퀴-사이는 나를 전사로 훈련시키는 일을 거부하고 있소. 그는 내가 그냥 적의 무기를 훔침으로서 그들을 무력화시킬 수 있다고 주장하고 있소. 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #65428 /* ~"당신이 공회당의 도둑 강사요? 내 말을 좀 들어주시오. 퀴-사이는 나를 전사로 훈련시키는 일을 거부하고 있소. 그는 내가 적으로부터 숨음으로서 사실상 무적이 될 수 있다고 주장하고 있소. 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31951 /* ~"좋소. 안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 20.2
  SAY #28796 /* ~그는 입술을 비죽거리며 경멸하는 표정을 짓는다. "젠장, 사람들은 늘 *도둑*과 *도둑질*이라고 부르지! 나는 허위의 전쟁에서 정찰 요원으로서 다섯 차례나 복무하였소. 척후가 내 직함이요... *척후*요. 나는 평범한 도둑질이 아니라, 은밀 행동과 첩보 활동 기술에 대해 가르치오."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31952 /* ~"미안하오, 당신을 화나게 할 생각은 없었소. 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31953 /* ~"어쨌든 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 11
  IF ~~ THEN REPLY #31954 /* ~"알겠소. 안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 22.3
  SAY #31872 /* ~엘리의 얼굴이 우거지상이 된다. "모르겠소. 난 이제 시시한 소매치기들과 호기심 많은 센세이트들을 가르치는 데는 이골이 났소." 그는 혼자서 중얼거리다시피 말한다. "애당초 왜 그 일을 하기로 했는지 나도 모르겠소."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31955 /* ~"다른 사람들을 가르치면 그들이 당신의 실력을 알게 되기 때문일 것이오."~ */ GOTO 7
  IF ~~ THEN REPLY #31956 /* ~"어떻게 하면 당신 마음을 돌릴 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31957 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31873 /* ~"흠..."~ */
  IF ~~ THEN REPLY #31958 /* ~"동시에 당신은 그들에게 당신이 평범한 도둑이 아니라, 척후, 스파이, 그리고 속임수의 달인이라는 것을 확인시켜 줌으로서 당신 기술의 고귀함을 옹호할 수 있소."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31883 /* ~엘리는 당신이 한 말을 곰곰이 생각하며 고개를 끄덕인다. "그래... 그걸 부정할 순 없소. 하지만 그런 식으로 본다면 그건 좀 서글픈 일이오."~ */
  IF ~~ THEN REPLY #31959 /* ~"난 그렇게 생각하지 않소. 당신 직업에 종사하는 사람들은 흔히 오해를 받으며, 부당하게도 노상 강도나 산적과 같은 부류로 취급당하기도 하오. 그러한 잘못된 통념을 깨트리는 것은 결코 나쁜 일이 아니오."~ */ GOTO 10
  IF ~~ THEN REPLY #31960 /* ~"당신이 옳소. 그건 정말 한심하오."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #31884 /* ~그는 놀라서 눈썹을 치켜 올린다, 그리고 잠시 후 분노로 눈살을 찌푸린다. "죽고 싶어 환장한 거요? 그렇다면 가서 레이디의 그림자 속에서나 놀라고. 꺼져!"~ */
  IF ~~ THEN REPLY #31961 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #31885 /* ~"허허! 이번에도 말 한 번 잘했소." 그는 당신 어깨를 주먹으로 다정하게 친다. "고맙소, 친구." 그는 갑자기 먼 곳을 바라본다. "더 이상 여기서 시간을 낭비하진 않겠소. 나는 시 공회당으로 돌아갈 생각이오. 아직도 훈련을 받을 생각이 있다면 그 곳으로 날 찾아오시오."~ */
  IF ~~ THEN REPLY #31962 /* ~"그럼 그 곳에서 보겠소, 엘리. 안녕히 계시오."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY #31886 /* ~"아니... 난 이제 시시한 소매치기들과 호기심 많은 센세이트들을 가르치는 데는 이골이 났소."~ */
  IF ~~ THEN REPLY #31963 /* ~"어떻게 하면 당신 마음을 돌릴 수가 있겠소?"~ */ GOTO 12
  IF ~~ THEN REPLY #31964 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 11.0
  SAY #31887 /* ~그는 입술을 오므리고 하늘을 쳐다본다. "흠... 여러 가지 방법이 있을 수 있소." 그는 당신을 똑바로 쳐다본다. "하지만 당신을 위해 가장 간단한 방법을 일러주지. 그건 돈이오. 만약 당신이 훈련을 원한다면 돈을 내야 할 거요! 또 공짜로 다른 사람을 가르치느니 차라리 가서 레이디의 엉덩이를 꼬집겠소!"~ */
  IF ~~ THEN REPLY #31965 /* ~"얼마요?"~ */ GOTO 13
  IF ~~ THEN REPLY #31966 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31888 /* ~엘리는 어깨를 으쓱한다. "젠장, 모르겠소. 동전 오백 닢은 결코 비싼 게 아니오... 나는 베테랑 척후요... 나는 허위의 전쟁에서 다섯 차례나 복무했소! 그러한 경험은 쉽사리 얻을 수 있는 것이 아니오..."~ */
  IF ~~ THEN REPLY #31971 /* ~"좋소."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31972 /* ~"삼백 닢은 어떻소?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31973 /* ~"삼백 닢은 어떻소?"~ */ GOTO 14
  IF ~~ THEN REPLY #31975 /* ~"이백 닢은 어떻소?"~ */ GOTO 15
  IF ~~ THEN REPLY #31978 /* ~"관두시오. 그럼 안녕히 계시오."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.2 15.1
  SAY #31889 /* ~그는 고개를 젓는다. "아니. 난 오백을 원하오, 그러니 오백을 내시오."~ */
  IF ~~ THEN REPLY #31979 /* ~"좋소, 그럼."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~~ THEN REPLY #31980 /* ~"그럼 관두시오. 안녕히 계시오."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY #31890 /* ~그는 눈알을 부라린다. "돌았소? 어림도 없소! 내 가격은 정확히 오백이오. 그 이상도 그 이하도 아니오" ~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #31981 /* ~"좋소, 그럼 삼백 닢은 어떻소?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #31982 /* ~"좋소, 그럼 삼백 닢은 어떻소?"~ */ GOTO 14
  IF ~~ THEN REPLY #31983 /* ~"그럼 관두시오. 안녕히 계시오."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.4 14.1 15.2 17.1 23.1
  SAY #31891 /* ~"다시 올 때는 동전 오백 닢을 준비해 오시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #31984 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 15.0
  SAY #31892 /* ~"그럼 거래는 성립이오." 당신들 두 사람은 서로 악수를 한다. "지금 가지고 있소?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #31985 /* ~"그렇소... 여기 있소."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #31986 /* ~"아니, 지금은 아니오."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #31987 /* ~"그렇소... 여기 있소."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #31988 /* ~"아니, 지금은 아니오."~ */ GOTO 19
  IF ~~ THEN REPLY #31989 /* ~"실은 아직 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.2 23.0 23.2
  SAY #31893 /* ~그는 당신이 준 동전 뭉치를 받아서 자신의 튜닉 속에 만난다. "내게 배우고 싶다면 시 공회당으로 오시오. 그럼 그 때까지 이만."~ */
  IF ~~ THEN REPLY #31990 /* ~"그럼 그 곳에서 봅시다, 엘리. 안녕히 계시오."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.3 23.3
  SAY #31894 /* ~"다시 올 때는 동전 삼백 닢을 준비해 오시오. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #31991 /* ~"안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0 21.0
  SAY #31895 /* ~그는 능글맞게 웃는다. "그래, 그건 바로 나요..."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31992 /* ~"퀴-사이는 나를 전사로 훈련시키길 거부하고 있소. 그는 내가 그냥 적의 무기를 훔쳐 그를 무력화시킬 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?" ~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #31993 /* ~"퀴-사이는 날 전사로 훈련시키기를 거부하고 있소... 그는 내가 적으로부터 숨어 사실상 무적이 될 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31994 /* ~"날 도둑으로 훈련시켜 줄 수 있겠소?"~ */ GOTO 5
  IF ~~ THEN REPLY #31995 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedToGT(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #31896 /* ~가는 눈을 한 이 예리한 인상의 사내는 무관심한 표정으로 주변을 멍하니 둘러보고 있다. 그는 당신이 다가오는 것을 눈치채고 당신 쪽으로 고개를 돌린다. "아직도 이 주변을 어슬렁거리고 있소?" 그는 눈살을 찌푸린다. "무엇을 원하오?"~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31996 /* ~"혹시 당신이 엘리 해블락이 아니오?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31997 /* ~"질문하고 싶은 것이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #31998 /* ~"아무 것도 아니오. 잘 있으시오."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #31899 /* ~엘리는 당신이 다가오는 것을 지켜본다, 하지만 그의 표정은 도무지 읽을 수가 없다. 그가 과연 그토록 가는 검은 눈으로 정말 당신을 볼 수나 있는지 궁금할 지경이다. "뭐요?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31999 /* ~"퀴-사이는 나를 전사로 훈련시키길 거부하고 있소. 그는 내가 그냥 적의 무기를 훔쳐 그를 무력화시킬 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?" ~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32000 /* ~"퀴-사이는 날 전사로 훈련시키기를 거부하고 있소... 그는 내가 적으로부터 숨어 사실상 무적이 될 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"엘리... 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 23
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"엘리... 날 훈련시켜 줄 수 있겠소?"~ */ GOTO 6
  IF ~~ THEN REPLY #32002 /* ~"그냥 지나가던 중이었소. 안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY #31903 /* ~"돈은 있소?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #32003 /* ~"합해서 동전 오백 닢... 여기 있소."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #32004 /* ~"아니, 지금은 아니오."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #32005 /* ~"전부 동전 삼백 닢... 여기 있소."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #32006 /* ~"아니, 지금은 아니오."~ */ GOTO 19
  IF ~~ THEN REPLY #32007 /* ~"실은 아직 훈련을 받고 싶지 않소. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31904 /* ~"나는 시 공회당에 있는 척후병 훈련실로 가겠소. 만약 나와 얘길 하거나 훈련을 받고 싶으면 그 곳으로 오시오. 안녕히 계시오."~ */
  IF ~~ THEN REPLY #32008 /* ~"안녕히 계시오, 엘리."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #31906 /* ~"만세, 누가 오셨는지 좀 보게!" 엘리는 장난기 있는 미소를 짓는다. "내 놀이터에 온 걸 환영하오. 훈련할 준비는 됐소?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32009 /* ~"지금은 아니오. 퀴-사이는 나를 전사로 훈련시키길 거부하고 있소. 그는 내가 그냥 적의 무기를 훔쳐 그를 무력화시킬 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?" ~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32010 /* ~"아직 아니오. 퀴-사이는 날 전사로 훈련시키기를 거부하고 있소... 그는 내가 적으로부터 숨어 사실상 무적이 될 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #32011 /* ~"그렇소."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #32012 /* ~"그렇소."~ */ GOTO 26
  IF ~~ THEN REPLY #32013 /* ~"아니, 지금은 아니오, 엘리. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.3 49.3
  SAY #31907 /* ~"좋소. 자... 당신이 내 손으로부터 이걸 어떻게 낚아챌지 좀 봅시다." 그는 손을 내민다. 그의 손바닥 위에는 동전 한 닢이 놓여져 있다. ~ */
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32014 /* ~동전을 잡아뺏는다. ~ */ DO ~GiveGoldForce(1)
SetGlobal("Eli","GLOBAL",4)
~ GOTO 27
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32015 /* ~동전을 움켜쥔다.~ */ DO ~SetGlobal("Eli","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32016 /* ~동전을 움켜쥔다.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31908 /* ~당신의 손이 어찌나 빠른 속도로 나가 엘리의 손아귀로부터 동전을 낚아챘는지 당신도 그만큼이나 놀란다. "세상에! 당신은 보기보다 월등히 빠른 것 같소, 친구..."~ */
  IF ~~ THEN REPLY #32017 /* ~"고맙소."~ */ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #31909 /* ~당신은 손을 홱 내민다, 하지만 엘리는 너무나 빠르다. "하지만 그 정도면 충분하오. 훈련을 계속하겠소."~ */
  IF ~~ THEN REPLY #32018 /* ~"좋소..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #31910 /* ~엘리의 동전을 낚아채려는 당신의 시도는 보기가 딱할 정도로 한심하다. 엘리는 슬프게 고개를 저으며 얼굴을 찌푸린다. ~ */
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32019 /* ~"뭐?"~ */ GOTO 30
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32020 /* ~"뭐?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #31911 /* ~"미안하오... 이런 말을 하기는 싫지만 당신은 너무나 느려서 이 계통의 일에는 적합하지 않소. 하지만 당신이 다른 직업을 찾아 그 분야에서는 성공하길 빌겠소... 안녕히 가시오."~ */
  IF ~~ THEN REPLY #32021 /* ~"알겠소... 그럼 안녕히 계시오, 엘리."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #31912 /* ~"미안하오... 이런 말을 하기는 싫지만 당신은 너무나 느려서 이 계통의 일에는 적합하지 않소. 이보시오, 난 당신 돈을 받은 게 마음에 걸리오. 자, 여기 있으니... 도로 가져가시오. 당신이 다른 직업을 찾아 그 분야에서는 성공하길 빌겠소... 안녕히 가시오."~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
~ THEN REPLY #32022 /* ~"알겠소... 그럼 안녕히 계시오, 엘리."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(500)
~ EXIT
  IF ~  Global("CW_Thief_Train","AR0600",2)
~ THEN REPLY #32023 /* ~"알겠소... 그럼 안녕히 계시오, 엘리."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 40.0
  SAY #31913 /* ~"우리는 이제 훈련을 시작할 준비가 됐소. 나는 당신에게 적을 기만하는 여섯 가지 기본적인 기술을 가르치겠소. 그것들은 다음과 같소: 그림자를 이용하여 몸을 숨기며 은밀하게 움직이기, 자물쇠 따기, 소매치기, 함정을 발견하고 제거하기, 그리고 숨어 있는 상태에서 적을 배후로부터 공격하는 기습 공격."~ */
  IF ~~ THEN REPLY #32024 /* ~"계속하시오..."~ */ GOTO 33
  IF ~~ THEN REPLY #32025 /* ~"나는 기본은 이해하고 있소, 엘리. 훈련을 시작합시다."~ */ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #31914 /* ~"그림자 속에 숨어 조용히 움직이는 기술은 매우 중요하오. 단지 시야에서 벗어나는 것만으로도 많은 적들을 회피할 수가 있소. 또한 숨은 상태에서 공격을 할 경우 척후는 전투에서 유리한 고지를 차지할 수가 있소. 이에 대해서는 나중에 얘기하겠소. 하지만 이 점은 명심하시오, 이미 적이 당신을 본 후에는 숨을 수가 없소."~ */
  IF ~~ THEN REPLY #32026 /* ~"계속하시오..."~ */ GOTO 34
  IF ~~ THEN REPLY #32027 /* ~"나는 기본은 이해하고 있소, 엘리. 훈련을 시작합시다."~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31915 /* ~"척후병은 임무를 수행하는 도중에 종종 잠긴 문을 열거나 임무 완수에 필요한 문서나 아이템을 입수하기 위해 잠긴 상자나 다른 용기를 열어야 하오. 자물쇠를 따는 기술은 그런 경우 매우 편리하오. 하지만 자물쇠를 따기 전에는 늘 함정은 없는지 확인하는 습관을 기르는 게 좋소. 함정에 관해서는 나중에 얘기하도록 하겠소." ~ */
  IF ~~ THEN REPLY #32028 /* ~"계속하시오..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #31916 /* ~"적이 임무 완수에 필요한 문서나 아이템을 자신의 몸에 직접 지니고 있는 경우가 있소. 이럴 경우 척후는 소매치기 기술을 사용해야 하오. 적에게 몰래 접근한 후 그로부터 물건을 훔쳐내는 것이오. 척후는 소매치기에 실패할 경우에 대비하여 항상 도망치거나 싸울 준비를 하고 있어야만 하오."~ */
  IF ~~ THEN REPLY #32029 /* ~"계속하시오..."~ */ GOTO 36
  IF ~~ THEN REPLY #32030 /* ~"나는 기본은 이해하고 있소, 엘리. 훈련을 시작합시다."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #31917 /* ~"적들은 때때로 척후가 열어야 할 문이나 상자, 또는 통과해야 하는 지역에 함정을 설치해 놓기도 하오. 그러한 함정들은 예외없이 교묘하게 숨겨져 있소. 따라서 척후는 어떤 지역이나 아이템에 접근할 경우 자신이 지닌 기술을 이용하여 수상한 것은 없는지 점검해야 하오. 이 작업은 참을성 있게 진행하도록 하시오... 함정을 발견하는 데 다소 시간이 걸리는 경우도 있소."~ */
  IF ~~ THEN REPLY #32031 /* ~"계속하시오..."~ */ GOTO 37
  IF ~~ THEN REPLY #32032 /* ~"나는 기본은 이해하고 있소, 엘리 훈련을 시작합시다."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31918 /* ~"척후가 함정을 *발견*한 경우, 그는 그 함정을 돌아가거나, 해제를 시도해야만 하오. 하지만 함정을 해제하려다 오히려 그것을 작동시킬 위험이 있기 때문에 함정을 해제할 때는 세심한 주의를 기울여야만 하오."~ */
  IF ~~ THEN REPLY #32033 /* ~"계속하시오..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #31919 /* ~"척후의 특기들 중 내가 당신에게 마지막으로 가르칠 것은... 적을 배후에서 공격하는 것이오. 만약 척후가 숨은 상태에서 적과 조우해 그를 공격할 경우, 척후의 맨 처음 공격은 일반 공격보다 한층 더 정확하고 강력하오. 척후병이 경험을 많이 쌓으면 쌓을수록 그가 그림자 속에서 적을 공격할 때의 위력은 증가하오. 하지만 명심하시오... 일단 기습 공격을 한 후에는 척후의 모습이 적에게 드러나게 되오."~ */
  IF ~~ THEN REPLY #32034 /* ~"좋소, 엘리. 훈련을 시작합시다."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 32.1 33.1 35.1 36.1 38.0
  SAY #31920 /* ~엘리는 고개를 끄덕인다. "좋소, 친구... 우선 마음을 편하게 가지시오. 당신은 너무 긴장하고 있소. 
그리하여 당신의 도둑으로서의 훈련이 시작된다.
~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32035 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~나는 시 공회당의 도둑 강사인 엘리 해블락에게 도둑(그는 도둑보다는  '척후'로 부르는 것을 선호한다)이 되기 위한 훈련을 받았다 .~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #32036 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~나는 시 공회당의 도둑 강사인 엘리 해블락에게 도둑(그는 도둑보다는  '척후'로 부르는 것을 선호한다)이 되기 위한 훈련을 받았다 .~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32037 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~나는 시 공회당의 도둑 강사인 엘리 해블락에게 도둑(그는 도둑보다는  '척후'로 부르는 것을 선호한다)이 되기 위한 훈련을 받았다 .~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32038 /* ~당신이 배울 수 있는 건 모두 배운다.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~나는 시 공회당의 도둑 강사인 엘리 해블락에게 도둑(그는 도둑보다는  '척후'로 부르는 것을 선호한다)이 되기 위한 훈련을 받았다 .~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 27.0 28.0
  SAY #31921 /* ~엘리는 고개를 끄덕인다. "자, 지금의 직업을 버려야 한다는 한다는 건 당신도 알고 있을 거요, 그렇지 않소? 그럴 마음의 준비는 됐소?"~ */
  IF ~~ THEN REPLY #32039 /* ~"그렇소."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 32
  IF ~~ THEN REPLY #32040 /* ~"아니, 관두겠소. 다음 기회로 미루는 것이 좋을 것 같소. 안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0
  SAY #31922 /* ~기나긴 훈련 시간이 흐른 후 엘리는 만족스럽게 고개를 끄덕인다. "당신처럼 빠르게 배우는 사람은 지금까지 본 적이 없소. 당신 마치 전에 이러한 일들을 해본 경험이 있는 것 같소!"~ */
  IF ~~ THEN REPLY #32041 /* ~"아마 그런 적이 있었으나 잊어버리고 있었던 건지도 모르오, 엘리. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #31923 /* ~기나긴 훈련 시간이 흐른 후 엘리는 만족스럽게 고개를 끄덕인다. "당신처럼 빠르게 배우는 사람은 지금까지 본 적이 없소. 당신 마치 전에 이러한 일들을 해본 경험이 있는 것 같소!" 엘리가 얘기를 하자 당신은 자신이 전에 이러한 일들을 해본 적이 있다는 사실을 깨닫는다... 당신은 과거에 이러한 기술들을 빠짐없이 지니고 있었고, 훈련은 그것들을 다시 일깨웠다.~ */
  IF ~~ THEN REPLY #32042 /* ~아마 그런 적이 있었으나 잊어버리고 있었던 건지도 모르오, 엘리. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.2 39.3
  SAY #31924 /* ~기나긴 훈련 시간이 흐른 후 엘리는 만족스럽게 고개를 끄덕인다. "당신처럼 빠르게 배우는 사람은 지금까지 본 적이 없소. 당신 마치 전에 이러한 일들을 모두 해본 경험이 있는 것 같소!" 엘리가 얘기를 하자 당신은 자신이 전에 이러한 일들을 해본 적이 있다는 사실을 깨닫는다... 당신은 과거에 이러한 기술들을 빠짐없이 지니고 있었다.~ */
  IF ~~ THEN REPLY #32043 /* ~아마 그런 적이 있었으나 잊어버리고 있었던 건지도 모르오, 엘리. 고맙소, 그리고 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #31925 /* ~어두운 통로에서 은밀하게 움직이며 위험한 함정들을 피하던 희미한 기억들이 다시 뚜렸해짐에 따라, 당신은 엘리가 당신에게 가르쳐 준 것 이상의 내용을 '배울' 수 있을 만큼의 기억을 회복한다. ~ */
  IF ~~ THEN REPLY #32044 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 25.2 49.2
  SAY #31926 /* ~"당신이 이미 훈련을 받았다면 내가 당신에게 가르칠 수 있는 건 별로 없소. 하지만 만약 당신이 척후의 길에서 벗어난 상태라면, 나는 언제든지 당신이 그 길을 다시 걸을 수 있도록 해줄 수 있소."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32045 /* ~"나는 다시 속임수의 전문가가 되고 싶소, 엘리."~ */ GOTO 46
  IF ~~ THEN REPLY #32046 /* ~"이해하오. 안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #31927 /* ~"자, 지금의 직업을 버려야 한다는 한다는 건 당신도 알고 있을 거요, 그렇지 않소? 그럴 마음의 준비는 됐소?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #32047 /* ~"그렇소. 난 더 이상 전사로 있고 싶지 않소."~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #32048 /* ~"그렇소. 난 마법사이기를 포기하고 싶소."~ */ GOTO 47
  IF ~~ THEN REPLY #32049 /* ~"실은 지금은 아니오. 안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #31928 /* ~"좋소, 좋아! 그럼 훈련을 시작합시다... 당신이 등한시 했던 기술들을 다시 갈고 닦는 거요!"~ */
  IF ~~ THEN REPLY #32050 /* ~다시 도둑이 되기 위해 훈련을 받는다.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31929 /* ~"정말 당신은 빨리도 터득하는군." 그는 자신의 가는 검은 눈으로 당신을 이상하다는 듯 눈여겨본다. 그리고 나서 그는 고개를 젓는다. "뭐, 상관없지. 당신은 이제 다시 척후가 되었소."~ */
  IF ~~ THEN REPLY #32051 /* ~"고맙소, 엘리. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",5)
~ THEN BEGIN 49 // from:
  SAY #31930 /* ~엘리는 하던 일을 잠시 멈추고 당신에게 인사한다 "안녕하시오, 친구. 뭐 필요한 거라도 있소?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32052 /* ~"퀴-사이는 나를 전사로 훈련시키길 거부하고 있소. 그는 내가 그냥 적의 무기를 훔쳐 그를 무력화시킬 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?" ~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32053 /* ~"퀴-사이는 날 전사로 훈련시키기를 거부하고 있소... 그는 내가 적으로부터 숨어 사실상 무적이 될 수 있다고 말하고 있소. 당신은 어떻게 생각하시오?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #64675 /* ~"그렇소... 난 다시 당신과 함께 훈련을 하고 싶소."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #64676 /* ~"그렇소... 난 다시 당신과 함께 훈련을 하고 싶소."~ */ GOTO 26
  IF ~~ THEN REPLY #32054 /* ~"아니... 그냥 지나가던 중이었소. 안녕히 계시오, 엘리."~ */ EXIT
END

IF WEIGHT #0 ~  Global("CW_PP_Eli","GLOBAL",1)
!Global("Eli","GLOBAL",4)
~ THEN BEGIN 50 // from:
  SAY #31931 /* ~그는 당신을 손가락질한다. "조심하시오... 그런 짓을 하면 대부분의 사람들은 당신을 죽이려고 하거나 하모니움의 석두들을 부를 거요. 내가 생각을 바꿔 칼을 뽑기 전에 어서 꺼지시오."~ */
  IF ~~ THEN REPLY #32055 /* ~"그래, 어디 당신 칼을 뽑아 보시오. 난 그걸 당신 해골에 박아 넣겠소."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32056 /* ~떠난다.~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ EXIT
END

IF WEIGHT #1 ~  Global("CW_PP_Eli","GLOBAL",1)
Global("Eli","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #31932 /* ~엘리는 고개를 저으며 씁쓸하게 웃는다. "괜찮은 시도였소... 나쁘지 않았소."~ */
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",0)
~ THEN REPLY #32057 /* ~"어... 고맙소."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
SetGlobal("CW_PP_Training","AR0601",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 52
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32058 /* ~"어... 고맙소."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",1)
~ THEN REPLY #32059 /* ~"어... 고맙소."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26793 /* ~"손을 더 빨리 움직여. 호주머니에 들어갔다 나올 때는 재빠르게... 아니면 요절날 테니까."~ */
  IF ~~ THEN REPLY #32060 /* ~"고맙소, 엘리. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1 51.2
  SAY #31934 /* ~"그래, 그래... 자, 내가 정말로 화를 내기 전에 날 가만히 내버려 두는 게 좋을 거요."~ */
  IF ~~ THEN REPLY #32061 /* ~"안녕히 계시오, 엘리."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.2 20.0 22.0 25.0 49.0
  SAY #31935 /* ~그는 고개를 젓는다. "사실이 아니오. 나조차도 전투는 반드시 치러야 한다는 사실을 인정하지 않을 수 없소. 도둑질에만 의존하는 것은 오산이오."~ */
  IF ~~ THEN REPLY #32062 /* ~"고맙소, 엘리. 안녕히 계시오."~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
~ JOURNAL #66575 /* ~퀴-사이는 도둑은 적의 무기를 언제든지 훔쳐 전투를 회피할 수 있다고 주장하며 나를 전사로서 훈련시키는 일을 거부했다. 하지만 나는 시 공회당의 도둑 강사인 엘리 해블락과 이야기를 하였고, 그는 싸움은 어쩔 수 없이 해야만 하며, 그러한 도둑질에 의존하는 것은 실수라고 설명했다. 또한 그는 은밀한 행동과 은신도 모든 전투를 회피할 수 있도록 해줄 수는 없으며, 특히 어떤 적으로부터는 아예 은신할 수가 없기 때문에 한층 더 그렇다고 설명했다. 이것은 퀴-사이의 주장에 대한 좋은 반론이 될 것 같다.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 4.3 20.1 22.1 25.1 49.1
  SAY #31936 /* ~그는 고개를 젓는다. "그 어떠한 척후, 심지어는 나조차도 그처럼 완벽한 은밀 행동 기술은 터득하지 못했소. 그리고 어떤 적으로부터는 아예 숨을 수가 없소, 당신의 냄새나 단지 생각조차도 당신의 존재를 폭로할 테니까."~ */
  IF ~~ THEN REPLY #32063 /* ~"고맙소, 엘리. 안녕히 계시오."~ */ JOURNAL #66576 /* ~퀴-사이는 도둑은 적으로부터 항상 숨을 수 있기 때문에 무적이나 마찬가지라고 주장하며 나를 전사로서 훈련시키는 일을 거부했다. 하지만 나는 시 공회당의 도둑 강사인 엘리 해블락과 이야기를 하였고, 그는 은밀한 행동과 은신도 모든 전투를 회피할 수 있도록 해줄 수는 없으며, 특히 어떤 적으로부터는 아예 은신할 수가 없기 때문에 한층 더 그렇다고 설명했다. 이것은 퀴-사이의 주장에 대한 좋은 반론이 될 것 같다.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #65166 /* ~기다리시오: 내 생각이 옳다면 아마 그는 그것만 가지고 끝내지는 않을 거요. 만약 그가 숨는 것에 대해 운운한다면 그에게 그 어떤 도둑, 심지어는 엘리조차도 그 정도로 완벽한 은밀 행동 기술은 터득하지 못했으며. 그리고 어떤 적들은 사람의 생각이나 냄새만으로도 그 존재를 감지할 수 있기 때문에 그들로부터는 아예 숨을 수가 없다고 말하시오.~ */
  IF ~~ THEN REPLY #65167 /* ~"알았소. 다시 한 번 사의를 표하오. 안녕히 계시오."~ */ EXIT
END
