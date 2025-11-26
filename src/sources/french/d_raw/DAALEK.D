// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~Tu aperçois un vieil homme à la longue chevelure blanche et à la peau jaune et abîmée. Il est encore grand, malgré son âge. Il sourit et te fait une légère révérence.~ */
  IF ~~ THEN REPLY #33863 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~Ignore-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~"Et à toi aussi, matois. En quoi puis-je t'être utile ?" Il hausse les sourcils et attend ta réponse.~ */
  IF ~~ THEN REPLY #33866 /* ~"J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~"Ce sont les sorts qui m'intéressent."~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~"Ce que tu vends m'intéresse."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~Il fronce les sourcils. "Désolé, matois, mais je vends des objets à caractère magique, pas des informations. Pour des informations, va voir ailleurs."~ */
  IF ~~ THEN REPLY #33871 /* ~"Ce sont les sorts qui m'intéressent."~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~"Montre-moi ce que tu vends."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~"Je vois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~Nœud nul~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~Tu vois Aalek, le marchand de magie. "Bonjour, matois. Qu'est-ce qui me vaut le plaisir de te revoir ?"~ */
  IF ~~ THEN REPLY #33878 /* ~"Montre-moi ce que tu vends, encore."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~Il acquiesce d'un signe de tête et jette un coup d'œil sur le marché. "Désolé, matois, mais je ne vends que des objets magiques. Adresse-toi à Cendre. Son étal se trouve près du fourneau, vers la sortie."~ */
  IF ~~ THEN REPLY #33881 /* ~"Montre-moi ce que tu vends."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~"Merci, au revoir."~ */ EXIT
END
