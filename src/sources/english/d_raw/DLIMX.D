// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~This odd-looking little creature appears both insect and animal in origin. Its legs are oversized, but its arms are small, nearly vestigial, and a brightly speckled half-shell runs down its back. It sports twin pairs of insect-like wings, and has tiny black eyes and a mouth that always appears to be smiling gleefully.~ */
  IF ~~ THEN REPLY #21872 /* ~Pet the Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~Kick the Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~Leave the Lim-Lim alone.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~"Piyo! Piyo!" The Lim-Lim bounces about merrily, its wings buzzing. It seems to enjoy the affection immensely.~ */
  IF ~~ THEN REPLY #21875 /* ~Pet the Lim-Lim some more.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~Kick the Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~Leave the Lim-Lim alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~You attempt to land a swift kick to the Lim-Lim, but it hops nimbly out of the way. "Piyo!" It turns and flees, wings buzzing.~ */
  IF ~~ THEN REPLY #21878 /* ~Let it go.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~Chase after it, try and kick it again.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~The Lim-Lim looks up at you. "Piyo! Piyo!" Its wings buzz happily when it realizes you're paying attention to it. "Piyo!"~ */
  IF ~~ THEN REPLY #21880 /* ~Pet the Lim-Lim.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~Kick the Lim-Lim.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~Leave the Lim-Lim alone.~ */ EXIT
END
