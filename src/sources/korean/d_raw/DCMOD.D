// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCMOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCMOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2905 /* ~나는 모드론 미로에 있는 보통 성능 로봇들 중 하나요. 나는 내가 아직 존재하는지조차 모르오. 아마 나는 대사에 불과한 존재이며 앞으로도 계속 그럴지 모르오.~ */
  IF ~~ THEN REPLY #2906 /* ~그 이상은 바랄 수도 없소. 안녕히 계시오.~ */ EXIT
END
