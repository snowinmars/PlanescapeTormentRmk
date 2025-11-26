// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~은제 띠를 세공해 만든 망사에 박힌 이 불그스레한 오렌지색 돌은 따뜻한 오렌지색 빛으로 고동치고 있다. 받침대에는 '돌로라'라고 새겨져 있다. ~ */
  IF ~~ THEN REPLY #54095 /* ~떠난다.~ */ EXIT
END
