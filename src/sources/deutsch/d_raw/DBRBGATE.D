// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~So sehr du auch am Tor zerrst und rüttelst, es bleibt fest verschlossen. Irgend etwas sagt dir, daß du für diese Tür einen besonderen Schlüssel brauchst.~ */
  IF ~~ THEN REPLY #61266 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~Als du auf die Tür zugehst, wird das Kettenglied, das Trias dir in die Hand gedrückt hat, langsam heiß. Um die Ränder des Stacheltors siehst du ein bedeutungsvolles Flackern: Hier erwartet dich ein Portal.~ */
  IF ~~ THEN REPLY #61268 /* ~Geh durch das Portal.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~Öffne statt dessen die Tür.
Geh weg.~ */ EXIT
END
