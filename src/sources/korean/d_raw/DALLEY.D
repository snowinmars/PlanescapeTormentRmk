// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALLEY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DALLEY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2877 /* ~나는 마뭇거리는 탄식의 골목이오. 나는 너무 커서 대문자로만 말하오.~ */
  IF ~~ THEN REPLY #2878 /* ~말해줘 고맙소. 당신이 완성되면 돌아오겠소.~ */ EXIT
END
