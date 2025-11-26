// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPODGE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPODGE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2891 /* ~Je suis un voleur à la tire, gras et haletant, de la haute société. Tu as certainement déjà rencontré d'autres personnes de cet acabit, mais pas de la même classe.~ */
  IF ~~ THEN REPLY #2892 /* ~Oui, vraiment. Je vais essayer de les trouver, maintenant. Au revoir.~ */ EXIT
END
