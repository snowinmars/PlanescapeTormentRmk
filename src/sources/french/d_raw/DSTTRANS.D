// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSTTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSTTRANS~

IF ~  Global("Know_Tower_Key","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #62298 /* ~Tu te diriges vers le portail dont a parlé le jeune garçon, Lazlo. Et tu commences à passer en revue la conversation que tu as eue avec lui. "Le secret pour entrer consiste peut-être à ne pas vouloir entrer…"~ */
  IF ~~ THEN REPLY #62299 /* ~Réprime ton désir d'entrer dans la tour.~ */ DO ~SetGlobal("Siege_Tower_Portal","AR0500",1)
SetPortalCursor("to0501",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0501",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~~ THEN REPLY #62300 /* ~Pars.~ */ EXIT
END
