// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART13.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DART13~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34205 /* ~Vypadá to jako nějaké podzemí... rozsáhlý interiér jeskyně zaplněný barevnými, lehce světélkujícími gigantickými houbami. Popisek zní 'Údolí pod Clanggedinem.'~ */
  IF ~~ THEN REPLY #42680 /* ~Odejít.~ */ DO ~SetGlobal("View_Art_13","AR0608",1)
~ EXIT
END
