// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~"I am one of the 'generic' Sensates in the Civic Festhall. Pleased to meet you."~ */
  IF ~~ THEN REPLY #2986 /* ~"Pleased to leave you."~ */ EXIT
END
