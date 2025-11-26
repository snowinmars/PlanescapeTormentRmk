// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~이 사람은 당신을 보고 다소 놀란 듯하다. "이상하군... 분명히 문을 잠갔는데... 어쨌든 빨리 내 방에서 나가 주시면 고맙겠소."~ */
  IF ~~ THEN REPLY #66629 /* ~"물론이오. 안녕히 계시오."~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~"난 내가 원할 때 떠나겠소. 안녕히 계시오."~ */ EXIT
END
