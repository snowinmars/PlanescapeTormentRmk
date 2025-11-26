// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYBGANG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYBGANG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46105 /* ~이 화난 것처럼 보이는 청년은 진짜 깡패라기 보다는 깡패처럼 보이려고 애쓰는 사람 같다. 그는 당신이 다가가자 능글맞게 웃는다. "'꺼져,' '얼간아!' '높은 친구들'하고 얘기하려면 하라고, 하지만 나는 너하고 '영창'하지 않을 거야."~ */
  IF ~~ THEN REPLY #46106 /* ~"에... 좋소. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #46107 /* ~떠난다.~ */ EXIT
END
