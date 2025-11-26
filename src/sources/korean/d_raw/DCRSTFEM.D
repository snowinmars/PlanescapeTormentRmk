// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~얼굴을 진뜩 찌푸린 청년이 보인다. 그는 스스로에게 중얼거리고 있으며, 뭔가에 몰두한 듯하다.~ */
  IF ~~ THEN REPLY #3173 /* ~"안녕하시오."~ */ EXIT
END
