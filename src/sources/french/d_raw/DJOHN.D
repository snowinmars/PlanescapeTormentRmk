// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOHN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOHN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9709 /* ~Cet homme t'ignore ; il conduit une négociation animée avec la catin campée devant lui.~ */
  IF ~~ THEN EXIT
END
