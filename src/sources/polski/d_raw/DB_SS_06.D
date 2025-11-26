// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34207 /* ~Ten niebiesko-fioletowy kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje delikatnym, lawendowym zielonym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'VIVIAN'.~ */
  IF ~~ THEN REPLY #54098 /* ~Odejdź.~ */ EXIT
END
