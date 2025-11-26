// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #51323 /* ~당신은 통로 아래의 공간이 반짝이기 시작하는 것을 눈치챈다. 파로드의 지팡이 역시 다시 빛나기 시작한다.~ */
  IF ~~ THEN REPLY #51325 /* ~통로를 지팡이로 건드린다. ~ */ DO ~SetPortalCursor("to0110",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0110",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #51324 /* ~떠난다.~ */ EXIT
END
