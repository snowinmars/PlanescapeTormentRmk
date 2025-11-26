// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~은제 띠를 세공해 만든 망사에 박힌 이 우중충한 흰색 돌은 빛으로 고동치고 있다. 한때 그 받침대에는 뭔가가 새겨져 있었던 것 같으나, 누군가가 문질러서 지워 버렸다. ~ */
  IF ~~ THEN REPLY #54102 /* ~떠난다.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~나는 매음굴 지하에서 여러 개, 정확하게는 10개의 빛나는 돌이 있는 숨겨진 방을 발견했다. 그것들 중 하나는 텅 비어 있었다... 그 바닥에는 한때 무엇인가 새겨져 있었으나 누군가가 문질러서 없앤 것 같다. ~ */ EXIT
END
