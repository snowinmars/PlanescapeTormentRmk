// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOVERW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DOVERW~

IF ~~ THEN BEGIN 0 // from:
  SAY #42765 /* ~This archway leads only inches into the small building before becoming blocked by a solid wall of refuse. The rubbish is packed so tightly it may as well be stones and mortar.~ */
  IF ~~ THEN REPLY #42766 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42768 /* ~~ */ EXIT
  IF ~~ THEN REPLY #42769 /* ~~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #42772 /* ~~ */
  IF ~~ THEN EXIT
END
