// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAPPRENT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DAPPRENT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51175 /* ~Il semble se concentrer sur sa tâche. Mieux vaut peut-être ne pas le déranger.~ */
  IF ~~ THEN REPLY #51176 /* ~Pars.~ */ EXIT
END
