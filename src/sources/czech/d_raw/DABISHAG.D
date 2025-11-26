// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DABISHAG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DABISHAG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3329 /* ~I am a "green" abishai. I get nauseous just looking at myself.~ */
  IF ~~ THEN REPLY #3330 /* ~Me, too. Myself, I mean.~ */ EXIT
END
