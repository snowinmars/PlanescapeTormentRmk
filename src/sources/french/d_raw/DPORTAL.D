// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORTAL~

IF ~  !Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 0 // from:
  SAY #54247 /* ~La lentille du portail paraît glacée et sans vie entre tes mains. Il semble qu'elle ne fonctionne pas hors du cube modrone.~ */
  IF ~~ THEN REPLY #54248 /* ~Pose le verre.~ */ EXIT
END

IF ~  Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 1 // from:
  SAY #54251 /* ~Le verre du portail vibre avec puissance. Il attend le choix de ta destination…~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #54253 /* ~La Ruche, près du Square du Chiffonnier.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #54254 /* ~La Ruche, près de la Morgue.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #54256 /* ~La Ruche, près du marché.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #54257 /* ~La Ruche, près du Bar du Cadavre fumant.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #54258 /* ~Le Bas Quartier.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #54259 /* ~Le Quartier des Gratte-Papier.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #54260 /* ~Les Catacombes de la Pierre Pleureuse.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #54261 /* ~Peu importe. Pose le verre.~ */ EXIT
END
