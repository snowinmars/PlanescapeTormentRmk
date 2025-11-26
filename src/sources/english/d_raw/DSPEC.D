// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSPEC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSPEC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9362 /* ~This Hive dweller is watching the dabus work. He scratches his head and turns to you. "For the life of the Lady, I can't figure out what they're doing to this building... them dabus are always tearing things down, building them back up... no rhyme or reason to it, I can see." ~ */
  IF ~~ THEN REPLY #9363 /* ~"Nevermind, then."~ */ EXIT
END
