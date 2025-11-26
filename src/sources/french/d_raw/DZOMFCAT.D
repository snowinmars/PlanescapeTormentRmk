// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3341 /* ~Je suis une zombi du "troupeau pourrissant" dont les catacombes sont pleines. Je traîne les pieds en allant au travail et en revenant du travail, comme Chris Avellone.~ */
  IF ~~ THEN REPLY #3342 /* ~Que fais-tu tout à l'heure ?~ */ EXIT
END
