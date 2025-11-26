// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVIRAGO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVIRAGO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2796 /* ~비라고는 아직 말을 할 수가 없다. 아마 그녀는 스크립트화된 시퀜스에서 소개될 것이다.~ */
  IF ~~ THEN REPLY #2797 /* ~좋소, 좋아! 빌어먹을.~ */ EXIT
END
