// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHGUARD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #37736 /* ~Vidíš strážného Harmonických. Na své pochůzce pečlivě sleduje okolí. Nevypadá, že by si chtěl s tebou pokecat. ~ */
  IF ~~ THEN REPLY #37755 /* ~Nech ho být.~ */ EXIT
END
