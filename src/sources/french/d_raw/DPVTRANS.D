// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPVTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPVTRANS~

IF ~  PartyHasItem("Crutch")
~ THEN BEGIN 0 // from:
  SAY #50995 /* ~Alors que tu t'approches de l'arche, elle commence à briller faiblement. Tu remarques que la béquille de Pharod émet une lueur similaire.~ */
  IF ~~ THEN REPLY #50996 /* ~Touche l'arche avec la béquille.~ */ DO ~SetPortalCursor("to0105",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0105",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #50997 /* ~Pars.~ */ EXIT
END
