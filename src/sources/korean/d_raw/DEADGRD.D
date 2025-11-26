// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEADGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DEADGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #52774 /* ~피투성이가 되어 쓰러져 있는 커스트의 정예병이 보인다. 그의 갑옷은 무참할 정도로 파괴되었으며, 그 밑의 살은 마치 태양에 천 번은 그을린 것처럼 시꺼멓게 탔다. 그는 당신을 보자 엉망이 된 얼굴을 쳐들고는 숨을 헐떡거린다. "디바는... 강대하오. 그를 이길 수 있다는... 확신이 서기 전에는 들어가지 마시오." 그는 조용히 절명한다.~ */
  IF ~~ THEN EXIT
END
