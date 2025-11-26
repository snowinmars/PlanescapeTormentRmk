// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWSICK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWSICK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3030 /* ~I am a sick Lower Ward dweller. I have a fascinating life story to tell you, but I am too busy hacking and coughing to tell you about it.~ */
  IF ~~ THEN REPLY #3031 /* ~Maybe it's for the best, then.~ */ EXIT
END
