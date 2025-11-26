// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~Tento jasný kámen - uchycený v síti rytých stříbrných obručí - pulsuje a zářivým vnitřním světlem. Je do něj vyryto slovo 'YVES.'~ */
  IF ~~ THEN REPLY #54093 /* ~Odejdi.~ */ EXIT
END
