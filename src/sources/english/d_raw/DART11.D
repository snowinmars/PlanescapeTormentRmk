// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART11.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DART11~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34203 /* ~This painting shows an enormous granite keep - a hideous thing, long and low, covered in leering gargoyles - suspended in what looks to be the night sky. A cloud of crimson and violet vapor whirls in the background along the right side of the painting. A placard reads simply 'The Library.'~ */
  IF ~~ THEN REPLY #42678 /* ~Leave.~ */ DO ~SetGlobal("View_Art_11","AR0608",1)
~ EXIT
END
