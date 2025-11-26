// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~Ten przezroczysty, błęktno-biały kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje delikatnym niebieskim światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'KESSAI-SERRIS'.~ */
  IF ~~ THEN REPLY #54096 /* ~Odejdź.~ */ EXIT
END
