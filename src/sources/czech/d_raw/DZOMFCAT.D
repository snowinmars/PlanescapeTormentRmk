// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMFCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMFCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3341 /* ~I am one of the "rotting herd" of zombies that fill the catacombs. I shamble to and from work, just like Chris Avellone.~ */
  IF ~~ THEN REPLY #3342 /* ~What are you doing later?~ */ EXIT
END
