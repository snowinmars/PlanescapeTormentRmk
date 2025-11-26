// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMALE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2895 /* ~"안녕하시오..."~ */
  IF ~~ THEN REPLY #2896 /* ~그를 그냥 내버려 둔다.~ */ EXIT
END
