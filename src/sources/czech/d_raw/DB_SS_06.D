// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34207 /* ~Modrofialový kámen - uchycený v síti rytých stříbrných obručí - pulsuje slabým levandulovým světlem. Je do něj vyryto slovo 'VIVIAN.'~ */
  IF ~~ THEN REPLY #54098 /* ~Odejdi.~ */ EXIT
END
