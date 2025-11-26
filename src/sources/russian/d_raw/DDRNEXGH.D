// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNEXGH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNEXGH~

IF ~~ THEN BEGIN 0 // from:
  SAY #40306 /* ~«Ох... плохо... варгулья укуссссила... так плохо...»~ */
  IF ~~ THEN REPLY #40340 /* ~«Да... плохи дела...»~ */ EXIT
END
