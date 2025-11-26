// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34209 /* ~Cette pierre d'un rouge brillant - retenue dans un filet de bandes d'argent gravées - bat en émettant une ardente lumière écarlate. Sur la partie inférieure est inscrit le mot 'NENNY'.~ */
  IF ~~ THEN REPLY #54100 /* ~Pars.~ */ EXIT
END
