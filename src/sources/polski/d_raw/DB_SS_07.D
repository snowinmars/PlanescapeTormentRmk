// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34208 /* ~Ten przezroczysty, zielony kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje jasnym zielonym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'ECCO'.~ */
  IF ~~ THEN REPLY #54099 /* ~Odejdź.~ */ EXIT
END
