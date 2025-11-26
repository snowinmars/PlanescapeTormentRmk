// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3343 /* ~Je suis un zombi du "troupeau pourrissant" dont les catacombes sont pleines. Je traîne les pieds en allant au travail et en revenant du travail, comme Chris Avellone. Bla-bla-bla ?~ */
  IF ~~ THEN REPLY #3344 /* ~Tu sens aussi comme lui.~ */ EXIT
END
