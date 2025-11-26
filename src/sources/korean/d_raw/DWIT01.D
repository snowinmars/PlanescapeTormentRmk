// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43023 /* ~이 사람은 다양한 전투 기술을 훈련용 목제 마네킹을 상대로 연습하고 있다. 지금 그는 당신과 얘기하기에는 너무 바쁜 것 같다.~ */
  IF ~~ THEN REPLY #43024 /* ~떠난다.~ */ EXIT
END
