// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2798 /* ~떠돌이 모드론~ */
  IF ~~ THEN REPLY #2799 /* ~스켈레톤 상인~ */ EXIT
END
