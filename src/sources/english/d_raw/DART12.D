// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART12.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART12~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34204 /* ~This painting is a dark cityscape, a far-away view of some giant center of civilization being burned to the ground. The streets of the place are empty, however, absent of soldiers, refugees, and even corpses. A placard reads 'The Folly of Udo.'~ */
  IF ~~ THEN REPLY #42679 /* ~Leave.~ */ DO ~SetGlobal("View_Art_12","AR0608",1)
~ EXIT
END
