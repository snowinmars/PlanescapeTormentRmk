// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWGM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWGM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #65029 /* ~창백한 노란 피부의 청년이 보인다. 그에게 가까이 다가가서 당신은 그의 피부 중 노출된 부분이 발진으로 뒤덮여 있다는 사실을 눈치챈다.~ */
  IF ~~ THEN REPLY #65030 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #65031 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #65032 /* ~그는 피곤해 보이는 눈을 당신 쪽으로 돌리고는 눈살을 찌푸린다. "뭘 원하는 거요?"~ */
  IF ~~ THEN REPLY #65033 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #65034 /* ~"아무 것도 아니오. 신경 쓰지 마시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #65035 /* ~그는 극도로 피로한 표정을 짓는다. "미안하오, 하지만 지금 나는 피곤하오, 얘기할 시간이 없소..." 그는 돌아서기 시작한다. ~ */
  IF ~~ THEN REPLY #65036 /* ~"잠깐만 시간을 내주면 되오..."~ */ GOTO 3
  IF ~~ THEN REPLY #65037 /* ~"그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #65038 /* ~"당신에게 줄 시간은 일 초도 없소. 제발 다른 사람에게 물어보시오..." 그는 돌아선다.~ */
  IF ~~ THEN REPLY #65039 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY #65040 /* ~기침을 계속 하고 있는 창백한 노란 피부의 남자가 보인다. 그는 당신이 다가가자 당신을 쳐다본다 .~ */
  IF ~~ THEN REPLY #65041 /* ~"안녕하시오."~ */ GOTO 5
  IF ~~ THEN REPLY #65042 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #65043 /* ~그는 미소를 짓는다. "그래..." 그는 잠시 기침을 한다. "당신이 내게 뭔가를 원한다는 건 보기만 해도 알 수 있소." ~ */
  IF ~~ THEN REPLY #65044 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65045 /* ~"아니, 아무런 용건도 없소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0 8.0 9.1 10.0 11.0
  SAY #65046 /* ~"오... 좋소, 물어보시오." ~ */
  IF ~~ THEN REPLY #65047 /* ~"괜찮소?"~ */ GOTO 7
  IF ~~ THEN REPLY #65048 /* ~"왜 당신 피부는 노랗고 또 기침은 왜 그렇게 하는 거요?"~ */ GOTO 8
  IF ~~ THEN REPLY #65049 /* ~"이 구역에 대해 얘기해줄 수 있겠소?"~ */ GOTO 9
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #65050 /* ~"나는 해골을 하나 잃어버렸소. 나는 그를 데려간 자를 찾으려 하고 있소."~ */ GOTO 11
  IF ~~ THEN REPLY #65051 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #65052 /* ~그는 미소짓는다. "난 이 곳 사람들 중에선 건강한 편이오... 어쨌든 걱정해 주어 고맙소. 그러나 당신이 묻고 싶은 건 그런 것이 아닐 텐데."~ */
  IF ~~ THEN REPLY #65053 /* ~"그렇소. 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65054 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #65055 /* ~"이 구역은 공장 등에서 나오는 매연으로 가득 차 있소. 기침도 나쁜 공기 때문이오. 대부분의 사람들은 피부가 변색되고 발진으로 고생하고 있소." 그는 어깨를 으쓱한다. "어쩔 도리가 없소. 이 곳에서는 그것도 삶의 일부요."~ */
  IF ~~ THEN REPLY #65056 /* ~"알겠소. 질문할 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65057 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.2
  SAY #65058 /* ~그는 어깨를 으쓱하고 자기 주위를 가리킨다. "보시다시피 여긴 천국도 지옥도 아니오. 이 곳보다 살기 좋은 곳들도 있지만, 살기 나쁜 곳들도 적지 않소."~ */
  IF ~~ THEN REPLY #65059 /* ~"나는 벌통 구역에 가본 적이 있소. 그 곳은 정말 피하는 것이 좋은 장소인 것 같소."~ */ GOTO 10
  IF ~~ THEN REPLY #65060 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65061 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #65062 /* ~그는 웃는다, 하지만 이내 기침 때문에 멈춘다. "그래... 벌통은 지옥은 아니지만, 엎어지면 코 닿을 곳이오. 뭐 달리 필요한 건 없소?"~ */
  IF ~~ THEN REPLY #65063 /* ~"그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65064 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #65065 /* ~"짐작도 가지 않소. 벌통에서 생긴 일이라면  더스티와 관계가 있을지도 모르나... 이 곳에서는 누가 그런 걸 원할지 난 모르겠소."~ */
  IF ~~ THEN REPLY #65066 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 6
  IF ~~ THEN REPLY #65067 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 18 even though they appear after this state */
~  RandomNum(2,2)
~ THEN BEGIN 12 // from:
  SAY #65068 /* ~누런 피부의 중년 남성이 보인다. 당신이 다가가자 그는 당신을 흘긋 보고 한숨을 쉰다. 그는 지루하다는 표정으로 당신을 본다~ */
  IF ~~ THEN REPLY #65069 /* ~"안녕하시오."~ */ GOTO 13
  IF ~~ THEN REPLY #65070 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #65071 /* ~"당신이 뭘 원하든 난 줄 생각이 없소. 꺼지시오." ~ */
  IF ~~ THEN REPLY #65072 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #65073 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0
  SAY #65074 /* ~"정말이오? 그게 당신이 원하는 게 그것뿐이라면..."~ */
  IF ~~ THEN REPLY #65075 /* ~"이 구역에 대해 얘기해줄 수 있겠소?"~ */ GOTO 15
  IF ~  !Global("AR0508_Visited","GLOBAL",1)
Global("Morte_Stolen","GLOBAL",1)
~ THEN REPLY #65076 /* ~"누군가가 내가 지니고 있던 해골을 훔쳤소. 나는 그를 찾으려 하고 있소."~ */ GOTO 16
  IF ~~ THEN REPLY #65077 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #65078 /* ~"그래, 여긴 마계구요. 보통 사람들이 사는 곳이오. 그 외엔 별로 할 말이 없소."" ~ */
  IF ~~ THEN REPLY #65079 /* ~"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소..."~ */ GOTO 14
  IF ~~ THEN REPLY #65080 /* ~"그만 가야겠소. 안녕히 계시오"~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1
  SAY #65081 /* ~그는 코방귀를 뀌고 눈살을 찌푸린다. "해골? 대체 누가 그런 걸 가지고 어디에 쓴다는 거요? 그는 잠시 당신을 쳐다본 후 어깨를 으쓱한다. "관두시오. 내가 알 바가 아니니까."~ */
  IF ~~ THEN REPLY #65082 /* ~"그래, 당신은 누가 그를 데려갔을지 아시오?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #65083 /* ~그는 천천히 고개를 젓는다. "모르오. 그리고 알고 싶지도 않소..."~ */
  IF ~~ THEN REPLY #65084 /* ~"고맙소, 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 18 // from:
  SAY #65085 /* ~사내에게 다가가다가 당신은 전에 그와 얘기한 적이 있다는 사실을 깨닫는다. "다시 만나 반갑소. 뭐 원하는 거라도 있소?"~ */
  IF ~~ THEN REPLY #65086 /* ~"아니오, 안녕히 계시오."~ */ EXIT
END
