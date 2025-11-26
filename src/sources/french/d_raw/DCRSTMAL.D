// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Tu vois un homme plus âgé debout, à l'extrémité d'un petit groupe de gens rassemblés autour de ce qui ressemble à une guillotine.~ */
  IF ~~ THEN REPLY #3167 /* ~"Bonjour."~ */ EXIT
  IF ~~ THEN EXIT
END
