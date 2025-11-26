// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3343 /* ~I am one of the "rotting herd" of zombies that fill the catacombs. I shamble to and from work, just like Chris Avellone. Blah, blah. Blah?~ */
  IF ~~ THEN REPLY #3344 /* ~You smell like him, too.~ */ EXIT
END
