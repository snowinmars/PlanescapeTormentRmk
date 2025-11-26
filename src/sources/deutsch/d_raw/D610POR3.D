// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D610POR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D610POR3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #48823 /* ~Der Bereich unter diesem dornigen Bogen scheint eine große Wüstenstadt darzustellen, die von riesigen Mauern eingefaßt ist.... Dies muß das Gefängnis sein, von dem Ravel gesprochen hat. ~ */
  IF ~  Global("Ravel_Curst_Portal","GLOBAL",1)
~ THEN REPLY #48824 /* ~Verschränk deine Arme so, daß sie eine Art Käfig um deinen Körper bilden, und spring durch das Portal.~ */ DO ~SetGlobal("to0700_Active","AR0610",1)
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
  IF ~~ THEN REPLY #48825 /* ~Laß das Portal in Ruhe.~ */ EXIT
END
