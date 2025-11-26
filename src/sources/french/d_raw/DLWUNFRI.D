// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWUNFRI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWUNFRI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3034 /* ~Je suis un habitant antipathique du Bas Quartier. Ôte-toi de mon chemin.~ */
  IF ~~ THEN REPLY #3035 /* ~Ouais, c'est ça mon pote, va te faire foutre, toi aussi.~ */ EXIT
END
