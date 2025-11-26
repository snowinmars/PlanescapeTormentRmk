// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGITHANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGITHANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2915 /* ~나는 플레이어를 함정에 빠뜨리려는 기스양키 사기꾼이오.~ */
  IF ~~ THEN REPLY #2916 /* ~그럼 당신 가까이에는 가지 않도록 하겠소. 안녕히 계시오.~ */ EXIT
END
