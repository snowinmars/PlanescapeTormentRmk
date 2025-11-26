// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCSLAVE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCSLAVE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #53237 /* ~You see a frightened Curst citizen. "Thank you for your help... I don't know what I would have done... they would have killed me..." He babbles his thanks for a time, and then, "I ought to help. This city's in no shape for me to be selfish. Thank you, again and again. Farewell."~ */
  IF ~~ THEN REPLY #53238 /* ~"Don't mention it. Farewell."~ */ DO ~EscapeArea()
~ EXIT
END
