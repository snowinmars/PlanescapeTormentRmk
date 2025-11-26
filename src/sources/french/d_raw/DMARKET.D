// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARKET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARKET~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3028 /* ~Je suis un marchand du Bas Quartier. Tu peux me trouver au marché découvert, derrière le bâtiment des enchères.~ */
  IF ~~ THEN REPLY #3029 /* ~J'espère que je pourrai vous ACHETER quelque chose, les gars.~ */ EXIT
END
