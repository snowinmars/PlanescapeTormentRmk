// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~은제 띠를 세공해 만든 망사에 박힌 이 투명한 돌은 안쪽으로부터 나오는 밝은 빛으로 고동치고 있다. 받침대에는 '이브즈'라고 새겨져 있다.~ */
  IF ~~ THEN REPLY #54093 /* ~떠난다.~ */ EXIT
END
