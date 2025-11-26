// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBOSS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBOSS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2899 /* ~Je suis la construction maléfique en chef qui dirige le cube modrone. Incline-toi et pleure, être de chair.~ */
  IF ~~ THEN REPLY #2900 /* ~Cours toujours, drône maléfique. Bonne journée… et bon débarras.~ */ EXIT
END
