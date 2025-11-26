// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_10.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_10~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34211 /* ~Šedobílý kámen - uchycený v síti rytých stříbrných obručí - pulsuje slabým světlem. Kdysi do něj bylo něco vyryto, ale čas nápis smazal.~ */
  IF ~~ THEN REPLY #54102 /* ~Odejdi.~ */ DO ~SetGlobal("Grace_Quest_Answer","GLOBAL",1)
~ JOURNAL #66702 /* ~Pod Nevěstincem jsem našel skrytou komnatu, ve které byla spousta zářících kamenu - přesně deset. Jeden z nich je 'prázdný'... do základny kamene bylo dříve něco vyryto, ale někdo nápis seškrábal.~ */ EXIT
END
