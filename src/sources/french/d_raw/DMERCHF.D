// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~Cette femme te toise, puis elle t'apostrophe, les mains sur les hanches : "T'es pas joli, hein ? T'as peut-être quelques pièces pour acheter des marchandises à un colporteur itinérant, quand même, non ?"~ */
  IF ~~ THEN REPLY #9373 /* ~"Ça ne m'intéresse pas… souillon."~ */ EXIT
END
