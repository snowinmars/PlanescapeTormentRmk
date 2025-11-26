// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVGGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVGGRD~

IF ~  !Dead("Barr")
~ THEN BEGIN 0 // from:
  SAY #56938 /* ~Le garde te scrute de ses yeux las, à demi fermés. "Si tu veux utiliser le portail, va voir Barr…" Il indique ce dernier, debout devant la porte. "Sinon, fiche-moi la paix, compris ?" Il regarde ailleurs.~ */
  IF ~~ THEN REPLY #56939 /* ~Pars.~ */ EXIT
END

IF ~  Dead("Barr")
~ THEN BEGIN 1 // from:
  SAY #56940 /* ~Le garde baille en t'examinant des pieds à la tête. "J'espère qu'tu cherchais pas à utiliser le portail, bige… maint'nant qu'Barr est mort, personne sait comment il marche." Il regarde ailleurs.~ */
  IF ~~ THEN REPLY #56941 /* ~Pars.~ */ EXIT
END
