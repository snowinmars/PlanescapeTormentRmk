// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDHTR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDHTR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3182 /* ~아! 나는 노예 상인들에게 납치되었어요! 날 구해주세요!~ */
  IF ~~ THEN REPLY #3183 /* ~내가 나타날 때까지 기다리시오!~ */ EXIT
END
