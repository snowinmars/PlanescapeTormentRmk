// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~Ten czysty kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje jasnym wewnętrznym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'YVES'.~ */
  IF ~~ THEN REPLY #54093 /* ~Odejdź.~ */ EXIT
END
