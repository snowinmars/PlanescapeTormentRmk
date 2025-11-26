// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLORES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLORES~

IF ~~ THEN BEGIN 0 // from:
  SAY #34365 /* ~Cette femme aux cheveux bruns et à la peau claire a quelque chose de raffiné. Lorsqu'elle se tourne vers toi, tu remarques que ses yeux - que tu croyais gris - ont la couleur de l'acier poli.~ */
  IF ~~ THEN REPLY #34366 /* ~"Bonjour…"~ */ EXIT
END
