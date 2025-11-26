// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34201 /* ~This painting shows what looks to be an infinitely long stream of bilious green gas, stretching off into darkness. The horizon of a blasted, rocky plain can be seen in the lower right-hand corner of the painting... one is given the impression that the 'head' of the green cloud is rearing to strike down upon it. A placard reads 'Hazazoth at the Consumption of N'gar.'~ */
  IF ~~ THEN REPLY #42673 /* ~Leave.~ */ DO ~SetGlobal("View_Art_09","AR0608",1)
~ EXIT
END
