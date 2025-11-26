// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2837 /* ~(일반 수집자 깡패는 아직 완성되지 않았음.)~ */
  IF ~~ THEN REPLY #2838 /* ~좋소. 당신에게 할 말... 또는 약탈할만한 물건이 생기면 다시 오겠소.~ */ EXIT
END
