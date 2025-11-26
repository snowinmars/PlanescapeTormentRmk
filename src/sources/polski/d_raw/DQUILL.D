// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUILL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2972 /* ~.~ */
  IF ~~ THEN REPLY #2973 /* ~Nie, myślę, że to TY powinieneś mieć się na baczności.~ */ EXIT
END
