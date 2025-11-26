// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~Tu vois un homme imposant, au visage de pierre.~ */
  IF ~~ THEN REPLY #1905 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~Continue ta route.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~L'homme te regarde un moment, grogne, lève la main et révèle un dangereux poignard. Il affiche un sourire démoniaque et fait tournoyer l'arme dans un geste menaçant.~ */
  IF ~~ THEN REPLY #1908 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~"Euh, au revoir…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
