// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBSHINER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBSHINER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51711 /* ~En te voyant entrer sous sa tente, le jeune homme sourit et te fait signe de t'asseoir. "Tu veux que je te cire les bottes ? Ça ne te coûtera que deux pièces de cuivre…"~ */
  IF ~~ THEN REPLY #51712 /* ~"Non, merci. Au revoir."~ */ GOTO 2
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #51713 /* ~"Je te souhaite une nouvelle fois la bienvenue. Tu veux peut-être que je te cire les bottes ? Ça ne te coûtera que deux pièces de cuivre…"~ */
  IF ~~ THEN REPLY #51714 /* ~"Non, merci. Au revoir."~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #51715 /* ~"Au revoir… n'hésite surtout pas à revenir si tu as besoin de te faire cirer les bottes."~ */
  IF ~~ THEN REPLY #51716 /* ~Pars.~ */ EXIT
END
