// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARTPTRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DARTPTRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50864 /* ~"미안하오, 하지만 나는 미술품을 감상하러 여기 온 것이지, 알지도 못하는 사람하고 얘기를 하려고 온 것이 아니오. 날 좀 그냥 내버려 두면 고맙겠소... 안녕히 가시오."~ */
  IF ~~ THEN REPLY #50865 /* ~떠난다.~ */ EXIT
END
