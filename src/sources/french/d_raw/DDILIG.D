// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILIG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILIG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2889 /* ~Cette femme âgée, à l'aspect sévère, marche d'un pas décidé. Lorsqu'elle t'aperçoit, elle t'examine, les lèvres serrées dans une moue de désapprobation.~ */
  IF ~~ THEN REPLY #2890 /* ~"Peu importe, vieille folle. Plus tard."~ */ EXIT
END
