// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~Nieważne jak mocno napierasz, czy przekręcasz tę bramę, pozostaje ona zamknięta. Coś ci mówi, że będziesz potrzebował do niej specjalnego klucza.~ */
  IF ~~ THEN REPLY #61266 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~Gdy zbliżasz się do drzwi, ogniwo łańcucha, które Trias wcisnął ci w dłonie zaczyna się rozgrzewać. Na skraju kolczastej bramy dostrzegasz ledwo widoczne migotanie - czeka tam portal.~ */
  IF ~~ THEN REPLY #61268 /* ~Uaktywnij portal.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~Odejdź.~ */ EXIT
END
