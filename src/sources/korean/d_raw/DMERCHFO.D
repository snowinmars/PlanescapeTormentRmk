// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHFO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHFO~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9368 /* ~안색이 자줏빛인 노파는 주변의 사람들을 향해 외치고 있다. 당신이 다가가자 그녀는 죽은 쥐와 새들로 보이는 것들을 손에 한 줌 쥐고 당신을 향해 미소짓는다. "배가 고프시오?"~ */
  IF ~~ THEN REPLY #9369 /* ~"오늘은 사양하겠소,고맙소."~ */ EXIT
END
