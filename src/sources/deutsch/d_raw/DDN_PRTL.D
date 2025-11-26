// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~Dieser Gang führt nur ein kurzes Stück in die nördliche Mauer hinein und endet dann abrupt.~ */
  IF ~~ THEN REPLY #48504 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~Dieser Gang führt nur ein kurzes Stück in die nördliche Mauer hinein und endet dann abrupt.

Die Muffige Mary hat dir gesagt, daß du an dieser Stelle die Augen schließen und an den Schweigenden König denken sollst, bevor du hineingehst. Solange sie noch 'am Leben' ist, müßte dadurch ein Portal geöffnet werden, das in den Thronsaal des Schweigenden Königs führt.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~Versuch, das Portal zu aktivieren.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~Aktiviere das Portal.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~Aktiviere das Portal.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~Versuch, das Portal zu aktivieren.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~Geh weg, ohne das Portal zu aktivieren.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~Es geschieht nichts. Vielleicht ist die Muffige Mary tot...~ */
  IF ~~ THEN REPLY #48510 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~Nichts geschieht. Vielleicht hat Hargrimm nach deinem 'Eindringen' in den Thronsaal des Schweigenden Königs den Mechanismus des Portals zerstört oder geändert.~ */
  IF ~~ THEN REPLY #65505 /* ~Geh weg.~ */ EXIT
END
