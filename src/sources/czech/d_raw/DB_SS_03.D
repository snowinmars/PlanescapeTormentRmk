// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~Rudooranžový kámen - uchycený v síti rytých stříbrných obručí - pulsuje teplým oranžovým světlem. Je do něj vyryto slovo 'DOLORA.'~ */
  IF ~~ THEN REPLY #54095 /* ~Odejdi.~ */ EXIT
END
