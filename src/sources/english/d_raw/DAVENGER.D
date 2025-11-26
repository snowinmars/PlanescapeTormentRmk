// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAVENGER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAVENGER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67881 /* ~This man ignores you, his eyes intent on the judge on the platform. His lips press tightly together, and his knuckles are white. He chuckles humorlessly to himself, not even registering your presence.~ */
  IF ~~ THEN REPLY #67882 /* ~"Forget it, then."~ */ EXIT
END
