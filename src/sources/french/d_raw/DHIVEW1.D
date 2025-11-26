// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~Tu vois une femme vêtue d'un habit rapiécé et aux couleurs passées. Elle te regarde approcher, puis se retourne rapidement, comme pour éviter ton regard.~ */
  IF ~~ THEN REPLY #2294 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~La femme lève les yeux à nouveau, te jette un regard glacial, puis se retourne.~ */
  IF ~~ THEN REPLY #2297 /* ~"Euh… Mademoiselle ?"~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~Ignore-la.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~Elle se retourne à nouveau… mais cette fois, tu vois un poignard dans sa main. "Laisse-moi, chien, ou je te plante ça là où tu ne pourras jamais aller le chercher !"~ */
  IF ~~ THEN REPLY #2300 /* ~"Du calme… J'ai juste quelques questions à te poser."~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~Elle dessine un demi-cercle au-dessus de son cœur avec sa main libre, comme pour chasser le démon. "Je n'ai rien à te dire ! Fiche-le-camp !"~ */
  IF ~~ THEN REPLY #2303 /* ~Attaque-la.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~Pars.~ */ EXIT
END
