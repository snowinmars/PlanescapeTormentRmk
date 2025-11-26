// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTFEM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTFEM~

IF ~~ THEN BEGIN 0 // from:
  SAY #3172 /* ~You see a young man with a scowling face. He is mumbling to himself and appears to be preoccupied.~ */
  IF ~~ THEN REPLY #3173 /* ~"Greetings."~ */ EXIT
END
