// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3333 /* ~게임 안에서 크래니움 랫과 대화를 하는 것이 가능할 수도 있다. 이 템플레이트는 그럴 경우를 대비한 것이다.~ */
  IF ~~ THEN REPLY #3334 /* ~편리하다. ~ */ EXIT
END
