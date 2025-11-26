// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~Ta wnęka wychodzi z północnej ściany jedynie na kilkadziesiąt centymetrów, po czym nagle się kończy.~ */
  IF ~~ THEN REPLY #48504 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~Ta wnęka wychodzi z północnej ściany jedynie na kilkadziesiąt centymetrów, po czym nagle się kończy.

To tutaj, według Czerstwej Mary, powinieneś zamknąć oczy i pomyśleć o Milczącym Królu. Dopóki ona 'żyje', powinno to uruchamiać portal wiodący do sali tronowej Milczącego Króla.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~Spróbuj uruchomić portal.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~Uaktywnij portal.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~Uaktywnij portal.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~Spróbuj uruchomić portal.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~Odejdź - nie uruchamiając portalu.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~Nic się nie dzieje. Być może Czerstwa Mary już nie żyje...~ */
  IF ~~ THEN REPLY #48510 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~Nic się nie dzieje. Być może po twoim 'włamaniu' do sali tronowej Milczącego Króla, Hargrimm zniszczył lub zmienił naturę portalu.~ */
  IF ~~ THEN REPLY #65505 /* ~Odejdź.~ */ EXIT
END
