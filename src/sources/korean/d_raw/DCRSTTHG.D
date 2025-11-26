// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~어울리지 않은 옷을 입은 청년이 보인다. 그는 당신이 다가가자 지루하다는 듯이 쳐다본다.~ */
  IF ~~ THEN REPLY #3165 /* ~"안녕하시오."~ */ EXIT
END
