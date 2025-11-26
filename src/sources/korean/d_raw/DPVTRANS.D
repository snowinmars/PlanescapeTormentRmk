// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #50995 /* ~당신이 다가가자 아치가 빛나기 시작한다. 당신은 파로드의 지팡이 역시 비슷한 빛을 낸다는 것을 눈치챈다. ~ */
  IF ~~ THEN REPLY #50996 /* ~아치를 지팡이로 건드린다. ~ */ DO ~SetPortalCursor("to0105",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0105",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #50997 /* ~떠난다.~ */ EXIT
END
