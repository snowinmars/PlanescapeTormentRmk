// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DFHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37756 /* ~Vidíš strážnou Harmonických. Na své pochůzce pečlivě sleduje okolí. Nevypadá, že by si chtěla s tebou pokecat. ~ */
  IF ~~ THEN REPLY #37757 /* ~Nech ji být.~ */ EXIT
END
