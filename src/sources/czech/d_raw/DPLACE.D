// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPLACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPLACE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #20107 /* ~Žádná odpověď.~ */
  IF ~~ THEN REPLY #20108 /* ~Odejdi.~ */ EXIT
END
