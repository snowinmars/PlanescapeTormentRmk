// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_GENER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_GENER~

IF ~  NumTimesTalkedTo(0)
RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY #67980 /* ~L'individu se retourne vers toi, l'air menaçant. "Je te connais ? Non ? C'est bien ce que je me disais. Dans ce cas, laisse-moi tranquille. Au revoir."~ */
  IF ~~ THEN REPLY #67981 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY #67982 /* ~La personne que tu abordes s'arrête. "Ne le prends pas mal, matois, mais je ne parle jamais aux gens que je connais pas… et je n'ai pas du tout envie de faire ta connaissance. Trouve quelqu'un d'autre pour répondre à tes questions. Au revoir."~ */
  IF ~~ THEN REPLY #67983 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY #67984 /* ~L'individu se fend d'un rictus et ne te laisse même pas ouvrir la bouche. "Je veux même pas le savoir. Trouve-toi un autre crétin pour répondre à tes questions."~ */
  IF ~~ THEN REPLY #67985 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #67986 /* ~L'individu te dédie un sourire nerveux et lève légèrement les mains, comme pour se protéger. "Je fais tout pour éviter les ennuis, et toi, tu as l'air de les traîner derrière toi. Laisse-moi tranquille… s'il te plaît."~ */
  IF ~~ THEN REPLY #67987 /* ~Pars.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #67988 /* ~Cet individu n'a rien de plus à te dire.~ */
  IF ~~ THEN REPLY #67989 /* ~Pars.~ */ EXIT
END
