// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34208 /* ~Cette pierre d'un vert translucide - retenue dans un filet de bandes d'argent gravées - bat en émettant une vive lumière verte. Sur la partie inférieure est inscrit le mot 'ECCO'.~ */
  IF ~~ THEN REPLY #54099 /* ~Pars.~ */ EXIT
END
