// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTB~

IF ~~ THEN BEGIN 0 // from:
  SAY #106498 /* ~[Il s'agit d'un espace réservé pour éviter qu'une ligne ayant un son ne devienne streef 106498, ce qui cause des problèmes]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #54305 /* ~Batteries non incluses. Non disponible en magasin. Des opérations de montage sont nécessaires. À utiliser en respectant les instructions. Offre potentiellement non disponible en fonction de la législation.~ */
  IF ~~ THEN EXTERN ~DTEST~ 24
END
