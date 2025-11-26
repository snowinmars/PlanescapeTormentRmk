// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34190 /* ~A brilliant ruby statuette stands on this pedestal, carved into the image of a winged humanoid. The figure is either demonic or angelic in nature... but it is difficult to tell which, because it refracts the light in the galleria strangely. There is no placard indicating what, exactly, the statuette is.~ */
  IF ~~ THEN REPLY #42704 /* ~Leave.~ */ DO ~SetGlobal("View_Art_03","AR0608",1)
~ EXIT
END
