// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~이 험상궂게 생긴 여인은 당신을 잠시 흘긋 본 후, 다시 무대에서 장광설을 계속 늘어놓는다. 그녀는 상인들과 통행인들이 내는 소음을 뚫고 시장 전체에 울려 퍼질 정도로 강렬한 목소리를 지니고 있다. ~ */
  IF ~~ THEN REPLY #9355 /* ~그녀를 그냥 내버려 둔다.~ */ EXIT
END
