// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN4~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7084 /* ~"Patřím mezi truchlící, co pějí vně spalovačského stánku v AR0200 (Hive B). 'Truchlíme za živé', krom toho nás může hráč požádat, abychom oplakali ty, kteří ztratili své bližní a milované."~ */
  IF ~~ THEN REPLY #7085 /* ~"Díky za informaci."~ */ EXIT
END
