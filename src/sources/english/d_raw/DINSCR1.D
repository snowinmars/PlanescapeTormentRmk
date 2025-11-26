// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~What little life there is in the world is draining out this hole in my body. The world can burn, the planes can burn, just give me life! I will destroy this life so badly, break it, smash it, and stain it in blood and feces, so you cannot live it either! Let all creation burn for I cannot die!~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~Examine the panel.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~The panel is crafted in such a way that it can recess into the wall.~ */
  IF ~~ THEN REPLY #53657 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~You push the panel and it slides easily into the wall. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53660 /* ~Turn away from the inscription.~ */ EXIT
END
