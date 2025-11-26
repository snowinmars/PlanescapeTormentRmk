// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMIT01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMIT01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #43000 /* ~Cette personne fixe attentivement un panneau métallique accroché au mur de la chambre. Après un moment d'intense concentration, elle agite ses mains et prononce une série de syllabes mystérieuses et impressionnantes… toutes sans effet. Néanmoins, la personne continue à pratiquer assidûment, beaucoup trop absorbée par sa tâche pour te parler.~ */
  IF ~~ THEN REPLY #43001 /* ~Pars.~ */ EXIT
END
