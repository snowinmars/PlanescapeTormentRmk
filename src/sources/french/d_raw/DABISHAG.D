// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3329 /* ~Je suis un abishaï VERT. J'ai la nausée quand je me regarde.~ */
  IF ~~ THEN REPLY #3330 /* ~Moi aussi. Je veux dire, moi de même.~ */ EXIT
END
