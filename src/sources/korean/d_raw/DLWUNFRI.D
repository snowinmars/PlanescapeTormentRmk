// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWUNFRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWUNFRI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3034 /* ~나는 불친절한 마계구 주민이오. 내 앞에서 꺼지시오.~ */
  IF ~~ THEN REPLY #3035 /* ~그래, 너도 엿먹으라고, 친구.~ */ EXIT
END
