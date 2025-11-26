// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREVLEG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DREVLEG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2978 /* ~Je suis un membre de la ligue révolutionnaire - mais en fait nous sommes tous des individus.~ */
  IF ~~ THEN REPLY #2979 /* ~Oui, et c'est valable pour nous tous, n'est-ce pas ? Au revoir.~ */ EXIT
END
