// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTPLANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTPLANS~

IF ~  Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 0 // from:
  SAY #61864 /* ~The plans reveal the tomb to be heavily trapped, but the exact locations have been omitted. However, you see an annotation along one side that indicates an especially lethal trap was installed in each room. Scrawled along the bottom is a note written by another hand. It looks like your handwriting.~ */
  IF ~~ THEN REPLY #61869 /* ~Read the note.~ */ DO ~Explore()
~ GOTO 2
  IF ~~ THEN REPLY #61870 /* ~Done.~ */ DO ~Explore()
~ EXIT
END

IF ~  !Global("Current_Area","GLOBAL",1800)
~ THEN BEGIN 1 // from:
  SAY #61866 /* ~The plans would make more sense if you were in the tomb itself. You could then make direct comparisons between the plans and how they were implemented.~ */
  IF ~~ THEN REPLY #61867 /* ~Done.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61868 /* ~"The trap is set, now I need only wait for my tormentor to step within its walls. However, it occurs to me that I need a way to get the corpse out without having to negotiate the traps myself... Hmm. An enchantment perhaps, that somehow transports the corpse back to the beginning..."~ */
  IF ~~ THEN EXIT
END
