// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHIGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHIGH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2901 /* ~나는 모드론 미로가 침입자를 처리하기 위해 만들어 낸 고성능 로봇이오. 내게 대사가 있는지는 잘 모르겠으나, 만약 필요하다면 그 시발점은 여기 있소.~ */
  IF ~~ THEN REPLY #2902 /* ~그래, 얘기를 할 수 있어서 반가웠네. 자넨 잘 할 거야, 일단 디자이너가 프로그램을 마치면. ~ */ EXIT
END
