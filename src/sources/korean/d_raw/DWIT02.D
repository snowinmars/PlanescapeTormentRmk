// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43025 /* ~이 사람은 방금 힘든 운동을 끝낸 듯 숨을 거칠게 쉬고 있으며, 온몸이 땀으로 젖어 있다. 당신이 다가가자 그들은 고개를 돌린다. "뭐요?"~ */
  IF ~~ THEN REPLY #43026 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #43027 /* ~"아무 것도 아니오. 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43028 /* ~그들은 훈련용 마네킹을 가리킨다. "전사 훈련실이오."~ */
  IF ~  Global("Qui_Sai","GLOBAL",0)
~ THEN REPLY #43029 /* ~"강사는 어디 있소?"~ */ DO ~SetGlobal("Qui_Sai","GLOBAL",1)
~ JOURNAL #66874 /* ~나는 시 공회당의 전사 훈련실에 들어갔으나 강사는 없었다. 훈련생들 중 하나가 강사인 퀴-사이는 공회당의 어딘가에 있을 것이며, 그의 피부는 회색 돌이기 때문에 찾기 쉬울 것이라고 말해주었다. ~ */ GOTO 2
  IF ~  GlobalGT("Qui_Sai","GLOBAL",0)
GlobalLT("Qui_Sai","GLOBAL",4)
~ THEN REPLY #66875 /* ~"강사는 어디 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #43030 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43031 /* ~"퀴-사이?" 그는 이마에서 땀을 닦아 내며 어깨를 으쓱한다. "아마 시 공회당 어딘가에 있을 거요. 그는 알아보기 쉽소... 그의 피부는 회색 돌 같소."~ */
  IF ~~ THEN REPLY #43032 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
