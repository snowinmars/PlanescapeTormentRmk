// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43015 /* ~이 사람은 방에 널린, 종들이 잔뜩 달린 훈련용 마네킹들을 별 생각없이 살펴보고 있다. 당신이 다가가자 그는 당신을 쳐다본다. "뭐요?"~ */
  IF ~~ THEN REPLY #43016 /* ~"이 곳은 어떤 곳이오?"~ */ GOTO 1
  IF ~~ THEN REPLY #43017 /* ~"아무 것도 아니오. 그냥 지나던 길이었소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #43018 /* ~"아곳은 도둑 훈련실이오. 저기 있는 마네킹들은 지갑의 끈을 자르고 그 내용물을 꺼내는 훈련을 하기 위한것들이오."~ */
  IF ~  Global("Eli","GLOBAL",0)
~ THEN REPLY #43019 /* ~"강사는 어디 있소?"~ */ DO ~SetGlobal("Eli","GLOBAL",1)
~ JOURNAL #66872 /* ~나는 시 공회당의 도둑 훈련실에 들어갔으나 강사는 없었다. 훈련중이던 도둑들 중 하나가 내게 강사인 엘리 해블락은 최근 공회당을 뛰어나갔으며, 아마 사무구 어딘가에 있을 것이라고 말해주었다. 그가 묘사한 바에 의하면 엘리 해블락은 보통 키에 말랐으며, 검은 색 머리칼과 가무잡잡한 피부를 지닌 날카로운 인상의 사내라고 한다. ~ */ GOTO 2
  IF ~  GlobalGT("Eli","GLOBAL",0)
GlobalLT("Eli","GLOBAL",3)
~ THEN REPLY #66873 /* ~"강사는 어디 있소?"~ */ GOTO 2
  IF ~~ THEN REPLY #43020 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #43021 /* ~"그는 아마 지금쯤 이 구역 어딘가를 떠돌고 있을 거요... 누군가가 그를 화나게 했고, 그래서 그는 맹렬한 기세로 시 공회당을 뛰쳐나갔소. 그의 이름은 해블락. 엘리 해블락이오. 그는 마르고 보통 키에 검은 머리와 가무잡잡한 피부를 지니고 있으며, 스마트하게 생겼소."~ */
  IF ~~ THEN REPLY #43022 /* ~"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."~ */ EXIT
END
