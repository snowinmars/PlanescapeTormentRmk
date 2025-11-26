// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3327 /* ~I am a RED Abishai, much different from the black ones. Really. Oh, I will also want to kill you as well.~ */
  IF ~~ THEN REPLY #3328 /* ~Charmed.~ */ EXIT
END
