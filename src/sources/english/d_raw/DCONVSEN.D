// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCONVSEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCONVSEN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46332 /* ~This person turns as you interrupt them, nodding a polite greeting. "Apologies, good sir, but I was just in the middle of something. If you don't mind... farewell." They give a polite half-bow and make to continue about their business.~ */
  IF ~~ THEN REPLY #46333 /* ~Leave.~ */ EXIT
END
