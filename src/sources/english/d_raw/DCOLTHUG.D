// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLTHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLTHUG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2837 /* ~(Generic Collector Thug has not been implemented yet.)~ */
  IF ~~ THEN REPLY #2838 /* ~All right. I'll be back when you have something to say... or something to loot.~ */ EXIT
END
