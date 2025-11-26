// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~"부탁이오. 나는 해야 할 일이 있소. 날 좀 그냥 내버려 두면 고맙겠소. 안녕히 가시오."~ */
  IF ~~ THEN REPLY #50861 /* ~떠난다.~ */ EXIT
END
