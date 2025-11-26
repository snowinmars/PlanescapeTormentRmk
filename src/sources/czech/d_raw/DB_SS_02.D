// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34194 /* ~Jantarově zbarvený kámen - uchycený v síti rytých stříbrných obručí - pulsuje lehkým žlutím světlem. Je do něj vyryt nápis 'KIMASXI ZMIJÍ JAZYK.'~ */
  IF ~~ THEN REPLY #54094 /* ~Odejdi.~ */ EXIT
END
