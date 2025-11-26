// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~당신은 래즐로가 말한 전이문이 있는 곳에 가까이 다가간다. 당신은 그와 나눈 대화를 머릿속에서 재생하기 시작한다. "아마 들어가는 방법의 비밀은 들어가기를 원하지 않는 데..." 당신은 자신이 혼잣말을 하는 것을 듣는다.~ */
  IF ~~ THEN REPLY #62299 /* ~탑에 들어가려는 어떠한 욕구도 억제한다.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~떠난다.~ */ EXIT
END
