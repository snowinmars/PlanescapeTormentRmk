// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2837 /* ~(Le Sicaire Récupérateur de base ne fait pas encore partie du jeu.)~ */
  IF ~~ THEN REPLY #2838 /* ~Bien. Je reviendrai quand tu auras quelque chose à dire… ou quelque chose à voler.~ */ EXIT
END
