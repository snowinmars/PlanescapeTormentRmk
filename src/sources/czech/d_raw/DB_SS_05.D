// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34199 /* ~Fialový kámen - uchycený v síti rytých stříbrných obručí - pulsuje silným purpurovým světlem. Je do něj vyryto slovo 'MARISSA.'~ */
  IF ~~ THEN REPLY #54097 /* ~Odejdi.~ */ EXIT
END
