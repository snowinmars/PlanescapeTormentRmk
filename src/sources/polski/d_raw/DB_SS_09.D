// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34210 /* ~Ten przezroczysty, granatowy kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje głębokim niebieskim światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'JULIA'.~ */
  IF ~~ THEN REPLY #54101 /* ~Odejdź.~ */ EXIT
END
