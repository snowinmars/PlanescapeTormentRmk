// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAPPRENT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DAPPRENT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51175 /* ~Vypadá to, že se na něco soustředí. Raději ho nevyrušuj.~ */
  IF ~~ THEN REPLY #51176 /* ~Odejdi.~ */ EXIT
END
