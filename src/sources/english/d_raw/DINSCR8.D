// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR8~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38111 /* ~Fear names. Names have power in identity. Others can use names as weapons. Names are a hook that can be used to track you across the planes. Remain nameless, and you shall be safe.~ */
  IF ~~ THEN REPLY #53764 /* ~Continue.~ */ GOTO 1
  IF ~~ THEN REPLY #53765 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53766 /* ~I am the Nameless One.~ */
  IF ~  Global("Inscr_8","GLOBAL",0)
~ THEN REPLY #53767 /* ~Examine the panel.~ */ GOTO 2
  IF ~~ THEN REPLY #53768 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53769 /* ~The panel is beautifully constructed. You think it can recess into the wall.~ */
  IF ~~ THEN REPLY #53770 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_8","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #53771 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53772 /* ~Without a whisper of sound the panel slides into the wall. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53773 /* ~Turn away from the inscription.~ */ EXIT
END
