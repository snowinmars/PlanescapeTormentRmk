// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34202 /* ~이 그림은 반도, 또는 거대한 둑 뒤로 지고 있는 불그스레한 오렌지색 태양을 배경으로 해안의 정경을 묘사하고 있다. 그 정경은 별로 독창적이지는 않으나 놀랄 만큼 아름답다. 이 그림은 수면에 반사되어 아름답게 빛나는 석양의 일광을 완벽하게 담아냈다, 하지만 그림 속의 태양을 너무 오래 쳐다보면 눈이 아프다. 이름표에는 '탈라시아의 해면'이라고 적혀 있다.~ */
  IF ~~ THEN REPLY #42674 /* ~그림을 만진다.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42675 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_10","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42676 /* ~기묘하게도 그림의 표면에는 전혀 유별난 구석이 없다.~ */
  IF ~~ THEN REPLY #42677 /* ~떠난다.~ */ EXIT
END
