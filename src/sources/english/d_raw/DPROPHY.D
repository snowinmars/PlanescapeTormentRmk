// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPROPHY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPROPHY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9354 /* ~This grim-looking woman spares you only a brief glance before returning to her rant on top of the stage. She has a powerful voice that carries across the marketplace, even cutting through the noise made by the merchants and the surrounding foot traffic.~ */
  IF ~~ THEN REPLY #9355 /* ~Leave her alone.~ */ EXIT
END
