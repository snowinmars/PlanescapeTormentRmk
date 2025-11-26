// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVERW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVERW~

IF ~~ THEN BEGIN 0 // from:
  SAY #42765 /* ~아치는 작은 빌딩 쪽으로 고작 몇 인치 들어간 곳부터 단단한 쓰레기의 벽으로 막혀 있다. 쓰레기는 어찌나 단단히 뭉쳐져 있는지 마치 돌과 모르타르로 만든 벽 같다. ~ */
  IF ~~ THEN REPLY #42766 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42768 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42769 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #42772 /* ~~ */
  IF ~~ THEN EXIT
END
