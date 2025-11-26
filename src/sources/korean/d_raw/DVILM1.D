// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILM1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILM1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3396 /* ~나는 매장된 마을의 수집자들 중 하나요. 나는 돌아다니며 파로드를 위해 시체와 아이템을 수집하오.~ */
  IF ~~ THEN REPLY #3397 /* ~자극적이군. ~ */ EXIT
END
