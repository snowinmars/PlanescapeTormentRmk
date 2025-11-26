// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~Cette pierre rouge orangé - retenue dans un filet de bandes d'argent gravées - bat en émettant une chaude lumière orange. Sur la partie inférieure est inscrit le mot 'DOLORA'.~ */
  IF ~~ THEN REPLY #54095 /* ~Pars.~ */ EXIT
END
