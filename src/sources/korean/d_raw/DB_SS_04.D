// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~은제 띠를 세공해 만든 망사에 박힌 이 투명하고, 푸르스름한 흰색 돌은 부드러운 푸른 빛으로 고동치고 있다. 받침대에는 '케사이-세리스'라고 새겨져 있다. ~ */
  IF ~~ THEN REPLY #54096 /* ~떠난다.~ */ EXIT
END
