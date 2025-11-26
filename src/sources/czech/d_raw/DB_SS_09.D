// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34210 /* ~Průsvitný indigový kámen - uchycený v síti rytých stříbrných obručí - pulsuje hlubokým modrým světlem.  Je do něj vyryto slovo 'JULIETTE.'~ */
  IF ~~ THEN REPLY #54101 /* ~Odejdi.~ */ EXIT
END
