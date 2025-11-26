// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~Tu vois un jeune homme à la mine renfrognée. Il marmonne et semble préoccupé.~ */
  IF ~~ THEN REPLY #3173 /* ~"Bonjour."~ */ EXIT
END
