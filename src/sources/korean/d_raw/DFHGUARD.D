// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~하모니움 경비병이 보인다. 그녀는 담당 구역을 순찰하면서 주위를 조심스럽게 살펴보고 있다. 그녀는 당신과 얘기할 생각이 없는 듯하다.~ */
  IF ~~ THEN REPLY #37757 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END
