// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~A set of four paintings which portray an empty beach in the dead of night. The air around the painting smells faintly of brine, and the painted sea seems to ebb and flow across the darkened shore. A placard reads 'Karasuthran Shoreline.'~ */
  IF ~~ THEN REPLY #42662 /* ~Sniff at the painting.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~Touch the painting.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~Leave.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~You place your hand on the painting, not knowing quite what to expect... but it is merely the texture of painted canvas that you feel beneath your fingertips.~ */
  IF ~~ THEN REPLY #42665 /* ~Sniff at the painting.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~The surface of the painting smells strongly of sea air.~ */
  IF ~~ THEN REPLY #42667 /* ~Touch the painting.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~Leave.~ */ EXIT
END
