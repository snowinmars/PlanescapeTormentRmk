// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~Ten czerwono-pomarańczowy kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje ciepłym pomarańczowym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'DOLORA'.~ */
  IF ~~ THEN REPLY #54095 /* ~Odejdź.~ */ EXIT
END
