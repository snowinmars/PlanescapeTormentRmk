// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~So they said - You have been divided. You are one of many men. You bear many names, and each has left their scars on your flesh.~ */
  IF ~~ THEN REPLY #53751 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~LOST ONE... IMMORTAL ONE... INCARNATION'S END... MAN OF A THOUSAND DEATHS... THE ONE DOOMED TO LIFE... RESTLESS ONE... ONE OF MANY... THE ONE WHOM LIFE HOLDS PRISONER... THE BRINGER OF SHADOWS... THE WOUNDED ONE... MISERY-BRINGER... YEMETH...~ */
  IF ~~ THEN REPLY #53754 /* ~Continue.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~I grow weary.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~Examine the panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~The panel is finely crafted, obviously the work of a master. It looks like it can recess into the wall.~ */
  IF ~~ THEN REPLY #53760 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~There is a slight hissing sound as the panel slides into the wall. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53763 /* ~Turn away from the inscription.~ */ EXIT
END
