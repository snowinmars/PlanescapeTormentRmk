// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~Le garde plisse les yeux et te regarde approcher en silence.~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~"Qu'est-ce qu'il y a derrière cette arche ?"~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~"Qu'est-ce qu'il y a derrière cette arche ?"~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~Ignore-le et passe ton chemin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~"Pharod et sa cour, matois. Fais gaffe là-dedans, et surveille tes paroles ; il est d'humeur plus massacrante que jamais."~ */
  IF ~~ THEN REPLY #56963 /* ~"Merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~"Pas grand-chose, maintenant. Je sais même pas pourquoi je reste là, en fait." Il hausse les épaules.~ */
  IF ~~ THEN REPLY #56967 /* ~"Au revoir."~ */ EXIT
END
