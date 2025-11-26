// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34196 /* ~The surface of this painting... a wild collage of vivid colors... ripples constantly, as if it were the surface of a pond during a light rain. A placard reads "Wave Motion Study #7."~ */
  IF ~~ THEN REPLY #42693 /* ~Touch the painting.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42696 /* ~Leave.~ */ DO ~SetGlobal("View_Art_06","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42691 /* ~You place your palm against the canvas... you cannot feel the ripples themselves, though a cool, tingling sensation passes through your hand at first contact.~ */
  IF ~~ THEN REPLY #42698 /* ~Leave.~ */ EXIT
END
