// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAPGOOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAPGOOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2839 /* ~우리는 쓰레기 굴과 그 아래에 있는 매장된 마을로 통하는 문들을 지키는 형제들이오. 당신은 우리와 싸우거나 우리를 속여서 통과할 수가 있소."~ */
  IF ~~ THEN REPLY #2840 /* ~흥미롭군. 그것이 디자이너에 의해 게임에 반영되는 것이 기다려지는군. 안녕, 친구들. ~ */ EXIT
END
