// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSOFF1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSOFF1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3174 /* ~" Sauvez-moi ! Ils veulent me tuer ! Je faisais mon travail, je ne leur voulais pas de mal ! Ils ne voient pas qu'ils poussent eux-mêmes la ville au désastre ?" Il fond en larmes. "Je vous en prie… faites quelque chose !"~ */
  IF ~~ THEN REPLY #3175 /* ~"Je crois que je vais te regarder mourir."~ */ EXIT
  IF ~~ THEN REPLY #66758 /* ~"Je ferai de mon mieux."~ */ EXIT
END
