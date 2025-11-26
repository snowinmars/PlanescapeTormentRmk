// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTTHG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTTHG~

IF ~~ THEN BEGIN 0 // from:
  SAY #3164 /* ~Tu vois un jeune homme vêtu d'habits peu convenables. Il te regarde approcher d'un air ennuyé.~ */
  IF ~~ THEN REPLY #3165 /* ~"Bonjour."~ */ EXIT
END
