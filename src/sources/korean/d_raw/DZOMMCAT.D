// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3343 /* ~나는 지하 묘지를 가득 채우고 있는 "썩는 무리"의 일원이오. 나는 크리스 아벨론처럼 비틀거리며 일을 하오~ */
  IF ~~ THEN REPLY #3344 /* ~당신 냄새도 그와 비슷하오.~ */ EXIT
END
