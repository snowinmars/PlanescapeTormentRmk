// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~아무리 잡아당기고 비틀어 봐도 이 문은 열릴 생각을 하지 않는다. 뭔가가 당신에게 문을 열려면 특별한 열쇠가 필요하다고 말해주고 있다.~ */
  IF ~~ THEN REPLY #61266 /* ~떠난다.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~당신이 다가가자 트리어스가 당신에게 준 사슬 고리가 뜨거워지기 시작한다. 가시가 달린 이 문의 테두리에서 빛이 반짝이기 시작한다 - 전이문이 기다리고 있다. ~ */
  IF ~~ THEN REPLY #61268 /* ~전이문을 작동시킨다.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~떠난다.~ */ EXIT
END
