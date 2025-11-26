// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERCHF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERCHF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9372 /* ~Tato žena tě pozorovala už při chůzi, potom položila své ruce na boky a ušklíbla se. "Nejseš zrovna pěknej na pohled, co? Možná ale máš u sebe pár peněz a chceš si něco koupit od potulnýho dráteníka, nebo ne?"~ */
  IF ~~ THEN REPLY #9373 /* ~"Nemám zájem... "~ */ EXIT
END
