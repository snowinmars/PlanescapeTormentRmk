// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDHTR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDHTR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3182 /* ~Eek! I have been captured by slavers! I need to be rescued!~ */
  IF ~~ THEN REPLY #3183 /* ~Just wait til I show up!~ */ EXIT
END
