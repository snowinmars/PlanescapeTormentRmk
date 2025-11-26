// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARCK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARCK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3071 /* ~나는 세 얼굴의 작켈이오. 당신은 날 셋 만나고 당신이 내게 사주는 음료에 바탕을 둔 퍼즐을 풀게 될 거요. 혹시 누가 아오? 내가 당신에게 멋진 물건을 줄지. ~ */
  IF ~~ THEN REPLY #3368 /* ~아마? 만약 주지 않으면 아마 내가 당신의 쥐 같고, 좀비화 되었으며, 멍청한 인간 얼굴을 두들길 거요.~ */ EXIT
  IF ~~ THEN EXIT
END
