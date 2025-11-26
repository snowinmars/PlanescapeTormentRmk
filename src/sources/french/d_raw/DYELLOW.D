// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYELLOW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DYELLOW~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2798 /* ~Modrone Renégat~ */
  IF ~~ THEN REPLY #2799 /* ~Squelette Marchand~ */ EXIT
END
