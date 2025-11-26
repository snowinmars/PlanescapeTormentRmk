// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENF~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9360 /* ~This woman seems mesmerized by what the woman has to say. She doesn't even acknowledge you as you speak to her.~ */
  IF ~~ THEN REPLY #9361 /* ~"Nevermind, then."~ */ EXIT
END
