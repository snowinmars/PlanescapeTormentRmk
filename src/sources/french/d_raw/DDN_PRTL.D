// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDN_PRTL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDN_PRTL~

IF ~  Global("Alcove_Portal","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #48503 /* ~Cette alcôve ne se prolonge que de quelques mètres dans le mur du nord avant de s'arrêter abruptement.~ */
  IF ~~ THEN REPLY #48504 /* ~Pars.~ */ EXIT
END

IF ~  Global("Alcove_Portal","AR1500",1)
~ THEN BEGIN 1 // from:
  SAY #48505 /* ~Cette alcôve ne se prolonge que de quelques mètres dans le mur du nord avant de s'arrêter abruptement.

C'est ici que Salie Marie t'a dit de fermer les yeux et de penser au Roi Silencieux avant d'entrer. Tant qu'elle sera 'en vie', cela activera un portail vers la salle du trône du Roi Silencieux.~ */
  IF ~  Dead("STALEMA")
~ THEN REPLY #48507 /* ~Essaie d'activer le portail.~ */ GOTO 2
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",0)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #48508 /* ~Active le portail.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Play_Throne_Movie","GLOBAL",1)
~ EXIT
  IF ~  !Dead("STALEMA")
Global("Undead_Alert","AR1500",1)
Global("Play_Throne_Movie","GLOBAL",0)
~ THEN REPLY #51338 /* ~Active le portail.~ */ DO ~SetPortalCursor("DN_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("DN_Portal",PORTAL_ENABLED,TRUE)
~ EXIT
  IF ~  !Dead("STALEMA")
GlobalGT("Throne_Movie","GLOBAL",0)
~ THEN REPLY #65506 /* ~Essaie d'activer le portail.~ */ GOTO 3
  IF ~~ THEN REPLY #48509 /* ~Pars sans activer le portail.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #48506 /* ~Rien ne se passe. Salie Marie est peut-être morte…~ */
  IF ~~ THEN REPLY #48510 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #65504 /* ~Rien ne se passe. Peut-être qu'après ton 'intrusion' dans la salle du trône du Roi, Hargrimm a détruit ou modifié la nature du portail.~ */
  IF ~~ THEN REPLY #65505 /* ~Pars.~ */ EXIT
END
