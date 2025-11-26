// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3327 /* ~나는 적색 아비샤이요. 흑색하고는 크게 다르오. 정말이오. 아, 나 역시 당신을 죽이고 싶소.~ */
  IF ~~ THEN REPLY #3328 /* ~매료됨.~ */ EXIT
END
