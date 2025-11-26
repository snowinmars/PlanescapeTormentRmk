// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38099 /* ~This inscription looks like the directions on your back that Morte read to you in the Mortuary:

I know you feel like you've been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that'll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he's not in the dead-book already.~ */
  IF ~~ THEN REPLY #53675 /* ~Continue and refresh your memory.~ */ GOTO 1
  IF ~  Global("Inscr_2","GLOBAL",0)
~ THEN REPLY #53676 /* ~Ignore the rest of the inscription and examine the panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53677 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53678 /* ~Don't lose the journal or we'll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they'll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod.~ */
  IF ~  Global("Morte_Warning","GLOBAL",0)
~ THEN REPLY #53679 /* ~Continue.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 2
  IF ~  Global("Morte_Warning","GLOBAL",1)
~ THEN REPLY #53680 /* ~Continue.~ */ GOTO 5
  IF ~~ THEN REPLY #53681 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53682 /* ~To your surprise, there's one more line - one that Morte didn't read to you in the Mortuary: 'Don't trust the skull.'~ */
  IF ~~ THEN REPLY #53683 /* ~Examine the panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53684 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 2.0 5.0
  SAY #53685 /* ~The panel is crafted in such a way that it can recess into the wall.~ */
  IF ~~ THEN REPLY #53686 /* ~Push the panel.~ */ DO ~SetGlobal("Inscr_2","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53687 /* ~Leave the panel alone.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53688 /* ~The panel slides easily into the wall. You hear a click from the sarcophagus behind you.~ */
  IF ~~ THEN REPLY #53689 /* ~Turn away from the inscription.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1
  SAY #53690 /* ~There's one more line: 'Don't trust the skull.'~ */
  IF ~~ THEN REPLY #53691 /* ~Examine the panel.~ */ GOTO 3
  IF ~~ THEN REPLY #53692 /* ~Turn away from the inscription.~ */ EXIT
END
