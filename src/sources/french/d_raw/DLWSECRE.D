// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSECRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSECRE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3036 /* ~Je suis un habitant réservé du Bas Quartier. Que personne ne vole mes secrets !~ */
  IF ~~ THEN REPLY #3037 /* ~Trouduc de mes deux…~ */ EXIT
END
