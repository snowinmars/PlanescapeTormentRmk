// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMALE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2895 /* ~"Greetings..."~ */
  IF ~~ THEN REPLY #2896 /* ~Leave the man be.~ */ EXIT
END
