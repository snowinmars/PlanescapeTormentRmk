// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKELCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~SKELCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3345 /* ~나는 하그림의 스켈레톤 제자들 중 하나요. 우리는 죽은 자들을 애도하고 그들의 희생을 기리오.~ */
  IF ~~ THEN REPLY #3346 /* ~그럼 당신들에게 맡기리다, 해골 양반들. ~ */ EXIT
END
