// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTIL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTIL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2966 /* ~Je suis un livre de sorts maléfique que tu peux mettre dans ton inventaire.~ */
  IF ~~ THEN REPLY #2967 /* ~Le diable, tu as dit ? Des sorts, tu as dis ? Je suis là ! Et puis, je ne suis plus là.~ */ EXIT
END
