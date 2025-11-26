// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7082 /* ~"Patřím mezi truchlící, co pějí vně spalovačského stánku v AR0200 (Hive B). 'Truchlíme za živé', krom toho nás může hráč požádat, abychom oplakali ty, kteří ztratili své bližní a milované."~ */
  IF ~~ THEN REPLY #7083 /* ~"Díky za informaci."~ */ EXIT
END
