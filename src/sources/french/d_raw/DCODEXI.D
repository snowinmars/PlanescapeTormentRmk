// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~Ce que tu as d'abord pris pour un modeste livre fermé par un petit cadenas en laiton est en fait relié dans du cuir bien étrange et du bronze enchanté. Il porte juste l'inscription : 'Le Manuscrit de l'Inconcevable'.~ */
  IF ~~ THEN REPLY #50400 /* ~Ouvre-le… et lis !~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~Range soigneusement le livre.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~Tu enlèves le cadenas du livre avant de l'ouvrir. En jetant un œil au contenu du livre, tu restes bouche bée. Tu es fasciné en le feuilletant. Son contenu est tout simplement indescriptible - les mots ne suffisent pas à expliquer les merveilles qu'il renferme.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~"C'était… C'est… Je…"~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~"C'était… C'est… Je…"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~Tu restes pensif un moment, consultant le Manuscrit avant de le refermer et de le ranger avec le plus grand respect.~ */
  IF ~~ THEN REPLY #50407 /* ~Pars.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~Le Manuscrit de l'Inconcevable est relié dans du cuir étrange et du bronze enchanté. Son contenu est tout simplement indescriptible - les mots ne suffisent pas à expliquer les merveilles qu'il renferme.~ */
  IF ~~ THEN REPLY #50409 /* ~Range soigneusement le livre.~ */ EXIT
END
