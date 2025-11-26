// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCMO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCMO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9364 /* ~이 빨간 얼굴의 노인은 주변의 사람들을 향해 외치고 있다. 당신이 다가가자 그는 희망을 가지고 당신을 바라본다. "잠깐만 시간... 또는 동전을 내주시오... 시길의 이쪽에서 가장 좋은 물건들이 있소."~ */
  IF ~~ THEN REPLY #9365 /* ~"내가 상점에 대해 롭 할러웨이와 얘기한 후 당신이 어떤 상품을 가지고 있는지 봅시다."~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9366 /* ~"흠. 그와 얘기한 후 다시 오시오."~ */
  IF ~~ THEN REPLY #9367 /* ~"그러리다."~ */ EXIT
END
