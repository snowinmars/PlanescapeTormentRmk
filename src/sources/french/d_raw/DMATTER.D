// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMATTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMATTER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Ce géant porte une armure rouge ouvragée énorme. Alors que tu approches, il t'observe attentivement, mais sans crainte.~ */
  IF ~~ THEN REPLY #2894 /* ~Une voix tonitruante sort de son heaume : "Bienvenue, citoyen. Je suis Terre-à-sûr…garde du corps de Diligence, Quatrième Magistrat du Quartier. Mais je dois partir, mes fonctions m'appellent à ses côtés.~ */ EXIT
END
