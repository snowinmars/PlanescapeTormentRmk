// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3402 /* ~나는 매장된 마을의 수집자들 중 하나예요. 나는 돌아다니며 파로드를 위해 시체와 아이템을 수집해요.~ */
  IF ~~ THEN REPLY #3403 /* ~선. 악. 총을 쥔 건 나라고. ~ */ EXIT
END
