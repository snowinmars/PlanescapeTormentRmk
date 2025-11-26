// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3188 /* ~I'm also a patron of that fajn establishment.~ */
  IF ~~ THEN REPLY #3189 /* ~It must be a fajn place indeed.~ */ EXIT
END
