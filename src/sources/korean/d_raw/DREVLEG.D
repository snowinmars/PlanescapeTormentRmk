// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREVLEG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DREVLEG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2978 /* ~나는 '일반적인' 혁명가 연맹 멤버요. 하지만 실제로 우리는 모두 각기 고유한 개체요."~ */
  IF ~~ THEN REPLY #2979 /* ~그래, 우리들 모두 마찬가지요. 안녕히 계시오."~ */ EXIT
END
