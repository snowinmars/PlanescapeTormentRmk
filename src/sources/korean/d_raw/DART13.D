// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~이 그림은 지하의... 희미하게 빛을 내고 있는 다양한 색깔의 거대한 버섯들로 가득 찬 거대한 동굴의 풍경을 묘사하고 있다. 이름표에는 '클랜게딘 아래의 골짜기'라고 적혀 있다.~ */
  IF ~~ THEN REPLY #42680 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
