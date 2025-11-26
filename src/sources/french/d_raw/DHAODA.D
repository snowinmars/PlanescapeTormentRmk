// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~Visiblement, tu lui as fait peur. Elle arrête tout à coup de fouiller la tente et te fixe nerveusement.~ */
  IF ~~ THEN REPLY #49892 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~"Je ne faisais rien ! Je le jure !"~ */
  IF ~~ THEN REPLY #49895 /* ~"Alors, dis-moi ce que tu ne faisais pas ?" ~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~"C'est ton problème. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~Elle te regarde comme si elle s'apprêtait à dire quelque chose, puis se précipite soudain vers la porte.~ */
  IF ~~ THEN REPLY #49898 /* ~"Arrête…"~ */ DO ~EscapeArea()
~ EXIT
END
