// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39448 /* ~This is your pet Lim-Lim. Noticing it has your attention, it chirps up at you lovingly. "Piyo!"~ */
  IF ~~ THEN REPLY #39449 /* ~Examine your Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #42748 /* ~Put your Lim-Lim down to run around a bit.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42749 /* ~Pet your Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42750 /* ~Kick your Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42751 /* ~Stop playing with your Lim-Lim for now.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42752 /* ~Your Lim-Lim appears both insect and animal in origin. Its legs are oversized, but its arms are small, nearly vestigial, and a brightly speckled half-shell runs down its back. It sports twin pairs of insect-like wings, and has tiny black eyes and a mouth that always appears to be smiling gleefully.~ */
  IF ~~ THEN REPLY #42753 /* ~Put your Lim-Lim down to run around a bit.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42754 /* ~Pet your Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42755 /* ~Kick your Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42756 /* ~Stop playing with your Lim-Lim for now.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42757 /* ~"Piyo! Piyo!" The Lim-Lim squirms about merrily, its wings buzzing. It seems to enjoy the affection immensely.~ */
  IF ~~ THEN REPLY #42758 /* ~Put your Lim-Lim down to run around a bit.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42759 /* ~Pet your Lim-Lim some more.~ */ GOTO 2
  IF ~~ THEN REPLY #42760 /* ~Kick your Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42761 /* ~Stop playing with your Lim-Lim for now.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42762 /* ~You attempt to drop-kick the Lim-Lim, but it squirms out of your grasp and flies to the ground!~ */
  IF ~~ THEN REPLY #42763 /* ~"Whoops..."~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
END
