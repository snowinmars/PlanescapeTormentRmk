// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUILL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2972 /* ~Je suis un débauché soûl. J'aime traîner dans le Quartier des Gratte-Papier et chercher la bagarre. Si je te croise, tu seras peut-être ma cible, alors fais attention.~ */
  IF ~~ THEN REPLY #2973 /* ~Non, je crois que c'est plutôt à TOI de faire gaffe.~ */ EXIT
END
