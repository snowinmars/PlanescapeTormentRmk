// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORTAL~

IF ~  !Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 0 // from:
  SAY #54247 /* ~The portal lens appears cold and lifeless in your hands. It seems that it will not function outside the modron cube.~ */
  IF ~~ THEN REPLY #54248 /* ~Put the lens away.~ */ EXIT
END

IF ~  Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 1 // from:
  SAY #54251 /* ~The portal lens throbs with power. It awaits your choice of a destination... ~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #54253 /* ~The Hive, near the Flophouse.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #54254 /* ~The Hive, near the Mortuary.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #54256 /* ~The Hive, near the marketplace.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #54257 /* ~The Hive, near the Smoldering Corpse bar.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #54258 /* ~The Lower Ward.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #54259 /* ~The Clerk's Ward.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #54260 /* ~The Weeping Stone Catacombs.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #54261 /* ~Never mind. Put the lens away.~ */ EXIT
END
