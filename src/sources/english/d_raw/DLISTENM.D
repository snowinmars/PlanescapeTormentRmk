// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLISTENM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLISTENM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9358 /* ~This fellow seems mesmerized by what the woman has to say. He doesn't even acknowledge you as you speak to him.~ */
  IF ~~ THEN REPLY #9359 /* ~"Nevermind, then."~ */ EXIT
END
