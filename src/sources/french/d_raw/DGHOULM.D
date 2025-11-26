// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHOULM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHOULM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3337 /* ~Clé de la Salle des Fêtes~ */
  IF ~~ THEN REPLY #3338 /* ~Notes de Fin Andlye~ */ EXIT
END
