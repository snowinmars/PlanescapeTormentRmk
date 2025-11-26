// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTIL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2966 /* ~나는 당신이 인벤토리에 넣고 다닐 수 있는 사악한 주문책이오.~ */
  IF ~~ THEN REPLY #2967 /* ~사악이라고 말했나? 주문이라고 말했나? 내가 바로 여기 있네! 그 다음에 난 사라지지.~ */ EXIT
END
