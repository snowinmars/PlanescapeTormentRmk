// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34209 /* ~Zářivě rudý kámen - uchycený v síti rytých stříbrných obručí - pulsuje divokým karmínovým světlem. Je do něj vyryto slovo 'NENNY.'~ */
  IF ~~ THEN REPLY #54100 /* ~Odejdi.~ */ EXIT
END
