// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3327 /* ~Je suis un abishaï ROUGE, très différent des noirs. Vraiment. Oh, j'aurai moi aussi envie de te tuer plus tard.~ */
  IF ~~ THEN REPLY #3328 /* ~Sous le charme.~ */ EXIT
END
