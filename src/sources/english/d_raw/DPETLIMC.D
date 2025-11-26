// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~This is your pet Lim-Lim. Noticing it has your attention, it chirps up at you lovingly. "Piyo!"~ */
  IF ~~ THEN REPLY #42733 /* ~Examine your Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~Pick your Lim-Lim back up.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~Pet your Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~Kick your Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~Stop playing with your Lim-Lim for now.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~Your Lim-Lim appears both insect and animal in origin. Its legs are oversized, but its arms are small, nearly vestigial, and a brightly speckled half-shell runs down its back. It sports twin pairs of insect-like wings, and has tiny black eyes and a mouth that always appears to be smiling gleefully.~ */
  IF ~~ THEN REPLY #42738 /* ~Pick your Lim-Lim back up.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~Pet your Lim-Lim.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~Kick your Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~Stop playing with your Lim-Lim for now.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~"Piyo! Piyo!" The Lim-Lim bounces about merrily, its wings buzzing. It seems to enjoy the affection immensely.~ */
  IF ~~ THEN REPLY #42742 /* ~Pick your Lim-Lim back up.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~Pet your Lim-Lim some more.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~Kick your Lim-Lim.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~Stop playing with your Lim-Lim for now.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~You attempt to land a swift kick to your Lim-Lim, but it hops nimbly out of the way. "Piyo!" It turns and flees, wings buzzing.~ */
  IF ~~ THEN REPLY #42746 /* ~Let it go.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~Chase after it, try and kick it again.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
