// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCLOCK1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCLOCK1~

IF ~  Global("Clock_1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #64225 /* ~This huge clock looks like it has partially melted into the black stone surrounding it... but the ground around it has been disturbed, as if someone walked on it 'recently' - perhaps in the last few years. ~ */
  IF ~~ THEN DO ~SetGlobal("Clock_1","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64226 /* ~There is something crudely scratched on the clock face, and you suddenly feel a strange, crawling sensation worming its way through the back of your skull - you know what's written on the clock is a message to you... from you.~ */
  IF ~~ THEN REPLY #64229 /* ~Examine your writing.~ */ JOURNAL #63983 /* ~I found a message to me, left by one of my previous incarnations, scratched on the surface of a clock in the vault of the Fortress. It said "RUN - DOORS are LIES - USE Cannons - then PORTAL." An arrow pointed to what I think is the northeast section of the clock room, as if there was something there. ~ */ GOTO 2
  IF ~~ THEN REPLY #64230 /* ~Leave the clock alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #64227 /* ~The message carved on the clock face looks like it was carved with a dagger: 

RUN - DOORS are LIES - USE Cannons - then PORTAL

It looks like the message was written in some haste. Following the message is a crude 'arrow' pointing in the opposite direction as the long hand on the clock.~ */
  IF ~~ THEN REPLY #64231 /* ~"Thanks for the advice..."~ */ EXIT
END

IF ~  Global("Clock_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #64228 /* ~This huge clock looks like it has partially melted into the black stone surrounding it... but the ground around it has been disturbed, as if someone walked on it 'recently' - perhaps in the last few years. On its surface is the message from yourself... to you.~ */
  IF ~~ THEN REPLY #64232 /* ~Examine your writing.~ */ JOURNAL #63983 /* ~I found a message to me, left by one of my previous incarnations, scratched on the surface of a clock in the vault of the Fortress. It said "RUN - DOORS are LIES - USE Cannons - then PORTAL." An arrow pointed to what I think is the northeast section of the clock room, as if there was something there. ~ */ GOTO 2
  IF ~~ THEN REPLY #64233 /* ~Leave the clock alone.~ */ EXIT
END
