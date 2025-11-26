// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPLACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPLACE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #20107 /* ~Le personnage te regarde sans expression. Il est comme une coquille vide, sans aucun dialogue.~ */
  IF ~~ THEN REPLY #20108 /* ~"Alors, je reviendrai quand tu seras prêt."~ */ EXIT
END
