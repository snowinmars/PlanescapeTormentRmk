// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ko_KR\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48823 /* ~가시나무 가지로 만들어진 이 아치 아래의 공간은 사방이 거대한 벽으로 둘러싸인 큰 사막 도시를 보여주고 있는 것 같다... 이것이 래벌이 얘기한 감옥임에 틀림없다. ~ */
  IF ~  Global("Ravel_Curst_Portal","GLOBAL",1)
~ THEN REPLY #48824 /* ~새장처럼 팔로 몸을 감싼 후 전이문 속으로 뛰어든다.~ */ DO ~SetGlobal("to0700_Active","AR0610",1)
ClearActions(Player1)
ClearActions(Player2)
ClearActions(Player3)
ClearActions(Player4)
ClearActions(Player5)
ClearActions(Player6)
SetPortalCursor("NEExit",PORTAL_CURSOR_VISIBLE,FALSE)
SetPortalCursor("NEExit",PORTAL_ENABLED,FALSE)
SetPortalCursor("TO0700",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("TO0700",PORTAL_ENABLED,TRUE)
StartCutSceneMode()
StartCutSceneEx("0610cut3",FALSE)
~ EXIT
  IF ~~ THEN REPLY #48825 /* ~전이문을 그냥 내버려 둔다. ~ */ EXIT
END
