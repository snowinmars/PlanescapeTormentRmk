// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34208 /* ~Průsvitný zelený kámen - uchycený v síti rytých stříbrných obručí - pulsuje světle zeleným světlem. Je do něj vyryto slovo 'ECCO.'~ */
  IF ~~ THEN REPLY #54099 /* ~Odejdi.~ */ EXIT
END
