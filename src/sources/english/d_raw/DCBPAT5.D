// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3194 /* ~I tell you about tunnels, maybe. Is good?~ */
  IF ~~ THEN REPLY #3195 /* ~Yes. Is good. Unless is bad.~ */ EXIT
END
