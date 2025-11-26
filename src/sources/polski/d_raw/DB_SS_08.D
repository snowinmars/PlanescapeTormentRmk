// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34209 /* ~Ten błyszczący czerwony kamień - przytrzymywany w sieci zdobionych srebrnych nici - pulsuje ognistym karmazynowym zielonym światłem. Na jego podstawie znajduje się wyrzeźbione słowo 'NENNY'.~ */
  IF ~~ THEN REPLY #54100 /* ~Odejdź.~ */ EXIT
END
