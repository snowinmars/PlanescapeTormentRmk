// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOUBT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOUBT~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20725 /* ~이 오래된 시체의 뼈에는 살점이라곤 남아 있지 않다... 몇 조각의 해어진 천을 걸치고 있기는 하나, 그것들은 옷이라기보다는 장식품에 가깝다. 그는 생각에 잠겨 고개를 젓고 턱을 두드리면서 바닥을 쳐다보고 있다. ~ */
  IF ~~ THEN REPLY #21891 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #21892 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #21883 /* ~그는 생각에 잠겨 아무런 대답도 하지 않는다. ~ */
  IF ~~ THEN REPLY #21893 /* ~"난 '안녕하시오'라고 말했소."~ */ GOTO 2
  IF ~~ THEN REPLY #21894 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #21884 /* ~그는 올려다본다, 그리고 당신을 보자 한 줌의 먼지를 내뿜으며 탄식한다. "나는 생각할 것이 많소, 그러니 날 좀 그냥 내버려두시오."~ */
  IF ~~ THEN REPLY #21895 /* ~"내가 당신을 도울 수 있는 일은 없겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21896 /* ~"그렇지만 나는 당신에게 질문하고 싶은 것들이 있소."~ */ GOTO 3
  IF ~~ THEN REPLY #21897 /* ~"좋소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #21885 /* ~"그렇다면 그대는 헛수고를 한 셈이오. 내게는 당신이 원하는 답이 없소. 날 그냥 내버려두시오."~ */
  IF ~~ THEN REPLY #21898 /* ~"기다리시오.. 내가 당신을 도울 수 있는 일은 없겠소?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Doubtful_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #21899 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #21886 /* ~"아니오. 내려야할 어려운 결정이 있을 뿐이오."~ */
  IF ~~ THEN REPLY #21900 /* ~"그건 무슨 결단이오?"~ */ DO ~SetGlobal("Doubtful_Skel","GLOBAL",1)
~ JOURNAL #21902 /* ~나는 언데드로서의 삶을 포기하고 영원히 죽을 것인가에 대해 숙고하고 있는 스켈레톤과 이야기를 했다. 아마 소에고가 그와 애기를 나누고 싶어할 것이다.~ */ GOTO 5
  IF ~~ THEN REPLY #21901 /* ~"알겠소. 그럼 당신이 생각을 할 수 있도록 내버려 두도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21887 /* ~"이 곳에서의 내... '삶'을 계속할 것인가... 아니면 죽어서 얘기로 듣던 진정한 죽음을 맞이할 것인가..."~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21927 /* ~"진정한 죽음?"~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21928 /* ~"그것이 최선인지도 모르오. 모든 생명은 진정한 죽음을 추구해야 하오."~ */ GOTO 7
  IF ~~ THEN REPLY #21929 /* ~"난 당신이 삶을 포기할 이유는 없다고 생각하오."~ */ GOTO 7
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #21930 /* ~"내 생각으로는 당신이 삶에 대한 집착을 버릴 때가 된 것 같소."~ */ GOTO 7
  IF ~~ THEN REPLY #21931 /* ~"당신이 생각을 할 수 있도록 내버려 두도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #21888 /* ~"진정한 죽음은 일체의 열정이 없는 상태로, 이 존재의 그림자 너머의 진정한 삶이오. 우리 스스로를 해방시키기 위해 도달해야만 하는 곳이 바로 이곳이라고 하오."~ */
  IF ~~ THEN REPLY #21932 /* ~"난 당신이 삶을 포기할 이유는 없다고 생각하오."~ */ GOTO 7
  IF ~~ THEN REPLY #21933 /* ~"내 생각으로는 당신이 삶에 대한 집착을 버릴 때가 된 것 같소."~ */ GOTO 7
  IF ~~ THEN REPLY #21934 /* ~"당신이 생각을 할 수 있도록 내버려 두도록 하겠소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 5.2 5.3 6.0 6.1
  SAY #21889 /* ~"그대가 한 말을 고려해 보도록 하리다. 지금은 내가 생각을 할 수 있도록 나를 그냥 내버려두면 고맙겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #21935 /* ~떠난다.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 8 // from:
  SAY #21890 /* ~고개를 저으며 혼자서 중얼거리는 걸 볼 때 이 스켈레톤은 고민을 하고 있는 것 같다.~ */
  IF ~~ THEN REPLY #21936 /* ~"안녕하시오..."~ */ GOTO 1
  IF ~~ THEN REPLY #21937 /* ~스켈레톤을 그냥 내버려 둔다. ~ */ EXIT
END
