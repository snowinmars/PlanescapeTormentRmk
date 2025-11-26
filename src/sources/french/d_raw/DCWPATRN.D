// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~"S'il te plaît, j'ai à faire. J'apprécierais que tu me laisses tranquille ; ce serait très gentil de ta part. Au revoir."~ */
  IF ~~ THEN REPLY #50861 /* ~Pars.~ */ EXIT
END
