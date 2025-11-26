// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJANSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DJANSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67910 /* ~Muž je zmlácený a zkrvavený. Tvář má opuchlou, následek zuřivého bití, které mu uštědřily Curstské stráže. Nemluví, ale vyplivl krev a trochu krve.~ */
  IF ~~ THEN REPLY #67911 /* ~"Tak tedy sbohem."~ */ EXIT
END
