// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34194 /* ~Ten bursztynowy kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje delikatnym żółtym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'KIMASXI ŻMIJOWY JĘZYK'.~ */
  IF ~~ THEN REPLY #54094 /* ~Odejdź.~ */ EXIT
END
