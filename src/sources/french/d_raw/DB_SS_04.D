// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~Cette pierre transparente d'un blanc bleuâtre - retenue dans un filet de bandes d'argent gravées - bat en émettant une douce lumière bleue. Sur la partie inférieure est inscrit le mot 'KESAI-SERRIS'.~ */
  IF ~~ THEN REPLY #54096 /* ~Pars.~ */ EXIT
END
