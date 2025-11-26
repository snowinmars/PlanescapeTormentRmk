// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAUNT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAUNT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2929 /* ~나는 시길과 그 이외의 지역을 돌아다니게 될지도 모르는 유령이오. 내가 실제로 사용될 지는 나도 모르겠소.~ */
  IF ~~ THEN REPLY #2930 /* ~삶은 너무도 불확실하오... 그리고 죽고 나서도 상황은 별로 나아지지 않소.~ */ EXIT
END
