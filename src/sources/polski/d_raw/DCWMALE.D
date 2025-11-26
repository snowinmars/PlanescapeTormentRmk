// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWMALE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWMALE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2895 /* ~"Witaj..."~ */
  IF ~~ THEN REPLY #2896 /* ~Zostaw mężczyznę w spokoju.~ */ EXIT
END
