// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLODGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DLODGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #66627 /* ~Cette personne a l'air surprise de te voir. "Comme c'est étrange… et moi qui pensais que nous avions fermé la porte à clé. Pourrais-tu nous laisser un moment ?"~ */
  IF ~~ THEN REPLY #66629 /* ~"Bien sûr. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #67880 /* ~"Je partirai quand j'en aurai envie. Au revoir."~ */ EXIT
END
