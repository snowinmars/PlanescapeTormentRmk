// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9350 /* ~이 남자는 시장의 진열대에 전시된 상품들을 구경하는 데 정신이 팔린 듯하다. 그는 당신이 다가가도 눈길 한 번 주지 않는다. ~ */
  IF ~~ THEN REPLY #9351 /* ~"어... 귀찮게 해서 미안하오."~ */ EXIT
END
