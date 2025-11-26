// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~Cette pierre claire - retenue dans un filet de bandes d'argent gravées - bat en émettant une lumière. Sur la partie inférieure est inscrit le mot 'YVONNE'.~ */
  IF ~~ THEN REPLY #54093 /* ~Pars.~ */ EXIT
END
