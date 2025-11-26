// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~Quatre tableaux qui représentent une plage déserte au cœur de la nuit. La peinture dégage une légère odeur de saumure, et la mer semble monter et descendre sur le rivage obscur. Une pancarte annonce : 'Côte de Karasuthra'.~ */
  IF ~~ THEN REPLY #42662 /* ~Renifle le tableau.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~Touche le tableau.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~Pars.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~Tu poses la main sur le tableau, ne sachant pas vraiment qu'attendre… mais du bout des doigts, tu ne sens que la texture de la toile peinte.~ */
  IF ~~ THEN REPLY #42665 /* ~Renifle le tableau.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~La surface du tableau dégage une forte odeur d'air marin.~ */
  IF ~~ THEN REPLY #42667 /* ~Touche le tableau.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~Pars.~ */ EXIT
END
