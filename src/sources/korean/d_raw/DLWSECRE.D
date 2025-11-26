// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSECRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSECRE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3036 /* ~나는 비밀스러운 마계구 주민이오. 아무도 내 비밀을 빼앗아 갈 순 없소! 헐떡!~ */
  IF ~~ THEN REPLY #3037 /* ~XX같은 놈...~ */ EXIT
END
