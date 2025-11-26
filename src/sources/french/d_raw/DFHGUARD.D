// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~Tu vois une garde de l'Harmonium. Elle scrute ce qui l'entoure tout en arpentant sa zone de patrouille. Elle ne semble pas vouloir te parler.~ */
  IF ~~ THEN REPLY #37757 /* ~Laisse-la.~ */ EXIT
END
