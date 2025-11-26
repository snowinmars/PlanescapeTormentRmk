// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~Výklenek vede jenom pár stop do severní zdi.~ */
  IF ~~ THEN REPLY #48504 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~Výklenek vede jenom pár stop do severní zdi.

Tady na tomhle místě máš podle Ošuntělé Mary zavřít oči a myslet na Tichého Krále, než vejdeš. Dokud je Mary "naživu", mělo by to aktivovat portál do trůnní komnaty.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~Zkus aktivovat portál.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~Aktivuj portál.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~Aktivuj Portál.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~Skus aktivovat portál.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~Odejdi, nezkoušej portál aktivovat.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~Nic se nestalo. Možná je Mary mrtvá...~ */
  IF ~~ THEN REPLY #48510 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~Nic se nestalo. Asi kvůli tvému 'vniknutí' do trůnního sálu Tichého Krále, Hargrimm zničil anebo změnil podstatu portálu.~ */
  IF ~~ THEN REPLY #65505 /* ~Odejdi.~ */ EXIT
END
