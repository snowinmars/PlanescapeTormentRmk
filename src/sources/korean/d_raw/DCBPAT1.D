// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3186 /* ~나는 커스트의 바 손님이오. 바 이름은 아마 나중에 바뀔 거요.~ */
  IF ~~ THEN REPLY #3187 /* ~좋소, 좋아. ~ */ EXIT
END
