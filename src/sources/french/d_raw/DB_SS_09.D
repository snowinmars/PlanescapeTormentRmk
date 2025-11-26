// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34210 /* ~Cette pierre translucide indigo - retenue dans un filet de bandes d'argent gravées - bat en émettant une lumière d'un bleu profond. Sur la partie inférieure est inscrit le mot 'JULIETTE'.~ */
  IF ~~ THEN REPLY #54101 /* ~Pars.~ */ EXIT
END
