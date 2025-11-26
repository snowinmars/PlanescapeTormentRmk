// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBRBGATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBRBGATE~

IF ~  Global("Outland_Portal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #61265 /* ~Cloumal jsi a kopal co ti síly stačily, ale brána zůstala zavřená. Na to abys otevřel tyhle dveře, budeš nejpíš potřebovat speciání klíč.~ */
  IF ~~ THEN REPLY #61266 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Outland_Portal","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #61267 /* ~Když jsi přistoupil k bráně, část řetězu kterou ti Trias vtiskl do dlaně ze začala zahřívat. Všiml sis zvláštního mihotání po stranách ostnaté brány - je tam portál.~ */
  IF ~~ THEN REPLY #61268 /* ~Aktivuj portál.~ */ DO ~SetPortalCursor("to1100",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to1100",PORTAL_ENABLED,TRUE)
SetDoorLocked("ar702d01",FALSE)
OpenDoor("ar702d01")
~ EXIT
  IF ~~ THEN REPLY #61270 /* ~Odejdi.~ */ EXIT
END
