// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34207 /* ~은제 띠를 세공해 만든 망사에 박힌 이 푸르스름한 자주색 돌은 부드러운 라벤더색 빛으로 고동치고 있다. 받침대에는 '비비안'라고 새겨져 있다. ~ */
  IF ~~ THEN REPLY #54098 /* ~떠난다.~ */ EXIT
END
