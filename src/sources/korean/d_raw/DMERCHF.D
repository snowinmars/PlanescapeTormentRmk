// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~이 여자는 당신이 다가가자 당신을 살펴본다, 그리고 엉덩이에 손을 얹고 조롱을 한다. "별로 잘생기질 못했군요. 혹시 떠돌이 땜장이로부터 물건을 살 돈은 있는 건가요?"~ */
  IF ~~ THEN REPLY #9373 /* ~"관심없다, 이 년아."~ */ EXIT
END
