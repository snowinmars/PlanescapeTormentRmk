// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DALLEY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DALLEY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2877 /* ~JE SUIS L'ALLEE DES LONGS SOUPIRS. JE PARLE EN MAJUSCULES CAR JE SUIS ENORME.~ */
  IF ~~ THEN REPLY #2878 /* ~Merci de partager. Je reviendrai quand tu auras terminé.~ */ EXIT
END
