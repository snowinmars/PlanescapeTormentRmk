// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~한밤의 아무도 없는 해변을 묘사한 네 개의 그림의 세트이다. 그림 주변의 공기에서는 바닷물 냄새가 희미하게 나며, 그림 속의 바다는 어두운 해변으로 몰려와 휩쓸고 가는 것처럼 보인다. 이름표에는 '카라수트란 해안선'이라고 적혀 있다. ~ */
  IF ~~ THEN REPLY #42662 /* ~그림 냄새를 킁킁거리며 맡는다.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~그림을 만진다.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~당신은 무엇을 기대해야 할지 모르는 채 그림에 손을 갖다 댄다... 하지만 당신 손가락 아래로 느껴지는 것은 그림이 그려진 캔버스의 감촉뿐이다. ~ */
  IF ~~ THEN REPLY #42665 /* ~그림 냄새를 킁킁거리며 맡는다.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~떠난다.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~이 그림의 표면으로부터는 바다 냄새가 강하게 난다. ~ */
  IF ~~ THEN REPLY #42667 /* ~그림을 만진다.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~떠난다.~ */ EXIT
END
