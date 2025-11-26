// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCHIGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DCHIGH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2901 /* ~I am a high threat mechanical construct, made from the modron maze itself to challenge intruders. I am not certain if I have any dialogue, but here's the start of it if I need it.~ */
  IF ~~ THEN REPLY #2902 /* ~Well, good talking to you. I'm sure you'll do fajn... uh, once the designer gets you up and running.~ */ EXIT
END
