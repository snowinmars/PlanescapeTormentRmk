// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBPORTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBPORTAL~

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #52724 /* ~There is a cleft in the rocks here. It looks like you might be able to squeeze into it - barely - but it doesn't seem to lead anywhere. You notice the ground here is littered with shards of obsidian, most likely caused by the occasional fireball you've seen streak through the air here blasting into the great boulders that line this vale.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #52725 /* ~Pick up a shard of obsidian, place it into your mouth, and bite it so that it cuts your tongue...~ */ DO ~SetGlobal("BD1000_Port_Active","GLOBAL",1)
SetPortalCursor("Baator_Portal",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("Baator_Portal",PORTAL_ENABLED,TRUE)
SetGlobal("Portal_Open","GLOBAL",0)
~ GOTO 1
  IF ~~ THEN REPLY #52778 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52779 /* ~As the jagged bit of volcanic glass bites into your tongue, there is a strange tingling in your mouth. The area around the cleft in the rocks shimmers, and suddenly a portal is there...~ */
  IF ~~ THEN REPLY #52780 /* ~Leave.~ */ EXIT
END

IF ~  Global("Chaotic_Adyzoel_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #68118 /* ~There is a cleft in the rocks here. It looks like you might be able to squeeze into it - barely - but it doesn't seem to lead anywhere. You notice the ground here is littered with shards of obsidian, most likely caused by the occasional fireball you've seen streak through the air here blasting into the great boulders that line this vale.~ */
  IF ~  Global("Leave_Baator","GLOBAL",1)
~ THEN REPLY #68119 /* ~Pick up a shard of obsidian, place it into your mouth, and bite it so that it cuts your tongue...~ */ GOTO 3
  IF ~~ THEN REPLY #68121 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #68120 /* ~As you make to use the portal, you suddenly realize that you still have no idea where the portal to the Fortress of Regrets is, or where or what the portal's key might be. Until you've gotten this information from the Pillar of Skulls, you should not leave Baator.~ */
  IF ~~ THEN REPLY #68122 /* ~Leave.~ */ EXIT
END
