// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUSEME.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUSEME~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~이 노인은 비참한 표정으로 자신의 맥주 조끼를 쳐다보고 있다. 그 찌그러진 머그는 범상치 않은 물건으로, 기이한 룬들과 수염이 난 얼굴들이 얇게 새겨져 있으며 얇은 서리의 막으로 덮여 있다. 당신이 다가가자 그는 올려다 본다. "안녕하시오..." 그는 약간 취한 것 같다."~ */
  IF ~~ THEN REPLY #3023 /* ~악의의 문신~ */ EXIT
  IF ~~ THEN REPLY #7234 /* ~"뭐가 잘못되었소?"~ */ EXIT
END
