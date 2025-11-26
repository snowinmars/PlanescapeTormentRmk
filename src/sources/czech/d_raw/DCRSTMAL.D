// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTMAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTMAL~

IF ~~ THEN BEGIN 0 // from:
  SAY #3166 /* ~Vidíš staršího muže stojícího na okraji davu. Jsou shromážděni kolem něčeho, co vypadá jako gilotina.~ */
  IF ~~ THEN REPLY #3167 /* ~"Zdravím."~ */ EXIT
  IF ~~ THEN EXIT
END
