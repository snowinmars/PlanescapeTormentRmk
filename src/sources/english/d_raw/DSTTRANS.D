// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~You approach the location of the portal that the boy, Lazlo, spoke of. You begin to replay your conversation with him in your head. "Maybe the secret to getting in is to not want to get in..." You hear yourself say.~ */
  IF ~~ THEN REPLY #62299 /* ~Suppress any desire to enter the tower.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~Leave.~ */ EXIT
END
