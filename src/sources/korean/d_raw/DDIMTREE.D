// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDIMTREE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDIMTREE~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2907 /* ~흐리멍덩한 눈을 한 키가 크고 마른 사내가 보인다. 그는 가게 주인이 하는 얘기에 몰두하고 있는 것 같다.그는 가끔씩 고개를 끄덕이나 아무런 말도 하지 않는다. ~ */
  IF ~~ THEN REPLY #2908 /* ~"안녕하시오."~ */ GOTO 1
  IF ~~ THEN REPLY #35923 /* ~그를 무시한다.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 13.0
  SAY #35922 /* ~당신이 인사를 하자 사내는 고개를 약간 돌림으로서 최소한의 반응을 보인다. 그는 안색이 다소 창백하며 좀 수척해 보인다. 그는 당신을 멍한 눈으로 바라보고 있다. 가게 주인은 이러한 전개를 전혀 눈치채지 못한 듯 계속 쓸데없는 수다를 늘어놓고 있다. ~ */
  IF ~~ THEN REPLY #35924 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 2
  IF ~~ THEN REPLY #35925 /* ~"괜찮소...?"~ */ GOTO 3
  IF ~~ THEN REPLY #35926 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #35927 /* ~사내는 시선을 천천히 가게 주인 쪽으로 돌린다, 그리고 고개를 끄덕여 그의 말에 동의를 표한다. 당신이 보기에 대화의 흐름 상 너무 늦게 고개를 끄덕인 듯하나, 가게 주인은 이 사실을 알아차리지 못하고 있다. 사내는 시선을 다시 당신 쪽으로 천천히 돌린다, 그리고 당신을 멍한 눈으로 쳐다본다.~ */
  IF ~~ THEN REPLY #35928 /* ~"괜찮소...?"~ */ GOTO 3
  IF ~~ THEN REPLY #35929 /* ~"관두시오. 그럼 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0
  SAY #35930 /* ~사내는 계속 당신을 쳐다보며 고개를 끄덕인다. 당신은 그가 응답을 하기를 기다리나 그는 그냥 당신을 쳐다볼 뿐이다. 당신이 짜증을 내고 돌아서려고 할 때, 그의 몸에서 곰팡내가 나는 것 같다는 생각이 문뜩 든다. ~ */
  IF ~~ THEN REPLY #35931 /* ~가까이 가서 냄새를 맡는다.~ */ GOTO 4
  IF ~~ THEN REPLY #35932 /* ~그를 무시하고 떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #35933 /* ~당신은 자신이 어떤 발견을 할지도 모르는 채 사내에게 다가가 냄새를 맡는다. 그러자 곰팡내가 당시 코를 찌르는데, 그것은 시체안치소에서 맡은 적이 있는 냄새이다. 그것은 마법에 의해 보존된 시신의 냄새이다. ~ */
  IF ~  !Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35934 /* ~"당신은 좀비요, 그렇지 않소?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35935 /* ~"당신은 좀비요, 그렇지 않소?"~ */ DO ~SetGlobal("Dimtree_zombie","GLOBAL",1)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #35936 /* ~그는 당신을 보며 다시 천천히 고개를 끄덕인다. 그리고 나서는 다시 시선을 가게 주인에게로 돌린다. 이후 그는 그와 대화를 하려는 당신의 시도에 일체 반응하지 않는다. ~ */
  IF ~~ THEN REPLY #35937 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #35938 /* ~그는 계속해서 당신을 멍한 눈으로 쳐다본다. 그는 말을 하는 것이 무척 힘이 드는 듯 천천히 당신 질문에 대답을 하기 시작한다. 죽은 자와 대화를 할 수 있는 당신의 능력만이 당신으로 하여금 그의 말을 이해할 수 있게 해주고 있다. "그렇소... 나는... 딤트리."~ */
  IF ~~ THEN REPLY #35939 /* ~"당신은 왜 여기 있소, 딤트리?~ */ GOTO 7
  IF ~~ THEN REPLY #35940 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #35941 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #35942 /* ~딤트리는 가게 주인을 천천히 바라보면서 그를 향해 미약하게 손짓을 한다. 이것을 관심의 표시라고 착각한 가게 주인은 더욱더 열을 올리며 얘기를 계속한다. 딤트리는 다시 당신을 바라본다. "햄리스... 그는 말을 하오... 햄리스는 멈출 줄 모르오... 거리를 떠돈다오... 주인님을 화나게 하고, 모두를 화나게 하오... 주인님이 딤트리를 만들었소... 딤트리에게 햄리스와 말을 하라고 명령했소... 이제 햄리스는 가게에 머무르오... 주인님은 행복하오... 거리의 사람들도 행복하오. 딤트리는 슬프오..."~ */
  IF ~~ THEN REPLY #35943 /* ~"내가 당신을 돕기 위해 할 수 있는 일은 없겠소, 딤트리?"~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #35944 /* ~"당신에게 질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #35945 /* ~"안녕히 계시오, 딤트리."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #35946 /* ~그는 일단 멈추었다가 다시 느릿느릿하게 얘기를 하기 시작한다. 그의 목소리는 거의 애원하는 듯한 어조이다. "그렇소... 주인님을 찾으시오... 세바스챤...그에게 날 해방해 달라고 부탁... 제발..." 그는 잠시 햄리스 쪽으로 시선을 돌린다. "제발."~ */
  IF ~~ THEN REPLY #35947 /* ~"내가 그냥 당신의 비참한 삶을 끝내 주는 건 어떻겠소?"~ */ GOTO 9
  IF ~~ THEN REPLY #35948 /* ~"모르겠소... 생각해 보리다. 물어볼 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #35949 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #35950 /* ~딤트리는 간신히 눈에 띌 정도로 고개를 젓는다. "아니... 주인님이 되살릴 거요... 주인님에게 부탁을... 세바스챤... 제발." 그는 당신 대답을 기다린다.~ */
  IF ~~ THEN REPLY #35951 /* ~"물론이오, 딤트리. 당신을 위해 노력을 하리다."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~나는 좀비 딤트리를 돕기로 합의했다. 나는 세바스챤이라는 사람을 찾아내 그에게 딤트리를 현재 상태로부터 해방할 방법을 물어봐야야만 한다. ~ */ GOTO 10
  IF ~~ THEN REPLY #35952 /* ~"미안하오, 딤트리. 그건 내 일이 아니오."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #35953 /* ~"모르겠소... 생각해 보리다. 물어볼 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #35954 /* ~"안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #35956 /* ~좀비가 어찌나 기뻐하는지 당신은 그로부터 발산되는 안도감을 피부로 느낄 수 있을 정도이다. "딤트리... 고맙소, 친구..."~ */
  IF ~~ THEN REPLY #35957 /* ~"천만의 말씀이오. 물어볼 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #35958 /* ~"안녕히 계시오, 딤트리."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #35959 /* ~딤트리가 돌아서자 당신은 주변 공기에 감도는 실망감이 피부에 와닿는 듯한 느낌을 받는다. 그는 당신들이 대화할 동안에도 열변을 토하고 것을 한 순간도 멈추지 않은 가게 주인을 향해 고개를 다시 끄덕이기 시작한다. ~ */
  IF ~~ THEN REPLY #35960 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.1 8.1 9.2 10.0 13.2
  SAY #35961 /* ~그는 간신히 알아볼 정도로 미미하게 어깨를 으쓱한다. "아무 것도... 모르오... 딤트리를 소환... 주인님이... 어둠을 알았소... 평온과... 안식도... 그런데 햄리스가... 미안하오... 도와주시오... 그럴 수가 있다면..."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #35962 /* ~"세바스챤이 어디 있는지 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #35963 /* ~"알겠소... 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 22 14 16 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 13 // from:
  SAY #35964 /* ~이 키가 크고 수척한 사내는 아직도 가게 주인과 '대화'를 하고 있다. 하지만 얘기는 가게 주인 혼자서 다 하고 있다.~ */
  IF ~  Global("Dimtree_zombie","GLOBAL",0)
