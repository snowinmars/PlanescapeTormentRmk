// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~Du näherst dich dem Ort des Portals, von dem der Junge, Lazlo, gesprochen hat. Du beginnst, die Unterhaltung mit ihm in deinem Kopf wiederabzuspielen. "Vielleicht ist das Geheimnis, wie man hineinkommt, daß man nicht hineinkommen will...", hörst du dich selbst sagen.~ */
  IF ~~ THEN REPLY #62299 /* ~Unterdrück jeglichen Wunsch, den Turm zu betreten.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~Geh weg.~ */ EXIT
END
