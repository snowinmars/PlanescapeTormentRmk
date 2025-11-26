// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3333 /* ~Les rats-crâne de ce jeu seront peut-être capables de parler avec le joueur. Si tel est le cas, cet archétype est là pour ça.~ */
  IF ~~ THEN REPLY #3334 /* ~Pratique.~ */ EXIT
END
