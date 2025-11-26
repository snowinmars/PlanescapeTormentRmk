// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3329 /* ~나는 '녹색' 아비샤이요. 내 자신을 쳐다보면 메스꺼워지오.~ */
  IF ~~ THEN REPLY #3330 /* ~나도. 아니, 내 자신 말이오. ~ */ EXIT
END
