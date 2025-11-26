// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAPPRENT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAPPRENT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51175 /* ~그는 현재 하고 있는 일에 집중하고 있는 것 같다. 그를 방해하지 않는 게 좋을 듯하다.~ */
  IF ~~ THEN REPLY #51176 /* ~떠난다.~ */ EXIT
END
