// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAPPRENT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAPPRENT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51175 /* ~He seems to be concentrating on the task at hand. It's probably best not to disturb him.~ */
  IF ~~ THEN REPLY #51176 /* ~Leave.~ */ EXIT
END
