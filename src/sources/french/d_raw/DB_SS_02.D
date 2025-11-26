// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34194 /* ~Cette pierre couleur d'ambre - retenue dans un filet de bandes d'argent gravées - bat en émettant une douce lumière jaune. Sur la partie inférieure sont inscrits les mots 'KIMASXI LANGUE DE VIPÈRE'.~ */
  IF ~~ THEN REPLY #54094 /* ~Pars.~ */ EXIT
END
