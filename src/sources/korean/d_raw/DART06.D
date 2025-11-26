// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~선명한 색상의 콜라주인 이 그림의 표면은 마치 비가 가볍게 내리는 날의 연못처럼 지속적으로 물결치고 있다. 이름표에는 '파동 연구 #7'이라고 적혀 있다.~ */
  IF ~~ THEN REPLY #42693 /* ~그림을 만진다.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~당신은 캔버스에 손바닥을 갖다 댄다... 당신은 파문 그 자체는 느낄 수가 없으나, 만지자마자 서늘하고 따끔따끔한 감각이 당신 손에 전해진다.~ */
  IF ~~ THEN REPLY #42698 /* ~떠난다.~ */ EXIT
END
