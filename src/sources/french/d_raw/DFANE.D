// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFANE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DFANE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2931 /* ~Je suis Fane, le chef du Clan des Chiens Affamés Aboyants du logement des bandits. Je suis une personne MECHANTE. MECHANTE ! MECHANTE !~ */
  IF ~~ THEN REPLY #2932 /* ~Vous, les Xaositectes, vous êtes tous les mêmes. Vous faites beaucoup de bruit, mais quand il s'agit de passer à l'acte, il n'y a plus personne.~ */ EXIT
END
