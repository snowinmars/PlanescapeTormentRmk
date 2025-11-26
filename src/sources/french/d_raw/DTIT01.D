// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43013 /* ~Cette personne essaie de retirer des objets des poches d'un mannequin rembourré suspendu à un châssis et orné de clochettes et autres carillons. Chaque fois que la personne touche le mannequin trop énergiquement, ces derniers tintinnabulent bruyamment.~ */
  IF ~~ THEN REPLY #43014 /* ~Pars.~ */ EXIT
END
