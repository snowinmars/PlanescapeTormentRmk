// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWORKER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DWORKER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3160 /* ~Bonjour. Je travaille dans l'entrepôt de Maudith. Demande-moi gentiment, et je te dirai peut-être que les Anarchistes se retrouvent ici, et que tu devrais envisager de les rencontrer.~ */
  IF ~~ THEN REPLY #3161 /* ~C'est certain. Et je pourrais peut-être mettre mes couilles sur le billot.~ */ EXIT
  IF ~~ THEN EXIT
END
