// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37736 /* ~Tu vois un garde de l'Harmonium. Il scrute ce qui l'entoure tout en arpentant sa zone de patrouille. Il ne semble pas vouloir te parler.~ */
  IF ~~ THEN REPLY #37755 /* ~Laisse-le.~ */ EXIT
END
