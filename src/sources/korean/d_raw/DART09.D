// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~이 그림은 소용돌이치며 어둠 속으로 뻗어 가고 있는 무한히 긴 녹색 가스의 흐름을 보여주고 있다. 그림의 좌측 하단에는 황폐한 바위투성이의 평원이 보인다... 당신은 녹색 구름이 그 곳을 내려치려고 '머리'를 쳐들고 있다는 인상을 받는다. 이름표에는 '느'가가 파멸할 때의 해저오스'라고 적혀 있다. ~ */
  IF ~~ THEN REPLY #42673 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
