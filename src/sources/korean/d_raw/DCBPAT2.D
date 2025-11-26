// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3188 /* ~나 역시 그 좋은 바의 손님이오.~ */
  IF ~~ THEN REPLY #3189 /* ~그 곳은 정말 좋은 곳임에 틀림없소.~ */ EXIT
END
