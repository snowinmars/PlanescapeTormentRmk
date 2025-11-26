// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3190 /* ~Comme les deux précédents, je suis client de cet endroit. En fait, on devrait plutôt dire une cliente. Ha ha !~ */
  IF ~~ THEN REPLY #3191 /* ~Tu me fais bien rire.~ */ EXIT
END
