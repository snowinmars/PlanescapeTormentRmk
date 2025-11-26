// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCORNUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCORNUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3331 /* ~그르르. 난 코누곤. 난 세다고, 난 정말세다고.~ */
  IF ~~ THEN REPLY #3332 /* ~나도. 만나서 반갑소. ~ */ EXIT
  IF ~~ THEN REPLY #3520 /* ~당신은 더 똑똑해야 하는 것 아니오? 내 말은 당신은 수천 년 동안 사악과 지성을 갈고 닦은 상급 마족이 아니냐는 얘기요.~ */ GOTO 1
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.1
  SAY #3521 /* ~에... 그건 그렇소. 하지만 촌뜨기들을 놀라게 하는 데는 그냥 "그르르"하는 편이 더 낫소.~ */
  IF ~~ THEN EXIT
END
