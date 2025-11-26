// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~Průhledný modrobílý kámen - uchycený v síti rytých stříbrných obručí - pulsuje měkkým modrým světlem. Je do něj vyryto slovo 'KESSAI-SERRIS.'~ */
  IF ~~ THEN REPLY #54096 /* ~Odejdi.~ */ EXIT
END
