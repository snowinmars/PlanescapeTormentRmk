// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~"나는 시 공회당에 있는 '일반적인' 센이이트들 중 하나요. 반가게 되어 반갑소."~ */
  IF ~~ THEN REPLY #2986 /* ~"당신을 떠나게 되어 기쁘오."~ */ EXIT
END