~ THEN REPLY #35965 /* ~"안녕하시오."~ */ GOTO 1
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
!Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35966 /* ~"그냥 인사를 하려고 했을 뿐이오... 안녕히 계시오."~ */ EXIT
  IF ~  GlobalGT("Dimtree_zombie","GLOBAL",0)
Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #35967 /* ~"질문할 것들이 좀 있소..."~ */ GOTO 12
  IF ~~ THEN REPLY #35968 /* ~그를 무시한다.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 16 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",3)
~ THEN BEGIN 14 // from:
  SAY #35969 /* ~당신이 다가가자 딤트리는 당신을 쳐다보려고 고개를 약간 돌린다. 당신은 주변 공기에서 그로부터 발산되는 기대감을 느낄 수가 있다. "당신... 주인님을 찾았소? 딤트리는 해방?"~ */
  IF ~~ THEN REPLY #35970 /* ~"세바스챤이 어디 있는지 아시오?"~ */ GOTO 15
  IF ~~ THEN REPLY #35971 /* ~"아직 아니오, 딤트리. 계속 노력하리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 14.0 21.0
  SAY #35972 /* ~그는 잠시 멈춘다. "모르오... 목소리를 기억하오... 여기 있으라고 명령했소... 걸으라고... 햄리스... 더 이상은... 미안하오."~ */
  IF ~~ THEN REPLY #35973 /* ~"알겠소. 그럼 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Release_Dimtree","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #35974 /* ~당신이 다가가자 딤트리는 당신을 쳐다보려고 고개를 약간 돌린다. 당신은 주변 공기에서 그로부터 발산되는 기대감을 느낄 수가 있다. "당신... 주인님을 찾았소? 딤트리는 해방?"~ */
  IF ~~ THEN REPLY #35975 /* ~"그렇소, 딤트리. 난 이제 당신을 해방할 방법을 아오."~ */ GOTO 17
  IF ~~ THEN REPLY #35976 /* ~"지금은 아니오. 이만 실례하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #35977 /* ~딤트리는 고개를 돌려 당신을 마주보며 당신을 향해 손짓한다. "제발 친구..."~ */
  IF ~~ THEN REPLY #35978 /* ~세바스챤이 가르쳐 준 단어들을 외운다.~ */ GOTO 18
  IF ~~ THEN REPLY #35979 /* ~"지금은 아니오. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #35980 /* ~당신은 잠시 멈추고 정신을 집중한 다음 세바스챤이 가르쳐 준 단어들을 조심스럽게 외운다. 그리고 나서는 손을 내밀어 딤트리의 이마를 가볍게 만진다.~ */
  IF ~~ THEN REPLY #35981 /* ~"편히 잠드시오, 딤트리."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",5)
