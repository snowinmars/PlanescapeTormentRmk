// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~당신이 다가오자 이 명랑한 사내는 즐겁게 인사를 한다. "내 카페에 오신 것을 환영하오, 손님. 무엇을 드시겠소? 와인은 어떻겠소?"~ */
  IF ~~ THEN REPLY #50866 /* ~"와인은 필요없소, 하지만 질문할 것이 좀 있소..."~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~"아무 것도 아니오. 고맙소. 안녕히 계시오."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~남자는 난감한 표정을 짓는다. "정말 죄송하오, 하지만 마실 것의 제공하는 일 이외에는 일체 상관하지 않는 것이 내 경영 방침이오. 대화를 원한다면 다른 곳에 가보셔야 할 것이오. 정말 아무 것도 드시지 않겠소? 빵과 치즈라도 드시는 게 어떻겠소?"~ */
  IF ~~ THEN REPLY #50869 /* ~"아니, 아무 것도 필요없소. 안녕히 계시오."~ */ EXIT
END
