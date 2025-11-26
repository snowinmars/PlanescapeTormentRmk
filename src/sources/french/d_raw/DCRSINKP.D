// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSINKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSINKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3179 /* ~J'ai entendu dire que tu cherchais un moyen d'entrer dans la Prison. Dès que j'aurai une partie de script, je te le dirai.~ */
  IF ~~ THEN REPLY #3181 /* ~Et ensuite je pourrai m'occuper de ce traître angélique de Trias ! Bon sang !~ */ EXIT
  IF ~~ THEN EXIT
END
