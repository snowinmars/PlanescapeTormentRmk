// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCWASTE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCWASTE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3075 /* ~Être dans la Gaste Grise est désespérant. Bien sûr, après quelque temps, on perd même ce sentiment. Attends un peu que j'entre dans le jeu pour avoir de la vraie philosophie mornée.~ */
  IF ~~ THEN REPLY #3373 /* ~Tu sais, rien qu'à t'écouter, tu me fais bander.~ */ EXIT
END
