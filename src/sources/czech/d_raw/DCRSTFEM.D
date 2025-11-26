// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Vidíš mladého muže se zamračeným obličejem. Něco si mumlá, zjevně má spoustu práce.~ */
  IF ~~ THEN REPLY #3173 /* ~"Zdravím."~ */ EXIT
END
