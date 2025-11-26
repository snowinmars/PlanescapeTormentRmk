// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSECRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSECRE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3036 /* ~I am a secretive Lower Ward Dweller. Heaven forbid anyone steals my secrets! Gasp!~ */
  IF ~~ THEN REPLY #3037 /* ~Zkurvený blbeček...~ */ EXIT
END
