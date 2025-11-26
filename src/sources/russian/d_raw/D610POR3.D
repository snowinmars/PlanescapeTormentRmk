// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48823 /* ~Похоже, эта ежевичная арка открывает вид на крупный город в пустыне, окруженный высокими стенами... Должно быть, это и есть тюрьма, о которой говорила Равель.~ */
  IF ~  Global("Ravel_Curst_Portal","GLOBAL",1)
~ THEN REPLY #48824 /* ~Обхватить себя руками наподобие клетки и шагнуть в портал.~ */ DO ~SetGlobal("to0700_Active","AR0610",1)
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
  IF ~~ THEN REPLY #48825 /* ~Оставить портал в покое.~ */ EXIT
END
