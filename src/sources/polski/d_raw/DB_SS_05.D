// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34199 /* ~Ten fioletowy kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje głębokim fioletowym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'MARISSA'.~ */
  IF ~~ THEN REPLY #54097 /* ~Odejdź.~ */ EXIT
END
