// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPATRN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPATRN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50860 /* ~"Please, sir, I've things to do. I'd appreciate your leaving me be, if you'd be so kind. Farewell."~ */
  IF ~~ THEN REPLY #50861 /* ~Leave.~ */ EXIT
END
