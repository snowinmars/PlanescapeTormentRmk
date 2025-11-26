// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFANE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFANE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2931 /* ~나는 깡패들의 아파트에 있는 굶주려 짖는 개 갱단의 리더인 훼인이오. 나는 사람을 물어뜯소. 물어 뜯는다고!~ */
  IF ~~ THEN REPLY #2932 /* ~너희들 카오시텍츠는 모두 마찬가지야. 짖기만 했지 매운 맛은 없거든. ~ */ EXIT
END
