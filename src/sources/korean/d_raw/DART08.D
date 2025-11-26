// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34200 /* ~핏빛의 하늘을 배경으로 펼쳐지는 높고 어두운 절벽들의 그림이다. 절벽의 바위 사이에 사람들이 숨어 있는 것처럼 보이나, 당신이 눈을 가늘게 뜨고 그림을 자세히 보려고 하면, 그 때마다 그들은 자취를 감춘다. 이름표에는 '아웃랜드의 약탈자들'라고 적혀 있다. ~ */
  IF ~~ THEN REPLY #42672 /* ~떠난다.~ */ DO ~SetGlobal("View_Art_08","AR0608",1)
~ EXIT
END
