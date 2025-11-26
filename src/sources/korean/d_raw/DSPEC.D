// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~이 벌통 거주자는 다버스가 일하는 것을 지켜보고 있다. 그는 머리를 긁으며 당신 쪽으로 돌아선다. "난 그들이 이 건물에 도대체 무슨 짓을 하는지 알 수가 없소... 그들 다버스는 늘 건물을 부시고 또 다시 짓소... 내가 아는 한 아무런 이유도 없이."~ */
  IF ~~ THEN REPLY #9363 /* ~"관두시오, 그럼."~ */ EXIT
END
