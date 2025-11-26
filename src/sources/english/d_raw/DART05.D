// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34193 /* ~This painting, an abstract work of greens and purples, writhes and ripples as it's watched. Closer examination reveals that the actual painted image is changing, rather than the canvas itself. A placard states 'Moment's Glance from the Walls of Moch'chma.'~ */
  IF ~~ THEN REPLY #42720 /* ~Touch the painting.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42721 /* ~Leave.~ */ DO ~SetGlobal("View_Art_05","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42719 /* ~You place your hand upon the painting... as you had suspected, it is not that the canvas is physically moving, but that the painted image itself is changing.~ */
  IF ~~ THEN REPLY #42722 /* ~Leave.~ */ EXIT
END
