// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCMOD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCMOD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2905 /* ~Je suis l'une des constructions d'indice de menace moyen du dédale modrone. Je ne sais même pas si j'existe déjà. Je ne suis peut-être rien de plus qu'une partie du script.~ */
  IF ~~ THEN REPLY #2906 /* ~Je ne pouvais pas m'attendre à mieux. Bonne journée.~ */ EXIT
END
