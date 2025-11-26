// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~Tu as beau tout essayer, impossible d'ouvrir cette porte. Quelque chose te dit que tu vas avoir besoin d'une clé spéciale pour l'ouvrir.~ */
  IF ~~ THEN REPLY #61266 /* ~Pars.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~Alors que tu t'approches de la porte, le morceau de chaine que Trias t'a mis dans les mains commence à chauffer. La porte barbelée vacille légèrement sur les côtés - un portail se cache ici.~ */
  IF ~~ THEN REPLY #61268 /* ~Active le portail.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~Pars.~ */ EXIT
END
