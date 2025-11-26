// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVILM1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DVILM1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3396 /* ~Je suis l'un des Récupérateurs du Village Enseveli. Je me promène et je récupère des objets et des cadavres pour Pharod.~ */
  IF ~~ THEN REPLY #3397 /* ~Ça a l'air épatant.~ */ EXIT
END
