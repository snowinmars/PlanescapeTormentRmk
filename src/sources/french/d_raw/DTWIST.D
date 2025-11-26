// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTWIST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTWIST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2794 /* ~Lèvre-Tordue ne peut pas encore parler. Son nom dit bien pourquoi.~ */
  IF ~~ THEN REPLY #2795 /* ~Bien. Peu importe.~ */ EXIT
END
