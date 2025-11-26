// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPORTAL~

IF ~  !Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 0 // from:
  SAY #54247 /* ~Die Portallinse wirkt in deinen Händen kalt und leblos. Sie scheint außerhalb des Modron-Würfels nicht zu funktionieren.~ */
  IF ~~ THEN REPLY #54248 /* ~Leg die Linse weg.~ */ EXIT
END

IF ~  Global("Current_Area","GLOBAL",1300)
~ THEN BEGIN 1 // from:
  SAY #54251 /* ~Die Portallinse pulsiert vor Energie. Sie wartet darauf, daß du dich für einen Bestimmungsort entscheidest... ~ */
  IF ~  Global("AR0100_Visited","GLOBAL",1)
~ THEN REPLY #54253 /* ~Der Stock, beim Lumpensammler-Platz.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0100",[2068.468],0)
~ EXIT
  IF ~  Global("AR0200_Visited","GLOBAL",1)
~ THEN REPLY #54254 /* ~Der Stock, bei der Leichenhalle.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0200",[1748.1940],0)
~ EXIT
  IF ~  Global("AR0300_Visited","GLOBAL",1)
~ THEN REPLY #54256 /* ~Der Stock, beim Marktplatz.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0300",[1676.1336],0)
~ EXIT
  IF ~  Global("AR0400_Visited","GLOBAL",1)
~ THEN REPLY #54257 /* ~Der Stock, bei der Bar "Zur schwelenden Leiche".~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0400",[1965.1662],0)
~ EXIT
  IF ~  Global("AR0500_Visited","GLOBAL",1)
~ THEN REPLY #54258 /* ~Der Untere Bezirk.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0500",[1698.1937],0)
~ EXIT
  IF ~  Global("AR0600_Visited","GLOBAL",1)
~ THEN REPLY #54259 /* ~Der Bezirk der Kuratoren.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR0600",[1865.1806],0)
~ EXIT
  IF ~  Global("AR1400_Visited","GLOBAL",1)
~ THEN REPLY #54260 /* ~Die Katakomben der Weinenden Steine.~ */ DO ~SetGlobal("Modron_Cube","GLOBAL",1)
TeleportParty("AR1400",[1993.1747],0)
~ EXIT
  IF ~~ THEN REPLY #54261 /* ~Macht nichts. Leg die Linse weg.~ */ EXIT
END
