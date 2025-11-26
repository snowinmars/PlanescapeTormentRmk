// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : BEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~BEAD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48936 /* ~작고 깨지기 쉬운 유리알이다. 안을 들여다 보니 다양한 색깔의 안개 같은 것들이 소용돌이치는 것이 보인다. ~ */
  IF ~~ THEN REPLY #48937 /* ~유리알을 부순다.~ */ DO ~SetPortalCursor("to0101",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0101",PORTAL_ENABLED,TRUE)
DestroyPartyItem("VKey",TRUE)
~ EXIT
  IF ~~ THEN REPLY #48938 /* ~유리알을 치운다.~ */ EXIT
END