Kill(Myself)
AddexperienceParty(4000)
~ JOURNAL #66526 /* ~나는 세바스챤에게서 배운 주문을 딤트리에게 사용했다. 그는 이제 안식을 얻었으며 더 이상 햄리스의 수다를 들을 필요가 없다. ~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #35982 /* ~좀비는 한숨을 쉬며 당신 발 아래에 쓰러진다. 그가 쓰러지기 전에 *고맙소, 친구*라고 한 것을 어렴풋이 들은 것 같다.~ */
  IF ~~ THEN REPLY #35983 /* ~떠난다.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 22 even though they appear after this state */
~  Global("Release_Dimtree","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #35984 /* ~딤트리는 고개를 돌려 당신을 마주본다. "당신... 제발 도와주시오... 세바스챤을 찾아서... 날 해방..."~ */
  IF ~~ THEN REPLY #35985 /* ~"그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~나는 좀비 딤트리를 돕기로 합의했다. 나는 세바스챤이라는 사람을 찾아내 그에게 딤트리를 현재 상태로부터 해방할 방법을 물어봐야야만 한다. ~ */ GOTO 21
  IF ~~ THEN REPLY #35986 /* ~"아니, 그건 내 문제가 아니오."~ */ EXIT
  IF ~~ THEN REPLY #35987 /* ~"모르겠소. 생각해 보리다. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0 22.0
  SAY #35989 /* ~좀비가 어찌나 기뻐하는지 당신은 그로부터 발산되는 안도감을 피부로 느낄 수 있을 정도이다. "딤트리... 고맙소, 친구..."~ */
  IF ~~ THEN REPLY #35990 /* ~"세바스챤은 어디 있소?"~ */ GOTO 15
  IF ~~ THEN REPLY #35991 /* ~"천만의 말씀이오. 안녕히 계시오."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Release_Dimtree","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #35992 /* ~딤트리는 고개를 돌려 당신을 마주본다. "왜 온 거요... 당신은 돕기 거절했소... 마음을 바꿨군... 세바스챤을 찾아서... 날 해방... 제발 ?"~ */
  IF ~~ THEN REPLY #35993 /* ~"그렇소, 당신을 돕겠소."~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Dimtree_1","GLOBALGood",1)
~ JOURNAL #35955 /* ~나는 좀비 딤트리를 돕기로 합의했다. 나는 세바스챤이라는 사람을 찾아내 그에게 딤트리를 현재 상태로부터 해방할 방법을 물어봐야야만 한다. ~ */ GOTO 21
  IF ~~ THEN REPLY #35994 /* ~"아니, 그건 내 문제가 아니오."~ */ EXIT
  IF ~~ THEN REPLY #35995 /* ~"모르겠소. 생각해 보리다. 안녕히 계시오."~ */ EXIT
END
