// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNEXGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNEXGH~

IF ~~ THEN BEGIN 0 // from:
  SAY #40306 /* ~"아... 아파파... 바구일한테 물렸어... 너너무 아아파.."~ */
  IF ~~ THEN REPLY #40340 /* ~"이런... 별로 상태가 좋지 않은 것 같군..."~ */ EXIT
END
