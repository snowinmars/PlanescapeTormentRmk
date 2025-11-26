// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSICK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSICK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3030 /* ~나는 병든 마계구 주민이오. 내게는 흥미로운 신상 이야기가 있으나 기침을 하느라 바빠 당신에게 들려줄 수가 없소.~ */
  IF ~~ THEN REPLY #3031 /* ~그럼 그게 최선일지도. ~ */ EXIT
END
