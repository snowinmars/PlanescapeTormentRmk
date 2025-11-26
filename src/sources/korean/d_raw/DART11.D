// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~이 그림은 밤하늘을 배경으로 거대한 화강암의 요새를 보여주고 있다. 몹시 추악하게 생긴 길고 낮은 건물로, 사방에 곁눈질하는 가고일들이 늘어서 있다. 그림의 오른쪽에는 진홍색과 보라색의 연기가 배후에서 소용돌이치고 있다. 이름표에는 '도서관'이라고만 적혀 있다. ~ */
  IF ~~ THEN REPLY #42678 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
