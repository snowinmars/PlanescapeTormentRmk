// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DANNAHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DANNAHF~

IF ~~ THEN BEGIN 0 // from:
  SAY #63309 /* ~"Dans un endroit où *tu* l'trouveras jamais. Si tu l'veux, tu devras d'abord me passer sur le corps."~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63310 /* ~"Si ça m'donne la force de t'étriper, j'm'en fiche !"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63311 /* ~"J'en ai assez de tes bavardages ! Si tu veux t'battre, eh bien v- !"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 5
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63312 /* ~"Si - si tu veux essayer et m'passer dessus, vas-y ! Je…"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY #63313 /* ~"*Ferme* ton râtelier, tu m'entends ?! Ferme t-"~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 8
END
